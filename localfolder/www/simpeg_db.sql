-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 04:16 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpeg_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `id_agama` int(11) NOT NULL,
  `nama_agama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik'),
(4, 'Hindu'),
(5, 'Buddha');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bulan`
--

CREATE TABLE `tbl_bulan` (
  `id_bulan` int(11) NOT NULL,
  `nama_bulan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bulan`
--

INSERT INTO `tbl_bulan` (`id_bulan`, `nama_bulan`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cuti`
--

CREATE TABLE `tbl_cuti` (
  `id_cuti` int(11) NOT NULL,
  `no_formulir` varchar(255) NOT NULL,
  `tanggal_permohonan` date NOT NULL,
  `tahun_cuti` varchar(5) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_jenis_cuti` int(11) NOT NULL,
  `tanggal_mulai_cuti` date NOT NULL,
  `tanggal_akhir_cuti` date NOT NULL,
  `lama_cuti` int(11) NOT NULL,
  `status_cuti` int(11) NOT NULL,
  `keterangan_cuti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cuti`
--

INSERT INTO `tbl_cuti` (`id_cuti`, `no_formulir`, `tanggal_permohonan`, `tahun_cuti`, `id_pegawai`, `id_jenis_cuti`, `tanggal_mulai_cuti`, `tanggal_akhir_cuti`, `lama_cuti`, `status_cuti`, `keterangan_cuti`) VALUES
(1, '231D', '2019-02-08', '2019', 439, 2, '2019-03-01', '2019-05-31', 90, 1, '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daftar_penilaian`
--

CREATE TABLE `tbl_daftar_penilaian` (
  `id_daftar_penilaian` int(11) NOT NULL,
  `id_penilaian` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_daftar_penilaian`
--

INSERT INTO `tbl_daftar_penilaian` (`id_daftar_penilaian`, `id_penilaian`, `id_pegawai`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_penilaian`
--

CREATE TABLE `tbl_detail_penilaian` (
  `id_detail_penilaian` int(11) NOT NULL,
  `id_daftar_penilaian` int(11) NOT NULL,
  `id_parameter` int(11) NOT NULL,
  `nilai_parameter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_penilaian`
--

INSERT INTO `tbl_detail_penilaian` (`id_detail_penilaian`, `id_daftar_penilaian`, `id_parameter`, `nilai_parameter`) VALUES
(1, 1, 1, 3),
(2, 1, 2, 5),
(3, 1, 3, 5),
(4, 1, 4, 7),
(5, 1, 5, 3),
(6, 1, 6, 3),
(7, 1, 7, 5),
(8, 1, 8, 5),
(9, 1, 9, 3),
(10, 1, 10, 5),
(11, 1, 11, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_remunerasi`
--

CREATE TABLE `tbl_detail_remunerasi` (
  `id_detail_remunerasi` int(11) NOT NULL,
  `id_remunerasi` int(11) NOT NULL,
  `id_kinerja_individu` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `gaji_pokok` varchar(255) NOT NULL,
  `gaji_variabel` varchar(255) NOT NULL,
  `uang_makan` varchar(255) NOT NULL,
  `nilai_iki` int(11) NOT NULL,
  `nilai_iku` int(11) NOT NULL,
  `matriks` varchar(11) NOT NULL,
  `adjustment_factor` varchar(255) NOT NULL,
  `index_profesi` varchar(255) NOT NULL,
  `pajak` varchar(11) NOT NULL,
  `p1_jab1` varchar(255) NOT NULL,
  `p2_jab1` varchar(255) NOT NULL,
  `p1_jab2` varchar(255) NOT NULL,
  `p2_jab2` varchar(255) NOT NULL,
  `tunjangan_p3` varchar(255) NOT NULL,
  `tunjangan_ipk` varchar(255) NOT NULL,
  `tunjangan_ppr` varchar(255) NOT NULL,
  `tunjangan_emergency` varchar(255) NOT NULL,
  `tunjangan_kefarmasian` varchar(255) NOT NULL,
  `take_home_pay` varchar(255) NOT NULL,
  `potongan_jaminan_kesehatan` varchar(255) NOT NULL,
  `jumlah_bruto` varchar(255) NOT NULL,
  `simpanan_pajak` varchar(255) NOT NULL,
  `jumlah_netto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_remunerasi`
--

INSERT INTO `tbl_detail_remunerasi` (`id_detail_remunerasi`, `id_remunerasi`, `id_kinerja_individu`, `id_pegawai`, `gaji_pokok`, `gaji_variabel`, `uang_makan`, `nilai_iki`, `nilai_iku`, `matriks`, `adjustment_factor`, `index_profesi`, `pajak`, `p1_jab1`, `p2_jab1`, `p1_jab2`, `p2_jab2`, `tunjangan_p3`, `tunjangan_ipk`, `tunjangan_ppr`, `tunjangan_emergency`, `tunjangan_kefarmasian`, `take_home_pay`, `potongan_jaminan_kesehatan`, `jumlah_bruto`, `simpanan_pajak`, `jumlah_netto`) VALUES
(1, 1, 1, 877, '2400000', '1620000', '450000', 4, 5, '2.25', '0.2', '0.8', '0.05', '0', '0', '0', '0', '0', '0', '0', '384000', '0', '4854000', '96000', '4758000', '237900', '4520100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gaji`
--

CREATE TABLE `tbl_gaji` (
  `id_gaji` int(11) NOT NULL,
  `nama_jenjang` varchar(255) NOT NULL,
  `gaji_pokok` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gaji`
--

INSERT INTO `tbl_gaji` (`id_gaji`, `nama_jenjang`, `gaji_pokok`) VALUES
(1, 'SMP', '2000000'),
(2, 'SMK/SMA/Diploma I', '2000000'),
(3, 'Diploma III', '2300000'),
(4, 'Strata I', '2400000'),
(5, 'Strata I Apoteker', '2500000'),
(7, 'Strata II', '2500000'),
(8, 'Dokter / Dokter Gigi', '2500000'),
(9, 'Dokter / Dokter Gigi Spesialis', '3000000'),
(10, 'PNS', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hak_cuti`
--

CREATE TABLE `tbl_hak_cuti` (
  `id_hak_cuti` int(11) NOT NULL,
  `hak_cuti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hak_cuti`
--

INSERT INTO `tbl_hak_cuti` (`id_hak_cuti`, `hak_cuti`) VALUES
(1, 12),
(2, 90);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_izin`
--

CREATE TABLE `tbl_izin` (
  `id_izin` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_jenis_izin` int(11) NOT NULL,
  `no_izin` varchar(255) NOT NULL,
  `tgl_izin_aktif` date NOT NULL,
  `tgl_izin_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_izin`
--

INSERT INTO `tbl_izin` (`id_izin`, `id_pegawai`, `id_jenis_izin`, `no_izin`, `tgl_izin_aktif`, `tgl_izin_akhir`) VALUES
(3, 514, 11, '503.446/6091/SIKP/436.6.3/2015', '2016-01-12', '2020-11-01'),
(4, 224, 11, '503446/7467/SIKP/436.6.3/2016', '2016-08-16', '2021-12-24'),
(5, 592, 11, '503.446/7474/SIKP/436.6.3/2016	', '2016-08-16', '2017-02-02'),
(6, 667, 11, '503.446/9614/SIKP/436.7.2/2018', '2018-07-03', '2020-03-09'),
(7, 296, 11, '503.446/7476/SIKP/436.6.3/2016', '2016-08-16', '2021-08-30'),
(8, 234, 11, '503.446/9813/SIKP/436.7/2018', '2018-09-05', '2023-09-05'),
(9, 48, 11, '503.446/10606/SIKP/436.7.2/2019', '2019-03-18', '2024-04-01'),
(10, 226, 11, '503.446/7637/SIKP/436.6.3/2016', '2016-09-22', '2021-09-22'),
(11, 619, 11, '503.446/5039/SIKP/436.7.2/2017', '2017-11-30', '2022-05-25'),
(12, 447, 11, '503.446/7461/SIKP/436.6.3/2016', '2016-08-16', '2018-10-06'),
(13, 355, 11, '503/446/9922/SIKP/436.7.2/2018', '2018-10-10', '2023-04-28'),
(14, 688, 11, '503.446/6178/SIKP/436.6.3/2016', '2016-01-27', '2018-10-23'),
(15, 465, 21, '503.446/2388/SIKB/436.6.3/2016', '2016-11-24', '2020-01-04'),
(16, 393, 11, '503.446/10272/SIKP/436.7.2/2018', '2018-12-26', '2023-12-19'),
(17, 452, 1, '503.446/1915/I/SIPB/436.7.2/2018', '2018-10-23', '2023-12-15'),
(18, 266, 11, '503.446/99/SIKP/436.7.2/2018', '2018-10-22', '2023-11-26'),
(19, 695, 11, '503.446/9074/SIKP/436.7.2/2017', '2017-11-22', '2022-10-18'),
(20, 333, 11, '503.446/10053/SIKP/436.7.2/2018', '2018-11-12', '2022-06-10'),
(21, 486, 1, '503.446/2390/I/SIPB/436.7.2/2018', '2017-04-20', '2022-04-20'),
(22, 487, 11, '504.446/7667/SIKP/436.6.3/2016', '2016-09-23', '2021-03-27'),
(23, 701, 21, '503.446/0666/SIKB/436.6.3/2015', '2015-03-19', '2017-08-17'),
(24, 489, 21, '503.446/2392/SIKB/436.6.3/2016', '2016-06-24', '2020-09-24'),
(25, 243, 11, '503.446/10626/SIKP/436.7.2/2019', '2019-03-21', '2022-06-30'),
(26, 395, 11, '503.446/4411/SIKP/436.6.3/2015', '2015-02-20', '2017-05-16'),
(27, 242, 11, '503.446/10472/SIKP/436.7 2/2019', '2019-02-09', '2023-05-19'),
(28, 717, 11, '503.446/6568/SIKP/436.6.3/2016', '2016-02-11', '2019-08-06'),
(29, 494, 11, '503.445/7469/SIKP/436.6.3/2016', '2016-08-14', '2021-07-04'),
(30, 719, 11, '503.446/7463/SIKP/436.6.3/2016', '2016-08-16', '2020-03-02'),
(31, 723, 11, '503.446/6181/SIKP/436.6.3/2016', '2012-12-28', '2020-08-09'),
(32, 457, 11, '503.446/9563/SIKP/436.7.2/2018', '2018-06-07', '2022-01-25'),
(33, 631, 11, '503.446/2727/SIKP/436.6.3/2016', '2016-09-06', '2019-01-20'),
(34, 734, 21, '503.446/1917/SIKB/436.6.3/2015', '2015-01-12', '2017-02-22'),
(35, 509, 21, '503.446/2385/SIKB/436.6.3/2016', '2016-11-24', '2020-03-18'),
(36, 736, 11, '503.446/5995/SIKP/436.7.2/2017', '2017-12-02', '2022-11-20'),
(37, 658, 11, '503.446/2733/SIKP/436.6.3/2016', '2016-08-05', '2019-07-27'),
(38, 677, 21, '503.446/2019/SIKB/436.6.3/2015', '2017-03-25', '2017-03-25'),
(39, 744, 11, '503.446/4401/SIKP/436.7.2/2018', '2018-11-06', '2023-12-30'),
(40, 679, 21, '503.446/2061/SIKB/436.6.3/2015', '2014-09-04', '2020-05-30'),
(41, 468, 11, '503.446/7589/SIKP/436.7.2/2018', '2018-09-13', '2022-03-17'),
(42, 74, 11, '503.446/6177/SIKP/436.6.3/2016', '2016-01-27', '2017-11-14'),
(43, 665, 21, '503.446/2111/SIKB/2015', '1970-01-01', '1970-01-01'),
(44, 407, 11, 'P2T/4384/03.02/01/IV/2012', '2016-09-06', '2017-08-17'),
(45, 346, 11, '503.446/10463/SIKP/436.7.2.2019', '2019-02-07', '2023-11-29'),
(46, 529, 11, '503.446/7466/SIKP/436.6.3/2016', '2016-08-16', '2021-08-24'),
(47, 500, 1, '503.446/1910/I/SIPB/436.7.2/2018', '2018-10-29', '2023-05-20'),
(48, 276, 11, 'P2T/318/03.02/01/I/2016', '2016-09-22', '2021-05-29'),
(49, 777, 11, '503.446/6182/SIKP/436.7.2/2018', '2018-06-21', '2022-05-29'),
(50, 785, 11, '503.446/7446/SIKP/436.7.2/2018', '2018-04-05', '2022-12-02'),
(51, 543, 11, '503.446/7658/SIKP/436.6.3/2016', '2016-09-23', '2021-06-06'),
(52, 342, 21, '503.446/2064/SIKB/436.6.3/2015', '2015-09-04', '2020-10-10'),
(53, 797, 11, '503.446/5993/SIKP/436.7.2/2018', '2018-05-14', '2022-05-29'),
(54, 546, 11, '503.446/7668/SIKP/436.6.3/2016', '2016-09-23', '2021-11-02'),
(55, 18, 11, '503.446/10611/SIKP/436.7.2/2019', '2019-03-18', '2023-11-20'),
(56, 142, 11, '503.446/10576/SIKP/436.7.2/2019', '2019-03-05', '2023-10-26'),
(57, 801, 21, '503.446/1916/SIKB/436.6.3/2015', '2015-12-24', '2017-12-24'),
(58, 680, 11, '503.446/7648/SIKP/436.6.3/2016', '2016-09-23', '2020-08-04'),
(59, 557, 11, '503.446/10280/SIKP/436.7.2/2018', '2018-12-27', '2021-05-09'),
(60, 803, 11, '503.446/7470/SIKP/436.7.2/2018', '2018-07-05', '2022-06-28'),
(61, 639, 11, '503.446/7551/SIKP/436.6.3/2016', '2016-09-05', '2017-03-12'),
(62, 808, 11, '503.446/7583/SIKP/436.7.2/2018', '2018-08-27', '2022-04-17'),
(63, 573, 11, '503 446/7660/SIKP/436.6.3/2016', '2016-01-01', '1970-01-01'),
(64, 815, 11, '503.446/7451/SIKP/436.6.3/2016', '2014-08-11', '2019-06-09'),
(65, 818, 11, '503.446/10278/SIKP/436.7.2/2018', '2018-12-27', '2020-03-08'),
(66, 280, 11, '503.446/7654/SIKP/436.6.3/2016', '2016-09-23', '2021-05-03'),
(67, 821, 11, '503.446/6275/SIKP/436.7.2/2018', '2018-05-11', '2022-05-05'),
(68, 538, 11, '503.446/7447/SIKP/436.6.3/2016', '2016-08-11', '2018-03-26'),
(69, 634, 11, '503.446/7669/SIKP/436.6.3/2016', '2016-09-23', '2020-07-23'),
(70, 478, 1, '503.446/2666/I/SIPB/436.7.2/2018', '2018-02-26', '2020-04-22'),
(71, 832, 11, '503.446/7443/SIKP/436.7.2/2018', '2018-06-22', '2022-05-22'),
(72, 836, 11, '503.446/7588/SIKP/436.6.3/2016', '2016-09-13', '2017-03-04'),
(73, 294, 11, '503.446/10562/Sikp/436.7.2/2019', '2019-02-28', '2021-04-13'),
(74, 349, 11, '503.446/10161/SIKP/436.7.2/2018', '2018-12-04', '2023-06-11'),
(75, 683, 21, '503.446/2080/SIKB/436.6.3/2015', '2015-09-15', '2020-10-27'),
(76, 350, 1, '503.446/2805/I/SIPB/436.7.2/2018', '2018-09-03', '2023-04-13'),
(77, 843, 11, '503.446/7666/SIKP/436.6.3/2016', '2016-09-23', '2018-03-10'),
(78, 845, 11, '503.446/7661/SIKP/436.6.3/2016', '1970-01-01', '1970-01-01'),
(79, 850, 1, '503.446/1157/I/SIPB/436.7.2/2018', '2018-11-08', '2023-08-21'),
(80, 851, 11, '503.446/7444/SIKP/436.6.3/2016', '2016-08-11', '2020-06-18'),
(81, 852, 11, '503.446/7587/SIKP/436.7.2/2019', '2019-01-31', '2022-01-31'),
(82, 351, 1, '503.446/2820/I/SIPB/436.7.2/2018', '2018-09-20', '2019-07-16'),
(83, 596, 11, '503.446/9305/SIKP/436.7.2/2018', '2018-03-07', '2022-07-10'),
(84, 331, 11, '503.446/9709/SIKP/436.7.2/2018', '2018-07-24', '2022-06-07'),
(85, 481, 21, '503.446/2391/SIKB/436.6.3/2016', '2016-11-24', '2017-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jabatan`
--

CREATE TABLE `tbl_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `poin_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`id_jabatan`, `nama_jabatan`, `poin_jabatan`) VALUES
(1, 'Direktur', 8125),
(2, 'Wakil Direktur Pelayanan Medis dan Keperawatan', 6822),
(3, 'Wakil Direktur Penunjang Medis', 6822),
(4, 'Wakil Direktur Keuangan dan SDM', 6822),
(5, 'Wakil Direktur Pendidikan, Penelitian dan Pengembangan ', 6822),
(6, 'Manajer Pelayanan Medis', 3748),
(7, 'Manajer Keperawatan', 3748),
(8, 'Manajer Penunjang Medis', 3748),
(9, 'Manajer Farmasi', 3748),
(10, 'Manajer Keuangan dan IT', 3748),
(11, 'Manajer Operasional', 3748),
(12, 'Manajer Pendidikan dan Pelatihan', 3748),
(13, 'Manajer Riset', 3748),
(14, 'Kasi Medis', 2933),
(15, 'Kasi Pelayanan Keperawatan', 2933),
(16, 'Kasi Pengelolaan Sumber Daya Pelayanan Keperawatan', 2933),
(17, 'Kasi Penunjang Medis', 2933),
(18, 'Kasi Penunjang Non Medis', 2933),
(19, 'Kasi Logistik Farmasi', 2933),
(20, 'Kasi Perencanaan dan Pelayanan Farmasi Klinik', 2933),
(21, 'Kasi Keuangan dan Akuntansi', 2933),
(22, 'Kasi Pengadaan', 2933),
(23, 'Kasi IT', 2933),
(24, 'Kasi SDM', 2933),
(25, 'Kasi Kerjasama dan Pemasaran', 2933),
(26, 'Koordinator Humas', 2933),
(27, 'Kasi Umum', 2933),
(28, 'Kasi Pendidikan dan Pelatihan', 2933),
(29, 'Kasi Riset Pengembangan dan Pengabdian Masyarakat', 2933),
(30, 'Ketua SPI', 2933),
(31, 'Ka TU', 2933),
(32, 'Kasi Pendidikan ', 2933),
(33, 'Koordinator Tim Operasional JKN (Tim Pengendali Baya)', 2789),
(34, 'Koordinator Asuransi ', 2789),
(35, 'Kepala Instalasi Rawat Jalan', 2315),
(36, 'Kepala Instalasi Rawat Inap', 2315),
(37, 'Kepala Instalasi Maternal-Perinatal', 2315),
(38, 'Kepala Instalasi Bedah Sentral', 2315),
(39, 'Kepala Instalasi Laboratorium', 2315),
(40, 'Kepala Instalasi Gawat Darurat', 2315),
(41, 'Koordinator Layanan RSKI ', 2315),
(42, 'Kepala Instalasi Anastesia', 2315),
(43, 'Komite Medis', 2315),
(44, 'Komite Keperawatan', 2315),
(45, 'Komite Tenaga Kesehatan Lain', 2315),
(46, 'Komite Farmasi dan Terapi', 2315),
(47, 'Komite Pencegahan dan Pengendalian Infeksi', 2315),
(48, 'Komite Pengendalian Resistensi Anti Mikroba', 2315),
(49, 'Komite Etika dan Hukum', 2315),
(50, 'Komite Rekam Medis ', 2315),
(51, 'Komite Mutu dan Keselamatan Pasien', 2315),
(52, 'Kepala KSM', 1937),
(53, 'Koordinator Sub Layanan Medis ', 1937),
(54, 'Koordinator Sub Layanan Penunjang ', 1937),
(55, 'Kepala Unit Kedokteran Fisik dan Rehabilitasi ', 1828),
(56, 'Kepala Unit Sanitasi & Lingkungan', 1828),
(57, 'Kepala Unit Endoskopi ', 1828),
(58, 'Kepala Unit Transfusi Darah', 1828),
(59, 'Kepala Unit Radiologi', 1828),
(60, 'Kepala Unit Nutrisi', 1828),
(61, 'Kepala Unit CSSD & Laundry', 1828),
(62, 'Ketua Unit PKRS (Promosi Kesehatan Rumah Sakit)', 1828),
(63, 'Kepala Unit Pemeliharaan Alat Medis', 1828),
(64, 'Kepala Unit Rekam Medis', 1828),
(65, 'Kepala Unit IPS', 1828),
(66, 'Kepala Ruang IGD', 1582),
(67, 'Kepala Ruang VK', 1582),
(68, 'Kepala Ruang Kamar Operasi', 1582),
(69, 'Kepala Unit Cathlab', 1582),
(70, 'Kepala Unit Hemodialisa', 1582),
(71, 'Kepala Ruang Rawat Inap Kemoterapi & Transplantasi', 1582),
(72, 'Kepala Ruang IRJA', 1582),
(73, 'Kepala Ruang  ICU / ICCU', 1582),
(74, 'Kepala Ruang NICU / PICU', 1582),
(75, 'Koordinator Administrasi Farmasi', 1582),
(76, 'Koordinator Depo Farmasi IGD', 1582),
(77, 'Koordinator Depo Farmasi ICU', 1582),
(78, 'Koordinator Depo Farmasi Rawat Inap', 1582),
(79, 'Koordinator Depo Farmasi Rawat Jalan', 1582),
(80, 'Koordinator Depo Farmasi OK', 1582),
(81, 'Koordinator Farmasi Klinik Rawat Jalan', 1582),
(82, 'Koordinator Farmasi Klinik Rawat Inap', 1582),
(83, 'Koordinator Unit Pelayanan Informasi Obat', 1582),
(84, 'Koordinator Unit Penyiapan Aseptik', 1582),
(85, 'Kepala Ruang Rawat Inap 2', 1582),
(86, 'Kepala Ruang Rawat Inap 3', 1582),
(87, 'Kepala Ruang Rawat Inap 4', 1582),
(88, 'Kepala Ruang Rawat Inap 5', 1582),
(89, 'Kepala Ruang Rawat Inap 6', 1582),
(90, 'Kepala Ruang Rawat Inap 7', 1582),
(91, 'Penanggung jawab Pengadaan Barang Habis Pakai', 1220),
(92, 'Penanggung jawab Pengadaan Konstruksi', 1220),
(93, 'Penanggung jawab Akuntansi', 1220),
(94, 'Penanggung jawab Keuangan ', 1220),
(95, 'Penanggung jawab PKRS', 1127),
(96, 'Perawat Klinik 5', 1907),
(97, 'Perawat Klinik 4', 1433),
(98, 'Perawat Klinik 3', 1243),
(99, 'Perawat Klinik 2', 1075),
(100, 'Perawat Klinik 1', 869),
(101, 'Bidan Klinik 5', 1907),
(102, 'Bidan Klinik 4', 1433),
(103, 'Bidan Klinik 3', 1243),
(105, 'Bidan Klinik 2', 1075),
(107, 'Bidan Klinik 1', 869),
(108, 'Apoteker Mastery', 1943),
(109, 'Radiografer Mastery', 1793),
(110, 'Analis medis Mastery', 1722),
(111, 'Fisioterapi Mastery', 1707),
(112, 'Rekam Medis Mastery', 1699),
(113, 'Elektromedis Mastery', 1683),
(114, 'Nutrisionis Mastery', 1681),
(115, 'Apoteker Expert', 1528),
(116, 'Radiografer Expert', 1505),
(117, 'Analis medis Laboratorium Expert', 1490),
(118, 'Nutrisionis Expert', 1449),
(119, 'Elektromedis Expert', 1447),
(120, 'Fisioterapi Expert', 1435),
(121, 'Rekam Medis Expert', 1404),
(122, 'Apoteker Competence', 1284),
(123, 'Radiografer Competence', 1251),
(124, 'Fisioterapi Competence', 1229),
(125, 'Nutrisionis Competence', 1200),
(126, 'Elektromedis Competence', 1164),
(127, 'Rekam Medis Competence', 1116),
(128, 'Apoteker Intermediate', 1074),
(129, 'Radiografer Intermediate', 992),
(130, 'Analis Medis Laboratorium intermediate', 986),
(131, 'Fisioterapi Intermediate', 979),
(132, 'Psikolog Intermediate', 979),
(133, 'Elektromedis Intermediate', 964),
(134, 'Nutrisionis Intermediate', 950),
(135, 'Perekam Medis Intermediate', 934),
(136, 'Apoteker Beginner', 871),
(137, 'Radiografer Beginner', 806),
(138, 'Analisis Medis Laboratorium (beginner)', 791),
(139, 'Nutrisionis Beginner', 772),
(140, 'Fisioterapi Beginner', 766),
(141, 'Elektromedis Beginner', 740),
(142, 'Perekam Medis Beginner', 720),
(143, 'Auditor', 1064),
(144, 'Bendahara Penerimaan', 1064),
(145, 'Bendahara Pengeluaran', 1064),
(146, 'Programmer (nantinya disetarakan dengan PM4)', 1052),
(147, 'Bendahara Gaji dan Pemroses Jaspel', 1015),
(148, 'Bendahara Penerima Pembantu', 1015),
(149, 'Bendahara Pengeluaran Pembantu', 1015),
(150, 'Chef', 1015),
(151, 'Kesehatan Lingkungan (Penanggung Jawab)', 810),
(152, 'Staf SDM', 760),
(153, 'Staf Akuntansi', 759),
(154, 'Staf Keuangan ', 759),
(155, 'Staf Marketing', 760),
(156, 'Administrasi khusus (competence)', 759),
(157, 'Staf keuangan Tim Pengendali BPJS', 759),
(158, 'Teknisi IT', 752),
(159, 'Teknisi IPSRS', 749),
(160, 'Koordinator Kasir IGD', 739),
(161, 'Koordinator Kasir Central', 739),
(162, 'Koordinator Kasir Rawat Jalan', 739),
(163, 'Staf Divisi Penelitian/ Riset', 684),
(164, 'Purifikasi Internal Berkas Klaim BPJS (Administrator)', 673),
(165, 'Kesehatan Lingkungan  & PKRS (pelaksana PKRS)', 646),
(166, 'Staf Tim Pemasaran', 610),
(167, 'Administrasi Keuangan/kasir', 608),
(168, 'Sekretaris ', 608),
(169, 'Administrasi khusus (basic)', 608),
(170, 'Kasir Radiologi', 608),
(171, 'Kepala Kelompok Satpam', 598),
(172, 'Pelaksana Pengadaan BNP Non Obat , Konstruksi Gedung Alat dan Modal', 589),
(173, 'Admisi dan Customer Service', 546),
(174, 'Asisten Perawat (HCA) ', 521),
(175, 'Asisten Apoteker / Tenaga Teknis Kefarmasian', 517),
(176, 'Tenaga Pemulasaraan Jenazah ', 485),
(177, 'Driver Ambulance Emergency', 460),
(178, 'Pastry', 450),
(179, 'Asisten Rekam Medis', 450),
(180, 'Cook helper', 450),
(181, 'Driver (Kendaraan Dinas)', 449),
(182, 'Satpam', 447),
(183, 'Kitchen Staff', 454),
(184, 'Rumah Tangga', 450),
(185, 'Steward', 450),
(186, 'Tenaga Laundry', 450),
(187, 'Staf Unit CSSD dan Laundry', 450),
(188, 'Doorman', 439),
(189, 'Caraka/ Pekarya', 439),
(192, 'Dokter Spesialis', 0),
(194, 'Dokter Umum', 0),
(195, 'Dokter Gigi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jabatan_2`
--

CREATE TABLE `tbl_jabatan_2` (
  `id_jabatan_2` int(11) NOT NULL,
  `nama_jabatan_2` varchar(255) NOT NULL,
  `poin_jabatan_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jabatan_2`
--

INSERT INTO `tbl_jabatan_2` (`id_jabatan_2`, `nama_jabatan_2`, `poin_jabatan_2`) VALUES
(0, 'Tidak Ada Jabatan Kedua', 0),
(1, 'Direktur', 8125),
(2, 'Wakil Direktur Pelayanan Medis dan Keperawatan', 6822),
(3, 'Wakil Direktur Penunjang Medis', 6822),
(4, 'Wakil Direktur Keuangan dan SDM', 6822),
(5, 'Wakil Direktur Pendidikan, Penelitian dan Pengembangan ', 6822),
(6, 'Manajer Pelayanan Medis', 3748),
(7, 'Manajer Keperawatan', 3748),
(8, 'Manajer Penunjang Medis', 3748),
(9, 'Manajer Farmasi', 3748),
(10, 'Manajer Keuangan dan IT', 3748),
(11, 'Manajer Operasional', 3748),
(12, 'Manajer Pendidikan dan Pelatihan', 3748),
(13, 'Manajer Riset', 3748),
(14, 'Kasi Medis', 2933),
(15, 'Kasi Pelayanan Keperawatan', 2933),
(16, 'Kasi Pengelolaan Sumber Daya Pelayanan Keperawatan', 2933),
(17, 'Kasi Penunjang Medis', 2933),
(18, 'Kasi Penunjang Non Medis', 2933),
(19, 'Kasi Logistik Farmasi', 2933),
(20, 'Kasi Perencanaan dan Pelayanan Farmasi Klinik', 2933),
(21, 'Kasi Keuangan dan Akuntansi', 2933),
(22, 'Kasi Pengadaan', 2933),
(23, 'Kasi IT', 2933),
(24, 'Kasi SDM', 2933),
(25, 'Kasi Kerjasama dan Pemasaran', 2933),
(26, 'Koordinator Humas', 2933),
(27, 'Kasi Umum', 2933),
(28, 'Kasi Pendidikan dan Pelatihan', 2933),
(29, 'Kasi Riset Pengembangan dan Pengabdian Masyarakat', 2933),
(30, 'Ketua SPI', 2933),
(31, 'Ka TU', 2933),
(32, 'Kasi Pendidikan ', 2933),
(33, 'Koordinator Tim Operasional JKN (Tim Pengendali Baya)', 2789),
(34, 'Koordinator Asuransi ', 2789),
(35, 'Kepala Instalasi Rawat Jalan', 2315),
(36, 'Kepala Instalasi Rawat Inap', 2315),
(37, 'Kepala Instalasi Maternal-Perinatal', 2315),
(38, 'Kepala Instalasi Bedah Sentral', 2315),
(39, 'Kepala Instalasi Laboratorium', 2315),
(40, 'Kepala Instalasi Gawat Darurat', 2315),
(41, 'Koordinator Layanan RSKI ', 2315),
(42, 'Kepala Instalasi Anastesia', 2315),
(43, 'Komite Medis', 2315),
(44, 'Komite Keperawatan', 2315),
(45, 'Komite Tenaga Kesehatan Lain', 2315),
(46, 'Komite Farmasi dan Terapi', 2315),
(47, 'Komite Pencegahan dan Pengendalian Infeksi', 2315),
(48, 'Komite Pengendalian Resistensi Anti Mikroba', 2315),
(49, 'Komite Etika dan Hukum', 2315),
(50, 'Komite Rekam Medis ', 2315),
(51, 'Komite Mutu dan Keselamatan Pasien', 2315),
(52, 'Kepala KSM', 1937),
(53, 'Koordinator Sub Layanan Medis ', 1937),
(54, 'Koordinator Sub Layanan Penunjang ', 1937),
(55, 'Kepala Unit Kedokteran Fisik dan Rehabilitasi ', 1828),
(56, 'Kepala Unit Sanitasi & Lingkungan', 1828),
(57, 'Kepala Unit Endoskopi ', 1828),
(58, 'Kepala Unit Transfusi Darah', 1828),
(59, 'Kepala Unit Radiologi', 1828),
(60, 'Kepala Unit Nutrisi', 1828),
(61, 'Kepala Unit CSSD & Laundry', 1828),
(62, 'Ketua Unit PKRS (Promosi Kesehatan Rumah Sakit)', 1828),
(63, 'Kepala Unit Pemeliharaan Alat Medis', 1828),
(64, 'Kepala Unit Rekam Medis', 1828),
(65, 'Kepala Unit IPS', 1828),
(66, 'Kepala Ruang IGD', 1582),
(67, 'Kepala Ruang VK', 1582),
(68, 'Kepala Ruang Kamar Operasi', 1582),
(69, 'Kepala Unit Cathlab', 1582),
(70, 'Kepala Unit Hemodialisa', 1582),
(71, 'Kepala Ruang Rawat Inap Kemoterapi & Transplantasi', 1582),
(72, 'Kepala Ruang IRJA', 1582),
(73, 'Kepala Ruang  ICU / ICCU', 1582),
(74, 'Kepala Ruang NICU / PICU', 1582),
(75, 'Koordinator Administrasi Farmasi', 1582),
(76, 'Koordinator Depo Farmasi IGD', 1582),
(77, 'Koordinator Depo Farmasi ICU', 1582),
(78, 'Koordinator Depo Farmasi Rawat Inap', 1582),
(79, 'Koordinator Depo Farmasi Rawat Jalan', 1582),
(80, 'Koordinator Depo Farmasi OK', 1582),
(81, 'Koordinator Farmasi Klinik Rawat Jalan', 1582),
(82, 'Koordinator Farmasi Klinik Rawat Inap', 1582),
(83, 'Koordinator Unit Pelayanan Informasi Obat', 1582),
(84, 'Koordinator Unit Penyiapan Aseptik', 1582),
(85, 'Kepala Ruang Rawat Inap 2', 1582),
(86, 'Kepala Ruang Rawat Inap 3', 1582),
(87, 'Kepala Ruang Rawat Inap 4', 1582),
(88, 'Kepala Ruang Rawat Inap 5', 1582),
(89, 'Kepala Ruang Rawat Inap 6', 1582),
(90, 'Kepala Ruang Rawat Inap 7', 1582),
(91, 'Penanggung jawab Pengadaan Barang Habis Pakai', 1220),
(92, 'Penanggung jawab Pengadaan Konstruksi', 1220),
(93, 'Penanggung jawab Akuntansi', 1220),
(94, 'Penanggung jawab Keuangan ', 1220),
(95, 'Penanggung jawab PKRS', 1127),
(96, 'Perawat Klinik 5', 1907),
(97, 'Perawat Klinik 4', 1433),
(98, 'Perawat Klinik 3', 1243),
(99, 'Perawat Klinik 2', 1075),
(100, 'Perawat Klinik 1', 869),
(101, 'Bidan Klinik 5', 1907),
(102, 'Bidan Klinik 4', 1433),
(103, 'Bidan Klinik 3', 1243),
(105, 'Bidan Klinik 2', 1075),
(107, 'Bidan Klinik 1', 869),
(108, 'Apoteker Mastery', 1943),
(109, 'Radiografer Mastery', 1793),
(110, 'Analis medis Mastery', 1722),
(111, 'Fisioterapi Mastery', 1707),
(112, 'Rekam Medis Mastery', 1699),
(113, 'Elektromedis Mastery', 1683),
(114, 'Nutrisionis Mastery', 1681),
(115, 'Apoteker Expert', 1528),
(116, 'Radiografer Expert', 1505),
(117, 'Analis medis Laboratorium Expert', 1490),
(118, 'Nutrisionis Expert', 1449),
(119, 'Elektromedis Expert', 1447),
(120, 'Fisioterapi Expert', 1435),
(121, 'Rekam Medis Expert', 1404),
(122, 'Apoteker Competence', 1284),
(123, 'Radiografer Competence', 1251),
(124, 'Fisioterapi Competence', 1229),
(125, 'Nutrisionis Competence', 1200),
(126, 'Elektromedis Competence', 1164),
(127, 'Rekam Medis Competence', 1116),
(128, 'Apoteker Intermediate', 1074),
(129, 'Radiografer Intermediate', 992),
(130, 'Analis Medis Laboratorium intermediate', 986),
(131, 'Fisioterapi Intermediate', 979),
(132, 'Psikolog Intermediate', 979),
(133, 'Elektromedis Intermediate', 964),
(134, 'Nutrisionis Intermediate', 950),
(135, 'Perekam Medis Intermediate', 934),
(136, 'Apoteker Beginner', 871),
(137, 'Radiografer Beginner', 806),
(138, 'Analisis Medis Laboratorium (beginner)', 791),
(139, 'Nutrisionis Beginner', 772),
(140, 'Fisioterapi Beginner', 766),
(141, 'Elektromedis Beginner', 740),
(142, 'Perekam Medis Beginner', 720),
(143, 'Auditor', 1064),
(144, 'Bendahara Penerimaan', 1064),
(145, 'Bendahara Pengeluaran', 1064),
(146, 'Programmer (nantinya disetarakan dengan PM4)', 1052),
(147, 'Bendahara Gaji dan Pemroses Jaspel', 1015),
(148, 'Bendahara Penerima Pembantu', 1015),
(149, 'Bendahara Pengeluaran Pembantu', 1015),
(150, 'Chef', 1015),
(151, 'Kesehatan Lingkungan (Penanggung Jawab)', 810),
(152, 'Staf SDM', 760),
(153, 'Staf Akuntansi', 759),
(154, 'Staf Keuangan ', 759),
(155, 'Staf Marketing', 760),
(156, 'Administrasi khusus (competence)', 759),
(157, 'Staf keuangan Tim Pengendali BPJS', 759),
(158, 'Teknisi IT', 752),
(159, 'Teknisi IPSRS', 749),
(160, 'Koordinator Kasir IGD', 739),
(161, 'Koordinator Kasir Central', 739),
(162, 'Koordinator Kasir Rawat Jalan', 739),
(163, 'Staf Divisi Penelitian/ Riset', 684),
(164, 'Purifikasi Internal Berkas Klaim BPJS (Administrator)', 673),
(165, 'Kesehatan Lingkungan  & PKRS (pelaksana PKRS)', 646),
(166, 'Staf Tim Pemasaran', 610),
(167, 'Administrasi Keuangan/kasir', 608),
(168, 'Sekretaris ', 608),
(169, 'Administrasi khusus (basic)', 608),
(170, 'Kasir Radiologi', 608),
(171, 'Kepala Kelompok Satpam', 598),
(172, 'Pelaksana Pengadaan BNP Non Obat , Konstruksi Gedung Alat dan Modal', 589),
(173, 'Admisi dan Customer Service', 546),
(174, 'Asisten Perawat (HCA) ', 521),
(175, 'Asisten Apoteker / Tenaga Teknis Kefarmasian', 517),
(176, 'Tenaga Pemulasaraan Jenazah ', 485),
(177, 'Driver Ambulance Emergency', 460),
(178, 'Pastry', 450),
(179, 'Asisten Rekam Medis', 450),
(180, 'Cook helper', 450),
(181, 'Driver (Kendaraan Dinas)', 449),
(182, 'Satpam', 447),
(183, 'Kitchen Staff', 454),
(184, 'Rumah Tangga', 450),
(185, 'Steward', 450),
(186, 'Tenaga Laundry', 450),
(187, 'Staf Unit CSSD dan Laundry', 450),
(188, 'Doorman', 439),
(189, 'Caraka/ Pekarya', 439),
(192, 'Dokter Spesialis', 0),
(194, 'Dokter Umum', 0),
(195, 'Dokter Gigi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_cuti`
--

CREATE TABLE `tbl_jenis_cuti` (
  `id_jenis_cuti` int(11) NOT NULL,
  `nama_jenis_cuti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_cuti`
--

INSERT INTO `tbl_jenis_cuti` (`id_jenis_cuti`, `nama_jenis_cuti`) VALUES
(1, 'Cuti Tahunan'),
(2, 'Cuti Bersalin'),
(3, 'Cuti Besar'),
(4, 'Cuti Sakit'),
(5, 'Cuti Alasan Penting');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_file`
--

CREATE TABLE `tbl_jenis_file` (
  `id_jenis_file` int(11) NOT NULL,
  `nama_jenis_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_file`
--

INSERT INTO `tbl_jenis_file` (`id_jenis_file`, `nama_jenis_file`) VALUES
(1, 'KTP'),
(2, 'Ijazah Terakhir'),
(3, 'STR / Sertifikat Uji Kompetensi'),
(4, 'Surat Izin Kerja / Surat Izin Praktik'),
(5, 'Sertifikat Pelatihan'),
(6, 'NIRA / KTA'),
(7, 'Kartu Pegawai'),
(8, 'SK CPNS'),
(9, 'SK PNS'),
(10, 'SK Kontrak'),
(11, 'Foto Warna Terbaru 4x6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_izin`
--

CREATE TABLE `tbl_jenis_izin` (
  `id_jenis_izin` int(11) NOT NULL,
  `nama_jenis_izin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_izin`
--

INSERT INTO `tbl_jenis_izin` (`id_jenis_izin`, `nama_jenis_izin`) VALUES
(1, 'Izin Praktik Bidan (SIPB)'),
(2, 'Izin Praktik Perawat (SIPP)'),
(3, 'Izin Praktik Dokter (Spesialis / Gigi / Gigi Spesialis)'),
(4, 'Izin Praktik Apoteker (SIPA)'),
(5, 'Izin Praktik Terapis Gigi dan Mulut (SIPTGM)'),
(6, 'Izin Praktik Elektromedis (SIPE)'),
(7, 'Izin Praktik Anastesi'),
(8, 'Izin Praktik Fisioterapis (SIPF)'),
(9, 'Izin Praktik Tenaga Gizi (SIPTGZ)'),
(10, 'Izin Praktik Tenaga Kesehatan Tradisional (SIPTKT)'),
(11, 'Izin Kerja Perawat (SIKP)'),
(12, 'Izin Kerja Perekam Medis (SIK-PM)'),
(13, 'Izin Kerja Terapis Gizi'),
(14, 'Izin Kerja Elektromedis (SIK-E)'),
(15, 'Izin Kerja Tenaga Gizi (SIKTGZ)'),
(16, 'Izin Kerja Radiografer (SIKR)'),
(17, 'Izin Kerja Tenaga Sanitarian (SIKTS)'),
(18, 'Izin Kerja Fisioterapis (SIKF)'),
(19, 'Izin Kerja Tenaga Kesehatan Tradisional (SIKTKT)'),
(20, 'Izin Kerja Psikologi Klinis (SIK-PK)'),
(21, 'Izin Kerja Bidan (SIKB)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_mutasi`
--

CREATE TABLE `tbl_jenis_mutasi` (
  `id_jenis_mutasi` int(11) NOT NULL,
  `nama_jenis_mutasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_mutasi`
--

INSERT INTO `tbl_jenis_mutasi` (`id_jenis_mutasi`, `nama_jenis_mutasi`) VALUES
(1, 'Pensiun'),
(2, 'Meninggal Dunia'),
(3, 'Habis Kontrak'),
(4, 'Dipindahtugaskan'),
(5, 'Melanjutkan Pendidikan'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenjang`
--

CREATE TABLE `tbl_jenjang` (
  `id_jenjang` int(11) NOT NULL,
  `nama_jenjang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenjang`
--

INSERT INTO `tbl_jenjang` (`id_jenjang`, `nama_jenjang`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA/SMK/DI'),
(4, 'DII'),
(5, 'DIII'),
(6, 'D4/S1'),
(7, 'Profesi'),
(8, 'S2'),
(9, 'Spesialis'),
(10, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jk`
--

CREATE TABLE `tbl_jk` (
  `id_jk` int(11) NOT NULL,
  `nama_jk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jk`
--

INSERT INTO `tbl_jk` (`id_jk`, `nama_jk`) VALUES
(1, 'Perempuan'),
(2, 'Laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kinerja_individu`
--

CREATE TABLE `tbl_kinerja_individu` (
  `id_kinerja_individu` int(11) NOT NULL,
  `id_remunerasi` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nilai_iki` int(11) NOT NULL,
  `id_rekap` int(11) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kinerja_individu`
--

INSERT INTO `tbl_kinerja_individu` (`id_kinerja_individu`, `id_remunerasi`, `id_pegawai`, `nilai_iki`, `id_rekap`, `id_status`) VALUES
(1, 1, 877, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kinerja_unit`
--

CREATE TABLE `tbl_kinerja_unit` (
  `id_kinerja_unit` int(11) NOT NULL,
  `id_remunerasi` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `nilai_iku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kinerja_unit`
--

INSERT INTO `tbl_kinerja_unit` (`id_kinerja_unit`, `id_remunerasi`, `id_unit`, `nilai_iku`) VALUES
(1, 1, 27, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komite`
--

CREATE TABLE `tbl_komite` (
  `id_komite` int(11) NOT NULL,
  `nama_komite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komite`
--

INSERT INTO `tbl_komite` (`id_komite`, `nama_komite`) VALUES
(1, 'Komite Medis'),
(2, 'Komite Tenaga Kesehatan Lainnya'),
(3, 'Komite Keperawatan'),
(4, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mutasi`
--

CREATE TABLE `tbl_mutasi` (
  `id_mutasi` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_jenis_mutasi` int(11) NOT NULL,
  `tgl_mutasi` date NOT NULL,
  `keterangan_mutasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pangkat`
--

CREATE TABLE `tbl_pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `nama_pangkat` varchar(255) NOT NULL,
  `nama_golongan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pangkat`
--

INSERT INTO `tbl_pangkat` (`id_pangkat`, `nama_pangkat`, `nama_golongan`) VALUES
(1, 'Juru Muda', 'I/A'),
(2, 'Juru Muda Tingkat I', 'I/B'),
(3, 'Juru', 'I/C'),
(4, 'Juru Tingkat I', 'I/D'),
(5, 'Pengatur Muda ', 'II/A'),
(6, 'Pengatur Muda Tingkat I', 'II/B'),
(7, 'Pengatur', 'II/C'),
(8, 'Pengatur Tingkat I', 'II/D'),
(9, 'Penata Muda', 'III/A'),
(10, 'Penata Muda Tingkat I', 'III/B'),
(11, 'Penata', 'III/C'),
(12, 'Penata Tingkat I', 'III/D'),
(13, 'Pembina', 'IV/A'),
(14, 'Pembina I', 'IV/B'),
(15, 'Pembina Utama Muda', 'IV/C'),
(16, 'Pembina Utama Madya', 'IV/D'),
(17, 'Pembina Utama', 'IV/E');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parameter`
--

CREATE TABLE `tbl_parameter` (
  `id_parameter` int(11) NOT NULL,
  `nama_parameter` varchar(255) NOT NULL,
  `detail_parameter` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_parameter`
--

INSERT INTO `tbl_parameter` (`id_parameter`, `nama_parameter`, `detail_parameter`) VALUES
(1, 'Perilaku Efisiensi', 'Pegawai menggunakan material kerja yang menunjang pelayanan dengan kesadaran dalam menggunakan biaya'),
(2, 'Target Kerja', 'Jumlah pekerjaan yang dapat diselesaikan dalam waktu tertentu'),
(3, 'Kepatuhan terhadap Standar Prosedur Operasional (SPO)', 'Kepatuhan karyawan dalam pelaksanaan tugas sesuai dengan SPO'),
(4, 'Aktif dalam kegiatan rumah sakit', 'Perilaku pegawai dalam mengikuti segala kegiatan di rumah sakit'),
(5, 'Disiplin', 'Sikap taat pada peraturan dan patuh terhadap nilai-nilai organisasi serta melaksanakan pekerjaan yang menjadi tanggungjawabnya'),
(6, 'Komitmen', 'Keinginan kuat untuk tetap menjadi anggota orgaanisasi dan berusaha memenuhi nilai-nilai dan tujuan organisasi'),
(7, 'Orientasi Pelayanan', 'Usaha untuk mengetahui, membantu, memenuhi dan melayani kebutuhan pelanggan internal maupun eksternal'),
(8, 'Kepedulian', 'Mempunyai rasa memiliki dan tanggung jawab dalam lingkungan kerja'),
(9, 'Kerjasama', 'Kemampuan dalam memberikan kontribusi yang efektif dalam pencapaian tujuan tim'),
(10, 'Kemampuan berkomunikasi', 'Kemampuan dalam menyampaikan informasi secara efektif, baik lisan maupun tulisan'),
(11, 'Kerapihan kerja', 'Perilaku kerja pegawai selama bekerja berkaitan dengan alat yang digunakan, tidak menimbulkan kerusakan, kerapian meja dan lingkungan kerja');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `nip_nik` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `no_npwp` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_mulai_tugas` date NOT NULL,
  `tanggal_akhir_tugas` date NOT NULL,
  `no_bpjs_ketenagakerjaan` varchar(255) NOT NULL,
  `no_bpjs_kesehatan` varchar(255) NOT NULL,
  `id_agama` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_jabatan_2` int(11) DEFAULT NULL,
  `adjustment_factor` float NOT NULL,
  `index_profesi` float NOT NULL,
  `id_jk` int(11) NOT NULL,
  `id_status_pernikahan` int(11) NOT NULL,
  `id_status_kepegawaian` int(11) NOT NULL,
  `id_komite` int(11) NOT NULL,
  `id_ptkp` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_gaji` int(11) NOT NULL,
  `gaji_variabel` varchar(255) NOT NULL,
  `uang_makan` varchar(255) NOT NULL,
  `id_rekap` int(11) NOT NULL,
  `id_pangkat` int(11) NOT NULL,
  `id_aktif` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `nip_nik`, `no_ktp`, `no_telp`, `email`, `alamat`, `id_jenjang`, `no_npwp`, `no_rekening`, `tempat_lahir`, `tanggal_lahir`, `tanggal_masuk`, `tanggal_mulai_tugas`, `tanggal_akhir_tugas`, `no_bpjs_ketenagakerjaan`, `no_bpjs_kesehatan`, `id_agama`, `id_jabatan`, `id_jabatan_2`, `adjustment_factor`, `index_profesi`, `id_jk`, `id_status_pernikahan`, `id_status_kepegawaian`, `id_komite`, `id_ptkp`, `id_unit`, `id_gaji`, `gaji_variabel`, `uang_makan`, `id_rekap`, `id_pangkat`, `id_aktif`, `password`) VALUES
(1, 'Muhammad Rifqi Aditya, S.Kom', '199208052016105101', '6473010508920001', '085234363455', 'rifqaditya@gmail.com', 'Kedung Tarukan Wetan No. 1B', 6, '835464090642000', '1420015191918', 'Tarakan', '1992-08-05', '2016-10-01', '2018-10-01', '2019-09-30', '-', '-', 1, 158, 0, 0.05, 0.8, 2, 1, 2, 4, 1, 27, 4, '1800000', '450000', 2, 0, 1, 'rsunair2019'),
(2, 'Aries Wisnu Mukti', '199104182017045101', '3515131804910001', '085733338788', 'arieswisnumukti@gmail.com', 'Pondok Ridha II no 5, RT 030 RW 001, Kel. Sidodadi, Kec. Taman, Kota Sidoarjo, Prov. Jawa Timur', 6, '818751984603000', '9000032800030', 'Surabaya', '1991-04-18', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 152, 0, 0.2, 0.8, 2, 2, 2, 4, 3, 43, 4, '1800000', '450000', 1, 0, 1, 'sdm2017'),
(3, 'Ahmad Muslim', '199109172018075101', '3578101709910004', '-', 'q@q', 'Ploso Timur 4/71 RT 002 RW 009, Ploso, Tambaksari, Surabaya\r\n', 6, '641348271619000', '1420015670531', 'Surabaya', '1991-09-17', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 152, 0, 0.2, 0.8, 2, 2, 2, 4, 3, 2, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(4, 'Farah Faidah Ayudyani', '199205072018105201', '3578094705920002', '08113200994', 'q@q', 'Semampir Selatan Gg. 3A/89 RT 006 RW 007, Medokan Semampir, Sukolilo, Surabaya', 6, '717420806606000', '1420011499620', 'Surabaya', '1992-05-07', '2019-02-01', '2019-02-01', '2020-01-31', '-', '-', 1, 154, 0, 0, 0, 1, 2, 2, 4, 3, 28, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(5, 'Yoga Hadi Narendra', '199508222019015101', '3507012208950001', '085608122202', 'yogahadinarendra@gmail.com', 'Ngrendeng RT 011 RW 003, Sumberoto, Donomulyo', 5, '905373759654000', '1420017295857', 'Malang', '1995-08-22', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 3, 100, 0, 0, 0, 2, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(6, 'Varadila Fahma', '199509012019015201', '3578174109950006', '085790643455', 'varafahma@gmail.com', 'Kedinding Tengah 8-A/22 Surabaya', 6, '904354073619000', '1420017275685', 'Surabaya', '1995-09-01', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 12, 5, '0', '0', 1, 0, 1, 'rsunair2019'),
(7, 'Suci Setyawati', '199403022019015201', '3519104203940001', '085790304307', 'suci.id10@gmail.com', 'Ds. Tapelan RT 008 RW 002, Balerejo Kab. Madiun', 5, '-', '1420017307975', 'Madiun', '1994-03-02', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(8, 'Rizqotul Maghfiroh R', '199610072019015201', '3518144710940006', '085887829262', 'rizqotul.mr@gmail.com', 'Dsn. Gawok RT 001 RW 001, Balongrejo, Bagor, Kab. Nganjuk', 6, '-', '1420017296301', 'Nganjuk', '1994-10-07', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(9, 'Rizky Raditya Rahmanda', '199608312019015101', '3516143108960005', '085226470367', 'rzkyraditya2123@gmail.com', 'Mojoklanggru Lor 59-E Rt 2 RW 4, Mojo, Gubeng, Surabaya ', 5, '-', '1420017333815', 'Surabaya ', '1996-08-31', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 140, 0, 0, 0, 2, 1, 2, 2, 1, 38, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(10, 'Risma Setya Pratiwi', '199605282019015201', '3519106805960001', '082231150284', 'q@q', 'Sogo I RT 013 RW 003, Sogo, Balerejo, Kab. Madiun', 5, '-', '1420017308502', 'Madiun', '1996-05-28', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(11, 'Rina Fardiana', '199408112019015201', '3508065108940006', '085230797099', 'rfardiana@gmail.com', 'Dsn. Sumbereling RT 20 RW 3, Kunir Lor, Lumajang ', 6, '-', '1420017307660', 'Lumajang ', '1994-08-11', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 107, 0, 0, 0, 1, 1, 2, 3, 1, 23, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(12, 'Renny Mey Maghfiroh', '199505042019015201', '3515074405950007', '082231616552', 'rennymey5@gmail.com', 'Dusun Krajan, RT 009 RW 003, Sepande, Candi, Sidoarjo\r\n', 6, '-', '1410013438445', 'Sidoarjo', '1995-05-04', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(13, 'Refa Hengga Romario', '199505132019015101', '3515181305950015', '081246907181', 'refaromario13@gmail.com', 'Jalan Berbek III B Balong 1, No. 20, Waru, Sidoarjo\r\n', 5, '903341386643000', '1420015460701', 'Surabaya', '1995-05-13', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 154, 0, 0, 0, 2, 1, 2, 4, 1, 28, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(14, 'Ratna Fitria Isnaini', '199702242019015201', '3515176402970002', '083849941167', 'fitria.ratna@gmail.com', 'Perum De Java Blok C-1 Banjar Melati, Pabean, Sedati', 6, '-', '1420017298752', 'Sidoarjo', '1997-02-24', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 139, 0, 0, 0, 1, 1, 2, 2, 1, 14, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(15, 'Raafi Puristya Aries Darmawan', '199511022019015101', '3578070211950002', '089677231870', 'raafipuristya@gmail.com', 'Jl. Genteng Besar Makam 5-B RT 003 RW 010, Genteng, Surabaya', 6, '-', '1420017313015', 'Surabaya ', '1995-11-02', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 2, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(16, 'Onna Nurul Fitria Diah Ambar Rahayu', '199603052019015201', '3515184503960004', '085648518521', 'onna.ambar@gmail.com', 'Jalan Tropodo Indah N-19, Waru, Sidoarjo', 6, '903209286643000', '1420017268508', 'Surabaya', '1996-03-05', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 168, 0, 0, 0, 1, 1, 2, 4, 1, 31, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(17, 'Novi Dwi Ambarsari', '199406072019015201', '3578094706940002', '085730770738', 'novidwi.ambarsari@gmail.com', 'Medokan Semampir Blok H/13 B RT 3 RW 2, Medokan Semampir, Surabaya ', 6, '-', '1410013947361', 'Sidoarjo ', '1994-06-07', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 107, 0, 0, 0, 1, 1, 2, 3, 1, 23, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(18, 'Novi Anjani', '199711202019015201', '3578246011970003', '083856995138', 'novianjani35@gmail.com', 'Tenggilis Mulya V no 76 a Surabaya', 5, '-', '1420017292300', 'Lamongan', '1997-11-20', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(19, 'Naning Rosita Maulana ', '199408252019015201', '3509126508940004', '085231933327', 'naning.rosita-12@fk.unair.ac.id', 'Jl. Diponegoro RT 003 RW 015, Ambulu, Kab. Jember', 6, '-', '1420017310631', 'Jember ', '1994-08-25', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 107, 0, 0, 0, 1, 1, 2, 3, 1, 23, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(20, 'Muhammad Amin', '199601022019015101', '5201010107970230', '087857244 652', 'aminoyeng23@gmail.com', 'Dusun Bile Kedit Barat Babussalam Gerung', 5, '-', '1420017311894', 'Bile Kedit', '1996-01-02', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 2, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(21, 'Mochammad Ichsan Tatisina', '199111052019015101', '3578080511910002', '081273578142/085806001567', 'ichsan.united@gmail.com', 'Gubeng Jaya 9/9 RT 017 RW 002, Gubeng, Surabaya', 5, '747153468606000', '1420017295980', 'Surabaya ', '1991-11-05', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 137, 0, 0, 0, 2, 2, 2, 2, 2, 37, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(22, 'Mochamad Faisol Al Nizar', '199212192019015101', '3515061912920002', '08993169762', 'al_nizar@yahoo.com', 'Kedensari, Tanggulangin, Kab. Sidoarjo', 5, '-', '1420017291708', 'Sidoarjo', '1992-12-19', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 2, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(23, 'Mambaul Karomah', '199604212019015201', '3578176104960002', '085903783250', 'mambauluulkaromah@gmail.com', 'Bulak Banteng Wetan 4/26, RT 1 RW 8, Sidotopo Wetan, Kenjeran, Surabaya', 5, '-', '1420017314401', 'Surabaya ', '1996-04-21', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(24, 'Mahsus Ridwan', '199506292019015101', '3526032906950005', '087853724000', 'mahsus_r@yahoo.com', 'Ds. Pangolangan, Pangolangan, Burneh, Bangkalan', 6, '-', '1420017303487', 'Bangkalan', '1995-06-29', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 2, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(25, 'Lintang Mega Puspita', '199609012019015201', '3519134109960001', '081450292305', 'lintangmegga@gmail.com', 'Ds. Gandul, Pilangkenceng, Kab. Madiun', 5, '-', '1420017293928', 'Madiun ', '1996-09-01', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(26, 'Juniar Nur Rachmania', '199506222019015201', '3578146206950002', '08977366406', 'juniarachmania@yahoo.com', 'Darmo Indah Barat 2/F-12 RT 002 RW 004, Tandes, Surabaya', 6, '-', '1420017299156', 'Surabaya ', '1995-06-22', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(27, 'Indira Zenitania', '199704272019015201', '3515136704970007', '081217687816', 'indirazenitaniaa@gmail.com', 'Griya Taman Cipta Karya Jl. Cempaka Blok E-73, Bohar, Taman, Kab. Sidoarjo', 5, '-', '1410017525833', 'Sidoarjo', '1997-04-27', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(28, 'Indri Dwi Purwanti', '199401182019015201', '3578215801940003', '089605558992', 'indri.dp01@gmail.com', 'Pradah Kalikendal V/26 Surabaya', 5, '-', '1420017298729', 'Surabaya', '1994-01-18', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(29, 'Ifa Junaida', '199703022019015201', '3515174203970002', '082264736655', 'ifajunaida.IJ@gmail.com', 'Jl. Mbah Nanggul RT 015 RW 004, Cemandi, Sedati, Sidoarjo', 5, '-', '1410017479320', 'Sidoarjo', '1997-03-02', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(30, 'Galih Kertiyasa ', '199403152019015201', '3515085503940002', '081332976365', 'galihkertiyasa15@gmail.com', 'Sidokare  Indah GG-26 RT 34, RW 10, Sidokare, Sidoarjo', 6, '843353707617000', '1410016561714', 'Sidoarjo ', '1994-03-15', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(31, 'Frista Amalia', '199603282019015201', '3578116803960001', '085549014414', 'amalia.frista@gmail.com', 'Tambak Segaran 2/72 RT 006 RW 003, Tambakrejo, Simokerto, Surabaya', 5, '903872810616000', '1420017281022', 'Surabaya', '1996-03-28', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 138, 0, 0, 0, 1, 1, 2, 2, 1, 29, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(32, 'Farra Ahdan Naila', '199703192019015201', '3505075903970003', '082233795552', 'farra.naila@gmail.com', 'Dsn Centong Purworejo Sanakulon', 5, '903525681653000', '1420017308437', 'Blitar', '1997-03-19', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(33, 'Farid Cahya Mega Abdillah', '199503262019015101', '3578262603950002', '085785666186', 'q@q', 'Kejawan Putih Tambak 8-A/21 RT006 RW001, Kejawan Putih, Mulyorejo', 5, '-', '1420017295949', 'Surabaya', '1995-03-26', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 137, 0, 0, 0, 2, 1, 2, 2, 1, 37, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(34, 'Evrian Malero', '199104232019015101', '3517182304910002', '085230672099', 'maleroevrian@yahoo.com', 'Karangdagangan, RT001, RW002, Karang Dagangan, Bandar Kedungmulyo, Kab. Jombang', 6, '-', '1420017321984', 'Jakarta', '1991-04-23', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 2, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(35, 'Evi Fitri Wijayanti', '199403282019015201', '3519136803940001', '087859494436', 'eviifitrii09@gmail.com', 'Desa Muneng RT 008/ RW 003, Pilangkenceng, Madiun', 5, '-', '9000034013152', 'Madiun', '1994-03-28', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(36, 'Eva Elmiyatin', '199411242019015201', '3508196411940001', '081338000312', 'evaelmi24@gmail.com', 'Jl. Lindu Boyo RT 007 RW 003, Klakah, Lumajang', 6, '-', '1410013309430', 'Lumajang', '1994-11-24', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(37, 'Entyar Winarba''a Novitasari', '199311202019015201', '3578116011930002', '081233575154', 'entyar20@gmail.com', 'Simolawang 3/14 Surabaya', 5, '853142339616000', '1420017296277', 'Surabaya', '1993-11-20', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(38, 'Ega Sesa Pamase', '199610102019015101', '3503111010960002', '081529317985/082231221686', 'egasesa1010@gmail.com', 'Dusun Telasih RT 5 RW 2, Parakan, Trenggalek', 6, '-', '1420017312678', 'Trenggalek ', '1996-10-10', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 2, 1, 2, 3, 1, 36, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(39, 'Efira Gladys Ramadhani', '199502232019015201', '3578166302950002', '081297926236', 'efiragladysramadhani@gmail.com', 'Wonokusumo Lor 9/17 RT 008 RW 010, Wonokusumo, Semampir, Surabaya', 6, '902805597616000', '9000020255601', 'Surabaya', '1995-02-23', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(40, 'Dikut Purwantoro', '197212062019015101', '3578060612720003', '08121746266', 'purwantorodikut@gmail.com', 'Jalan Kedung Anyar 1/15, Surabaya', 6, '480750702614000', '1420017267500', 'Surabaya', '1972-12-06', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 169, 0, 0, 0, 2, 2, 2, 4, 4, 2, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(41, 'Dian Setiyo Rini', '199501032019015201', '3516164301950001', '082141319116', 'diansetyorini03011995@gmail.com', 'Clangap RT 003 RW 005, Murip, Jetis, Mojokerto', 6, '903575470602000', '1420015155475', 'Mojokerto', '1995-01-03', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(42, 'Dewi Nurasrifah, dr., Sp.DV', '198602222019015201', '3578086202860003', '081215316322', 'q@q', 'Graha Gunungsari III No 32-A7 RT 3 RW , Gayungan, Surabaya', 9, '460816432606000', '1420017266973', 'Surabaya', '1986-02-22', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 192, 0, 0, 0, 1, 1, 2, 1, 1, 36, 9, '0', '0', 3, 0, 1, 'rsunair2019'),
(43, 'Devvy Mayangsari', '199412242019015201', '3577016412940003', '08563664324', 'devvymayangsari@gmail.com', 'Jl. Sarana Mulya No. 02 RT 005 RW 002, Rejomulyo, Kartoharjo, Madiun', 6, '-', '9000034135278', 'Magetan', '1994-12-24', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(44, 'Cindy Puspitasari', '199512012019015201', '3521124112950001', '082141550225', 'cindypuspitasari95@gmail.com', 'Gendingan Kidul RT 2 RW 6, Gendingan, Widodaren, Ngawi', 6, '-', '1420017312645', 'Ngawi', '1995-12-01', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 36, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(45, 'Azkiyatul Fitri', '199503072019015201', '3528024703950001', '087849423156', 'azkiyatulfitri@gmail.com', 'Dsn Jambul RT 001 RW 004, Tanjung, Pademayu', 5, '-', '1420017307561', 'Pamekasan', '1995-03-07', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(46, 'Arie Rahmawati', '199707272019015201', '3578086707970004', '085704397417', 'arierahmawati07@gmail.com', 'Kedung Tarukan Baru 2/19, Mojo, Gubeng, Surabaya', 5, '-', '1420017291260', 'Surabaya', '1997-07-27', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(47, 'Annisa Dewi Khartikasari', '199504192019015201', '3578095904950001', '082232372908', 'nhiza_sari@yahoo.com', 'Keputih Perintis V no 8 Surabaya', 5, '-', '1400018185133', 'Jayapura', '1995-04-19', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(48, 'Andari Pramia Apsari', '199504022019015201', '3524054204950001', '081249581193', 'arta.andari457@gmail.com', 'Raya Plaosan 65, RT 002 RW 003, Plaosan, Babat, Lamongan', 6, '-', '1410013438221', 'Lamongan', '1995-04-02', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(50, 'Alfina Maghfiroh Safitri', '199503012019015201', '3578064103950002', '089623566931', 'alfinamaghfirohs@gmail.com', 'Banyu Urip Wetan 5-H/18, RT 008 RW 004, Putat Jaya, Sawahan, Surabaya', 6, '-', '1420017282483', 'Surabaya', '1995-03-01', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(51, 'Ahmad Ainul Zaqqi', '199603182019015101', '3525051803960003', '085731904905', 'zakyainul7@gmail.com', 'Petis Benem RT 2 RW 3, Petis Benem, Duduk Sampeyan, Gresik', 5, '-', '1420017307157', 'Gresik', '1996-03-18', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 2, 1, 2, 3, 1, 17, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(52, 'A''ida Fitriyah', '199507072019015201', '3524084707950002', '081232091461', 'aidafaitiiyah@gmail.com', 'Ploso Timur 9/27-A, RT 009 RW 009, Ploso, Tambak Sari, Surabaya', 6, '-', '1410013438213', 'Lamongan', '1995-07-07', '2019-01-28', '2019-01-28', '2020-01-27', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(53, 'Alvinia Laksmi Fitriaty', '199412012019015201', '3578234112940001', '0895410764887/085655478821', 'q@q', 'Jl. Karah 128 RT 001 RW 006, Karah, Jambangan, Surabaya', 6, '-', '1420017274605', 'Surabaya', '1994-12-01', '2019-01-11', '2019-01-11', '2020-01-10', '-', '-', 1, 154, 0, 0, 0, 1, 1, 2, 4, 1, 28, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(54, 'Dindo Wahyuprayitno', '198405312019015101', '3578023105840001', '08123017575', 'q@q', 'Jl. Sidosermo PDK I KAV G/123, Sidosermo, Wonocolo, Surabaya', 6, '661371153609000', '9000034129453', 'Surabaya', '1984-05-31', '2019-01-02', '2019-01-02', '2020-12-31', '-', '-', 1, 169, 0, 0, 0, 2, 1, 2, 4, 1, 2, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(55, 'Yunita Arimulyani, dr', '199006182018125201', '3515185806900005', '082302357689', 'yunita0arimulyani@gmail.com', 'Tirta Bougenvile No.23 RT 003 RW 014, Kureksari, Waru, Sidoarjo', 7, '660555939643000', '1410006885768', 'Jakarta', '1990-06-18', '2018-12-21', '2018-12-21', '2019-12-20', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(56, 'Khoir Amaliin, dr', '199407202018125201', '3578276007940003', '081335566045', 'dr.khoirmaliin@gmail.com', 'Simo Jawar 7C-2/2 RT 003 RW 010, Simomulyo Baru, Sukomanunggal, Surabaya', 7, '829046895604000', '9000015052336', 'Surabaya', '1994-07-20', '2018-12-21', '2018-12-21', '2019-12-20', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(57, 'Soraya Isfandiary Iskandar, dr', '199409252018125201', '3578036509940004', '085331770069', 'isfandiary@yahoo.com', 'Jl. Pandugo Timur 3/I Blok A/53 RT 001 RW 005, Penjaringan Sari, Rungkut, Surabaya', 7, '825542293615000', '1420017159392', 'Surabaya', '1994-09-25', '2018-12-21', '2018-12-21', '2019-12-20', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(59, 'Sherly Dwi Agustiningrum', '199608082018125201', '3518134808960003', '087836688710', 'sherlydwiningrum@gmail.com', 'Jl. Barito VI RT006 RW 006, Kel. Mangundikaran, Kec. Nganjuk, Kab. Nganjuk', 6, '869364190655000', '9000034135765', 'Nganjuk', '1996-08-08', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(60, 'Prisma Andita Pebriaini', '199602202018125201', '3516166002960002', '087858487476', 'q@q', 'Canggu Permai Blok 3B/17 RT 018 RW 004, Kel. Canggu, Kec. Jetis, Kab. Mojokerto', 6, '869161471602000', '1420017181347', 'Ponorogo', '1996-02-20', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(62, 'Nyonita Ratna Sari', '199308032018125201', '3514117008930001', '08113626303', 'q@q', 'Lingk Plumbon RT 002 RW 006, Kel. Pandaan, Kec. Pandaan, Kab. Pasuruan', 6, '-', '1420017185827', 'Pasuruan', '1993-08-03', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(63, 'Nurul Rachmania', '199702172018125201', '3515135702970005', '08987007761', 'q@q', 'Tanjung Anom RT 001 RW 005, Tanjungsari, Taman, Kab. Sidoarjo', 5, '869032300603000', '1420017166603', 'Sidoarjo', '1997-02-17', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 175, 0, 0, 0.9, 1, 1, 2, 2, 1, 46, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(64, 'Nurul Aidi', '198401012018125101', '3509190101840021', '082234551910', 'q@q', 'Jl. Arowana 5/31 Lingk. Gebang Taman RT 001 RW 001, Kebonagung, Kaliwates, Kab. Jember', 3, '-', '1420017159947', 'Jember', '1984-01-01', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '0', '0', 1, 0, 1, 'rsunair2019'),
(65, 'Novita Dwi Kristanti', '199408272018125201', '3520106708940001', '08999922478', 'novitadwikristanti@yahoo.com', 'Desa Belotan RT 013 RW 005, Belotan, Bendo, Kab. Magetan', 5, '867892606646000', '1420017166553', 'Madiun', '1994-08-27', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 175, 0, 0, 0.9, 1, 1, 2, 2, 1, 46, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(66, 'Nilam Cahya Nafiah', '199608212018125201', '3517186108960002', '085707046959', 'q@q', 'Dsn Banjarsari RT 006 RW 002, Kel. Banjarsari, Kec. Bandar Kedung Mulyo, Kab. Jombang', 6, '905177853649000', '1420017186254', 'Jombang', '1996-08-21', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(67, 'Nurul Nafisah', '199608102018125201', '3578295008960001', '082234480185', 'Nnafisah52@yahoo.co.id', 'Bulak Kalitinjang Baru 2-C/01 RT 003 RW 006, Bulak, Surabaya', 5, '868537424619000', '1420017181453', 'Surabaya', '1996-08-10', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 175, 0, 0, 0.9, 1, 1, 2, 2, 1, 9, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(68, 'Muhammad Reza Rizky Putra, dr', '199306292018125101', '3509122906930000', '085746684065', 'muhrezarizky@yahoo.co.id', 'Dusun Krajan RT 002 RW 002, Ambulu, Kab. Jember', 7, '826506669626000', '1430010910840', 'Surabaya', '1993-06-29', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 194, 0, 0, 0, 2, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(69, 'Khansa Muthiah', '199604282018125201', '3404126804960001', '0895393355243', 'q@q', 'Nglempongsari NGJ/07 RT 015 RW 027, Kel. Sariharjo, Kec. Ngaglik, Kab. Sleman', 6, '869418293542000', '1420013435994', 'Sleman', '1996-04-28', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(70, 'Hafid Nur Dwiansyah', '199204152018125101', '3578081504920003', '082140715192', 'q@q', 'Gubeng Klingsingan 5/56-K RT 007 RW 003, Gubeng, Surabaya', 3, '868213851606000', '1420017173518', 'Surabaya', '1992-04-15', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 179, 0, 0, 0.9, 2, 1, 2, 2, 1, 39, 2, '0', '0', 1, 0, 1, 'rsunair2019'),
(71, 'Dinny Indriani Dewi', '198202152018125201', '3578105502820001', '081330156980', 'bundadie15@gmail.com', 'Jl. Tengger I/31 RT 002 RW 003, Wates, Magersari, Mojokerto', 5, '449784347619000', '1420017169235', 'Surabaya', '1982-02-15', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 15, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(72, 'Bondan Kandhito', '197802222018125201', '3578226202780001', '081331244433', 'kandhita@gmail.com', 'Jl. Karang Menjangan 3-B No. 29 RT 003 RW 007, Mojo, Gubeng, Surabaya', 6, '-', '1420017166769', 'Surabaya', '1978-02-22', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(73, 'Asty Amalia Safitri', '199601092018125201', '3571014901960005', '085330424940', 'q@q', 'Mojoroto Gg X No. 1 RT 029 RW 010, Kel. Mojoroto, Kec. Mojoroto, Kota Kediri', 6, '-', '9000034135419', 'Kediri', '1996-01-09', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(74, 'Ardha Isma Maziyah', '199608272018125201', '3516106708960001', '081249646428', 'q@q', 'Dsn. Mojo Kerep RT 009 RW 003, Kel. Pacing, Kec. Bangsal, Kab. Mojokerto', 6, '-', '1420017186213', 'Lamongan', '1996-08-27', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(75, 'Andra Fifian Aprilia', '198704092018125201', '3515174904870001', '081362117700', 'q@q', 'Bhaskara Tengah C-34 RT 008 RW 002, Kalisari, Mulyorejo, Surabaya', 6, '349637926643000', '1410000009076 ', 'Surabaya', '1987-04-09', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 173, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 6, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(76, 'Alief Waitupu, dr', '199312162018125101', '3526031612930004', '081232570050', 'alief.waitupu@gmail.com', 'Jl. Raya Ketengan RT 002 RW 002, Tunjung, Burneh, Kab. Bangkalan', 7, '829404169644000', '1410013765920', 'Bangkalan', '1993-12-16', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 194, 0, 0, 0, 2, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(77, 'Agong Prasetyo Ragil', '199408052018125101', '3578080508940001', '082139756239', 'Agungragil111@gmail.com', 'Jojoran 3 Perintis Dalam 26 RT 011 RW 008, Mojo, Gubeng, Surabaya', 3, '806300661606000', '1420017159806', 'Surabaya', '1994-08-05', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 183, 0, 0, 0.9, 2, 1, 2, 2, 1, 14, 2, '0', '0', 1, 0, 1, 'rsunair2019'),
(78, 'Adanan', '198810282018125101', '3578032910880003', '082257801293', 'q@q', 'Medokan Ayu MA3/F-9 RT 002 RW 008, Medokan Ayu, Rungkut, Surabaya', 6, '-', '1420017027235', 'Kolong', '1988-10-29', '2018-12-10', '2018-12-10', '2019-12-09', '-', '-', 1, 174, 0, 0, 0.9, 2, 1, 2, 3, 1, 17, 2, '0', '0', 1, 0, 1, 'rsunair2019'),
(79, 'Surya Aditya', '199310172018115101', '3578301710930002', '082264400860', 'q@q', 'Pondok Benowo Indah Blok BH-09 RT 007 RW 008, Babat Jerawat, Pakal, Surabaya', 6, '864879366604000', '1420013561161', 'Surabaya', '1993-10-17', '2018-11-01', '2018-11-01', '2018-10-31', '-', '-', 1, 158, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 27, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(80, 'Rudi Raharjo', '199309022018115101', '3578130209930001', '081216708048', 'q@q', 'Kalibutuh Timur III/5-A RT 005 RW 007, Tembok Dukuh, Bubutan, Surabaya', 3, '866069842614000', '1420017076471', 'Surabaya', '1993-09-02', '2018-11-01', '2018-11-01', '2019-10-31', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(81, 'Prima Rahmadhany', '198402212018115201', '3173026102840001', '08155000220', 'q@q', 'Nginden Intan Timur VI F1/34 A RT 004 RW 009, Nginden Jangkungan, Sukolilo, Surabaya', 8, '468505904036000', '1420021021984', 'Ambarawa', '1984-02-21', '2018-11-01', '2018-11-01', '2019-10-31', '-', '-', 1, 33, 0, 0.2, 0.8, 1, 1, 2, 1, 1, 4, 8, '0', '0', 1, 0, 1, 'rsunair2019'),
(82, 'Frans Ardany Dwi Wahyuningsih', '198905232018115201', '3578036305890002', '082232333058', 'q@q', 'Rungkut Kidul RK 4 Blok C/24 RT 003 RW 009, Rungkut Kidul, Rungkut, Surabaya', 9, '809994973615000', '1420017037978', 'Surabaya', '1989-05-23', '2018-11-01', '2018-11-01', '2019-10-31', '-', '-', 1, 192, 0, 0, 0, 1, 1, 2, 1, 1, 36, 9, '0', '0', 1, 0, 1, 'rsunair2019'),
(83, 'Elistiana', '199308082018115201', '3525104808930002', '08990309195', 'q@q', 'Topaz VI/18, RT006/RW005, Kembangan, Kebomas, Gresik', 5, '864967534612000', '1420017156661', 'Surabaya', '1993-08-08', '2018-11-01', '2018-11-01', '2019-10-31', '-', '-', 1, 141, 0, 0, 0.9, 1, 1, 2, 2, 1, 18, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(84, 'Cholifah Tri Wahyuni', '199401092018105201', '3516034901940001', '085732212006', 'q@q', 'Dusun Pandan Arum RT 001 RW 002, Pandanarum, Pacet, Kab. Mojokerto', 6, '864336953602000', '1420017066274', 'Mojokerto', '1994-01-09', '2018-11-01', '2018-11-01', '2019-10-31', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(85, 'Aldino Putro Adhi', '199308282018115101', '3578032808930001', '081335531470', 'q@q', 'Medayu Selatan 5-M/16 RT 003 RW 004, Medokan, Rungkut, Surabaya', 3, '709396923615000', '1410013675681', 'Surabaya', '1993-08-28', '2018-11-01', '2018-11-01', '2019-10-31', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(86, 'Afnan Afidatul Ummah', '199603182018115201', '3506235806960001', '085745625495', 'q@q', 'Dsn. Susuhbango Utara RT 003 RW 001, Susuhbango, Ringinrejo, Kab. Kediri', 6, '-', '1710001132011', 'Kediri', '1996-03-18', '2018-11-01', '2018-11-01', '2019-10-31', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(87, 'Yustina Dwi Ratnawati', '199311042018105201', '3506134411930001', '081242730064', 'yustinadwi730@gmail.com', 'Dsn Sumber Asri RT 002 RW 001, Sonorejo, Grogol, Kab. Kediri', 5, '864571435655000', '1420017029702', 'Kediri', '1993-11-04', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 139, 0, 0, 0.9, 1, 1, 2, 2, 1, 14, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(88, 'Yuli Putri Lestari', '199407022018105201', '3504054207940004', '085745016156', 'yuliputrilestari274@gmail.com', 'Dsn Banca''an, RT 004 RW 003, Mojosari, Kauman, Kab. Tulungagung', 6, '863724134629000', '1420016999517', 'Tulungagung', '1994-07-02', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 12, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(89, 'Yoki Surya', '198402012018105101', '3578260102840003', '089610038666', 'yoki.surya@gmail.com', 'Jl. Dharmahusada Indah Utara U-251 RT 005 RW 008, Mulyorejo, Surabaya', 9, '831631254619000', '1410016766198', 'Surabaya', '1984-02-01', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 192, 0, 0, 0, 2, 1, 2, 1, 1, 36, 9, '0', '0', 3, 0, 1, 'rsunair2019'),
(90, 'Yanuar Sukarno', '199301222018105101', '3578142201930001', '082247337288', 'yanuar.sukarno22@gmail.com', 'Manukan Mulyo V Blok 9-E/12 RT 005 RW 002, Manukan Kulon, Tandes, Surabaya', 5, '848731444604000', '1400017249617', 'Surabaya', '1993-01-22', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 142, 0, 0, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(91, 'Wahyu Setya Budi', '198307082018105101', '3578230807830002', '087853199285', 'wahyusb8783@gmail.com', 'Karah Agung II/43, RT001 RW 010, Karah, Jambangan, Surabaya', 5, '863345112609000', '1420017014829', 'Surabaya', '1983-07-08', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 169, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 2, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(92, 'Tennia Paramitha', '199804102018105201', '3515115004980005', '085749967626', 'tenniapril@gmail.com', 'Perumahan Jatikalang Indah Blok A5/37 RT 021 RW 005, Jatikalang, Krian, Kab. Sidoarjo', 3, '863733127603000', '1420017028910', 'Surabaya', '1998-04-10', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 183, 0, 0, 0.9, 1, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(93, 'Teguh Satrio', '199612212018105101', '3517122112960001', '085731103366', 'satrioteguh21@gmail.com', 'Dsn Jombok RT 007 RW 002, Jombok, Kesamben, Kab. Jombang', 5, '900958158649000', '1420017019810', 'Jakarta', '1996-12-21', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 138, 0, 0, 0.9, 2, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(94, 'Talitha Ma''rufiah Froma', '199609082018105201', '3578264809960001', '083896565600', 'talithamfr@gmail.com', 'Manyar Sabrangan 8A/30 RT 003 RW 002, Mulyorejo, Surabaya', 5, '863711156619000', '1420017019224', 'Surabaya', '1996-09-08', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 144, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(95, 'Susila Rusdiana Dewi', '199109292018105201', '3515136909910009', '083897078721', 'susirdewi29@gmail.com', 'Jl. Mutiara 2.5 Blok AI No. 15 RT 004 RW 012, Petiken, Driyorejo, Kab. Gresik', 6, '975920620603000', '1420017034058', 'Sidoarjo', '1991-09-29', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 139, 0, 0, 0.9, 1, 1, 2, 2, 1, 14, 4, '1800000', '450000', 1, 0, 2, 'rsunair2019'),
(96, 'Sofiatul Ma''fuah', '199407062018105201', '3509184607940001', '081358331759', 'misofiatulmafuah@gmail.com', 'Dusun Jatirejo RT 006 RW 004, Sidodadi, Tempurejo, Kab. Jember', 6, '863912606626000', '1430018240018', 'Jember', '1994-07-06', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(97, 'Sjafrilia Rachmadilla', '199705052018105201', '3578084505970001', '087852605016', 'sjafrilia.r@gmail.com', 'Bratang Binangun 5-B/47 RT 003 RW 008, Baratajaya, Gubeng, Surabaya', 5, '863698437606000', '1420017007468', 'Surabaya', '1997-05-05', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 169, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 2, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(98, 'Siti Nur Yatimah', '198810162018105201', '3525145610880001', '082139519951', 'Nuryatimah1610@gmail.com', 'Kapten Dulasim 04/138, RT 004 RW 006, Singosari, Kebomas, Kab. Gresik', 3, '984048280612000', '1420017013060', 'Gresik', '1988-10-16', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(99, 'Siti Komariah', '199409182018105201', '3518165809940001', '082244924247', 'nerskomariah@gmail.com', 'Dsn Jintel RT 002 RW 001, Jintel, Rejoso, Kab. Nganjuk', 6, '863389383655000', '1410012573101', 'Nganjuk', '1994-09-18', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 49, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(100, 'Sifaul Qolbia', '199307162018105201', '3578055607930001', '082143491414', 'aqolbia@gmail.com', 'Candi Lontar Kidul 5/30 RT 004 RW 008, Lontar, Sambikerep, Surabaya', 6, '862776861604000', '1420016818600', 'Surabaya', '1993-07-16', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(101, 'Rizky Zulfia Rahma', '199209032018105201', '3504174309920002', '085852995160', 'rahmazulfia@gmail.com', 'Dsn Bakah RT 003 RW 001, Mergayu, Bandung, Kab. Tulungagung', 6, '863000402629000', '1410011476330', 'Tulungagung', '1992-09-03', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(102, 'Riza Fitri Amaly', '200001142018105201', '3515145401000005', '088217051476', 'amaly.r@gmail.com', 'Sukodono, RT 003 RW 001, Sukodono, Sukodono, Kab. Sidoarjo', 3, '863598546603000', '1420017015396', 'Sidoarjo', '2000-01-14', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(103, 'Rica Wahyuningsih Supriyadi', '199411242018105201', '3508106411940007', '08563010209', 'ricawahyuningsih00@gmail.com', 'Jl. Dr. Sutomo 23 RT 003 RW 015, Tompokersan, Lumajang, Kab. Lumajang', 6, '-', '1420017025387', 'Lumajang', '1994-11-24', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 142, 0, 0, 0.9, 1, 1, 2, 2, 1, 39, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(104, 'Retno Dewi Puspitarini', '199408222018105201', '3519106208940001', '082232660090', 'retno22dewi@gmail.com', 'Singge RT 008 RW 002, Kuwu, Balerejo, Kab. Madiun', 6, '863532560621000', '1230007558507', 'Madiun', '1994-08-22', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(105, 'Raharjo Purnomo', '198711202018105101', '3578032011870001', '085648113989', 'raharjopur@gmail.com', 'Rungkut Harapan C-3 RT 002 RW 002, Kali Rungkut, Rungkut, Surabaya', 8, '359769882615000', '1400017053480', 'Surabaya', '1987-11-20', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 173, 0, 0, 0.8, 2, 1, 2, 4, 1, 6, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(106, 'Rachmaniar Pramanasari', '198802152018105201', '3578035502880001', '0811327469', 'rachma.pramanasari@gmail.com', 'Jl. Rungkut Asri Utara XII/31 RT 001 RW 010, Rungkut, Surabaya', 7, '862713112615000', '1420016668401', 'Surabaya', '1988-02-15', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 192, 0, 0, 0, 1, 1, 2, 1, 1, 36, 9, '0', '0', 1, 0, 1, 'rsunair2019'),
(107, 'Pravita Dwi Anggraeni', '199510112018105201', '3578265110950004', '081357357321', 'pravitaanggraeni1@gmail.com', 'Kalijudan 8/14-A RT 001 RW 003, Kalijudan, Mulyorejo, Surabaya', 6, '907323240619000', '1420017064865', 'Surabaya', '1995-10-11', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 145, 0, 0.2, 0.9, 1, 1, 2, 4, 1, 28, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(108, 'Prastiwi Faricatus Soleha', '199408052018105201', '3523184508940003', '085236967449', 'prastiwifarika05@gmail.com', 'Cendoro Utara RT 001 RW 004, Cendoro, Palang, Kab. Tuban', 5, '-', '1420017027151', 'Tuban', '1994-08-05', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 150, 0, 0, 0.9, 1, 1, 2, 2, 1, 14, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(109, 'Nurul Khotimah', '199406012018105201', '3522114106940002', '085755466264', 'khotimah71@gmail.com', 'Bungur RT 002 RW 004, Bungur, Kanor, Kab. Bojonegoro', 6, '863427209601000', '1420017010397', 'Bojonegoro', '1994-06-01', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(110, 'Novia Puspita Utami Putri', '199411202018105201', '3578067011940001', '085749388476', 'noviapuspitau@gmail.com', 'Petemon 2/95-A RT 006 RW 009, Petemon, Sawahan, Surabaya', 6, '860364272614000', '1420017020321', 'Surabaya', '1994-11-30', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 165, 0, 0, 0.9, 1, 1, 2, 2, 1, 40, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(112, 'Novi Afiyanti', '199603202018105201', '3578186003960001', '082245163320', 'na.novi03@gmail.com', 'Pesapen RT 002 RW 002, Sumur Welut, Lakarsantri, Surabaya', 5, '863357653604000', '1410016755936', 'Surabaya', '1996-03-20', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(113, 'Nova Farkhatus Sholikhah', '199311162018105201', '3516135611930003', '085857595771', 'nova.sholikhah@gmail.com', 'Japan Raya Jl. Catur Blok UU/09 RT 004 RW 012, Japan, Sooko, Kab. Mojokerto', 6, '862884707602000', '1270007992090', 'Mojokerto', '1993-11-16', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(114, 'Nailiyatul Faricha', '199311222018105201', '3524146211930001', '085648448688', 'naily.faricha@gmail.com', 'Ds Kaliuntu RT 002 RT 001, Kaliuntu, Jenu, Kab. Tuban', 6, '863535852648000', '1410012572889', 'Lamongan', '1993-11-22', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(115, 'Nadhila Nuril Widyaningrum', '199310012018105201', '3517094110930006', '081249106600', 'nadhila.nuril@gmail.com', 'Jl. Empu Sedah No. 9 RT 007 RW 001, Kepanjen, Jombang, Kab. Jombang', 5, '863187282649000', '1420017000299', 'Jombang', '1993-10-01', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 140, 0, 0, 0.9, 1, 1, 2, 2, 1, 38, 3, '1700000', '400000', 1, 0, 2, 'rsunair2019'),
(116, 'Mutiara Anisa''', '199408092018105201', '3518164908940002', '082244928988', 'annisamutiara75@yahoo.com', 'Kentingan RT 001 RW 001, Puhkerep, Rejoso, Kab. Nganjuk', 6, '863000717655000', '1420017027078', 'Nganjuk', '1994-08-09', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(117, 'Muhammad Iqbal', '199305112018105101', '3515131105930009', '082144604476', 'miq110593@gmail.com', 'Kavling Blok A-5, RT 024 RW 008, Kedungturi, Taman, Kab. Sidoarjo', 6, '-', '1420017016089', 'Surabaya', '1993-05-11', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 168, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 31, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(118, 'Muhammad Faris Rahmat Putra', '199212282018105101', '3578082812920004', '087852670076', 'q@q', 'Gubeng Airlangga 7/5 RT 002 RW 002, Airlangga, Gubeng, Surabaya', 6, '862977246606000', '1410015014830', 'Surabaya', '1992-12-28', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 155, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 34, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(119, 'Muhammad Dimas Rahmadiyanto', '199212192018105101', '3578231912920001', '085746373705', 'muh.dimas@gmail.com', 'Karah Agung II/47 RT 001 RW 010, Karah, Jambangan, Surabaya', 7, '863752358609000', '1420017037937', 'Surabaya', '1992-12-19', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 195, 0, 0, 0, 2, 1, 2, 1, 1, 36, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(120, 'Mohammad Arif Budi Prasetyo', '199307012018105101', '3524030107930006', '-', 'q@q', 'Kedung RT 001 RW 001, Kedungwaras, Modo, Kab. Lamongan', 5, '-', '1420017002139', 'Lamongan', '1993-07-01', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 169, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 35, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(121, 'Mochamad Alfianto', '199105022018105101', '3578060205910004', '083854697986', 'q@q', 'Kupang Gunung Timur 6/9-A RT 005 RW 006, Putat Jaya, Sawahan, Surabaya', 3, '-', '1310015357421', 'Surabaya', '1991-05-02', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 178, 0, 0, 0.9, 2, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(122, 'Miftahlia Dara Asmara', '199603162018105201', '3578295603960002', '081235677704', 'miftahliadara@gmail.com', 'Bulak Cumpat Timur 3/18 RT 001 RW 002, Bulak, Surabaya', 5, '835573486619000', '1420013457774', 'Surabaya', '1996-03-16', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 138, 0, 0, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(123, 'Mentari', '199507292018105201', '3516116907950006', '085732069674', 'mentarihartonoo@gmail.com', 'Dusun Padangan, RT 003 RW 003, Sumolawang, Puri, Kab. Mojokerto', 3, '863484028602000', '1420017015370', 'Surabaya', '1995-07-29', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(124, 'Mei Lafiyanti', '199505202018105201', '3316056005950004', '082143162152', 'Yureanmey@gmail.com', 'Ngelo Brongkah, RT 003 RW 005, Ngelo, Cepu, Kab. Blora', 3, '860235100514000', '1420017014548', 'Surabaya', '1995-05-20', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(125, 'Maretha Catur Wardhani', '199503272018105201', '3519116703950001', '081360437349', 'marethablau@gmail.com', 'Jl. A. Yani RT 005 RW 002, Ngampel, Mejayan, Kab. Madiun', 5, '863007050621000', '1420017027029', 'Sumenep', '1995-03-27', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 1, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(126, 'Machfud Alfiansyah', '198405122018105101', '3578081205840003', '085748482878', 'machfudalfiansyah@gmail.com', 'Dsn. Kedungdowo RT 002 RW 007, Podoroto, Kesamben, Kab. Jombang', 3, '849037981602000', '1420017015347', 'Surabaya', '1984-05-12', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 165, 0, 0, 0.9, 2, 1, 2, 2, 1, 40, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(128, 'M. Iqbal Zamani', '198908302018105101', '3524053008890002', '08113010345', 'iqbalzamani30@gmail.com', 'Tanggulrejo RT 001 RW 002, Babat, Kab. Lamongan', 6, '-', '1420017018135', 'Lamongan', '1989-08-30', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(129, 'Lu''luatul Machfudho', '199407282018105201', '3525106807940001', '085733530897', 'luluatul.machfudho@yahoo.com', 'Ronggo Lawe RT 005 RW 002, Gumeno, Manyar, Kab. Gresik', 6, '863155909612000', '1420017010769', 'Gresik', '1994-07-28', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(130, 'Luki Nurbianto', '199502242018105101', '3519102402950001', '087701678722', 'q@q', 'Dk. Plosorejo RT 028 RW 004, Simo, Balerejo, Kab. Madiun\r\n', 3, '864256805621000', '1420017034983', 'Madiun', '1995-02-24', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 186, 0, 0, 0.9, 2, 1, 2, 2, 1, 5, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(131, 'Lisa Efiana Malik', '199404112018105201', '3578105104940001', '081284867021', 'lisaefiana11@gmail.com', 'Krampung 3/26 RT 003 RW 003, Ploso, Tambaksari, Surabaya\r\n', 6, '835231119619000', '1420017011312', 'Surabaya', '1994-04-11', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(132, 'Lidya Aris Susanto', '198412122018105101', '3578081212840002', '082141436355', 'lidyaaris.sby1216@gmail.com', 'Jojoran I Blok B/11 RT 012 RW 008, Mojo, Gubeng, Surabaya\r\n', 3, '722337425606000', '1420017002659', 'Surabaya', '1984-12-12', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(133, 'Ledia Kurniawati ', '199612202018105201', '3519126012960006', '085790671705', 'lediakurniawati196@gmail.com', 'Sidorejo, RT 026 RW 007, Sidorejo, Saradan, Kab. Madiun\r\n', 3, '862651288621000', '1420017013136', 'Madiun', '1996-12-20', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(134, 'Lavifa Yulyanti', '199307272018105201', '3515166707930001', '085730498891', 'ylavifa27@gmail.com', 'Keboansikep RT 007 RW 001, Keboansikep, Gedangan, Kab. Sidoarjo\r\n', 5, '863450748643000', '1410016544611', 'Sidoarjo', '1993-07-27', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(135, 'Latifatul Muna', '199110252018105201', '3528036510910002', '081230372222', 'latifatulmuna@ymail.com', 'Dsn Pacangan 2, Tobungan, Galis, Kab. Pamekasan\r\n', 6, '863253092608000', '1420017025700', 'Pamekasan', '1991-10-25', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(136, 'Lailatul Isnaini', '199310092018105201', '3517044910930002', '085604839339', 'lailatulisnaini9@gmail.com', 'Dsn Serning RT 024 RW 010, Banjaragung, Bareng, Kab. Jombang\r\n', 6, '863494043649000', '1420017014977', 'Jombang', '1993-10-09', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(137, 'Juwita Esthi Utami', '199512082018105201', '3523094812950001', '085815568674', 'juwita.esthi@gmail.com', 'Dsn Krajan RT 004 RW 002, Parangbatu, Parengan, Kab. Tuban\r\n', 5, '863943296614000', '1420017022475', 'Tuban', '1995-12-08', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 165, 0, 0, 0.9, 1, 1, 2, 2, 1, 40, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(138, 'Joko Utomo', '199102212018105101', '3515132102910003', '087702664129', 'jou_jkut@yahoo.com', 'Perum Taman Andika A-38 RT 030 RW 001, Sidodadi, Taman, Kab. Sidoarjo\r\n', 5, '863630299603000', '1420017037911', 'Sidoarjo', '1991-02-21', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 2, 1, 2, 3, 1, 36, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(139, 'Kurrotul Ayu', '199402212016025201', '3578086102940003', '-', 'kurrotulayu@gmail.com', 'Gubeng Klingsingan 5/5, Surabaya', 5, '820485654606000', '9000034146291', 'SURABAYA', '1994-02-21', '2016-02-01', '2016-02-01', '2017-01-31', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(140, 'Jihan Syahira', '200005112018105201', '3578175105000002', '082288243978', 'anwar.67syaiful@gmail.com', 'Dukuh Bulak Banteng No. 49 RT 002 RW 001, Bulak Banteng, Kenjeran, Surabaya\r\n', 3, '-', '1420017034611', 'Surabaya', '2000-05-11', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 183, 0, 0, 0.9, 1, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(141, 'Jayanti Iman Sari', '199411252018105201', '3507126511940002', '082234399421', 'jayantiimansari25@gmail.com', 'Jl. Sersan Suyitno Kav 29 RT 004 RW 001, Sumberpucung, Kab. Malang\r\n', 5, '863313326654000', '1420017012609', 'Malang', '1994-11-25', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 107, 0, 0, 1, 1, 1, 2, 3, 1, 23, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019');
INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `nip_nik`, `no_ktp`, `no_telp`, `email`, `alamat`, `id_jenjang`, `no_npwp`, `no_rekening`, `tempat_lahir`, `tanggal_lahir`, `tanggal_masuk`, `tanggal_mulai_tugas`, `tanggal_akhir_tugas`, `no_bpjs_ketenagakerjaan`, `no_bpjs_kesehatan`, `id_agama`, `id_jabatan`, `id_jabatan_2`, `adjustment_factor`, `index_profesi`, `id_jk`, `id_status_pernikahan`, `id_status_kepegawaian`, `id_komite`, `id_ptkp`, `id_unit`, `id_gaji`, `gaji_variabel`, `uang_makan`, `id_rekap`, `id_pangkat`, `id_aktif`, `password`) VALUES
(142, 'Jaka Surya Hakim', '199410262018105101', '5105032610940002', '087859680015', 'jakasuryanie@gmail.com', 'Jl. Werkudara Gg III No. 4 Semarapura RT 000 RW 000, Semahapura Kelod Kangin, Klungkung, Kab. Klungkung\r\n', 6, '862689627907000', '1780001460654', 'Klungkung', '1994-10-26', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(143, 'Isfahatin', '198501232018105201', '3578046301850002', '085257009548', 'q@q', 'Tales 1/11 RT 002 RW 010, Jagir, Wonokromo, Surabaya\r\n', 3, '863001988609000', '1420017016741', 'Lamongan', '1985-01-23', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 186, 0, 0, 0.9, 1, 1, 2, 2, 1, 30, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(144, 'Septian Adly Nugroho', '199209072016025101', '3578020709920002', '-', 'septianadlin@gmail.com', 'Bendul Merisi Selatan 3/106 RT 003 RW 010 Kel.Bendul Merisi Kota Surabaya  Provinsi Jawa  Timur', 5, '835944968609000', '1420014659980', 'Surabaya', '1992-09-07', '2016-02-01', '2016-02-01', '2017-01-31', '-', '-', 1, 167, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 38, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(145, 'Agus Widayat', '199412292016035101', '3578132912930001', '-', 'aguswidayat@gmail.com', 'Dupak Baru No.9 RT 08/RW 05, Jepara Kec. Bubutan Surabaya', 3, '823542980614000', '9000034143009', 'SURABAYA', '1994-12-29', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 180, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(146, 'Andy Rahmat Santoso', '199504262016035101', '3578082604950001', '-', 'andyrahmatsantoso@gmail.com', 'JL. Jojoran 5 Timur Blok A/62 Surabaya', 3, '837245158606000', '1420014727217', 'SURABAYA', '1995-04-26', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 185, 0, 0.2, 0.8, 2, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(147, 'Bagaskara Nur Ryanto Eka Putra', '199407242016035101', '3578152407940000', '-', 'bagaskaranur@gmail.comn', 'Perum Griya Samudra Asri blok e1/28 Kramat Jegu Trosobo', 5, '847520541605000', '9000034143025', 'SURABAYA', '1994-07-24', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 180, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(148, 'Irsyad Zaki Ramadhan', '199403062018105101', '3578150603940001', '089603641630', 'irsyadzakiramadhan@gmail.com', 'Kp Suka Karya RT 001 RW 009, Babakan Asem, Teluknaga, Kab. Tangerang\r\n', 6, '863664538605000', '1400012264702', 'Surabaya', '1994-03-06', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(149, 'Budi Prastyo', '199301252016035101', '3578092502930002', '-', 'budiprastyo@gmail.com', 'Klampis Ngasem II no.6B', 3, '836404848606000', '1420014727225', 'SURABAYA', '1993-01-25', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 185, 0, 0.2, 0.8, 2, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(150, 'Ira Tonisiyah', '199407242018105201', '3578106407940002', '085606185666', 'tonisiyahira@gmail.com', 'Rangkah 6/76-E RT 003 RW 002, Rangkah, Tambaksari, Surabaya\r\n', 6, '863382578619000', '1420017016691', 'Surabaya', '1994-07-24', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(151, 'Intan Setyorini', '198901142018105201', '3578085401890001', '08113011489', 'intan_setyorini@yahoo.com', 'Gubeng Airlangga 3/78, RT 004 RW 002, Airlangga, Gubeng, Surabaya\r\n', 6, '748447737606000', '1400017656308', 'Mojokerto', '1989-01-14', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 169, 0, 0.2, 0.8, 1, 1, 2, 4, 2, 44, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(152, 'Imelda Amitharia Jayanti', '199604272018105201', '3578066704960003', '082245987655', 'imeldaaj.27@gmail.com', 'Petemon 1/89 RT 006 RW 008, Petemon, Sawahan, Surabaya\r\n', 5, '863836920648000', '1420017027326', 'Surabaya', '1996-04-27', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 165, 0, 0, 0.9, 1, 1, 2, 2, 1, 40, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(153, 'Emi Rif''atus Solikhah', '199610292016035201', '3517186910960002', '-', 'emi@gmail.com', 'Ds jayan rt/rw 02/08 barong sawahan bandarkedungmulyo', 3, '837104561602000', '1400014555651', 'Jombang', '1996-10-29', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 183, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(154, 'Imam Syafi''i', '199405102018105101', '3578101005940003', '083849838744', 'q@q', 'Kapas Madya 4-N/26 RT 014 RW 002, Kapasmadya Baru, Tambaksari, Surabaya\r\n', 3, '862741345619000', '1420017008904', 'Surabaya', '1994-05-10', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 180, 0, 0, 0.9, 2, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(155, 'Endah Widyaningrum', '199405102016035201', '3578315005940001', '-', 'endahwidyaningrum@gmail.com', 'Jl. Sambiroto III blok no.10 MengantiSurabaya', 5, '838406205604000', '1420014727233', 'Surabaya', '1994-05-10', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 114, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(156, 'Heru Sunday', '197309022018105101', '3578130209730001', '081235387589', 'herusunday.sby1116@gmail.com', 'Bagong Ginayan 7/6 RT 003 RW 003, Ngagel, Wonokromo, Surabaya\r\n', 3, '471150466614000', '1420017037432', 'Surabaya', '1973-09-02', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 177, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(157, 'Hermawan Fitriyanto', '199404152018105101', '3509091503940003', '085335299726', 'q@q', 'Dsn. Krajan RT 001 RW 006, Desa Sukorejo, Bangalsari, Kab. Jember\r\n', 3, '-', '1430018291060', 'Jember', '1994-04-15', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 177, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(158, 'Hafizh Akhadin Dzulfikar', '199610012016035101', '9515150110960001', '-', 'hafizs@gmail.com', 'Perumahan Jenggolo Asri B04, Buduran, Sidoarjo, Jawa Timur', 3, '835619354643000', '9000034143058', 'Surabaya', '1996-10-01', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 179, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 39, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(159, 'Halimatus Sholikhah', '199404042016035201', '3516064404940000', '-', 'halimatussholikhah@gmail.com', 'Dsn Ploso Ds Bangun Kecamatan Pungging Kabupaten Mojokerto', 5, '769478132602000', '9000034143066', 'Mojokerto', '1994-04-04', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(160, 'Hoirul Dwi Cahyono', '199112272016035101', '3509092712910005', '-', 'hoiruldwi@gmail.com', 'Dsn.Tugurejo RT 001 RW 007 Kel.Curah Kalong Kec.Bangalsari Kab.Jember Provinsi Jawa  Timur', 3, '836161182626000', '9000034143074', 'Jember', '1991-12-27', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 189, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(161, 'Hafifah Luthfi Wardati', '199003132018105201', '5201135303900003', '087852819300', 'hafifah.luthfi@gmail.com', 'Nginden Raya I/50, RT 004 RW 005, Nginden Jangkungan, Sukolilo, Surabaya\r\n', 3, '-', '1420017012666', 'Mataram', '1990-03-13', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(162, 'Franciscus Fajar Dwi Septian', '199809192018105101', '3578081909980003', '-', 'teniavandi@gmail.com', 'Mojo 3F/68 RT 010 RW 005, Gubeng, Surabaya\r\n', 3, '-', '1420017032292', 'Surabaya', '1998-09-19', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 3, 186, 0, 0, 0.9, 2, 1, 2, 2, 1, 30, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(163, 'Fitri Nuria Fadilah Hanif', '199607172018105201', '3511115707960002', '082143290746', 'fitri.nuria@gmail.com', 'A Yani Gang Pande No. 20, RT 006 RT 001, Dabasah, Bondowoso, Kab. Bondowoso\r\n', 5, '864169727656000', '9000033447229', 'Bondowoso', '1996-07-17', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 169, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 35, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(164, 'Fiqih Andrian Ilmansyah', '199305082018105101', '3524180805930001', '08563250739', 'fiqih.andrian.89@gmail.com', 'Karanggeneng RT 001 RW 003, Karanggeneng, Kab. Lamongan\r\n', 6, '863994430645000', '1780001999719', 'Gresik', '1993-05-08', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(165, 'Faradisha Nawandaru', '199509102018105202', '3576025009950003', '085606976160', 'faradisha0@gmail.com', 'Jl. Leci 46 RT 004 RW 003, Wates, Magersari, Mojokerto\r\n', 5, '863264396602000', '1420017015560', 'Surabaya', '1995-09-10', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 107, 0, 0, 1, 1, 1, 2, 3, 1, 23, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(166, 'Fajar Nasrulloh', '199106112018105101', '3578171106910004', '089658322556', 'fajar_nasrulloh911@gmail.com', 'Kedinding Lor gang Teratai No. 4 RT 017 RW 001, Tanah Kali Kedinding, Kenjeran, Surabaya\r\n', 5, '-', '1420017025494', 'Surabaya', '1991-06-11', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 142, 0, 0, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(167, 'Fairuza Syarfina', '199504072018105201', '3578104704950003', '087852738413', 'fairuza.syarfina-13@ff.unair.ac.id', 'Kalikepiting Jaya 4/24, RT 015 RW 005, Pacar Kembang, Tambak Sari, Surabaya\r\n', 6, '863713699619000', '1420014430481', 'Surabaya', '1995-04-07', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 12, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(168, 'Etika Wulandari', '199010232018105201', '3510146310900004', '081234578953', 'wulandarietika@gmail.com', 'Jojoran I Blok G Kav 1-2 RT 003 RW 013, Mojo, Gubeng, Surabaya\r\n', 5, '854391380606000', '1420017009209', 'Klaten', '1990-10-23', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 107, 0, 0, 1, 1, 1, 2, 3, 1, 23, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(169, 'Endah Puspita Cahyaning Ratri', '199112162018105201', '3578085612910001', '08999588855', 'enda.anliu@gmail.com', 'Wonorejo Timur Blok A/42 RT 003 RW 007, Wonorejo, Rungkut, Surabaya\r\n', 6, '745249656606000', '1420017012831', 'Surabaya', '1991-12-16', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 107, 0, 0, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(170, 'Dwi Nur Faidha', '199803132018105201', '3578105303980004', '089677376021', 'dwinurfaidha@gmail.com', 'Gading 1/43, RT 007 RW 007, Gading, Tambak Sari, Surabaya\r\n', 3, '862619236619000', '1420017012740', 'Surabaya', '1998-03-13', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(171, 'Nina Lestari', '199310232016035201', '3517076310930002', '-', 'ninalestari@gmail.com', 'Dsn.Kempreng RT 002 RW 003 Kel.Latsari Kec Mojowarno Kab.Jombang Provinsi Jawa  Timur', 5, '835526880602000', '1410013769120', 'Jombang', '1993-10-23', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(174, 'Putra Wahyu Winarko', '199406192016035101', '3570881906940005', '-', 'putrawahyuw@gmail.com', 'Dharmawangsa 9/28A RT 013 RW 001 Kel. Airlangga Kec.Gubeng Kota Surabaya Provinsi Jawa Timur', 3, '805527959606000', '1420014727241', 'Surabaya', '1994-06-19', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 189, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(175, 'Riesi Nur Mindiawati', '199404112016035201', '3520115104940002', '-', 'riesinur@gmail.com', 'Jl. Barat 261 MaospatiMagetan', 5, '839036456646000', '9000033638389', 'Magetan ', '1994-04-11', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 114, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(176, 'Dwi Ambarsari', '199607072018105201', '3304124707960004', '082226838492', 'dwieambarsari@gmail.com', 'Danakerta RT 002 RW 006, Danakerta, Punggelan, Kab. Banjarnegara\r\n', 5, '865135644529000', '1420017019505', 'Banjarnegara', '1996-07-07', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(177, 'Yanis Olivia Stefani', '199401042016035201', '3578054401940001', '-', 'yanisolivia@gmailcom', 'JL. Kedung Turi 2 No. 5 Surabaya', 3, '837129311607000', '1420014727274', 'Malang', '1994-01-04', '2016-03-01', '2016-03-01', '2017-02-28', '-', '-', 1, 178, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(178, 'Dimas Yoga Pangestu', '199306152018105101', '3578081506930004', '087751038508', 'dmzbodykit@yahoo.com', 'Mojo 3-F/52 RT 010 RW 005, Mojo, Gubeng, Surabaya\r\n', 6, '805215431606000', '1420017019877', 'Surabaya', '1993-06-15', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(179, 'Dimartari Fitri Atmasari', '199403152018105201', '3513145503940002', '085777007707', 'dimar.dita@gmail.com', 'Jl. Teratai 65 Perum Kebonagung RT 002 RW 004, Kebonagung, Kraksaan, Kab. Probolinggo\r\n', 6, '863410866625000', '1420017011767', 'Probolinggo', '1994-03-15', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 107, 0, 0, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(181, 'Aula Khoirun Nisa''', '199806032016035201', '3524054306980003', '-', 'aulakhoirunnisa@gmail.com', 'RT 003 RW 002 Kel.Trepam Kec.Babat Kab.Lamongan Provinsi Jawa Timur', 3, '-', '9000034143017', 'Lamongan', '1998-06-03', '2016-03-10', '2016-03-10', '2017-03-09', '-', '-', 1, 174, 0, 0.15, 0.9, 1, 1, 2, 3, 1, 23, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(182, 'Denis Ida Riftanti', '199512312016035201', '3515097112950001', '-', 'denisida@gmail.com', 'Griya Flamboyan RT 015 RW 005 Kel.Kepadangan Kec.Tulangan Kab.Sidoarjo Provinsi Jawa Timur', 3, '835927930603000', '9000034143033', 'Surabaya', '1995-12-31', '2016-03-10', '2016-03-10', '2017-03-09', '-', '-', 1, 174, 0, 0.2, 0.9, 1, 1, 2, 3, 1, 16, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(183, 'Fitri Isnani', '199703042016035201', '3515034403970002', '-', 'fitriisnani@gmail.com', 'Jenggot Utara RT 006 RW 003 Kel.Jenggot Kec.Krembung Kab Sidoarjo Provinsi Jawa Timur', 3, '804244887603000', '9000034143041', 'Sidoarjo', '1997-03-04', '2016-03-10', '2016-03-10', '2017-03-09', '-', '-', 1, 174, 0, 0.15, 0.9, 1, 1, 2, 3, 1, 22, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(184, 'Dian Ratna Fatmawati', '199401302018105201', '3513027001940001', '081216430506', 'dian.ratna1994@gmail.com', 'Dusun Tempuran RT 003 RW 002, Sumber, Kab. Probolinggo\r\n', 6, '863542387625000', '1420017010215', 'Probolinggo', '1994-01-30', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 107, 0, 0, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(185, 'Dian Mutiara Chairunnisa', '199405072018105201', '3526124705940004', '083852971475', 'dianmutiarach365@gmail.com', 'Rumdis Labinsen 04 RT 003 RW 002, Sukolilo Barat, Labang, Kab. Bangkalan\r\n', 6, '863314662644000', '1400018049438', 'Bangkalan', '1994-05-07', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(186, 'Mirna Elita', '199706302016035201', '3523177006970001', '-', 'mirnaelita@gmail.com', 'Dsn.Dolok RT 003 RW 005 Kel.Klotok Kec.Plumpang Kab Tuban Provinsi Jawa Timur', 3, '814525317648000', '9000034143082', 'Tuban', '1997-06-30', '2016-03-10', '2016-03-10', '2017-03-09', '-', '-', 1, 174, 0, 0.15, 0.9, 1, 1, 2, 3, 1, 21, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(187, 'Mochammad Rizqi Alwy', '199605112016035101', '3524071105960002', '-', 'mrizqialwy@gmail.com', 'Sedayulawas RT 002 RW 005 Kel.Sedyaulawas Kec.Brondong Kab Lamongan Provinsi Jawa Timur', 3, '-', '9000034143108', 'Lamongan', '1996-05-11', '2016-03-10', '2016-03-10', '2017-03-09', '-', '-', 1, 174, 0, 0.2, 0.9, 2, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(188, 'Diah Wukir Hapsari', '199810252018105201', '3578266510980001', '081252366888', 'diahwukirhapsari@gmail.com', 'Manyar Sabrangan 7/4B RT 002 RW 002, Mulyorejo, Surabaya\r\n', 3, '863508941619000', '1420017018184', 'Surabaya', '1998-10-25', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 186, 0, 0, 0.9, 1, 1, 2, 2, 1, 30, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(189, 'Dewi Andini Sari', '199412102018105201', '3529015012940003', '081939004262', 'dewiandinisari@gmail.com', 'Jl. Dr. Cipto VII Perum Pondok Indah Blok H/1 RT 001 RW 006, Kolor, Kota Sumenep, Kab. Sumenep\r\n', 5, '866726011608000', '1420017019851', 'Sumenep', '1994-12-10', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 49, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(190, 'Devi Ersa', '199212122018105101', '3522261212920001', '082213666029', 'ersa335@gmail.com', 'Gondang, RT 014 RW 004, Gondang, Gondang, Kab. Bojonegoro\r\n', 6, '862604048601000', '1420017002279', 'Bojonegoro', '1992-12-12', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 169, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 35, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(191, 'Edjoelpan Rusadi', '198909102016045101', '3578031009890001', '-', 'edjoelpanrusadi@gmail.com', 'Penjaringan I RT 001 RW 002 Kel.Penjaringan Kec.Rungkut Kota Surabaya Provinsi Jawa  Timur', 6, '715855938615000', '1420014772569', 'Surabaya', '1989-09-10', '2016-04-01', '2016-04-01', '2017-03-31', '-', '-', 1, 173, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 6, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(192, 'Delvia Widaty', '199601132018105201', '3515085301960003', '085708428228', 'dlvwidaty@gmail.com', 'BCF Sekawan Anggun VII E/21 RT 044 RW 008, Bulusidokare, Sidoarjo, Kab. Sidoarjo\r\n', 6, '-', '1410016119513', 'Jakarta', '1996-01-13', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(193, 'Della Amalia Rachma', '199505162018105201', '3578105605950002', '082234909846', 'dellaamalia16@gmail.com', 'Kedung Pengkol 1/10 A, RT 003 RW 004, Pacarkembang, Tambaksari, Surabaya\r\n', 6, '863491528619000', '1420017015131', 'Surabaya', '1995-05-16', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 152, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 43, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(194, 'Dany Triarmo Prasetyo', '199410062018105101', '3578080610940005', '083832007710', 'danytriatmop@gmail.com', 'Jojoran Baru 2-A/40 RT 016 RW 012, Mojo, Gubeng, Surabaya\r\n', 6, '863385282606000', '1420017021345', 'Surabaya', '1994-10-06', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(195, 'Danik Edya Ayu Ariska', '199604182018105201', '3505145804960001', '085795738908', 'edyadanik@gmail.com', 'Lingkungan Dander, RT 003 RW 004, Talun, Kab. Blitar\r\n', 3, '863568333653000', '1420017015610', 'Blitar', '1996-04-18', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(196, 'Cindy Prastika', '199411172018105201', '1371105711940003', '081992803317', 'cindypras17@gmail.com', 'Jl. Ekonomi No. 30 RT 005 RW 019, Surau Gadang, Nanggalo, Padang\r\n', 6, '863444675201000', '9000032629488', 'Dumai', '1994-11-17', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(197, 'Chiza Ulazzuharo', '199309242018105201', '3515086409930001', '087881051296', 'chizaulazzuharo@gmail.com', 'Lingk. Jetis RT 010 RW 003, Lemahputro, Sidoarjo, Kab. Sidoarjo\r\n', 6, '-', '1410017193889', 'Sidoarjo', '1993-09-24', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(198, 'Bimo Dwi Lukito', '198808092018105101', '3578090908880004', '0811341126', 'q@q', 'Klampis Harapan 3/3 AA-36 RT 001 RW 008, Klampis Ngasem, Sukolilo, Surabaya\r\n', 9, '458327350606000', '1420088800049', 'Bandung', '1988-08-09', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 192, 0, 0, 0, 2, 2, 2, 1, 5, 36, 9, '0', '0', 3, 0, 1, 'rsunair2019'),
(199, 'Ayudia Jasmine Rasetya Rahardjo', '199609052018105201', '3578264509960003', '082232303021', 'jasminerasetya@gmail.com', 'Manyar Kertoarjo I/5, RT 002 RW 006, Manyar Sabrangan, Mulyorejo, Surabaya\r\n', 5, '-', '1420014687296', 'Surabaya', '1996-09-05', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 31, 9, '0', '0', 1, 0, 1, 'rsunair2019'),
(200, 'Aulia Nurul Aini', '199403232018105201', '3578106303940001', '081217773783', 'q@q', 'Kedung Tarukan 5/38 RT 006 RW 003, Pacar Kembang, Tambaksari, Surabaya\r\n', 3, '768170391619000', '1420017016725', 'Surabaya', '1994-03-23', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 186, 0, 0, 0.9, 1, 1, 2, 4, 1, 30, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(201, 'Atmim Fitria Risdiana', '199602212018105201', '3509106102960003', '085655962578', 'fitriarisdianaatmim@gmail.com', 'Dsn Lohong RT 009 RW 003, Karang Semanding, Balung, Kab. Jember\r\n', 6, '-', '1420017025452', 'Jember', '1996-02-21', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 142, 0, 0, 0.9, 1, 1, 2, 2, 1, 39, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(202, 'Atika Risdiyanti', '199510242018105201', '3578096410950001', '085855580181', 'atikarisdiyanty@gmail.com', 'Asempayung No. 46 RT 001 RW 003, Kel. Gebang Putih, Sukolilo, Surabaya\r\n', 5, '863448981606000', '1420017022418', 'Surabaya', '1995-10-24', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 165, 0, 0, 0.9, 1, 1, 2, 2, 1, 40, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(203, 'Arga Nur Prasetiawan', '199407252018105101', '3518112507940001', '085735034950', 'arganurprasetiawan30@gmail.com', 'Dsn Ketangi RT 005 RW 009, Kampungbaru, Tanjunganom, Kab. Nganjuk\r\n', 6, '-', '1420017022186', 'Nganjuk', '1994-07-25', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(204, 'Annisa Sabrina, drg., Sp.KG', '198507132018105201', '3578075307850002', '08175297730', 'annisabrina57@gmail.com', 'Bhakti Husada 4/5 RT 011 RW 005, Mojo, Gubeng, Surabaya\r\n', 9, '078811494611000', '1420006043730', 'Surabaya', '1985-07-13', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 192, 0, 0, 0, 1, 2, 0, 1, 0, 36, 0, '', '', 0, 0, 0, ''),
(205, 'Amiiroh Aulia Sari', '199905302018105201', '3515037005990001', '0895340226162', 'amiirohaulias@gmail.com', 'Dusun Wringinanom, RT 010 RW 003, Ploso, Krembung, Kab. Sidoarjo\r\n', 3, '863091583603000', '1420017017038', 'Sidoarjo', '1999-05-30', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(206, 'Amalia Prastyarini', '199704162018105201', '3507325604970007', '083813836458', 'prastyarinia@yahoo.co.id', 'Sumber Kajar RT 002 RW 008, Kel. Plaosan, Kec. Wonosari, Kab. Malang\r\n', 3, '-', '1410016844540', 'Malang', '1997-04-16', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 175, 0, 0, 0.9, 1, 1, 2, 2, 1, 13, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(207, 'Alvita Brilliana Rahmawati Arafah', '199505092018105201', '3578204905950004', '082231025095', 'rahma.brilliana@gmail.com', 'Jl. Wiyung Indah III Blok H/17, RT 002 RW 006, Jajar Tunggal, Wiyung, Surabaya\r\n', 6, '903984201618000', '1410013286349', 'Surabaya', '1995-05-09', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 173, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 6, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(208, 'Akalili Lisa Rodhiyah', '199509102018105201', '3578085009950001', '085940422295', 'akalilisa@gmail.com', 'Manyar Sambongan 75-E, RT 005 RW 010, Kertajaya, Gubeng, Surabaya\r\n', 5, '863175139606000', '9000027438895', 'Surabaya', '1995-09-10', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 152, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 43, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(209, 'Aisyah Fitria Nurjanah', '199703202018105201', '3519106003970001', '081515959128', 'aisyahfitria82@gmail.com', 'Gading, RT 015 RW 006, Gading, Balerejo, Kab. Madiun\r\n', 3, '862922754621000', '1420017015651', 'Madiun', '1997-03-20', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 174, 0, 0, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(210, 'Agustin Puspitasari', '198508162018105201', '3515025608850004', '087851155043', 'Pietleonheart@gmail.com', 'Wonoplintahan RT 002 RW 002, Wonoplintahan, Prambon, Kab. Sidoarjo\r\n', 5, '841590706603000', '1420017017046', 'Sidoarjo', '1985-08-16', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(211, 'A. Mukromin', '199307202018105101', '3523172812930002', '-', 'mukromm81@gmail.com', 'Dsn Geger RT 005 RW 002, Magersari, Plumpang, Kab. Tuban\r\n', 3, '862486032648000', '1420017002543', 'Tuban', '1993-07-20', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(212, 'Shelly Dwi Putri', '199503162018105201', '3578095603950001', '083854427103', 'shellydp16@gmail.com', 'Klampis Ngasem 101 RT 003 RW 001, Klampis Ngasem, Sukolilo, Surabaya\r\n', 5, '863698148606000', '1420017013185', 'Surabaya', '1995-03-16', '2018-10-11', '2018-10-11', '2019-10-10', '-', '-', 1, 141, 0, 0, 0.9, 1, 1, 2, 2, 1, 18, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(213, 'Pochik Try Walachirin', '199412272018105101', '3578102712940003', '085731508257', 'q@q', 'Jagiran Barat Kuburan No. 10, RT 010 RW 003, Tambaksari, Tambak Sari, Surabaya\r\n', 6, '850092925619000', '1420017019836', 'Surabaya', '1994-12-27', '2018-10-11', '2018-10-11', '2019-10-10', '-', '-', 1, 141, 0, 0, 0.9, 2, 1, 2, 2, 1, 18, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(214, 'Nurul Nimas Sayekti', '199402042018105201', '3578084402940001', '081216200168', 'q@q', 'Jojoran Stal 11-B, RT 005 RW 008, Airlangga, Gubeng, Surabaya\r\n', 5, '-', '1410016424905', 'Surabaya', '1994-04-02', '2018-10-11', '2018-10-11', '2019-10-10', '-', '-', 1, 141, 0, 0, 0.9, 1, 1, 2, 2, 1, 18, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(215, 'Savita Putri Rizky Auliya', '199605262018075201', '3515156605960005', '-', 'q@q', 'Jl. Sulawesi 68 RT 014 RW 004, Wadungasih, Buduran, Kab. Sidoarjo \r\n', 5, '-', '1420015990574', 'Sidoarjo', '1996-05-26', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 153, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(216, 'Rosidatus Salimah', '199110122018075201', '3527045210910006', '081316111055', 'q@q', 'Dsn Pesisir, Tambaan, Camplong, Kab. Sampang\r\n', 6, '854585262644000', '1410015261498', 'Sampang', '1991-10-12', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(217, 'Rofiqoh Novianti', '199311022018075201', '3526134211930002', '082244808584', 'q@q', 'Dsn Bara''alah, Petrah, Tanah Merah, Kab. Bangkalan\r\n', 6, '851599407644000', '1400017789455', 'Bangkalan', '1993-11-02', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(218, 'Nimas Ayu Puspita Sari', '199608092018075201', '3525104908960001', '081231833145', 'q@q', 'Banjarsari, RT 006 RW 001, Banjarsari, Manyar, Kab. Gresik\r\n', 5, '851778951612000', '1780001768692', 'Gresik', '1996-08-09', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(219, 'Jihanni Mustika Mawardani', '199211082018075201', '3514214811920001', '082228467079', 'q@q', 'Pasar RT 001 RW 007, Nguling, Kab. Pasuruan\r\n', 6, '851784926624000', '1410016552663', 'Pasuruan', '1992-11-08', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(220, 'Iva Nur Aisyah Paramithasari', '199701022018075201', '3578044201970001', '-', 'q@q', 'Padmosusastro 82-B RT 003 RW 007, Darmo, Wonokromo, Surabaya\r\n', 5, '835512245609000', '1420013844047', 'Surabaya', '1997-01-02', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(221, 'Enik Harini', '199309032018075201', '3505044309930003', '081249865025', 'q@q', 'Dsn Rejowinangun RT 002 RW 003, Rejowinangun, Kademangan, Kab. Blitar\r\n', 6, '851773978653000', '1420016781790', 'Blitar', '1993-09-03', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(222, 'Devista Fitri Chyintia', '199602102018075201', '3516055002960003', '085655335389', 'q@q', 'Dsn. Tawangsari RT 002 RW 005, Bandarsari, Ngoro, Kab. Mojokerto\r\n', 5, '853270833602000', '9000044179126', 'Mojokerto', '1996-02-10', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(223, 'Udria Satya Pratama, dr., Sp.OT.', '198504292016045101', '3578082904850001', '-', 'udriasatya@gmail.com', 'Ngagel Jaya Tengah 6/15 RT005/RW003, Pucang Sewu, Gubeng, Surabaya, Jawa Timur', 9, '356830380606000', '1420014791007', 'Surabaya', '1985-04-29', '2016-04-01', '2016-04-01', '2017-03-31', '-', '-', 1, 192, 0, 0, 0, 2, 1, 2, 1, 1, 36, 9, '0', '0', 3, 0, 1, 'rsunair2019'),
(224, 'Abdul Azis', '199112242016045101', '3505012412910001', '-', 'abdulazis@gmail.com', 'Dsn. Kamogan RT 003 RW 007 Kel. Kolomayan, Kec. Wonodadi, Kab. Blitar', 7, '805569282653000', '1420014789613', 'Blitar', '1991-12-24', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(225, 'Devina Kristanti Nova', '199505112018075201', '3578045105950004', '-', 'q@q', 'Karangrejo Sawah 3/24 RT 005 RW 003, Wonokromo, Surabaya\r\n', 5, '-', '9000036355858', 'Surabaya', '1995-05-11', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 144, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(226, 'Aqwin Dwi Praja', '199409222016045101', '3510072209940002', '-', 'aqwindwipraja@gmailcom', 'Dusun Krajan 1 RT 001 RW 004, Ds Gambiran Kec. Gambiran Kab. Banyuwangi', 5, '841540511602000', '1420014790959', 'Banyuwangi', '1994-09-22', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 15, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(227, 'Arifin Kolillu Anam', '199205302016045101', '3519103005920003', '-', 'arifinkolillu@gmail.com', 'Dsn Singge RT 010 RW 002 Kel Kuwu Kec Balerejo Kab Madiun Provinsi Jawa  Timur', 7, '834439812621000', '1420014789639', 'Madiun', '1992-05-30', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(228, 'Devi Rosida Kurniawati', '199608142018075201', '3578275408960003', '082231343300', 'q@q', 'Simo Pomahan Baru Barat 3/16 RT 006 RW 005, Simomulyo Baru, Sukomanunggal, Surabaya\r\n', 5, '851493940604000', '1410016825408', 'Surabaya', '1996-08-14', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(229, 'Devi Febriana', '199403132018075201', '3522095303940002', '-', 'q@q', 'Jl. Brawijaya No. 104 RT 033 RW 005, Sugihwaras, Kepohbaru, Kab. Bojonegoro\r\n', 5, '851775650601000', '1420016700048', 'Jombang', '1994-03-13', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(230, 'Dahlia Ulfa', '199201302016045201', '3578267001920001', '-', 'dahliaulfa@gmail.com', 'Kejawan Putih Tambak Kec Mulyorejo Kota Surabaya Provinsi Jawa  Timur', 7, '804916989619000', '1420014789654', 'Surabaya', '1992-01-30', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 25, 4, '1800000', '0', 1, 0, 1, 'rsunair2019'),
(231, 'Dwi Bagus Cahyono Wibowo', '198608272016045101', '3513142708860003', '-', 'dwibaguscahyono@gmail.com', 'Dsn.Krajan RT 002 RW 001 Kel.Asembaqkor,Kec.Kraksaan Provinsi Jawa  Timur\r\n', 7, '-', '1420014789688', 'Probolinggo', '1986-08-27', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(232, 'Gita Tola Syntia Minati Dewi', '199210122016045201', '3578175210920002', '-', 'gitasyntia@gmail.com', 'Kedungmangu Selatan 5/42 RT 009 RW 003 Kel.Sidotopo Wetan Kec.Kenjeran Kota Surabaya Provinsi Jawa  Timur', 5, '836303461619000', '1420014789761', 'Surabaya', '1992-10-12', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 3, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(233, 'Handira Nadhifatul Aini', '199407252018105201', '3578306507940001', '081333670402', 'ainidira07@gmail.com', 'Dk. Langkir RT 003 RW 005, Babat Jerawat, Pakal, Surabaya\r\n', 6, '863357430604000', '1410013750690', 'Surabaya', '1994-07-25', '2018-10-15', '2018-10-15', '2019-10-14', '-', '-', 1, 100, 0, 0, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(234, 'Alfian Franstama Poli''i', '199501062018075101', '3515180601950002', '085706207706', 'q@q', 'Siwalankerto Selatan 36 RT 002 RW 006, Siwalankerto, Wonocolo, Surabaya\r\n', 5, '852547165609000', '1420016728932', 'Sidoarjo', '1995-01-06', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 22, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(235, 'Achmad Badrus Sholeh', '199610062018075101', '3526010610950001', '085730828411', 'q@q', 'Kmp. Kencat RT 002 RW 004, Bancaran, Bangkalan, Kab. Bangkalan\r\n', 5, '852643311644000', '1400017798290', 'Bangkalan', '1996-10-06', '2018-07-02', '2018-07-02', '2019-07-01', '-', '-', 1, 100, 0, 0.1, 1, 2, 1, 2, 3, 1, 36, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(236, 'Tiara Mega Lestari', '199906092018045201', '3515184906990009', '-', 'q@q', 'Jl. Kavling Mentari 1 No.44, Tambakrejo\r\n', 3, '847179389643000', '1420016569450', 'Blitar', '1999-06-09', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 174, 0, 0.2, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(237, 'Rozy Yudha Yudistira', '199102122018045101', '3508051202910002', '-', 'q@q', 'Dusun Krajan Tengah, RT010/RW001, Kel/Desa Tempeh Tengah, Kec. Tempeh, Lumajang, Jawa Timur\r\n', 6, '847118718625000', '9000044173384', 'Lumajang', '1991-02-12', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(238, 'Ristandio Arifin', '199311272018045101', '3578262711930003', '-', 'q@q', 'Mulyorejo Tengah 1/12B, RT003/RW002, Mulyorejo, Mulyorejo, Surabaya, Jawa Timur\r\n', 3, '-', '1420016570003', 'Surabaya', '1993-11-27', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 176, 0, 0.2, 0.8, 2, 1, 2, 2, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(239, 'Muhammad Wibowo Pranoto', '199609162018045101', '3524061609960002', '-', 'q@q', 'Ti Anak, RT003/RW003, Kel/Desa Ti Anak, Kec. Kedungpring, Lamongan, Jawa Timur\r\n', 3, '847321502645000', '1420016569120', 'Lamongan', '1996-09-16', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 174, 0, 0.2, 0.9, 2, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(240, 'Muhamad Yusuf Eko Nugroho', '199207042018045101', '3523100407920001', '-', 'q@q', 'Montongsekar, RT015/RW002, Kel/Desa Montongsekar, Kec. Montong, Tubang, Jawa Timur\r\n', 6, '847306438648000', '1420016572298', 'Tuban', '1992-07-04', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 100, 0, 0, 0, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(241, 'Endiqaputri Dwi Damayanti', '199506222018045201', '3515166206950001', '-', 'q@q', 'Desa Karangbong No. 32, RT001/RW001, Gedangan, Sidoarjo, Jawa Timur\r\n', 3, '846863702643000', '1420016565888', 'Sidoarjo', '1995-06-22', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 8, 1, '0', '0', 1, 0, 1, 'rsunair2019'),
(242, 'Dodik Wijanarko', '199105192018045101', '3522111905910001', '-', 'q@q', 'Dusun Bakung, RT002/RW003, Kel/Desa Bakung, Kec. Kanor, Bojonegoro, Jawa Timur\r\n', 6, '847316924601000', '9000041829400', 'Bojonegoro', '1991-05-19', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(243, 'Dimas Surya Bagaskoro', '199106302018045101', '3506173006910001', '-', 'q@q', 'Dsn Jombangan, RT003/RW011, Kel/Desa Tertek, Kec. Pare, Kediri, Jawa Timur\r\n', 6, '847220589655000', '1780001352281', 'Kediri', '1991-06-30', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 25, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(244, 'Dewi Ilmi Muamalah', '199710142018045201', '3522105410970007', '-', 'q@q', 'Dsn Randap, RT007/RW003, Ds. Pucangarum, Kec. Baureno, Bojonegoro, Jawa Timur\r\n', 3, '-', '1420016569047', 'Bojonegoro', '1997-10-14', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 174, 0, 0.2, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(245, 'Catur Fitria Arniawati', '199004242018045201', '3515076404900001', '-', 'q@q', 'Ngampelsari, RT006/RW003, Ngampelsari, Candi, Sidoarjo, Jawa Timur\r\n', 5, '847651643617000', '1410015463177', 'Sidoarjo', '1990-04-24', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 36, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(246, 'Ahmad Salamun', '198805262018045101', '3524052605880002', '-', 'q@q', 'Pendidikan, RT001/RW004, Gendongkulon, Babat, Lamongan, Jawa Timur\r\n', 3, '-', '1420016569922', 'Lamongan', '1988-05-26', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 176, 0, 0.2, 0.8, 2, 1, 2, 2, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(247, 'Aba Yusak Novi Yuhas', '199011132018045101', '3529071311900002', '-', 'q@q', 'Kedung Mangu Selatan 1/32A, RT014/RW003, Sidotopo Wetan, Kenjeran, Surabaya, Jawa Timur\r\n', 6, '-', '1420016566050', 'Sumenep', '1990-11-13', '2018-04-19', '2018-04-19', '2019-04-18', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(248, 'Uswatun Khasanah', '199410312018035201', '3503087110940001', '-', 'q@q', 'Dusun Krajan RT 011 RW 004, Watulimo, Kab. Trenggalek\r\n', 6, '841710957629000', '1440013312803', 'Trenggalek', '1994-10-31', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 1, '0', '0', 1, 0, 1, 'rsunair2019'),
(249, 'Ulfa Amelia', '198702192018035201', '3578095902870001', '-', 'q@q', 'Gebang Lor 85 RT 004 RW 001 Surabaya\r\n', 3, '973673437606000', '1400009842957', 'Surabaya', '1987-02-19', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 174, 0, 0.15, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(250, 'Tedo Briantono Basuki', '199202012018035101', '3578220102920001', '-', 'q@q', 'Gayungsari 01/12 RT 001 RW 004, Surabaya\r\n', 7, '768233009609000', '1420007748451', 'Surabaya', '1992-02-01', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 194, 0, 0, 0, 2, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(251, 'Tanti Cahyani', '199403272018035201', '3510096703940002', '-', 'q@q', 'Dusun Sawahan RT 007 RW 001, Genteng Kulon, Genteng, Kab. Banyuwangi\r\n', 6, '-', '9000013133948', 'Banyuwangi', '1994-03-27', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 140, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 38, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(252, 'Shova Rizqi Amala', '199505062018035201', '3507184605950001', '-', 'q@q', 'Dsn Urek  Urek RT 010 RW 003, Asrikaton, Pakis, Kab. Malang\r\n', 6, '843516311657000', '1440017286995', 'Malang', '1995-05-06', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 139, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(253, 'Rizky Ramadhan', '199203082018035101', '3578080803920001', '-', 'q@q', 'Jojoran 3A Blok 1/5, Mojo, Gubeng, Surabaya\r\n', 5, '841718273606000', '9000041643033', 'Surabaya', '1992-03-08', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 142, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(254, 'Nur Iflaha A''isyah', '199607052018035201', '3578154507960002', '-', 'q@q', 'Kemayoran Budidayan RT 005 RW 008 Surabaya\r\n', 5, '842671075605000', '1420013460463', 'Surabaya', '1996-07-05', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 140, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 38, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(255, 'Nikita Kawulanda Adhitira', '199110162018035101', '3516141610910003', '-', 'q@q', 'Dsn Ngudi Kidul RT 003 RW 001, Gempolkerep, Gedeg, Kab. Mojokerto\r\n', 5, '-', '1420016499872', 'Mojokerto', '1991-10-16', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 142, 0, 0.05, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(256, 'Lilik Maulidyatus Sholikhah', '199109292018035201', '3578056909910001', '-', 'q@q', 'Keputran 7/10A RT 007 RW 001, Tegalsari, Surabaya\r\n', 7, '-', '9000017408445', 'Surabaya', '1991-09-29', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(257, 'Jatu Rahmania Savitri', '199207082018035201', '3578224807920002', '-', 'q@q', 'Aspol Ketintang Blok E3 RT 001 RW 007, Surabaya\r\n', 7, '767174329609000', '1410016508400', 'Jember', '1992-07-08', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(258, 'Indri Sagita Faluvianti', '199411112018035201', '3525095111940003', '-', 'q@q', 'Kertosono RT 007 RW 003, Kertosono, Sidayu, Kab. Gresik\r\n', 6, '-', '1410012686291', 'Gresik', '1994-11-11', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(259, 'Indra Hary Nugroho', '199009122018035101', '3578111209900002', '-', 'q@q', 'Kapasari Pedukuhan 9/32 RT 004 RW 001, Surabaya\r\n', 6, '841500309616000', '9000008127590', 'Surabaya', '1990-09-12', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 15, 4, '1800000', '450000', 1, 0, 2, 'rsunair2019'),
(260, 'Imawati Annisa Safitri', '199404042018035201', '3515134404940003', '-', 'q@q', 'Bringin Wetan RT 007 RW 006, Bringin Bendo, Taman, Kab. Sidoarjo\r\n', 6, '841882459603000', '1420016501644', 'Surabaya', '1994-04-04', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 48, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(261, 'Hannik Rahmaningrum', '199311192018035201', '3505045911930001', '-', 'q@q', 'Dsn Plosorejo RT 004 RW 006, Plosorejo, Kademangan, Kab. Blitar\r\n', 6, '834136616653000', '1420016490871', 'Blitar', '1993-11-19', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(262, 'Fariska Hurun In', '199311012018035201', '3524124111930002', '-', 'q@q', 'Kalipang RT 003 RW 002, Kalipang, Sugio, Kab. Lamongan\r\n', 6, '-', '1780001574892', 'Lamongan', '1993-11-01', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(263, 'Fani Lailatul Hikmah', '199402022018035201', '3578244202940003', '-', 'q@q', 'Kutisari Selatan No. 17 RT 007 RW 003, Kutisari, Tenggilis Mejoyo, Surabaya\r\n', 6, '841944358615000', '1410012413746', 'Jombang', '1994-02-02', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(264, 'Dia Inda Amalia', '199105182018035201', '3578265805910004', '-', 'q@q', 'Kejawan Putih Tambak 7A/1 RT 002 RW 002, Surabaya\r\n', 7, '765036900619000', '1410010045847', 'Surabaya', '1991-05-18', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(265, 'Devi Sarah Intan Permatasari', '199011202018035201', '3321016011900001', '-', 'q@q', 'Waru RT 003 RW 007, Waru, Mranggen, Kab. Demak\r\n', 7, '751422296515000', '9000013190583', 'Kendal', '1990-11-20', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(266, 'Devi Ayu Kumalasari', '199311262018035201', '3577026611930002', '-', 'q@q', 'Jl. Sriti Gg. Parkit No. 37 RT 020 RW 006, Nambangan Lor, Manguharjo, Kota Madiun\r\n', 6, '842057697621000', '1440012688476', 'Madiun', '1993-11-26', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 25, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(267, 'Della Roekhmatul Irwanda', '199812162018035201', '3578265612980001', '-', 'q@q', 'Dukuh Setro 12/47 Surabaya\r\n', 3, '842785024619000', '1400017456493', 'Surabaya', '1998-12-16', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 174, 0, 0.15, 0.9, 1, 1, 2, 3, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(268, 'Adelia Ferlina Damayanti', '199506252018035201', '3578036506950002', '-', 'q@q', 'Rungkut Asri Utara XI/3 Surabaya\r\n', 6, '844508507615000', '1410013217054', 'Sumenep', '1995-06-25', '2018-03-01', '2018-03-01', '2019-02-28', '-', '-', 1, 143, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 41, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(269, 'Novi Ikhyarul Hani', '199405142018025201', '3509125405940003', '-', 'q@q', 'Dusun Sentong RT 001 RW 016, Karang Anyar, Ambulu, Kab. Jember, Jawa Timur\r\n', 6, '841202385626000', '1410012572731', 'Jember', '1994-05-14', '2018-02-07', '2018-02-07', '2019-02-06', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(270, 'Nisrina Putri Indah Kurnia', '199501082018025201', '3515074801950002', '-', 'q@q', 'Tenggulunan Jaya RT 017 RW 006, Tenggulunan, Candi, Kab. Sidoarjo, Jawa Timur\r\n', 6, '841658123617000', '1410013770623', 'Sidoarjo', '1995-01-08', '2018-02-07', '2018-02-07', '2019-02-06', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(271, 'Mita Nur Lathifah', '199406182018025201', '3515175806940001', '-', 'q@q', 'Jl. Sedati Agung II RT 004 RW 003, Sedati, Sidoarjo, Jawa Timur\r\n', 6, '840722599643000', '1410013767389', 'Gresik', '1994-06-18', '2018-02-07', '2018-02-07', '2019-02-06', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(272, 'Itsnaini Indah Farisa', '199301152018025201', '3525055501930002', '-', 'q@q', 'Wadak Kidul RT 004 RW 001, Kec. Duduk Sampeyan, Kab. Gresik, Jawa Timur\r\n', 6, '840536767612000', '1780001567110', 'Gresik', '1993-01-15', '2018-02-07', '2018-02-07', '2019-02-06', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(273, 'Gebyar Hafit Suwandaru', '199403132018025101', '3577031303940002', '-', 'q@q', 'Jl. Endah Manis Raya No. 04 RT 023 RW 007, Manisrejo, Taman, Madiun, Jawa Timur\r\n', 6, '830851655621000', '1420016454711', 'Ponorogo', '1994-03-13', '2018-02-07', '2018-02-07', '2019-02-06', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(274, 'Deby Duwi Arizka', '199507122018025201', '3522065207950001', '-', 'q@q', 'Ngunut RT 006 RW 002, Ngunut, Dander, Kab. Bojonegoro, Jawa Timur\r\n', 6, '841207657601000', '1420016438557', 'Bojonegoro', '1995-07-12', '2018-02-07', '2018-02-07', '2019-02-06', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(275, 'Ikhwan Supyanto', '199011012016045101', '3526040119000004', '-', 'ikhwansupyanto@gmail.com', 'Dsn.Sawo RT 002 RW 001 Kel Tajungan Kec Kamal Kab.Bangkalan Provinsi Jawa  Timur', 7, '816145700644000', '1420014789704', 'Bangkalan', '1990-11-01', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(276, 'Meirina Eka Kumalasari', '199305292016045201', '3519096905930002', '-', 'meirinaeka@gmail.com', 'Dsn.Koci RT 018 RW 006 Kel Matesih Kec Jiwan Kab Madiun Provinsi Jawa  Timur', 5, '728822214606000', '1420014790975', 'Madiun', '1993-05-29', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(277, 'Viky Rohmantisa Putra', '199412142017125201', '3515101412930002', '-', 'q@q', 'Simokidul RT 006 / RW 003, Kab. Sidoarjo\r\n', 6, '-', '1420016281007', 'Sidoarjo', '1993-12-14', '2017-12-11', '2017-12-11', '2018-12-12', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019');
INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `nip_nik`, `no_ktp`, `no_telp`, `email`, `alamat`, `id_jenjang`, `no_npwp`, `no_rekening`, `tempat_lahir`, `tanggal_lahir`, `tanggal_masuk`, `tanggal_mulai_tugas`, `tanggal_akhir_tugas`, `no_bpjs_ketenagakerjaan`, `no_bpjs_kesehatan`, `id_agama`, `id_jabatan`, `id_jabatan_2`, `adjustment_factor`, `index_profesi`, `id_jk`, `id_status_pernikahan`, `id_status_kepegawaian`, `id_komite`, `id_ptkp`, `id_unit`, `id_gaji`, `gaji_variabel`, `uang_makan`, `id_rekap`, `id_pangkat`, `id_aktif`, `password`) VALUES
(278, 'Rahmad Aji Hanggoro', '199208042016045101', '647401048920003', '-', 'rahmadaji@gmail.com', 'Mutiara Citra Asri D 4/3 RT 003 RW 013 Kel Sumorame Kec.Candi Kab Sidoarjo Provinsi JawaTimur', 5, '706112299617000', '1400010607944', 'Samarinda', '1992-08-04', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(279, 'Retty Wakhidatul Najmah', '199112102016045201', '3522140512910001', '-', 'rettywakhidatul@gmail.com', 'Sembung RT 004 RW 001 Kel.Sembung Kec.Kapas Kab Bojonegoro Provinsi Jawa  Timur', 7, '762518140601000', '1360007322495', 'Bojonegoro', '1991-12-10', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0, 0.8, 1, 1, 2, 3, 1, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(280, 'Rinda Hidayati', '199205032016045201', '3578064305920004', '-', 'rindahidayati@gmail.com', 'Banyu Urip Kidul 4B/21 RT 002 RW 003 Kel Banyu Urip Kec.Sawahan Kota Surabaya Provinsi Jawa –Timur', 7, '835576596614000', '1410010589679', 'Surabaya', '1992-05-03', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 25, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(281, 'Nada Nazhifah', '199507202017035201', '3515076007950003', '-', 'q@q', 'Perum Citra Sentosa Mandiri Blok H09 RT 015 RW 006, Jambangan, Candi, Kab. Sidoarjo\r\n', 5, '812918605617000', '1410015859051', 'Sidoarjo', '1995-07-20', '2017-03-01', '2017-03-01', '2019-02-28', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(282, 'Agustina Ayu Wulansari', '199808092017045201', '3578174908980001', '-', 'q@q', 'Pogot 3 Buntu No. 41, RT 001 RW 005, Kali Kedinding, Kenjeran, Surabaya, Jawa Timur\r\n', 3, '835998105619000', '1420015727364', 'Surabaya', '1998-08-09', '2017-04-10', '2017-04-10', '2019-04-09', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 8, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(283, 'Ali Ridho Wahyu Firmansyah', '199711072017045101', '3578170711970008', '-', 'q@q', 'Pogot Baru Gg XI/17, RT 010 RW 006, Tanah Kali Kedinding, Kenjeran, Surabaya, Jawa Timur\r\n', 3, '835310723602000', '9000032800535', 'Sidoarjo', '1997-11-07', '2017-04-10', '2017-04-10', '2019-04-09', '-', '-', 1, 175, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 8, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(284, 'Dwi Asriniwati', '199610032017045201', '3515184310960001', '-', 'q@q', 'Tambaksari, RT 003 RW 002, Tambak Rejo, Waru, Siduarjo, Jawa Timur\r\n', 3, '835310723602000', '9000032799984', 'Sidoarjo', '1996-10-03', '2017-04-10', '2017-04-10', '2019-04-09', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(285, 'Indra Dwi Framono', '199806062017045101', '3517020606980004', '-', 'q@q', 'Dsn. Mentaos, RT 004 RW 001, Mentaos, Gudo, Kab. Jombang, Jawa Timur\r\n', 3, '835310723602000', '9000032800048', 'Jombang', '1998-06-06', '2017-04-10', '2017-04-10', '2019-04-09', '-', '-', 1, 175, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 10, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(286, 'Seliyuzika Desiawati Angelani', '199112022016045201', '3578104212920003', '-', 'seliyuzikadesi@gmail.com', 'Lebak Jaya 5 Utara Rawasan Kav A 12/39 RT 003 RW 005 Kel.Dukuh Setro Kec Tambaksari Provinsi Jawa  Timur\r\n', 7, '759791932619000', '1420014197619', 'Surabaya', '1991-12-02', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(287, 'Mitha Susilowati', '199801192017045201', '3578105901980004', '-', 'q@q', 'Bronggalan Sawah 4F/19, RT 007 RW 009, Pacar Kembang, Tambak Sari, Surabaya, Jawa Timur\r\n', 3, '835919895617000', '9000032800097', 'Surabaya', '1998-01-19', '2017-04-10', '2017-04-10', '2019-04-09', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 13, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(288, 'Rahmawati Citra Pertiwi', '199503302017045201', '3515081003950008', '-', 'q@q', 'Jenggolo I no 6 RT 002 RW 001, Pucang, Kab. Sidoarjo\r\n', 3, '835919895617000', '1400016096308', 'Sidoarjo', '1995-03-30', '2017-04-10', '2017-04-10', '2019-04-09', '-', '-', 1, 175, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 13, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(289, 'Adityarani Putranti, drg., M.Kes.', '198411062017045201', '3578024611840001', '-', 'adityarani.putranti@gmail.com', 'Bendul Merisi Permai J1, RT 005 RW 009, Bendul Merisi, Wonocolo, Surabaya\r\n', 8, '086317534609000', '1420015670929', 'Surabaya', '1984-11-06', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 24, NULL, 0, 0, 1, 1, 0, 1, 0, 43, 0, '', '', 0, 0, 0, ''),
(291, 'Siska Dwi Purwaningtyas', '199110012016045201', '3515164110910003', '-', 'siskadwi@gmail.com', 'Gajah Mada III/28 RT 003 RW 009 Kel.Sawotratap Kec.Gedangan Provinsi Jawa  Timur', 7, '814874160643000', '1410013443551', 'Tulungangung', '1991-10-01', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(292, 'Angga Dwi Laksana Putra', '199604162017045101', '3578081604960003', '-', 'q@q', 'Jl. Karang Menjangan 3B no 14, Surabaya, Jawa Timur\r\n', 5, '818514028606000', '1420015694390', 'Surabaya', '1996-04-16', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 137, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 37, 3, '1700000', '400000', 1, 0, 2, 'rsunair2019'),
(293, 'Filsa Cahyaningrum', '199109272017045201', '3509216709910007', '-', 'q@q', 'Perum ITS Blok T84, Surabaya, Jawa Timur\r\n', 6, '756300422626000', '1420015769788', 'Jember', '1991-09-27', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 142, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 39, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(294, 'Taufiqul Rochman', '199204132016045101', '3529011304920001', '-', 'taufiqulrochman@gmail.com', 'Perum BSA Durian II Blok RM 23 RT 001 RW 010 Kel.Kolor, Kec.Kota Sumenep Kab Sumenep Provinsi Jawa  Timur', 7, '749821457608000', '1420014789746', 'Sidoarjo', '1992-04-13', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(295, 'Yayuk Debi Nilasari', '199208122016045201', '3502125208920001', '-', 'yayukdebinilasari@gmail.com', 'Dukuh Sambeng RT 002 RW 001 Kel.Bringin Kec.Kauman Kab Ponorogo Provinsi Jawa  Timur\r\n', 7, '835403692647000', '1420014789753', 'Ponorogo', '1992-08-12', '2016-04-08', '2016-04-08', '2017-04-07', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(296, 'Agustin Prasetyo Winarno ', '199108302016045101', '3504087008910002', '-', 'agustinprasetyo@gmail.com', 'Dsn Bungur RT 006 RW 001 Kel.Bungur Kec.Karangrejo Kab Tulungagung Provinsi Jawa  Timur\r\n', 7, '763880200629000', '1420014789621', 'Tulungagung', '1991-08-30', '2016-04-10', '2016-04-10', '2017-04-09', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 2, 'rsunair2019'),
(297, 'Didiet Ermana', '199005102016045101', '3526011005900003', '-', 'didietermana@gmail.com', 'Jl.Arjuno No 08 RT 003 RW 001 Kel. Mlajah Kec. Bangkalan Kab Bangkalan Provinsi Jawa  Timur', 6, '741099113644000', '1400015596274', 'Bangkalan', '1990-05-10', '2016-04-15', '2016-04-15', '2017-04-14', '-', '-', 1, 173, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 6, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(298, 'Mah Vinda Amalia', '199606052016045201', '3506094506960006', '-', 'mahvindaamalia@gmail.com', 'Dsn Sadon Plosokaten Kediri\r\n', 3, '765789151655000', '9000037761237', 'Kediri', '1996-06-05', '2016-04-18', '2016-04-18', '2017-04-17', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(299, 'Nimas Hayati Eka Anugrah', '199408112016045201', '3578065108940004', '-', 'nimashayati@gmail.com', 'Simo Mulyo 3/47 Surabaya', 5, '815762497614000', '1420015175846', 'Surabaya', '1994-08-11', '2016-04-18', '2016-04-18', '2017-04-17', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(300, 'Rizka Aprilya', '199704012016045201', '3521074104970001', '-', 'rizkaaprilya@gmail.com', 'Jl.Caruban Ngawi Karangjati Ngawi', 3, '766066260646000', '9000037761245', 'Ngawi', '1997-04-01', '2016-04-18', '2016-04-18', '2017-04-17', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(301, 'Ulfa Lustantyni', '199610182016055201', '3506235811930003', '-', 'ulfalustantyni@gmail.com', 'Dsn Jemekan Barat RT/RW 002/001, Jemekan, Ringinrejo, Kab. Kediri', 3, '765874672655000', '9000037761385', 'Tulungagung', '1996-11-18', '2016-05-02', '2016-05-02', '2017-05-01', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(302, 'Ali Wardana', '198603122016055101', '3578091203860002', '-', 'aliwardana@gmail.com', 'Medokan Semampir Blok D/25 Surabaya', 3, '847198272606000', '9000037761351', 'Surabaya', '1986-03-12', '2016-05-09', '2016-05-09', '2017-05-08', '-', '-', 1, 187, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 5, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(303, 'Juldhinanta Purtama', '198507172016055101', '3578101707850001', '-', 'juldhiananta@gmail.com', 'Kedung Tarukan No 60 A Surabaya \r\n', 3, '-', '9000037761369', 'Surabaya', '1985-07-17', '2016-05-09', '2016-05-09', '2017-05-08', '-', '-', 1, 188, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 44, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(304, 'Sugeng Hariono', '197904112016055101', '3515181104790011', '-', 'sugenghariono@gmail.com', 'Brigjen Katamso 2A Kedungrejo Waru Sidoarjo', 3, '597683903643000', '9000037761377', 'Sidoarjo', '1979-04-11', '2016-05-09', '2016-05-09', '2017-05-08', '-', '-', 1, 182, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 44, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(305, 'Wiji Nurhayati', '198804202016055201', '3578106004880004', '-', 'wijinurhayati@gmail.com', 'Setro Baru Utara 6/31 Surabaya', 3, '-', '1420014868102', 'Mojokerto', '1988-04-20', '2016-05-09', '2016-05-09', '2017-05-08', '-', '-', 1, 188, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 44, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(306, 'Agung Priambodo', '199407302016065101', '3578043007940004', '-', 'agungpriambodo@gmail.com', 'Krukah Selatan 6B/3 Surabaya \r\n', 5, '835352428609000', '9000037895555', 'Surabaya', '1994-07-30', '2016-06-01', '2016-06-01', '2017-05-31', '-', '-', 1, 112, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(307, 'Fitria Setya Dwi Kartika', '199304112017045201', '3521075104930003', '-', 'q@q', 'Karangpoh I, RT 004 RW 006, Sidorejo, Karangjati, Ngawi, Jawa Timur\r\n', 6, '818206674646000', '1410011629920', 'Ngawi', '1993-04-11', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(308, 'Arief Rachmandhika', '199405172016065101', '3578241705940001', '-', 'ariefrachmandhika@gmail.com', 'Bronggalan Sawah 5A/16 Surabaya', 5, '764865192619000', '9000037895647', 'Surabaya', '1994-05-17', '2016-06-01', '2016-06-01', '2017-05-31', '-', '-', 1, 112, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(309, 'Dian Rosalina Pratiwi', '199408022016065201', '3525154208940006', '-', 'dianrosalina@gmail.com', 'Ds Cangkir RT/RW 13/03 Driyorejo Gresik', 5, '835458373642000', '9000037896157', 'Mojokerto', '1994-08-02', '2016-06-01', '2016-06-01', '2017-05-31', '-', '-', 1, 112, 0, 0.05, 0.9, 1, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(310, 'Nurul Puji Rahayu', '199404102016065201', '3578135004940003', '-', 'nurulpuji@gmail.com', 'Jl. Jatisari III/1 Surabaya', 5, '835983057614000', '1420014924327', 'Surabaya', '1994-04-10', '2016-06-01', '2016-06-01', '2017-05-31', '-', '-', 1, 112, 0, 0.05, 0.9, 1, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(311, 'Raissa Rahmi Pramadani', '199402042016065201', '3578314402940002', '-', 'raissarahmi@gmail.com', 'Candi Lontar I/04 Blok 41O Surabaya\r\n', 5, '835419243604000', '9000037896165', 'Surabaya', '1994-02-04', '2016-06-01', '2016-06-01', '2017-05-31', '-', '-', 1, 112, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(312, 'Fitriana Miftahul Jannah', '199107222017045201', '3578116207910001', '-', 'q@q', 'Jl. Granting Baru 3/14, Surabaya, Jawa Timur\r\n', 5, '726096639616000', '9000032800154', 'Surabaya', '1991-07-22', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(313, 'Indah Sulistyo Ningtiyas', '199511062017045201', '3578094611950005', '-', 'q@q', 'Mleto no 51B, Klampis Ngasem, Sukolilo, Surabaya, Jaawa Timur\r\n', 5, '818514044606000', '9000032800105', 'Lamongan', '1995-11-06', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 36, 3, '1700000', '400000', 2, 0, 1, 'rsunair2019'),
(314, 'Lisa Nadia Maulida', '199408242017045201', '3515176408940001', '-', 'q@q', 'Dsn. Tani Tambak RT 008 RW 004, Pepe Sedati, Sidoarjo, Jawa Timur\r\n', 5, '809470214643000', '9000032800139', 'Sidoarjo', '1994-08-24', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(315, 'Moch. Syarifuddin', '199208112017045101', '3528071108920003', '-', 'q@q', 'Ds. Plapak, RT 004 RW 001, Peganten, Pamekasan, Jawa Timur\r\n', 6, '818391880608000', '9000032800147', 'Pamekasan', '1992-08-11', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(316, 'Mohammad Hayat Sa''dan', '199203022017045101', '3525030203920001', '-', 'q@q', 'Campurejo, RT 005 RW 002, Campurejo, Panceng, Gresik, Jawa Timur\r\n', 6, '745744508612000', '1420014048317', 'Lamongan', '1992-03-02', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(318, 'Naylien Ariefa', '199505052017045201', '3515064505950006', '-', 'q@q', 'Kedensari Barat no 17, RT 014 RW 005, Kedansari, Tanggulangin, Sidoarjo, Jawa Timur\r\n', 5, '818617854617000', '9000032800113', 'Sidoarjo', '1995-05-05', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(319, 'Nur Chumala', '199409262017045201', '3578246609940004', '-', 'q@q', 'Tenggilis Lama IIIA/46, Surabaya, Jawa Timur\r\n', 5, '835732710615000', '1410015615453', 'Surabaya', '1994-11-26', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 142, 0, 0.05, 0.9, 1, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(320, 'Nur Elyani', '199407132017045201', '3578035307940002', '-', 'q@q', 'Rungkut Lor Gg. III No. 47, Rungkut, Surabaya, Jawa Timur\r\n', 6, '819326034615000', '1420015722894 ', 'Surabaya', '1994-07-13', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 169, 0, 0, 0.8, 1, 2, 2, 4, 3, 49, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(321, 'Qurratu A''yun Laili', '199511212017045201', '3526016111950006', '-', 'q@q', 'Jl. KH M Kholil III no 2, RT 002 RW 002, Demangan, Bangkalan, Jawa Timur\r\n', 5, '818119695644000', '9000032800121', 'Bangkalan', '1995-11-21', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(322, 'Qurratul Aini', '199505282017045201', '3526016805950002', '-', 'q@q', 'Raya Bancaran, RT 002 RW 004, Bancaran, Bangkalan, Jawa Timur\r\n', 5, '818287617644000', '9000032800444', 'Bangkalan', '1995-05-28', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 25, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(323, 'Rifftya Sinta Lestari', '199307272017045201', '3524126707930003', '-', 'q@q', 'Juwet, RT 001 RW 004, Deketagung, Sugio, Lamongan, Jawa Timur\r\n', 6, '818121949645000', '1400011680395', 'Lamongan', '1993-07-27', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(325, 'Rizky Ikwan, dr.', '199002052017045101', '3515130502900001', '-', 'q@q', 'Sambisari 105 RT 024 RW 005, Taman, Sidoarjo, Jawa Timur\r\n', 7, '72416785603000', '1410010778553', 'Surabaya', '1990-02-05', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 194, 0, 0, 0, 2, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(326, 'Rizky Patria Nevangga, dr.', '199102192017045101', '3515181902910003', '-', 'q@q', 'Juanda Harapan Permai J12 Kelurahan Wedi, Gedangan, Sidoarjo, Jawa Timur\r\n', 7, '737266577643000 ', '1410009941055', 'Surabaya', '1991-02-19', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 194, 0, 0, 0, 2, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(327, 'Sigit Mulyono', '199409292017045101', '3310012909940002', '-', 'q@q', 'Somoragen, RT 016 RW 006, Joho, Prambanan, Klaten, Jawa Tengah\r\n', 5, '835876707525000', '9000032800329 ', 'Klaten', '1994-09-29', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 21, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(328, 'Suciati Ningsih', '199201022017045101', '3523184201920003', '-', 'q@q', 'Ds. Sumurgung, RT 006 RW 001, Sumurgung, Palang, Tuban, Jawa Timur\r\n', 6, '732332614642000', '1420015691495', 'Tuban', '1992-01-02', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(329, 'Vivi Armany Dessy', '198712052017045201', '3578174512870001', '-', 'q@q', 'Bulak Banteng Lor I gg Barokah 255B, Bulak Banteng, Kenjeran, Surabaya, Jawa Timur\r\n', 6, '795203587619000', '9000041619157 ', 'Surabaya', '1987-12-05', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 15, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(330, 'Weny Kusuma Wardhani', '199405312017045201', '3515087105940007', '-', 'q@q', 'Perum Wisma Sarinadi Blok K12 (Jl. Renang K12), RT 029 RW 006, Magersari, Sidoarjo, Jawa Timur\r\n', 5, '818062853617000', '1410015891591', 'Tulungagung', '1994-05-31', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 48, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(331, 'Yunita Sari', '199306072017045201', '3516144706930002', '-', 'q@q', 'Garbo 136, RT 019 RW 006, Gembongan, Gedeg, Mojokerto, Jaw Timur\r\n', 6, '802148718602000', '1420015786147', 'Mojokerto', '1993-06-07', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 15, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(332, 'Bayutirta Hadi Prayugo', '199105152017045101', '3509161505910002', '-', 'q@q', 'Dsn. Wetan Agung, RT 008 RW 002, Wonojati, Jenggawah, Jember\r\n', 6, '836518654626000', '9000032800162', 'Tarakan', '1991-05-15', '2017-04-17', '2017-04-17', '2019-04-16', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(333, 'Dewi Noer Maimunah', '199306102017045201', '3515045006930002', '-', 'q@q', 'Ds. Kesambi, RT 009 RW 003, Porong, Sidoarjo, Jawa Timur\r\n', 6, '810591164617000', '1420015777484', 'Sidoarjo', '1993-06-10', '2017-05-03', '2017-05-03', '2019-05-02', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(334, 'Silfia Desi Anggraini', '199312022017045201', '3517084212930001', '-', 'q@q', 'Pacar Keling VI no 110, RT 006 RW 010, Pacar Keling, Tambaksari, Surabaya, Jawa Timur\r\n', 6, '835310418602000', '1420013733752', 'Jombang', '1992-12-02', '2017-05-03', '2017-05-03', '2019-05-02', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(335, 'Wahyu Aditiya', '198809142017045101', '3578091409880002', '-', 'q@q', 'Medokan Semampir Blok A/5, RT 005 RW 003, Medokan Semampir, Sukolilo, Surabaya, Jawa Timur\r\n', 3, '835732264606000 ', '1420015768707', 'Surabaya', '1988-09-14', '2017-05-03', '2017-05-03', '2019-05-02', '-', '-', 1, 189, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 44, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(336, 'Haryati Widayanti', '199406112017045201', '3511115106940001', '-', 'q@q', 'Jl. Suripto no 9 Komplek TNI AL Kenjeran, Surabaya, Jawa Timur\r\n', 6, '-', '1420015784803', 'Bondowoso', '1994-06-11', '2017-05-22', '2017-05-22', '2019-05-21', '-', '-', 1, 169, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(337, 'Siswo Afendy', '198408112017055101', '3578121108840002', '-', 'q@q', 'Teluk Nibung Barat 6 No 18, RT 006 RW 007, Kel. Perak Utara, Kec. Pabean Cantian, Surabaya, Jawa Timur\r\n', 6, '097447007613000', '9000032800253', 'Surabaya', '1984-08-11', '2017-05-24', '2017-05-24', '2019-05-23', '-', '-', 1, 168, 0, 0.2, 0.8, 2, 2, 2, 4, 3, 31, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(338, 'Muhammad Fath Alhaqqi Sanis Salamy, dr', '199007122017065101', '351517120790004', '-', 'q@q', 'Perum Pabean Asri B/2 Sedati, Sidoarjo Jawa Timur\r\n', 7, '812730547643000', '1400016635634', 'Surabaya', '1990-07-12', '2017-06-02', '2017-06-02', '2019-06-01', '-', '-', 1, 194, 0, 0, 0, 2, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(339, 'Sarah Primadani Kaurow, dr.', '198910302017065201', '3275117010890008', '-', 'q@q', 'Jl. Busidin RT 002 RW 003, Mustikasari, Mustika Jaya, Kota Bekasi, Jawa Barat\r\n', 7, '553421595432000', '1230004856193', 'Jakarta', '1989-10-30', '2017-06-02', '2017-06-02', '2019-06-01', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(340, 'Desy Widya Indahyani Hartono', '199512062017085201', '3578064612990006', '-', 'q@q', 'Sawahan sarimulyo I no 10 RT 01 RW 01 Kel. Petemon, Kec. Sawahan, Surabaya\r\n', 6, '832760920614000', '9000034260852', 'Tuban ', '1995-12-06', '2017-08-01', '2017-08-01', '2019-07-31', '-', '-', 1, 143, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 41, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(341, 'Fajarrina Sihwidi Pangesti', '198604072017017201', '3578084704860006', '-', 'q@q', 'Juwingan 1 No. 30, Kertajaya, Gubeng, Surabaya\r\n', 6, '891807604606000', '9000029939742', 'Madiun', '1986-04-07', '2017-09-01', '2017-09-01', '2019-08-31', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(342, 'Nika Susanti', '199010102017017201', '3510125010900005', '-', 'q@q', 'Dsn. Juruh RT 002 RW 002, Singojuruh, Kec. Singojuruh, Kab Banyuwangi, Jawa Timur\r\n', 6, '718783830627000', '1410010992626', 'Banyuwangi', '1990-10-10', '2017-09-01', '2017-09-01', '2019-08-31', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(343, 'Yuliansari Adhi Mukti', '199107242017017201', '3578096407910001', '-', 'q@q', 'Semolowaru Selatan 3 No. 14 Surabaya\r\n', 6, '718723646606000', '1400014595251', 'Jakarta', '1991-07-24', '2017-09-01', '2017-09-01', '2019-08-31', '-', '-', 1, 107, 0, 0.2, 1, 2, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(344, 'Anisa Mardiati Imaniar', '199209062017105201', '3509214609920005', '-', 'q@q', 'Jl. Sumatra IX/38 ,Sumbersari, Kabupaten Jember, Provinsi Jawa Timur\r\n', 6, '833714686626000', '1420016135187', 'Jember', '1992-09-06', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(345, 'Denny Koesumarini', '199210292017105201', '3515186910920002', '-', 'q@q', 'Jl. Jatisari Besar Gg. Langgar No 70 Pepelegi Waru, Sidoarjo, Provinsi Jawa Timur\r\n', 6, '829926864643000 ', '1410011799954', 'Surabaya', '1992-10-29', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 2, 'rsunair2019'),
(346, 'Lintang Kusuma Ananta', '199411292017105201', '3505176911940004', '-', 'q@q', 'Lingkungan Tanggung RT 03 RW 06 Wlingi, Provinsi Jawa Timur\r\n', 6, '836004200653000', '1420016129149', 'Blitar', '1994-11-19', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(347, 'Nia Puspitasari', '199503272017105201', '3516086703950003', '-', 'q@q', 'Dsn. Wonokoyo RT02/RW07, Kec. Mojosari, Kab. Mojokerto, Provinsi Jawa Timur\r\n', 5, '841540511602000', '9000032813009', 'Mojokerto', '1995-03-27', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(348, 'Rio Cristianto', '199403282017105101', '3514122803940004', '-', 'q@q', 'Jl. Umbang RT01 RW05, Wonosari, Gempol, Pasuruan, Provinsi Jawa Timur\r\n', 6, '836276337624000', '1410012573085', 'Sidoarjo', '1994-03-28', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(349, 'Toni Subarkah', '199406112017105101', '3524061106940001', '-', 'q@q', 'Waru RT01 RW02, Warungering, Kedung Pring, Lamongan, Provinsi Jawa Timur\r\n', 6, '835450511645000', '1410012572806', 'Lamongan', '1994-06-11', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(350, 'Vinny Prillia Alvionita', '199204132017105201', '3526015304920006', '-', 'q@q', 'Jl. K. Lemah Duwur Gg. VI no 20 Bangkalan, Provinsi Jawa Timur\r\n', 6, '833724313644000', '9000027433060', 'Bangkalan', '1992-04-13', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(351, 'Yuli Astutik', '199307162017105201', '3510105607930007', '-', 'q@q', 'Dusun Wonoasih RT 01 RW 03,Bumi harjo, Glenmore, Banyuwangi, Provinsi Jawa Timur\r\n', 5, '823503500627000', '9000032812977', 'Banyuwangi', '1993-07-16', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(352, 'Yunita Khoirotus Salamah', '198906212017105201', '3507166105890001', '-', 'q@q', 'Jl. Medayu Utara 27C no.17, Medakoan Ayu, Rungkut, Surabaya, Provinsi Jawa Timur\r\n', 6, '440430304615000', '1420016171000', 'Malang', '1989-06-21', '2017-10-05', '2017-10-05', '2019-10-04', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(353, 'Afifatul Mufidah', '199310012017125201', '3524214110930001', '-', 'q@q', 'Kemlagilor RT 004 RW 002, Turi, Kab. Lamongan, Jawa Timur\r\n', 5, '-', '1410015710833', 'Lamongan', '1993-10-01', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 25, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(354, 'Aprilia', '199404282017125201', '3515166804940001', '-', 'q@q', 'Jl. Pahlawan 42, Kab. Sidoarjo\r\n', 6, '835940321643000', '1410013904727', 'Sidoarjo', '1994-04-28', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(355, 'Ayu Susilawati', '199404282017125202', '3527026804940001', '-', 'q@q', 'Dsn. Krampon Barat RT 001 / RW 001, Kab. Sampang\r\n', 6, '-', '1410013497789', 'Sampang', '1994-04-28', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 48, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(356, 'Indah Nur Rahmawati', '199404182017125201', '3525135804940001', '-', 'q@q', 'Beton RT 014 / RW 004, Kab. Gresik\r\n', 6, '-', '1410013762430', 'Gresik', '1994-04-18', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 32, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(357, 'Meyvita Sari Rike Yunita', '199405022017125201', '3503074205940003', '-', 'q@q', 'Dsn. Kaotan RT 001 / RW 003, Kab. Blitar\r\n', 6, '-', '1410012573069', 'Blitar', '1994-05-02', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 25, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(358, 'Nia Elfira Rahmawati', '199402032017125201', '3515184302940004', '-', 'q@q', 'Tambak Rejo RT 001 / RW 001, Kab. Sidoarjo\r\n', 6, '-', '1410012572988', 'Sidoarjo', '1994-02-03', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(359, 'Putri Mulyasari', '199407152017125201', '3578085507940004', '-', 'q@q', 'Kalidami 74 Surabaya, Jawa Timur\r\n', 6, '-', '9000023610919', 'Surabaya', '1994-07-15', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(360, 'Ria Fitriani', '199403262017125201', '3578166603930002', '-', 'q@q', 'Bulak Sari Masjid 17 Surabaya\r\n', 6, '-', '1410012573143', 'Surabaya', '1993-03-26', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(361, 'Sevina Ramahwati', '199408242017125201', '3503066408940001', '-', 'q@q', 'Dsn. Jabung RT 029 / RW 008, Kab. Trenggalek\r\n', 6, '835972357629000', '1410013770581', 'Bojonegoro', '1994-08-24', '2017-12-11', '2017-12-11', '2019-12-10', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(362, 'Fadilah', '198209032014035201', '3578174309820003', '-', 'q@q', 'Jl. Kedinding Tengah 4C No. 8 Surabaya\r\n', 3, '744637661619000', '1410013956016', 'Surabaya', '1982-09-03', '2013-03-10', '2013-03-10', '2019-03-09', '-', '-', 1, 175, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 13, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(363, 'Riska Ambarwati', '199409242013095201', '3520026409940002', '-', 'q@q', 'Dukuh Jaten RT030/RW008, Kel. Krajan, Kec. Parang, Kota Magetan, Jawa Timur\r\n', 3, '730348570646000', '1410013762950', 'Magetan', '1994-09-24', '2013-09-16', '2013-09-16', '2019-09-15', '-', '-', 1, 179, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 39, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(364, 'Anang Fauzy', '199207092013115101', '3525150907920001', '-', 'q@q', 'Dsn.Krikilan RT 009/RW 004 Kel.Krikilan Kec.Driyorejo Kab.Gresik, Provinsi Jawa  Timur\r\n', 3, '729773010642000', '1410013762976', 'Sidoarjo', '1992-07-09', '2013-11-06', '2013-11-06', '2019-11-05', '-', '-', 1, 164, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 4, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(365, 'Riantika Apriyanti', '199104102016065201', '3578105004910003', '-', 'riantikaapriyanti@gmail.com', 'Dukuh Setro 8A/66 Surabaya', 5, '765937388619000', '9000037896173', 'Lamongan', '1991-04-10', '2016-06-01', '2016-06-01', '2017-05-31', '-', '-', 1, 112, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(366, 'Weni Fitria Priyantini', '199403202016065201', '3578106003940001', '-', 'wenifitria@gmail.com', 'Perum Sumput Asri Blok DU/21 Driyorejo Gresik\r\n', 5, '835609710642000', '9000037896181', 'Surabaya', '1994-03-20', '2016-06-01', '2016-06-01', '2017-05-31', '-', '-', 1, 112, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(367, 'Anisa Dwi Syafitri', '199908132016065201', '3578175308990002', '-', 'anisadwi@gmail.com', 'Kalilom Lor Timur 3/30 Surabaya\r\n', 3, '835995127619000', '9000037897965', 'Surabaya', '1999-08-13', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 8, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(368, 'Auliya Nur Latifah Wijayanti', '199709172016065201', '3578175709970005', '-', 'auliyanur@gmail.com', 'Pogot Lama 6/82 Surabaya\r\n', 3, '764975447619000', '9000037921443', 'Surabaya', '1997-09-17', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(369, 'Azizah Nila Sari', '199808182016065201', '3578085808980001', '-', 'azizahnilasari@gmail.com', 'Bratang Binangun 5C/41 Surabaya ', 3, '835991589606000', '9000037921450', 'Surabaya', '1998-08-18', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(370, 'Eriza Tri Heriwiyanti', '199105122016065201', '3578185205910001', '-', 'errizatri@gmail.com', 'Lidah Wetan Gg X No 5 Surabaya', 7, '765433826604000', '1410013431697', 'Surabaya', '1991-05-12', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 108, 0, 0, 0, 1, 1, 2, 2, 1, 12, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(371, 'Ersinta Putri Kurniawati', '199108012016065201', '3578014108910001', '-', 'ersintaputri@gmail.com', 'Kedurus 4A No 30 Surabaya\r\n', 3, '764897005618000', '9000037921468', 'Surabaya', '1991-08-01', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 8, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(372, 'Fani Nur Fajriani', '199805232016065201', '3522116305980001', '-', 'faninurfajriani@gmail.com', 'Ds. Bakung RT002/RW004 Dsn. Mejasen Kanor Bojonegoro', 3, '764620049601000', '9000037921476', 'Bojonegoro', '1998-05-23', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 8, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(373, 'Fauzia Rahmawati', '199801082016065201', '3578084801980002', '-', 'fauziarahmawati@gmail.com', 'Pucangan III No 81 Surabaya', 3, '765274147606000', '9000037921484', 'Surabaya', '1998-01-08', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(374, 'Febriansyah Nur Utomo', '199202022016065101', '3515180202920002', '-', 'febriansyahnurutomo@gmail.com', 'Delta Sari Indah D/321 Sidoarjo ', 8, '764643722643000', '1420007530172', 'Surabaya', '1992-02-02', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 108, 0, 0, 0, 2, 1, 2, 2, 1, 12, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(375, 'Junita Mega Pratiwi', '199806102016065201', '3578285006980001', '-', 'junitamega@gmail.com', 'Genting IV/11a Surabaya', 3, '765627625614000', '9000037921492', 'Surabaya', '1998-06-10', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 8, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(376, 'Krisna Adhi Dwi Putra', '199810032016065101', '3578050310980001', '-', 'krisnaadhidwip@gmail.com', 'Kupang Panjaan IV/36a Surabaya', 3, '835921453607000', '9000037921435', 'Surabaya', '1998-10-03', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 8, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(377, 'Muhammad Adi Mahnuri', '199802252016065101', '3578242502980001', '-', 'muhammadadi@gmail.com', 'Tenggilis Mulya No 88C Surabaya', 3, '835873019615000', '9000037921500', 'Surabaya', '1998-02-25', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.15, 0.9, 2, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(378, 'Pramita Ismawartin', '199703012016065201', '3523034103970001', '-', 'pramitaismawartin@gmail.com', 'Genteng Kantong No 15 Surabaya', 3, '765788237648000', '9000037921518', 'Lamongan', '1997-03-01', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(379, 'Purna Ujianti', '199803132016065201', '3502135303980003', '-', 'purnaujianti@gmail.com', 'Ds Karangjoho Dukuh Bandar RT/RW 01/04 Ponorogo ', 3, '763830627647000', '9000037921526', 'Ponorogo', '1998-03-13', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(380, 'Rina Kardiyati', '199709272016065201', '3515066709870003', '-', 'rinakardiyati@gmail.com', 'Kedensari RT/RW 08/03 Tanggulangin Sidoarjo', 5, '483922142657000', '9000037921534', 'Sidoarjo', '1987-09-27', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 13, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(381, 'Whan Victory Triyanto', '199612122016065101', '3519121212960005', '-', 'whanvictory@gmail.com', 'Ds Tulung RT/RW 31/04 Saradan Madiun', 3, '765947650621000', '9000037921559', 'Madiun', '1996-12-12', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 8, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(383, 'Achmad Ismail', '199306132015025101', '35871306930003', '-', 'q@q', 'Jl. Kedinding Lor Gg. Sooko/41, Surabaya, Jawa Timur\r\n', 5, '729938043619000', '9000029938306', 'Surabaya', '1993-06-13', '2015-02-02', '2015-02-02', '2020-02-01', '-', '-', 1, 164, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(384, 'Imam Basori', '139111403', '3578081909820001', '-', 'a@a', 'Mojo Kidul 69-B RT 002 RW 005, Mojo, Gubeng, Surabaya\r\n', 3, '971255344606000', '1410011593357', 'Surabaya', '1982-09-19', '2011-10-01', '2011-10-01', '2019-10-01', '-', '-', 1, 181, 0, 0.2, 0.8, 2, 2, 2, 4, 4, 44, 2, '0', '0', 1, 0, 1, 'rsunair2019'),
(385, 'Lailatul Musayaroh', '199204262015025201', '3523046604920001', '-', 'q@q', 'Desa Sumberingin, RT 08 RW 02, KaranganTrenggalek\r\n', 5, '730729449648000', '9000029938355', 'Tuban', '1992-04-26', '2015-02-09', '2015-02-09', '2020-02-08', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 36, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(386, 'Fidiya Dwi Kartikasari', '199304042015035201', '3578084404930003', '-', 'q@q', 'Jl. Mojo 5/42 RT/RW 003/005 Mojo, Gubeng, Surabaya\r\n', 5, '730912342606000', '1420011119897', 'Surabaya', '1993-04-04', '2015-03-05', '2015-03-05', '2019-02-04', '-', '-', 1, 140, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 38, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(387, 'Rizka Nur Azizah', '199305252015035201', '3578096505930001', '-', 'q@q', 'Jl. Nginden II No.59A Sby\r\n', 5, '832204374606000', '9000029940187', 'Surabaya', '1993-05-25', '2015-03-05', '2015-03-05', '2019-02-04', '-', '-', 1, 139, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(388, 'Yunita Dwi Astutik', '199706112016065201', '3578165106970004', '-', 'yunitadwiastutik@gmail.com', 'Wonosari Wetan IA Molek 17', 3, '765799994616000', '9000037921609', 'Surabaya', '1997-06-11', '2016-06-20', '2016-06-20', '2017-06-19', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(389, 'Sylviana Radina Ramadhani', '199303042015035201', '3515134403930009', '-', 'q@q', 'Bebekan Timur no.65 TamanSidoarjo\r\n', 5, '838562510603000', '9000029940179', 'Sidoarjo', '1993-03-04', '2015-03-05', '2015-03-05', '2019-02-04', '-', '-', 1, 139, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(390, 'Arika Dewi Rahmawati', '199203302016075201', '3578107003920006', '-', 'arikadewirahmawati@gmail.com', 'Tambak Segaran Wetan No 89 Surabaya', 3, '547880609619000', '1420014968860', 'Surabaya', '1992-03-30', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(391, 'Budi Santoso', '199211042016075101', '3508080411920002', '-', 'budisantoso@gmail.com', 'Wates RT 002 RW 001, Watestanjung, Wringinanom, Kab. Gresik', 3, '727754624625000', '9000037901619', 'Lumajang', '1992-11-04', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(392, 'Candra Dwi Arie Prayogo', '199205062016075201', '3515134605920002', '-', 'candradwiarie@gmail.com', 'Gilang RT 005 RW 002, Gilang, Taman, Kab. Sidoarjo, Jawa Timur', 5, '457867265643000', '1410015414337', 'Sidoarjo', '1992-05-06', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 48, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(393, 'Deska Jaya Anggriana', '199112122016075201', '3509135212810006', '-', 'deskajaya@gmail.com', 'Dsn Gayam RT 002 RW 001, Rambipuji, Jember, Jawa Timur', 6, '765044276626000', '9000035748418', 'Jember', '1991-12-12', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(394, 'Wiwit Eko Setiawan', '198207292015035101', '3516142907820001', '-', 'q@q', 'Semolowaru Elok Blok Z/9 RT 002 RW 004 Kel.Medokan  Semampir Kec.Sukolilo Kota Surabaya Provinsi Jawa  Timur\r\n', 6, '455306753602000', '1420013931547', 'Mojokerto', '1982-07-29', '2015-03-05', '2015-03-05', '2019-02-04', '-', '-', 1, 187, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 5, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(395, 'Dini Wahyu Aulia Fitri', '198905162016075201', '3515185605890002', '-', 'diniwahyuaulia@gmail.com', 'Baratajaya XX No. 97, Surabaya', 5, '880880711606000', '1420014985575', 'Sdidoarjo', '1989-05-16', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(396, 'Novanda Indi Nuansa', '198902162015045101', '3506171602890002', '-', 'q@q', 'Jl. Ogan 2 No. 81, RT002/RW004, Kel. Pelem, Kec. Pare, Kab. Kediri, Jawa Timur\r\n', 6, '545778730655000', '1420016639428', 'Kediri', '1989-02-16', '2015-04-01', '2015-04-01', '2019-03-31', '-', '-', 1, 169, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 35, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(397, 'Damayanti Ekasari', '199207072015045201', '3518164707920002', '-', 'q@q', 'Dsn.greco RT 002 RW 006 Kel.Sukorejo Kec.Rejoso Kab.Nganjuk Provinsi Jawa  Timur\r\n', 5, '804436715655000', '1410012164588 ', 'Nganjuk', '1992-07-07', '2015-04-10', '2015-04-10', '2019-03-09', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(398, 'Lailatus Sa''baniyah', '198505012015045201', '3578094105850004', '-', 'q@q', 'Semolowaru Utara VI/2A RT 001 RW 001 Kel.Semolowaru Kec.Sukolilo,Kota Surabaya Provinsi Jawa  Timur\r\n', 5, '805078748606000', '9000029940492', 'Surabaya', '1985-05-01', '2015-04-10', '2015-04-10', '2019-03-09', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(399, 'Nurul Dyah Lutfidah', '139121697', '-', '-', 'a@a', '-', 6, '445594724615000', '1410012750683', 'Mojokerto', '1987-11-21', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 2, 2, 3, 1, 20, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(400, 'Retno Handiarti Oktamia', '139121461', '-', '-', 'a@a', '-', 8, '449436567643000', '1410012200457', 'Madiun', '1983-10-01', '2012-02-01', '2012-02-01', '2020-02-01', '-', '-', 1, 152, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 43, 4, '0', '0', 1, 0, 1, 'rsunair2019'),
(401, 'Sigit Pramono', '139121511', '3578090910870001', '-', 'a@a', 'Jojoran 1 Perintis 3/31 RT 011 RW 008, Mojo, Gubeng, Surabaya', 3, '746670835606000', '1410012521522', 'Surabaya', '1984-10-09', '2012-07-01', '2012-07-01', '2019-07-01', '-', '-', 1, 181, 0, 0.2, 0.8, 2, 2, 2, 4, 3, 44, 2, '0', '0', 1, 0, 1, 'rsunair2019'),
(402, 'Maulidianne Hari Saputri', '199308312015045201', '3578197108930001', '-', 'q@q', 'Wisma Tengger 5/1A RT 002 RW 004, Kel. Kandangan, Kec. Benowo, Surabaya, Jawa Timur\r\n', 5, '803802115604000', '9000009157844', 'Surabaya', '1993-08-31', '2015-04-10', '2015-04-10', '2019-03-09', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(403, 'Patria Anggraini', '198909182015045201', '3578035809890003', '-', 'q@q', 'Medayu Sentosa Kav 75 RT 001 RW 001 Kel. Medokan Ayu  Kec. Rungkut, Surabaya, Jawa Timur\r\n', 5, '703623942615000', '1410010409134', 'Palembang', '1989-09-18', '2015-04-10', '2015-04-10', '2019-03-09', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(404, 'Widho Irnawati', '199103112015045201', '3578085103910001', '-', 'q@q', 'Karang Menjangan 8/6 RT 002 RW 008 Kel.Airlangga Kec.Gubeng Kota Surabaya Provinsi Jawa  Timur\r\n', 5, '804371482606000', '9000029940500', 'Surabaya', '1991-03-11', '2015-04-10', '2015-04-10', '2019-03-09', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(405, 'Juwita Agustin Ratnadewi', '199108272015045201', '3519076708910001', '-', 'q@q', 'Dungus RT 019 RW 002 Kel.Wungu Kab Madiun, Jawa Timur\r\n', 6, '804043693621000', '9000029940534', 'Madiun', '1991-08-27', '2015-04-20', '2015-04-20', '2019-04-19', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(406, 'Kartika Utami Putri', '199007112015045201', '3520065107900001', '-', 'q@q', 'Jl.Kawi 11A RT 001 RW 001 Kel.Bulukerto Kec.Magetan, Jawa Timur\r\n', 6, '732476965646000', '1420014026008', 'Magetan', '1990-07-11', '2015-04-20', '2015-04-20', '2019-04-19', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(407, 'Lia Dwi Wijayanti', '198708172015045201', '3504135708870001', '-', 'q@q', 'Dsn.Jeding Kidul RT 001 RW 010 Desa Ariyojeding Kec.Rejotangan Kab.Tulungagung Provinsi Jawa  Timur\r\n', 6, '729977280629000', '1420014025968', 'Tulungagung', '1987-08-17', '2015-04-20', '2015-04-20', '2019-04-19', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(408, 'Meirina Yanie Mawita Sari', '199105092015045201', '35780884905910001', '-', 'q@q', 'JL.Jojoran V/ No. 1\r\n', 6, '728822214606000', '1420014025992', 'Surabaya', '1991-05-09', '2015-04-20', '2015-04-20', '2019-04-19', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 15, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(409, 'Mochamad Fendi Pradana', '199109182015045101', '3515111809910009', '-', 'q@q', 'Ds. Katerungan Rt 08 Rw 02, KrianSdrjo/ 087854966679\r\n', 6, '731042545603000', '1420014026016', 'Sidoarjo', '1991-09-19', '2015-04-20', '2015-04-20', '2019-04-19', '-', '-', 1, 100, 0, 0.1, 1, 1, 1, 2, 3, 1, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(410, 'Nuran Fataliyaisma Auwalin S', '199106212015045201', '3574036106910005', '-', 'q@q', 'Mayjen Haryono III No. 1 RT 004 RW 005, Kel. Mangunharjo Kec. Mayangan, Probolinggo, Jawa Timur\r\n', 6, '731748109625000', '1420014025638', 'Probolinggo', '1991-06-21', '2015-04-20', '2015-04-20', '2019-04-19', '-', '-', 1, 100, 0, 0, 0, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(411, 'Nuzulul Zulkarnain Haq', '199104032015045101', '3510080304910001', '-', 'q@q', 'Dsn.Krajan RT 002 RW 001 Sumbersari Srono Kab. Banyuwangi, Provinsi Jawa  Timur\r\n', 6, '804154847627000', '1420014025745', 'Banyuwangi', '1991-04-03', '2015-04-20', '2015-04-20', '2019-04-19', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(412, 'Ryan Reza Falupi', '199109242015045101', '5271022409910003', '-', 'q@q', 'Pagesangan Indah VI No 1 RT 001 RW 054 Kel Pagesangan Kec.Mataram Kota Mataram Provinsi Nusa Tenggara\r\n', 6, '731119509911000', '1420014025927', 'Sepit Lotim', '1991-09-24', '2015-04-20', '2015-04-20', '2019-04-19', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(413, 'Karina Dita Anggraeni', '199609022015055201', '3502124903910002', '-', 'q@q', 'Juwingan 1/26 RT 001 RW 011 Kel.Kertajaya Kec Gubeng Kota Surabaya, Jawa Timur\r\n', 3, '818141731606000', '1420014104524', 'Surabaya', '1996-09-02', '2015-05-01', '2015-05-01', '2019-04-30', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 29, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(415, 'Prima Sari Sugiarsih', '198203042015055201', '3578284403820001', '-', 'q@q', 'Greges Barat I No 25 RT 002 RW 001 Kel.Greges Kec.Asemrowo Kota Surabaya Provinsi Jawa Timur\r\n', 6, '729842724614000', '9000022664545', 'Sumenep', '1982-03-04', '2015-05-01', '2015-05-01', '2019-04-30', '-', '-', 1, 167, 0, 0, 0.8, 1, 1, 2, 4, 1, 37, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(416, 'Shabrina Liandah Akalili', '199306182015055201', '3528045806930004', '-', 'q@q', 'Stadion IV/14B RT 004/RW 005 Kel.Barumbat Kota Kec Pamekasan Kab Pamekasan Provinsi Jawa  Timur\r\n', 5, '752101733608000', '1420014115496', 'Surabaya', '1993-06-18', '2015-05-01', '2015-05-01', '2019-04-30', '-', '-', 1, 161, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(417, 'Hanifah', '199608152015055201', '3578105508960005', '-', 'q@q', 'Jl. Ploso 2 No. 6B Surabaya\r\n', 3, '835911447619000', '1420014104482', 'Surabaya', '1996-08-15', '2015-05-11', '2015-05-11', '2019-05-10', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(419, 'Rifky Maulana Fuadi', '199206022015055101', '3578260206920004', '-', 'q@q', 'Kalisari No. 38 Surabaya, Jawa Timur\r\n', 5, '716048491619000', '1420014104458', 'Surabaya', '1992-06-02', '2015-05-11', '2015-05-11', '2019-05-10', '-', '-', 1, 141, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 18, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(420, 'Rizzky Ernianto Lesmono', '199011012015055101', '3578100111900004', '-', 'q@q', 'Pacar Kembang 2/37 RT 006 RW 006 Kel. Pacar Kembang Kec. Tambak Sari  Kota Surabaya Provinsi Jawa  Timur\r\n', 5, '804018653619000', '9000011978237', 'Surabaya', '1990-11-01', '2015-05-11', '2015-05-11', '2019-05-10', '-', '-', 1, 167, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(421, 'Rifky Nashrullah', '198509302015055101', '3515183009850006', '-', 'q@q', 'Jl.Cendrawasih 5/14 RT 005 RW 006 Kel.Kepuhkiriman  Kec Waru Kab Sidoarjo Provinsi Jawa  Timur\r\n', 5, '732890256643000', '1410012502878', 'Surabaya', '1985-09-30', '2015-05-20', '2015-05-20', '2019-05-19', '-', '-', 1, 167, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(422, 'Achmad Rizal Fauzi', '139141854', '-', '-', 'a@a', '-', 5, '704181437646000', '1420013332571', 'Surabaya', '1990-08-21', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 138, 0, 0.15, 0.9, 2, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019');
INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `nip_nik`, `no_ktp`, `no_telp`, `email`, `alamat`, `id_jenjang`, `no_npwp`, `no_rekening`, `tempat_lahir`, `tanggal_lahir`, `tanggal_masuk`, `tanggal_mulai_tugas`, `tanggal_akhir_tugas`, `no_bpjs_ketenagakerjaan`, `no_bpjs_kesehatan`, `id_agama`, `id_jabatan`, `id_jabatan_2`, `adjustment_factor`, `index_profesi`, `id_jk`, `id_status_pernikahan`, `id_status_kepegawaian`, `id_komite`, `id_ptkp`, `id_unit`, `id_gaji`, `gaji_variabel`, `uang_makan`, `id_rekap`, `id_pangkat`, `id_aktif`, `password`) VALUES
(423, 'Adinda Gadis Damayanti', '139141865', '3578025301790002', '-', 'a@a', 'Bendul Merisi Permai M.21 RT 004 RW 009, Bendul Merisi, Wonocolo, Surabaya', 3, '729995811609000', '1420013332621', 'Malang', '1979-01-13', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 174, 0, 0.1, 0.9, 1, 2, 2, 3, 1, 36, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(424, 'Dita Novitasari', '199510312016075201', '3578067110950008', '-', 'ditanovitasari@gmail.com', 'Banyu Urip Wetan 4A/11 Surabaya', 3, '765176292614000', '1420014984255', 'Surabaya', '1995-10-31', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(425, 'Dwi Ima Destyo Utami', '199312032016075201', '3577024312930000', '-', 'dwiimadestya@gmail.com', 'Jl. Puspowarno 32 RT/RW 10/04 Sogaten Madiun', 5, '835830548621000', '9000037897932', 'Madiun', '1993-12-03', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(426, 'Aditya Galih Nusantara', '139141859', '3578042206900001', '-', 'a@a', 'Jetis Pertolongan 10 RT 017 RW 004, Wonokromo, Surabaya', 6, '729861054609000', '1420013332647', 'Surabaya', '1990-06-22', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 154, 0, 0.2, 0.8, 2, 2, 2, 4, 3, 2, 3, '0', '0', 1, 0, 1, 'rsunair2019'),
(427, 'Viqi Asmaudin', '199402262015055101', '3578092602900002', '-', 'q@q', 'Kejawan Gebang 7/8 RT 004 RW 004 Kel.Gebang Putih Kec.Sukolilo Kota Surabaya Provinsi Jawa  Timur\r\n', 3, '821553393606000', '1420014104508', 'Surabaya', '1994-02-26', '2015-05-20', '2015-05-20', '2019-05-19', '-', '-', 1, 187, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 5, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(428, 'Agung Mariono', '139141850', '3578101405900002', '-', 'a@a', 'Setro Baru 11/20  RT 005 RW 004, Dukuh Setro, Tambaksari, Surabaya', 5, '542473673619000', '1420013332472', 'Surabaya', '1990-05-14', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 140, 0, 0.1, 0.9, 2, 2, 2, 2, 2, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(429, 'Erlina Dewanti Santoso', '199308212016075201', '3578086108930002', '-', 'erlinadewanti@gmail.com', 'Karang Menjangan 3B/29A, Surabaya', 3, '809930324606000', '9000037921583', 'Surabaya', '1993-08-21', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(430, 'Chandra Bagus Dwianto., dr', '199003222015105101', '3571032203900003', '-', 'q@q', 'Jl. Pakunden II/39, RT004/RW008, Kel. Tinalan, Kec. Pesantren, Kota Kediri, Jawa Timur\r\n', 7, '087110623622000', '9000033848624', 'Kediri', '1990-03-22', '2015-10-15', '2015-10-15', '2019-10-14', '-', '-', 1, 194, 0, 0, 0, 2, 1, 2, 1, 1, 17, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(431, 'Ah Setyanur Rifki Maimanah', '139141852', '3524220605920001', '-', 'a@a', 'Banjarsari RT 001 RW 001, Bancangkenongo, Lamongan, Kab. Lamongan', 5, '-', '1420013332456', 'Lamongan', '1992-05-06', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 137, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 37, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(432, 'Erlysa Diah Pangastuti', '198910252016075201', '3509196510890002', '-', 'erlysa.diah@gmailcom', 'Perum Muktisari Blok I No. 15 Jember', 7, '-', '1420014986300', 'Yogyakarta ', '1989-10-25', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 20, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(433, 'Ade Sugih Herlambang', '199209122015115101', '3517041209920001', '-', 'q@q', 'Jl.Kawi No 17 RT/RW 03/03 Bareng Jombang\r\n', 6, '743562753602000', '1420014457328', 'Surabaya', '1992-09-12', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 20, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(434, 'Afining Dina Ariyanti', '199204082015115201', '3504014804920002', '-', 'q@q', 'Jl. MT. Haryono II/2F RT/RW 05/09 Kepatihan Tulungagung\r\n', 6, '743439994629000', '1440011725477', 'Tulungagung', '1992-04-08', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 25, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(435, 'Agustyas Nikma Aziz', '199708072015115201', '3518114708970003', '-', 'q@q', 'Dsn Ketangi RT/RW 04/09 Kampungbaru Tanjunganom Nganjuk\r\n', 3, '743155756655000', '9000034140518', 'Surabaya', '1997-08-07', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 183, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(436, 'Ajeng Afrita Rosanti', '199509302015115201', '3515187009950001', '-', 'q@q', 'Jl.Ikan Bandeng II RT/RW 11/05 Tambakrejo Waru Sidoarjo\r\n', 3, '735450207643000', '1420012820568', 'Surabaya', '1995-09-30', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 9, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(437, 'Esa Rilasti', '197704252016075201', '3515076504770004', '-', 'esarilasti@gmail.com', 'JL.Ababil No. 2, Larangan, Candi, Sidoarjo', 5, '344448162617000', '9000037897916', 'Mojokerto ', '1977-04-25', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(438, 'Aldila Azmi Rahmatul Layalia', '199205212015115201', '3525146105920001', '-', 'q@q', 'Belitung 5/6 RT/RW 03/08 Randuagung Kebomas Gresik\r\n', 6, '743720500612000', '1410013711403', 'Gresik', '1992-05-21', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 12, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(439, 'Aminatus Sholikhah', '199102262015115201', '3524086602910001', '-', 'q@q', 'Laren RT/RW 02/02 Laren Lamongan\r\n', 6, '743497349645000', '9000034149816', 'Kutai', '1991-02-26', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 48, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(440, 'Ahmad Amirul Adly', '139141864', '3578082311910005', '-', 'a@a', 'Mojo 3-E/33 RT 010 RW 005, Gubeng, Surabaya', 5, '663029148606000', '1420013332563', 'Surabaya', '1991-11-23', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 142, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(441, 'Andri Wijaya', '199205092015115201', '3520124905920002', '-', 'q@q', 'Klagen RT/RW 10/02 Karangmojo Kec Barat Kabupaten Magetan \r\n', 6, '753248916646000', '1410010593853', 'Magetan', '1992-05-09', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(442, 'Ajeng Widya Utami', '139121714', '-', '-', 'a@a', '-', 6, '898313127609000', '1410012782918', 'Nganjuk', '1984-06-18', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 79, 0, 0, 0, 1, 1, 2, 2, 1, 13, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(443, 'Alimudin Jabaar', '139141840', '3525130811900005', '-', 'a@a', 'Kepatihan RT 004 RW 002, Menganti, Kab. Gresik', 5, '982037343642000', '1410009928953', 'Surabaya', '1990-11-08', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 137, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 37, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(444, 'Angki Marita Handayani', '139141860', '-', '-', 'a@a', '-', 5, '468590211618000', '1420013332589', 'Surabaya', '1989-03-26', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 149, 0, 0.2, 0.8, 1, 2, 2, 4, 3, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(445, 'Anis Churillailil', '139141813', '3578144910780003', '-', 'a@a', 'Manukan Subur 6 Blok 32-K/49 RT 001 RW 012, Manukan Kulon, Tandes, Surabaya', 5, '085697787604000', '1420013322903', 'Surabaya', '1978-10-09', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 2, 2, 4, 4, 31, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(446, 'Anisa Adyalina', '199208182015115202', '3506015808920002', '-', 'q@q', 'Gebangsari RT/RW 13/05 Jatirejo Mojokerto\r\n', 6, '744328519602000', '9000004830569', 'Mojokerto', '1992-08-18', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 13, 1, '0', '0', 1, 0, 1, 'rsunair2019'),
(447, 'Aulya Afifatur Rochmah', '139121678', '-', '-', 'a@a', '-', 6, '731086088648000', '1410012747218', 'Tuban', '1989-10-06', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 98, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(448, 'Berinda Januarti Punjungalun Putri', '139121705', '3576024901900001', '-', 'a@a', 'Jl. Wilis III/5 RT 004 RW 001, Wates, Magersari, Kota Mojokerto', 6, '724941612302000', '1410012782801', 'Mojokerto', '1990-01-09', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 107, 0, 0.15, 1, 1, 2, 2, 3, 2, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(449, 'Annisa Nur Aini', '199202172015115201', '3509095702920001', '-', 'q@q', 'Dsn Krajan RT/RW 02/03 Tisnogambar Bangsalsari Jember\r\n', 6, '736982000626000', '1410010591527', 'Jember', '1992-02-17', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 48, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(450, 'Febri Kardina', '199102022016075201', '3578114202910002', '-', 'febrikardina@gmail.com', 'Tambak Madu 3 No. 47 Surabaya', 7, '743864001432000', '9000037897924', 'Surabaya', '1991-02-02', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(451, 'Cristina Aristya', '139121679', '-', '-', 'a@a', '-', 6, '729699884606000', '1410012747184', 'Bangkalan', '1989-04-21', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 98, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(452, 'Desy Purnama Sari', '139121707', '3505125512890001', '-', 'a@a', 'Perum New Green Hill Residence II HH.5 RT 006 RW 008, Gunung Anyar, Surabaya', 5, '725590673653000', '1410012782983', 'Blitar', '1989-12-15', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 107, 0, 0.15, 1, 1, 2, 2, 3, 2, 24, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(453, 'Dinda Nur Fitria', '139121708', '3528026610900002', '-', 'a@a', 'Jl. Jokotole 5/56 RT 003 RW 003, Barurambat Timur, Pademawu, Kab. Pamekasan', 5, '724735469608000', '1410012782751', 'Pamekasan', '1990-10-26', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 107, 0, 0.1, 1, 1, 2, 2, 3, 2, 36, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(454, 'Ari Novitasari', '198909092015115201', '3518094909890001', '-', 'q@q', 'Desa Pecuk RT/RW 02/04 Patianrowo Nganjuk\r\n', 6, '743457889655000', '1420014457351', 'Nganjuk', '1989-09-09', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 173, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 6, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(455, 'Arin Eka Darnasari', '199506272015115201', '3519026706950001', '-', 'q@q', 'Dsn Nampurejo RT/RW 36/11 Sugihwaras Saradan Madiun\r\n', 3, '746761048621000', '9000034152422', 'Ponorogo', '1995-06-27', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 9, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(456, 'Arya Bondan Permadi', '199307032015115101', '3509200307930001', '-', 'q@q', 'Jl.M Seruji 15/3 Lingk Krajan RT/RW 02/19 Patrang Jember\r\n', 5, '743429888626000', '9000034140526', 'Jember', '1993-06-03', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 141, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 18, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(457, 'Enok Indrawati', '139141844', '3575016501870001', '-', 'a@a', 'Jl. Slamet Riadi RT 003 RW 002, Sebani, Gadingrejo, Kota Pasuruan', 5, '717096630624000', '1420013332522', 'Pasuruan', '1987-01-25', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 100, 0, 0.1, 1, 1, 2, 2, 3, 2, 36, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(458, 'Chabib Fitri Lia Wati', '199008272015115201', '3505126708900002', '-', 'q@q', 'Lingkungan Purworejo RT/RW 03/10 Sutojayan Blitar\r\n', 6, '745111310653000', '9000016722861', 'Blitar', '1990-08-27', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(459, 'Erlina Fatma Widiyanti', '139141863', '-', '-', 'a@a', '-', 5, '730009073609000', '1420013332639', 'Trenggalek', '1991-02-18', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 2, 2, 4, 3, 31, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(460, 'Farid Firmansyah', '139141855', '-', '-', 'a@a', '-', 3, '598156685606000', '1420013332449', 'Surabaya', '1986-02-17', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 187, 0, 0.1, 0.9, 2, 1, 2, 4, 1, 5, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(461, 'Fatiyah Malihah', '139121691', '-', '-', 'a@a', '-', 6, '805441938619000', '1410012750709', 'Gresik', '1989-12-01', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 98, 0, 0.2, 1, 1, 2, 2, 3, 2, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(462, 'Firda Amelia Permana Putri', '139141851', '3578106805900001', '-', 'a@a', 'Setro Baru 6/22 RT 001 RW 004, Dukuh Setro, Tambaksari, Surabaya', 5, '752128264619000', '1420013332464', 'Surabaya', '1990-05-28', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 137, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 37, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(463, 'Hendra Prasetya', '139141856', '3578090104910003', '-', 'a@a', 'Keputih 3-C/22-A RT 003 RW 002, Sukolilo, Surabaya', 6, '730095726606000', '1420013332514', 'Surabaya', '1991-04-01', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 158, 0, 0.2, 0.8, 2, 2, 2, 4, 2, 27, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(464, 'Heri Setyoko', '139141846', '-', '3578091110890003', 'a@a', '-', 5, '730016169606000', '1420013332480', 'Surabaya', '1989-10-11', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 169, 0, 0.2, 0.8, 2, 2, 2, 4, 2, 2, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(465, 'Chusnul Hidayah', '199301042015115201', '3578154401930000', '-', 'q@q', 'Gadukan Timur 3/2H RT/RW 03/04 Krembangan Surabaya\r\n', 5, '743504508605000', '9000034152372', 'Surabaya', '1993-01-04', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 107, 0, 0.1, 1, 1, 1, 2, 3, 1, 36, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(466, 'Indar Putri Rahayu', '139121701', '3578084803890002', '-', 'a@a', 'Mojo 3-C/24 RT 003 RW 005, Mojo, Gubeng, Surabaya', 6, '733068506603000', '1410012750691', 'Surabaya', '1989-03-08', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 2, 2, 3, 2, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(467, 'Fitria Rochmawati', '198406072016075201', '3578044706840000', '-', 'fitria.rochmawati@gmail.com', 'Bagong Tambangan No. 24 Surabaya', 5, '982218414609000', '1420014982796', 'Surabaya', '1984-06-07', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(468, 'Indri Diyah Puji Lestari', '139121687', '3578175703890002', '-', 'a@a', '-', 6, '729441535619000', '1410012782769', 'Surabaya', '1989-03-17', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(469, 'Khoerun Asna', '198910042016075201', '3504044410890001', '-', 'khoerunasna@gmail.com', 'Dsn Darungan RT 002 RW 007, Kepuhrejo, Tulungagung', 7, '835971961629000', '1410007404221', 'Tulungagung', '1989-10-04', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(470, 'Melysa Niki Aprilya', '199104012016075201', '3519114104910003', '-', 'melysaniki@gmail.com', 'Dsn Sumberejo, Kaliabu RT 011 RW 002, Mejayan, Madiun, Jawa Timur', 7, '765992136612000', '1410014518369', 'Madiun', '1991-04-01', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 20, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(471, 'Nanda Idhawanti Putri', '199405212016075201', '3578266105940002', '-', 'nandaidhawanti@gmail.com', 'Jl.Kalijudan X/55H Surabaya', 5, '764910105619000', '9000037897957', 'Surabaya', '1994-05-21', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(472, 'Ninik Nurul Faizah', '198101022016075201', '3515064201810005', '-', 'ninik.nurul@gmail.com', 'Perum Grand Masangan B128, Sukodono, Sidoarjo', 5, '982218323617000', '9000037921633', 'Sidoarjo', '1981-01-02', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(473, 'Ninik Setyowati', '198512292016075201', '3523196912850006', '-', 'niniksetyowati@gmail.com', 'Dsn Kandangan RT 008 RW 001, Ngadipuro, Widang, Kab. Tuban', 3, '825769953648000', '9000037921591', 'Tuban', '1985-12-29', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(474, 'Nova Eka Twenty Putri', '199110202016075201', '3514166011910001', '-', 'novaekatwenty@gmail.com', 'Krajan RT 002 RW 002, Ngempit, Kraton, Pasuruan', 7, '764728879624000', '1440015962134', 'Sidoarjo', '1991-11-20', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(475, 'Putri Puspita Sari', '199010042016075201', '3578274410900000', '-', 'putripuspitasari@gmail.com', 'Jl. Simorejo Timur No. 12, Surabaya', 5, '715814786614000', '9000037921641', 'Surabaya', '1990-10-04', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(476, 'Rahayu Septiana', '199209012016075201', '3515076709920002', '-', 'rahayuseptiana@gmail.com', 'Ngampelsari RT 006 RW 003, Ngampelsari, Candi, Kab. Sidoarjo', 7, '764936878617000', '9000014327481', 'Sidoarjo', '1992-09-27', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 48, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(477, 'Ririn Halimatus Sa''diah', '199102222016075201', '3511116202910002', '-', 'ririnhalimatus@gmail.com', 'Saliwiryo Pranowo Gg Taman RT 011 RW 003, Kotakulon, Bondowoso, Jawa Timur', 7, '766248116656000', '9000037897908', 'Bondowoso', '1991-02-22', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(478, 'Siti Hidayatul Ula', '199304222016075201', '3515096204930001', '-', 'sitihidayatul@gmail.com', 'Desa Tlasih RT 001 RW 001, Kec. Tulangan, Sidoarjo', 5, '765091954603000', '1420014985567', 'Ambon ', '1993-04-22', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(479, 'Citra Intansari Ayu Lestari', '198911092015115201', '3525134911890002', '-', 'q@q', 'Petemon 4/52 RT/RW 03/11 Sawahan Surabaya\r\n', 6, '721068690614000', '1410012525408', 'Surabaya', '1989-11-09', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(480, 'Irine Susanti', '139141845', '3578186210870001', '-', 'a@a', 'Jl. Cendrawasih 5/14 RT 005 RW 006, Kepuh Kiriman, Waru, Kab. Sidoarjo', 3, '351518300985000', '1420013332605', 'Madiun', '1987-10-22', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 174, 0, 0.15, 0.9, 1, 2, 2, 3, 2, 26, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(481, 'Yustin Oktavia', '198910062016075201', '3578104610890007', '-', 'yustinoktavia@gmail.com', 'Kapas Madya Barat 9A/25 Surabaya', 7, '759227390619000', '1420014984479', 'Surabaya', '1989-10-06', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(482, 'Zamira Tri Lestari', '198808252016075201', '3515136508880000', '-', 'zamiratrilestari@gmail.com', 'Tawangsari Permai DD 29, Taman, Sidoarjo', 5, '982218133603000', '9000037921617', 'Surabaya', '1988-08-25', '2016-07-01', '2016-07-01', '2017-06-30', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(483, 'Deasy Nusiyanti', '198612262015115201', '3578296612860001', '-', 'q@q', 'Pantai Mentari Blok O11 RT/RW 03/05 Kenjeran Bulak Surabaya\r\n', 6, '722313384619000', '1420014457310', 'Palangkaraya', '1986-12-26', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(484, 'Deny Martha Hardita', '199303142015115201', '3517135403930001', '-', 'q@q', 'Dsn. Mojo RT/RW 02/02 Tamping Mojo Kec Tembelang Jombang\r\n', 6, '743131534602000', '1410010590537', 'Jombang', '1993-03-14', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(486, 'Diah Fajar Safitri', '199104202015115201', '3306076004910000', '-', 'q@q', 'Candingasinan RT/RW 02/01 Banyuurip Purworejo\r\n', 5, '743312829531000', '9000034152380', 'Gorontalo', '1991-04-20', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(487, 'Dian Permata Sari, S.Kep., Ns', '199203272015115201', '3506256703920001', '-', 'q@q', 'Jl. Soekarno Hatta II Gg Mangga 03 RT/RW 05/01 Ngasem Kediri\r\n', 6, '743045692655000', '1440010674874', 'Kediri', '1992-03-27', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 32, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(489, 'Diena Moeslima', '199309242015115201', '3515086409930002', '-', 'q@q', 'Celep 1/25 RT/RW 02/01 Celep Sidoarjo\r\n', 5, '743635617617000', '9000034152356', 'Sidoarjo', '1993-12-24', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(490, 'Dinda Wulan Suci', '199104102015115201', '3576025004910002', '-', 'q@q', 'Jl. Kawi IV/49 RT 003 RW 006, Wates, Magersari, Mojokerto, Jawa Timur\r\n', 5, '804115202602000', '1410010993327', 'Surabaya', '1991-04-10', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(491, 'Dia Rizka Isnawati, dr', '199010012016085201', '3578244110900001', '-', 'diariszka@gmail.com', 'Medokan Kampung Gg TK.2 No 15A, Medokan Ayu, Rungkut, Surabaya', 7, '660868480615000', '1410010972131', 'Surabaya', '1990-10-01', '2016-07-25', '2016-07-25', '2017-07-24', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 17, 8, '0', '0', 1, 0, 1, 'rsunair2019'),
(492, 'Dita Dresti Wardani', '199212222015115201', '3578316212920001', '-', 'q@q', 'Jl.Bumi Sari Praja VI/25 RT/RW 07/05 Lontar Sambikerep Surabaya\r\n', 6, '743052805604000', '1410011002185', 'Surabaya', '1992-12-22', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(493, 'Dwi Agustina', '199108012015115201', '3578264108910001', '-', 'q@q', 'Kalijudan 8C/4 RT/RW 03/03 Kalijudan Mulyorejo Surabaya\r\n', 6, '723705000615000', '9000001314740', 'Jombang', '1993-03-14', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(494, 'Efa Imama Nur Maulina', '199207042015115201', '3578084407920003', '-', 'q@q', 'Jojoran I Blok AA/9 RT/RW 15/08 Mojo Gubeng Surabaya\r\n', 6, '743368508606000', '1410010560100', 'Lumajang', '1992-07-04', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(495, 'Egha Rizki Masyuda', '199101102015115101', '3514181001910009', '-', 'q@q', 'Ranggeh RT/RW 03/01 Ranggeh Gondangwetan Pasuruan\r\n', 6, '743365140624000', '9000034149923', 'Sidoarjo', '1991-01-10', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 48, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(496, 'Erna Kustiyaningsih', '199205142015115201', '3517165405920001', '-', 'q@q', 'Dsn Paleman RT/RW 01/05 Kabuh Jombang\r\n', 6, '743132136602000', '1410010589695', 'Jombang', '1992-05-14', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 15, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(497, 'Erwindy Yastika Pradani', '199411302015115201', '3578047011940002', '-', 'q@q', 'Semolowaru Selatan 1/55B RT/RW 07/03 Semolowaru Surabaya\r\n', 3, '743300113606000', '1420017190967', 'Surabaya', '1994-11-30', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 175, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 10, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(498, 'Khusnul Fitri Hamidah', '139121715', '-', '-', 'a@a', '-', 6, '705056232643000', '1410012782926', 'Mojokerto ', '1988-05-23', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 9, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(499, 'Kisam Samsuri', '139121699', '-', '-', 'a@a', '-', 6, '805441938619000', '1410012747176', 'Surabaya', '1989-05-25', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 100, 0, 0.2, 1, 2, 2, 2, 3, 2, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(500, 'Maria Ulfa', '139121711', '-', '-', 'a@a', '-', 6, '086379955609000', '1420014510274', 'Gresik', '1986-05-20', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 107, 0, 0, 0, 1, 2, 2, 3, 3, 24, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(501, 'Andra Rizqiawan, drg., Sp.BM., Ph.D.', '198109232005011001', '3578072309810001', '081390909100', 'a@a', 'JL.MAKAM PENELEH NO. 57 SBY\r\n', 10, '078820289611000', '1410009818956', 'Surabaya', '1981-09-23', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 52, 0, 0, 0, 2, 2, 1, 1, 4, 36, 10, '0', '0', 3, 11, 1, 'rsunair2019'),
(502, 'Farida Fuji Astutik', '199504232015115201', '3506236304950002', '-', 'a@a', 'Dsn Jemekan Barat RT/RW 04/01 Jemekan Ringinrejo Kediri\r\n', 3, '746222066655000', '9000034152406', 'Blitar', '1995-04-23', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 9, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(503, 'Febri Kusumowidagdo', '199202112015115101', '3275040102920013', '-', 'a@a', 'Pondok Surya Mandala Jl.Surya Lestari I Blok T/9 RT003/RW013, Bekasi Selatan\r\n', 6, '743864001432000', '9000018007428', 'Surabaya', '1992-02-11', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 2, 1, 2, 2, 1, 13, 5, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(504, 'Alphania Rahniayu, dr., Sp.PA.', '198102072008012013', '3578024702810004', '081234168612', 'a@a', 'Jl.Bendul Merisi Permai G/8 RT.3 RW.9 Surabaya\r\n', 9, '789351517609000', '1410009807645', 'Surabaya', '1981-02-07', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 4, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(505, 'Fidelia Wandita Nareswari', '199206142015115201', '3578065406920003', '-', 'a@a', 'Simo Gunung Kramat Timur 1 A/2 RT/RW 07/02 Surabaya \r\n', 6, '743220337614000', '9000004664141', 'Surabaya', '1992-06-14', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(506, 'Ariandi Setiawan., dr., Sp.B., Sp.BA.', '197306102008011015', '3578241006730001', '081234567890', 'a@a', 'Jl. Tenggilis Utara 3/14, Surabaya\r\n', 9, '097475545615000', '1410009807728', '1973-06-10', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 52, 0, 0, 0, 2, 2, 1, 1, 3, 36, 10, '0', '0', 3, 6, 1, 'rsunair2019'),
(507, 'Arief Bakhtiar, dr., Sp.P.', '197810222008011005', '3578172210780001', '081234567890', 'a@a', 'Sidomulyo III A / 5 Surabaya\r\n', 9, '260651526619000', '1410009808791', 'Surabaya', '1978-10-22', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(508, 'Fitria Wulandari', '199603062015115201', '3508084603960003', '-', 'a@a', 'Pakeman RT/RW 11/04 Sumbersari Rowokangkung Lumajang\r\n', 3, '-', '9000034140450', 'Lumajang', '1995-03-15', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 174, 0, 0.15, 0.9, 1, 1, 2, 3, 1, 23, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(509, 'Ghaniya Al Murahman', '199303182015115201', '3502125803930000', '-', 'a@a', 'Dukuh Krajan RT 001 RW 002, Bringin, Kauman, Ponorogo\r\n', 5, '743137879647000', '9000034152364', 'Poronogo', '1993-03-18', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(510, 'Hana Rahmawati', '199206202015115201', '3504056006920002', '-', 'a@a', 'Dsn Krajan RT/RW 07/03 Bolorejo Kauman Tulungagung\r\n', 6, '743326274629000', '1420013554752', 'Tulungagung', '1992-06-20', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 13, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(512, 'Anny Setijo Rahayu, dr., Sp.PA.', '197009202008122001', '3578116009700004', '081234567890', 'a@a', 'Jl.Bendul Merisi Utara VIII / 34 Surabaya\r\n', 9, '789351509616000', '1410009814799', 'Surabaya', '1970-09-20', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 52, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 2, 11, 1, 'rsunair2019'),
(513, 'Hargus Haraudi Barkah', '198708302015115101', '3578043008870003', '-', 'a@a', 'Regency Kuda Dua Blok B17 rt/rw 01/03 Jagir Jec Wonokromo Surabaya\r\n', 6, '459978128609000', '1420005531222', 'Surabaya', '1987-08-30', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 12, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(514, 'Aang Kunaifi, S.Kep., Ners', '198611012010121006', '3529010111860001', '081234567890', 'a@a', 'Jl. Kangean P 01 Perumnas Pamolokan Sumenenp\r\n', 6, '703825323606000', '1410010831642', 'Sumenep', '1986-11-01', '2010-12-01', '0000-00-00', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 2, 2, 1, 3, 2, 45, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(515, 'Aditea Etnawati Putri, dr', '198310142010122002', '012345678910111213', '081234567890', 'a@a', 'Surabaya', 7, '362456287606000', '1420013898605', 'Surabaya', '1983-10-14', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 33, 0, 0, 0, 1, 2, 1, 1, 4, 4, 10, '0', '0', 2, 11, 1, 'rsunair2019'),
(516, 'Aditya Nugrahadi, ST., MM.', '198204122010121001', '3578261204820001', '081234567890', 'a@a', 'Jl.Mulyosari Utara 8 No.5 Rt.008/Rw.001 Kalisari Mulyorejo Surabaya\r\n', 8, '693669095619000', '1410010833440', 'Surabaya', '1982-04-12', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 22, 65, 0, 0, 2, 2, 1, 4, 3, 35, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(517, 'Akhmad Ja''far, S.Kep., Ners', '198307152010121008', '3578101507830005', '081234567890', 'a@a', 'Jl.Salak No.8 Rt.002/Rw.001 Tambaksari Surabaya\r\n', 6, '362933194619000', '1410010842987', 'Sidoarjo', '1983-07-15', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 2, 2, 1, 3, 2, 25, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(518, 'Hidati Dian Novrita', '199111172015115201', '3575025711910002', '-', 'a@a', 'Gg Srikoyo NO 02RT/RW 02/04 Purutrejo Purworejo Pasuruan\r\n', 6, '743385528624000', '9000008732217', 'Pasuruan', '1991-11-17', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 107, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(519, 'Andis Yuswanto, S.Kep., Ners', '198502042010121001', '3578040402850000', '081234567890', 'a@a', 'Candisari 1/8-B, Patihn - Mngunharjo Madiun\r\n', 6, '363154394612000', '1410010836781', 'Madiun', '1985-02-04', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 2, 1, 1, 3, 2, 25, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(520, 'Lulytha Rahmanike Putri, drg.', '199010062016095201', '3515184610900003', '-', 'lulytha.rahmanike@gmail.com', 'Pepelegi Indah 16 RT 001 RW 007 Kel Pepelegi Waru Sidoarjo', 7, '340850882643000', '1420010341328', 'Surabaya', '1990-10-06', '2016-07-27', '2016-07-27', '2017-07-26', '-', '-', 1, 195, 0, 0, 0, 1, 1, 2, 1, 1, 36, 8, '0', '0', 1, 0, 1, 'rsunair2019'),
(521, 'Alifiah Frisky Ferdianty', '199305232016095201', '3578106305930006', '-', 'alifiahfrisky@gmail.com', 'Dukuh Setro 1 Tengah No. 1B, Surabaya', 3, '453022899642000', '9000037957330', 'Surabaya', '1993-05-23', '2016-07-29', '2016-07-29', '2017-07-26', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(522, 'Andi Darus Salam', '199305082016095101', '3578010805930001', '-', 'andidarussalam@gmail.com', 'Karangpilang gg Rajawali No. 49 Surabaya', 3, '816973622618000', '9000037957355', 'Surabaya', '1993-05-08', '2016-07-30', '2016-07-30', '2017-07-29', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(523, 'Ika Rizqi Lia Ningsih', '199405232015115201', '3517076305940002', '-', 'a@a', 'Jl.Manggis RT/RW 05/03 Mojowarno Jombang\r\n', 6, '743132680602000', '1410010589711', 'Jombang', '1994-05-23', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(524, 'Lia Nikmatul Maula', '199212182016095201', '3504055812920001', '-', 'lianikmatul@gmail.com', 'Dsn Legawan RT 002 RW 002, Balarejo, Kauman, Kab. Tulungangung', 5, '815962923629000', '1420015124174', 'Tulungagung', '1992-12-18', '2016-07-31', '2016-07-31', '2017-07-29', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(525, 'Reza', '199401152016095101', '3515181501940003', '-', 'reza@gmail.com', 'Jl. Rajawali Utara 1 No. 173, Waru, Sidoarjo', 5, '756410005643000', '9000037957348', 'Sidoarjo', '1994-01-15', '2016-08-02', '2016-08-02', '2017-08-01', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(527, 'Niken Sasadhara Sasmita, dr.', '199008032016085201', '3515184308900006', '-', 'nikensasadhara@gmail.com', 'Klampis Harapan 3/3 AA36, Klampis Ngasem, Sukolilo, Surabaya', 7, '660380049606000', '9000016342066', 'Surabaya', '1990-08-03', '2016-08-26', '2016-08-26', '2017-08-25', '-', '-', 1, 194, 0, 0, 0, 1, 1, 2, 1, 1, 49, 8, '0', '0', 1, 0, 1, 'rsunair2019'),
(528, 'Intan Widiastiti', '199110052015115201', '3578054510910001', '-', 'a@a', 'Wonorejo 3/33 RT/RW 05/05 Wonorejo Tegalsari Surabaya\r\n', 6, '721126597607000', '9000004825775', 'Surabaya', '1991-10-05', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(529, 'Liya Kurniawati', '199108242015115201', '3505216408910001', '-', 'a@a', 'Dsn Ngreco Baru RT/RW 02/02 Ngreco Selorejo Blitar\r\n', 6, '743383937653000', '1410010590560', 'Blitar', '1991-08-24', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 1, '0', '0', 1, 0, 1, 'rsunair2019'),
(530, 'M. Hadi Rofiqur Rohman', '199108082015115101', '3578102208910001', '-', 'a@a', 'Jl. Kali Kepiting Jaya 5/89 RT/RW 10/05 Pacar kembang Surabaya\r\n', 5, '835474602619000', '9000034140443', 'Surabaya', '1991-08-22', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 137, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 37, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(531, 'Miftahul Fahmi', '199210202015115101', '3522242010920001', '-', 'a@a', 'Dsn Klepek RT/RW 04/01 Kapas Sukosewu Bojonegoro\r\n', 6, '743503153601000', '1420014113871', 'Gresik', '1992-10-20', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(532, 'Niko Rahardi', '139121721', '3574040310880001', '-', 'a@a', '-', 5, '972332530606000', '1410012782892', 'Probolinggo', '1988-10-03', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 60, 0, 0, 0, 2, 2, 2, 4, 3, 14, 3, '1700000', '400000', 2, 0, 1, 'rsunair2019'),
(533, 'Muchamad Adiyatama', '199201182015115101', '3514141801910001', '-', 'a@a', 'Jl.Apel IX No 537 B RT/RW 02/08 Kiduldalem Bangil Pasuruan\r\n', 5, '743809147624000', '9000034140534', 'Pasuruan', '1992-01-18', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 141, 0, 0.1, 0.9, 2, 1, 2, 4, 1, 18, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(534, 'Muhammad Fuad Yasin', '199108092015115101', '3518130908910001', '-', 'a@a', 'Jl. Wilis II A No 04 RT/RW 05/02 Gangungkidul Kramat Nganjuk\r\n', 6, '743490450655000', '9000005398293', 'Nganjuk', '1991-08-09', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 2, 1, 2, 2, 1, 10, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(535, 'Nur Lailatul Azmi', '139141866', '3578176204850010', '-', 'a@a', '-', 3, '730998168609000', '1420013332662', 'Surabaya', '1985-04-22', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 174, 0, 0.2, 0.9, 1, 2, 2, 3, 2, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(536, 'Nurul Fatimah, S.Si', '139141839', '3578036205810004', '-', 'a@a', '-', 6, '690824511615000', '1420006852809', 'Surabaya', '1981-05-22', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 138, 0, 0, 0.8, 1, 1, 2, 4, 1, 29, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(537, 'Ogie Okta Ardana', '139141841', '3578081610890002', '-', 'a@a', 'Jl. Jojoran III D / Dalam 37', 5, '751655499606000', '1410009790866', 'Surabaya', '1989-10-16', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 137, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 37, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(538, 'Rizki Putri Kurniawati', '139121694', '-', '-', 'a@a', '-', 6, '731175550603000', '1410012750733', 'Banyuwangi', '1989-03-26', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 100, 0, 0.1, 1, 1, 2, 2, 3, 4, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(539, 'Ruri Rahmadani', '139121702', '3578265605870001', '-', 'a@a', 'Sutorejo Tengah 12/16 RT 011 RW 008, Dukuh Setro, Mulyorejo, Surabaya', 6, '578604878619000', '1410012782850', 'Sidoarjo', '1987-05-16', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 100, 0, 0.1, 1, 1, 2, 2, 3, 4, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(540, 'Muhammad Umar Ali Kusuma', '199001242015115101', '3519042401900004', '-', 'a@a', 'Dsn Sewulan RT/RW 26/06 Sewulan Dagangan Kab Madiun\r\n', 6, '743035628621000', '9000034149915', 'Tangerang', '1990-01-24', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(541, 'Sandy Andhita Saraswati', '139141862', '3515186603920006', '-', 'a@a', 'Jl. Bromo EG/32 Wisma Tropodo RT 055 RW 006, Tropodo, Waru, Kab. Sidoarjo', 5, '730128782643000', '1420013332613', 'Surabaya', '1992-03-26', '2014-06-01', '2014-06-01', '2014-06-01', '-', '-', 1, 168, 0, 0.2, 0.8, 1, 2, 2, 4, 3, 31, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(542, 'Najmi Layalia', '199108152015115201', '3526035508910004', '-', 'a@a', 'Jl.Kusuma Bangsa No 182 RT/RW 05/02 Burneh Bangkalan\r\n', 6, '743011876644000', '9000034152190', 'Bangkalan', '1991-08-15', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 4, '1800000', '0', 1, 0, 1, 'rsunair2019'),
(543, 'Nandya Ayu Silvaningrum', '199206062015115201', '3578064606920009', '-', 'a@a', 'Kupang Gunung Timur 5/12 RT/RW 03/06 Pakis Sawahan Surabaya\r\n', 6, '766248116656000', '1410010592830', 'Surabaya', '1992-06-06', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(544, 'Rosita Prananingtias', '139121718', '3578035203840004', '-', 'a@a', 'Tambak Medokan Ayu VI-B / 2-B RT 008 RW 002, Medokan Ayu, Rungkut, Surabaya', 5, '451352470615000', '1410012782868', 'Surabaya', '1984-03-12', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 64, 0, 0, 0, 1, 2, 2, 2, 3, 39, 3, '1700000', '400000', 2, 0, 1, 'rsunair2019'),
(545, 'Nikein Trisna Hartini', '199209022015115201', '3578054209920001', '-', 'a@a', 'Dinoyo Sekolahan 2/40A RT/RW 08/04 Keputran Surabaya\r\n', 6, '836054759607000', '1420014457336', 'Surabaya', '1992-09-02', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(546, 'Nor Za''idah Asy''ariyah', '199211022015115201', '3515134211920005', '-', 'a@a', 'Wonocolo Gg 8/103 RT/RW 01/01 Taman Sidoarjo\r\n', 6, '743500779603000', '1410010389047', 'Sidoarjo', '1992-11-02', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 32, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(548, 'Novendra Aji Cahyo Wibowo', '199111042015115101', '3578250411910001', '-', 'a@a', 'Gununganyar Jaya I Blok B15 RT/RW 09/04 Gununganyar Surabaya\r\n', 5, '735004368615000', '9000034140468', 'Surabaya', '1991-11-04', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 157, 0, 0.2, 0.8, 2, 1, 2, 2, 1, 4, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(549, 'Siti Maysaroh', '139121703', '-', '-', 'a@a', '-', 6, '260817523643000', '1410012747630', 'Surabaya', '1989-04-09', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(550, 'Suwito', '139141842', '3524211204890004', '-', 'a@a', 'Klari RT 004 RW 002, Gedongboyountung, Turi, Kab. Lamongan', 6, '9000003057503', '440998904645000', 'Lamongan', '1989-04-12', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 2, 2, 4, 2, 19, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(551, 'Tirsa Rizky Ersanti', '139141847', '3578144706880003', '-', 'a@a', 'Simo Rukun 8/23 RT 008 RW 004, Simomulyo, Sukomanunggal, Surabaya', 3, '730970647642000', '1420013332506', 'Surabaya', '1988-06-07', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 100, 0, 0.1, 0.9, 1, 2, 2, 4, 2, 28, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(552, 'Nur Inayah', '199202052015115201', '3524274502920000', '-', 'a@a', 'Walangkopo RT/RW 02/06 Tikung Kec Sarirejo Lamongan\r\n', 6, '743201089645000', '1410010590388', 'Lamongan', '1992-02-05', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(553, 'Nur Laili Mahzumah', '198810122015115201', '3524126707930003', '-', 'a@a', 'Ngelom 2/464 RT 002 RW 002, Ngelom, Taman, Kab. Sidoarjo\r\n', 6, '455976613645000', '9000034149881', 'Lamongan', '1988-10-12', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(555, 'Wawan Agustiono', '139141857', '3578020511820003', '-', 'a@a', 'Siwalankerto Timur 1/105 RT 005 RW 005, Wonocolo, Surabaya', 6, '448810028609000', '1420013332597', 'Surabaya', '1982-11-05', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 2, 2, 4, 2, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(556, 'Nurul Ainiyah', '199412222015115201', '3524146212940003', '-', 'a@a', 'Dengok RT/RW 01/01 Kandang Semangkon Paciran Lamongan\r\n', 5, '743383119645000', '9000034152299', 'Lamongan', '1994-12-22', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 33, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(557, 'Nurul Hidayati', '199205092015115202', '3578014905920001', '-', 'a@a', 'Griya Kebraon Selatan 57 G/4 RT/RW 01/12 Karang Pilang Surabaya\r\n', 6, '743315731618000', '1410012833083', 'Surabaya', '1992-05-09', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 32, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(558, 'Windy Arie Cahyono', '139121673', '-', '-', 'a@a', '-', 6, '277879114608000', '1410012782934', 'Sumenep', '1986-12-31', '2012-12-01', '2012-12-01', '2012-12-01', '-', '-', 1, 100, 0, 0.15, 1, 2, 1, 2, 3, 1, 7, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(559, 'Yunita Sarah Az-Zahra', '139141849', '-', '-', 'a@a', '-', 3, '541914578611000', '1420013332654', 'Surabaya', '1989-06-29', '2014-06-01', '2014-06-01', '2019-06-01', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(560, 'Nurul Mita Anisah', '199005082015115201', '3578104805900004', '-', 'a@a', 'Jl.Dukuh Setro 10/51 RT/RW 07/02 Dukuh Setro Tambaksari \r\n', 3, '743121352619000', '1410010313880', 'Lamongan', '1990-05-08', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 174, 0, 0.15, 0.9, 1, 1, 2, 3, 1, 20, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(561, 'Nurul Wachyu Fitriyah Andriyani', '199203192015115201', '3578195903920002', '-', 'a@a', 'Tambak Osowilangun 9/35 RT/RW 01/02 Benowo Surabaya\r\n', 6, '743132250604000', '1410010590461', 'Gresik', '1992-03-19', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(562, 'Okki Fajrin Dhisiati', '199110232015115201', '3504116310910002', '-', 'a@a', 'Gilang RT/RW 02/07 Ngunut Tulungagung\r\n', 6, '741122923629000', '1410010587814', 'Tulungagung', '1991-10-23', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 10, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(563, 'Oktaria Nindyawati', '199610052015115201', '3520134510960002', '-', 'a@a', 'Desa Kauman RT/RW 05/01 Karangrejo Magetan\r\n', 3, '743184657646000', '9000034140500', 'Magetan', '1996-05-05', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 183, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(565, 'Arina Setyaningtyas., dr., Sp.A.', '197602222010122003', '3578266202760001', '081234567890', 'a@a', 'Jln. Sutorejo Prima Selatan I/27 PC-4,Surabaya\r\n', 9, '195107099619000', '1410000021600', 'Surabaya', '1976-02-22', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(566, 'Arlita Oktanawati', '198510152010122004', '3578085510850004', '081234567890', 'a@a', 'Jojoran 5 Timur Blok A / 8 RT 009 RW 008 Mojo - Gubeng Surabaya\r\n', 5, '673828240606000', '1410010831162', 'Surabaya', '1985-10-15', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 130, 0, 0, 0, 1, 2, 1, 2, 2, 29, 10, '0', '0', 2, 4, 1, 'rsunair2019'),
(567, 'Asdi Wihandono, dr., Sp.B.', '198301212010121006', '3578262101830001', '081234567890', 'a@a', 'Surabaya\r\n', 9, '365505866619000', '1410011154390', 'Surabaya', '1983-01-21', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(568, 'Oktaviani Putri Wiyono', '199610162015115201', '3578105610960004', '-', 'a@a', 'Jl.Jambu No 81 RT/RW 04/01 Tambaksari Surabaya\r\n', 3, '746167733619000', '9000034152414', 'Surabaya', '1996-10-16', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 175, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 9, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(569, 'Pembayun Kharisma Rubiah', '199306162015115201', '3578055606930001', '-', 'a@a', 'Kedung klinter 1/38 RT/RW 01/03 Kedungdoro Tegalsari Surabaya\r\n', 5, '744192618607000', '9000034152273', 'Surabaya', '1993-06-16', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(570, 'Azril Okta Ardiansyah, dr., Sp.B.', '198010062010121005', '3578090610800002', '081234567890', 'a@a', 'Surabaya', 9, '365361020606000', '1410011135159', 'Surabaya', '1980-10-06', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(571, 'Purwoning Husnul Chotimah', '199208242015115201', '3577036408920000', '-', 'a@a', 'Jl.Hayam Wuruk No 20 RT/RW 21/05 Manguharjo Madiun\r\n', 6, '743313579621000', '1410012830121', 'Surabaya', '1992-08-24', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 20, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(572, 'Qurrota A''yunil Masna', '199201112015115201', '3515135101920004', '-', 'a@a', 'Tanjung Anom RT/RW 02/01 Tanjugsari Taman Sidoarjo\r\n', 6, '743494304603000', '9000015052369', 'Sidoarjo', '1992-01-11', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 1, '0', '0', 1, 0, 1, 'rsunair2019'),
(573, 'Rahma Erdha Yunita', '199206302015115201', '3578137006920002', '-', 'a@a', 'Tembok Dukuh X/9 RT/RW 11/01 Tembok Dukuh Bubutan Surabaya\r\n', 6, '743053613614000', '1420014249832', 'Surabaya', '1992-06-30', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(574, 'Ranni Oktoviana', '199310272015115201', '3506136710930001', '-', 'a@a', 'Dsn .Sumber Asri RT/RW 01/01 Sonorejo Grogol Kediri\r\n', 5, '743017295655000', '9000034152315', 'Kediri', '1993-10-27', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 20, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(576, 'Rany Wanita Wigati', '198810152015115201', '3578045510880005', '-', 'a@a', 'Bratang Gede I/64 RT/RW 10/06 Ngagelrejo Surabaya\r\n', 5, '452370216609000', '9000034140476', 'Surabaya', '1988-10-15', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 148, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(577, 'Rateh Dwi Wilujeng', '199306132015115201', '3516075306930002', '-', 'a@a', 'Dsn Kedungmulyo RT/RW 02/03 Gednagan Kutorejo Mojokerto\r\n', 3, '467802872602000', '9000034140492', 'Mojokerto', '1993-06-13', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 183, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 14, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019');
INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `nip_nik`, `no_ktp`, `no_telp`, `email`, `alamat`, `id_jenjang`, `no_npwp`, `no_rekening`, `tempat_lahir`, `tanggal_lahir`, `tanggal_masuk`, `tanggal_mulai_tugas`, `tanggal_akhir_tugas`, `no_bpjs_ketenagakerjaan`, `no_bpjs_kesehatan`, `id_agama`, `id_jabatan`, `id_jabatan_2`, `adjustment_factor`, `index_profesi`, `id_jk`, `id_status_pernikahan`, `id_status_kepegawaian`, `id_komite`, `id_ptkp`, `id_unit`, `id_gaji`, `gaji_variabel`, `uang_makan`, `id_rekap`, `id_pangkat`, `id_aktif`, `password`) VALUES
(579, 'Ratih Harlianingtyas', '199502212015115201', '3578106102950007', '-', 'a@a', 'Rangkah 7/33 RT/RW 04/01 Rangkah Tambaksari Surabaya \r\n', 5, '744780479619000', '1410013629886', 'Surabaya', '1995-02-21', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 157, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 4, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(580, 'Ratna Nisa'' Anggraini', '198905302015115201', '3505087005890007', '-', 'a@a', 'Jl. Merpati III/02 Blok J/23 RT/RW 07/08 Wedoro Sidoarjo\r\n', 6, '743110835643000', '1410013310735', 'Surabaya', '1989-05-30', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 12, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(581, 'Rena Maulidya Nadzriyah', '199508052015115201', '3578024508950002', '-', 'a@a', 'Wonocolo Benteng 1/19B RT006/RW005 Jemurwonosari Surabaya\r\n', 3, '728099383609000', '9000034140435', 'Surabaya', '1995-08-05', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(582, 'Reni Wijayanti', '199211192015115201', '3506225911920001', '-', 'a@a', 'Dsn Kaligayam RT/RW 03/01 Tiron Banyakan Kediri\r\n', 5, '743306987655000', '9000034152281', 'Kediri', '1992-11-19', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(583, 'Rio Agus Efendi', '199108152015115101', '3510181508910002', '-', 'a@a', 'Dsn Aseman RT/RW 02/02 Bimorejo Wongsorejo Banyuwangi\r\n', 6, '743071029627000', '1420014467244', 'Banyuwangi', '1991-08-15', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(585, 'Risma Zahra Privea', '199108282015115201', '3573046808910001', '-', 'a@a', 'Raya Kepuh 10 No 28 RT/RW 07/05 Bandungrejo Sari Sukun Kota Malang\r\n', 6, '705588523623000', '9000034152398', 'Malang', '1991-08-28', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 136, 0, 0, 0, 1, 1, 2, 2, 1, 12, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(587, 'Siti Suliha', '199111292015115201', '3578176911910000', '-', 'a@a', 'Tanah Merah Selatan 2A/3 RT 18 RW 04 Kec Kenjeran Surabaya\r\n', 6, '74330026169000', '1410011041837', 'Surabaya', '1991-11-29', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 20, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(589, 'Sulistyorini Budi Wahyuni', '199403182015115201', '3519155803940001', '-', 'a@a', 'Panglima Sudirman Purwosari RT/RW 03/01 Wonosari Kab Madiun\r\n', 5, '743244014621000', '9000034152257', 'Madiun', '1994-03-18', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(590, 'Sungging Prihangkoro', '198706262015115101', '3502152606870001', '-', 'a@a', 'Dukuh Mijil RT/RW 01/02 Serangan Sukorejo Ponorogo\r\n', 6, '743243693647000', '9000034149907', 'Poronogo', '1987-06-26', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.1, 1, 2, 1, 2, 3, 1, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(591, 'Titik Sugiarti', '199112242015115201', '3519096412910001', '-', 'a@a', 'Dsn 04 RT/RW 13/03 Teguhan Jiwan Madiun\r\n', 6, '743365546621000', '9000002195379', 'Madiun', '1991-12-24', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 80, 136, 0, 0, 1, 1, 2, 2, 1, 11, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(592, 'Achmad Farodisi Afnani', '139121700', '3527030202870003', '081234567890', 'a@a', 'Jojoran 1/56-D RT 015 RW 008, Mojo, Gubeng, Surabaya', 6, '730061033644000', '1410012782843	', 'Sampang', '1987-02-02', '2012-12-01', '2012-12-01', '2019-12-01', '-', '-', 1, 98, 0, 0.15, 1, 2, 2, 2, 3, 2, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(593, 'Wanda Rosalina', '199105072015115201', '3506144705910001', '-', 'a@a', 'Jl.Raya Dsn Janti RT/RW 01/01 Janti Kec Papar Kab Kediri\r\n', 6, '743593931655000', '9000034152182', 'Kediri', '1991-05-07', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.15, 1, 1, 1, 2, 3, 1, 20, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(594, 'Adhitya Angga Wardhana, dr., Sp.B.', '198308132012121002', '3578031308830001', '081234567890', 'a@a', 'Surabaya', 9, '552082208615000', '1410013142492', 'Surabaya', '1983-08-13', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 38, 192, 0, 0, 2, 1, 1, 1, 1, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(595, 'Yuarnistira', '199201162015115201', '3316055601920002', '-', 'a@a', 'Lorong 2 Timur RT/RW 05/08 Balun Cepu\r\n', 6, '743491748514000', '1410010594075', 'Blora', '1992-01-16', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 32, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(596, 'Yulia Asti Eka Kisdiawati', '199407102015115201', '3524255007940002', '-', 'a@a', 'Pondok RT/RW 003/002 Deket Pandanpancur, Lamongan\r\n', 5, '823503500627000', '9000034152265', 'Lamongan', '1994-07-10', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(598, 'Ana Puspa Sari, S.Kep., Ners', '198605252012122003', '3578156505860004', '081234567890', 'a@a', 'Tambak Asri Terate No 57 RT 011 RW 006 Krembangan Surabaya\r\n', 6, '550687297605000', '1400007298210', 'Gresik', '1986-05-25', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 46, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(599, 'Yusi Yanuari Fandi', '198901262015115101', '3578202601890001', '-', 'a@a', 'Pondok Maritim Indah Blok BB19 RT/RW 04/06 Wiyung Surabaya', 6, '743183360618000', '1400014204243', 'Surabaya', '1989-01-26', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 2, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(600, 'Zahrotun Ulum', '199204292015115201', '3517086904920006', '-', 'a@a', 'Jl.Ponpes Seblak No 86 RT/RW 03/01 Kwaron Diwek Jombang\r\n', 6, '743323834602000', '1410010593838', 'Jombang', '1992-04-29', '2015-11-02', '2015-11-02', '2019-11-01', '-', '-', 1, 100, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(601, 'Ariska Wulandari', '199306092015115201', '3518134906930002', '-', 'a@a', 'Jl.Musi III No 39 Nganjuk\r\n', 5, '804505592655000', '9000010023548', 'Nganjuk', '1993-06-09', '2015-11-19', '2015-11-19', '2019-11-18', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(602, 'Lely Jayanti Maipura', '199305292015115201', '3578106905930004', '-', 'a@a', 'Pacarkeling I/14 Surabaya \r\n', 6, '835565771619000', '1420014090814', 'Surabaya', '1993-05-29', '2015-11-19', '2015-11-19', '2019-11-18', '-', '-', 1, 137, 0, 0.2, 0.9, 1, 1, 2, 2, 1, 37, 3, '0', '0', 2, 0, 1, 'rsunair2019'),
(603, 'Anna Nurmita, S.Kep., Ners', '198807072012122001', '3518104707880000', '081234567890', 'a@a', 'Dsn Jekek RT 003 RW 001 Baron Nganjuk\r\n', 6, '548999697655000', '1410013128095', 'Nganjuk', '1988-07-07', '2012-12-01', '2019-02-28', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 46, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(604, 'Ayu Kurniawati', '199403202015115201', '3578106003940007', '-', 'a@a', 'Jl.Kapas Gading Madya 3C/17 Surabaya\r\n', 5, '749771788619000', '9000021300018', 'Surabaya', '1995-03-20', '2015-11-20', '2015-11-20', '2019-11-19', '-', '-', 1, 140, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 38, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(605, 'Agung Rahmawan', '198607182015125101', '3578101807860004', '-', 'a@a', 'Jl. Kedungsroko 2/37, RT 02/RW 02,Pacar Kembang, Kec. Tambaksari, Surabaya\r\n', 3, '553825258619000', '9000034134834', 'Surabaya', '1986-07-18', '2015-12-31', '2015-12-31', '2019-12-30', '-', '-', 1, 177, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 17, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(606, 'Ardhena Ekasari, S.Kep., Ners', '198807132012122002', '3578065307880006', '081234567890', 'a@a', 'Putat Jaya C Barat VII 25a RT 002 RW 013 Sawahan Surabaya\r\n', 6, '975598103614000', '1410013089347', 'Gresik', '1988-07-13', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 46, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(607, 'Andyka Reza Prastya', '199111262015125101', '3578102611910006', '-', 'a@a', 'Kalikepitig Jaya 4/30 RT/RW 15/05 Tambaksari Surabaya\r\n', 5, '975954876619000', '1420014588643', 'Surabaya', '1991-11-26', '2015-12-31', '2015-12-31', '2019-12-30', '-', '-', 1, 142, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 39, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(608, 'Indung Adi Atmoko', '199708052015125101', '3578090508970002', '-', 'a@a', 'Medokan Semampir Indah Blok A/21 A RT/RW 02/03 Sukolilo Surabaya\r\n', 3, '835602061606000', '9000034146192', 'Surabaya', '1997-08-05', '2015-12-31', '2015-12-31', '2019-12-30', '-', '-', 1, 179, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 39, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(609, 'Abdulloh Machin, dr., Sp.S.', '197706152009041004', '3578041506770008', '081234567890', 'a@a', 'Sidoresmo Dalam 2/39-A Wonokromo Surabaya\r\n', 9, '587285073609000', '1410012865119', 'Surabaya', '1977-06-15', '2019-02-28', '2013-08-01', '0000-00-00', '-', '-', 1, 11, 0, 0, 0, 2, 2, 1, 1, 4, 46, 10, '0', '0', 2, 12, 1, 'rsunair2019'),
(610, 'Ryobi Rizki Kurniawan', '199405012015125101', '3578140105940002', '-', 'a@a', 'Jl. Manukan Loka I Blok 8F/01 Ke. Tandes Surabaya\r\n', 3, '835418849604000', '9000034146200', 'Surabaya', '1994-05-01', '2015-12-31', '2015-12-31', '2019-12-30', '-', '-', 1, 179, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 39, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(611, 'Septian Angga Priyo Laksono', '198909152015125101', '3322181509890002', '-', 'a@a', 'Jl. Undaan kulon 2/61, RT 02/RW 07 Kec. Genteng Surabaya\r\n', 6, '752981902611000', '1420014588676', 'Yogyakarta', '1989-09-15', '2015-12-31', '2015-12-31', '2019-12-30', '-', '-', 1, 173, 0, 0, 0.8, 2, 1, 2, 4, 1, 6, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(612, 'Adi Wasis Prakosa, dr', '198809172014041001', '3578100709880002', '081234567890', 'a@a', 'JL. Penataran 15 Surabaya\r\n', 7, '709737720619000', '1420013529549', 'surabaya', '1988-09-17', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 52, 0, 0, 0, 2, 2, 1, 1, 3, 49, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(613, 'Agus Arianto', '199308182014015101', '3501111808930002', '-', 'a@a', 'Dsn. Ketos, Ds. Wonodadi Kulon, Kec. Ngadirojo, Kab. Pacitan, Jawa Timur\r\n', 3, '729958850647000', '1410013763040', 'Pacitan', '1993-08-18', '2014-01-27', '2014-01-27', '2020-01-26', '-', '-', 1, 179, 0, 0.1, 0.9, 2, 1, 2, 2, 1, 39, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(614, 'Alfian Nur Rosyid, dr., Sp.P.', '198203292015041001', '3578152903820001', '081234567890', 'a@a', 'Jl. Sidomulyo baru 6-D/19bRt 002 Rw 004 Simomulyo Sukomanunggal Surabaya\r\n', 9, '-', '9000032463201', 'Surabaya', '1982-03-29', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 28, 0, 0, 0, 2, 2, 1, 1, 4, 31, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(615, 'Anang Wijaya, A.Md., Kep', '198801022015041003', '3519110201880002', '081234567890', 'a@a', 'Larangan RT.004 RW.004 Gayam Sukoharjo \r\n', 5, '262430762901000', '1420014411432', 'Surabaya', '1988-01-20', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 2, 2, 1, 3, 2, 46, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(616, 'Andini Dyah Sitawati, dr., Sp.KJ.', '198502142015042002', '3578265402850002', '081234567890', 'a@a', 'Wisma Permai Barat 1/LL-35 Rt 001 Rw 007 Mulyorejo Surabaya\r\n', 9, '746315324619000', '1420071421985', 'Surabaya', '1985-02-14', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(617, 'Annisa Qurniawati, A.Md., Kep', '199106292015042002', '3520126906910001', '081234567890', 'a@a', 'Manjung RT.008 RW.003 Manjung Barat Magetan \r\n', 5, '144133998646000', '1420014411457', 'Surabaya', '1991-06-29', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 1, 2, 1, 3, 2, 46, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(618, 'Arga Patrianagara, dr., Sp.B', '198312152015041003', '3578041512830004', '081234567890', 'a@a', 'Jl. Cicalengka Raya no 2 Antapani kidul  - Antapani Bandung\r\n', 9, '673017901429000', '1300097045317', 'Surabaya', '1983-12-15', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 46, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(619, 'Arif Prasetyo, A.Md., Kep', '199405252015041001', '3507192505940005', '081234567890', 'a@a', 'Dsn. Sentong RT.003 RW.006 Kel. Karangduren Kec. Pakisaji Malang\r\n', 5, '722641511654000', '1420014411978', 'Tangerang', '1994-05-25', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 2, 2, 1, 3, 2, 46, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(620, 'Arina Dery Puspitasari, S.Farm., MFK, Apt.', '198504212015042002', '3578276104850003', '081234567890', 'arinadery@ff.unair.ac.id', 'Simomulyo Baru 6D/19 Surabaya\r\n', 8, '-', '1410009772658', 'Surabaya', '1985-04-21', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 128, 0, 0, 0, 1, 2, 1, 2, 2, 46, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(621, 'Ario Imandiri, dr.', '198202142015043101', '3515081402820001', '081234567890', 'a@a', 'Natura Residences A1/21 Sidoarjo\r\n', 7, '254288129002000', '1220005564607', 'Surabaya', '1982-02-14', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 194, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rs'),
(622, 'Abdul Mughni, Drs., Apt', '196311291990021001', '3578042911630006', '081234567890', 'arinadery@ff.unair.ac.id', 'Jl. Ngagel Mulyo VII/4 Surabaya\r\n', 7, '065266421609000', '1410009813387', 'Surabaya', '1963-11-29', '2018-03-01', '2018-03-01', '0000-00-00', '-', '-', 1, 136, 0, 0, 0, 1, 2, 1, 2, 2, 46, 10, '0', '0', 2, 6, 1, 'rsunair2019'),
(623, 'Bayu Santoso, dr., Sp.KFR.', '194710121974121001', '-', '081234567890', 'a@a', 'Surabaya', 9, '194311080606000', '1410009815176', 'Surabaya', '1947-10-12', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 3, 36, 10, '0', '0', 3, 13, 1, 'rsunair2019'),
(624, 'Pramadhi Dharma', '198703012014035101', '3578090103870001', '-', 'a@a', 'Semolowaru Elok Blok G/24, RT 004 RW 006, Semolowaru, Sukolilo, Surabaya, Jawa Timur\r\n', 6, '730183266606000', '1420013337273', 'Surabaya', '1987-03-01', '2014-03-03', '2014-03-03', '2019-03-02', '-', '-', 1, 158, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 27, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(625, 'Burhan, SH', '196505201993031001', '3525082005650002', '081234567890', 'a@a', 'Jl. Kedamean RT.015 RW.006 Kedamean, Gresik\r\n', 6, '587285719642000', '1410009837485', 'Surabaya', '1965-05-20', '0000-00-00', '1993-03-01', '0000-00-00', '-', '-', 1, 27, 0, 0, 0, 2, 2, 1, 4, 3, 44, 10, '0', '0', 2, 11, 1, 'rsunair2019'),
(626, 'Anita Oktafia Ellya Shinta', '199410312014035201', '3578107110940001', '-', 'a@a', 'Jl. Jagiran 4 / 3 E Surabaya\r\n', 3, '735308058619000', '1410013956073', 'Surabaya', '1994-10-31', '2014-03-10', '2014-03-10', '2019-03-09', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(627, 'Henny Setyowati', '197803242014035201', '3515026403780002', '-', 'a@a', 'Gedang Rowo RT 001 RW 003, Gedang Rowo, Prambon, Kab. Sidoarjo, Jawa Timur\r\n', 3, '730167871603000', '1410013912506', 'Jakarta', '1978-03-24', '2014-03-19', '2014-03-19', '2019-03-18', '-', '-', 1, 187, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 5, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(628, 'Agus Subagio', '197308062014055101', '3578080608730002', '-', 'a@a', 'Jojoran I/33A Surabaya\r\n', 3, '835934332606000', '1410012966966', 'Surabaya', '1973-08-06', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 189, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 44, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(629, 'Husnul Ibad', '198611222014055101', '3524072211860002', '-', 'a@a', 'Jojoran Baru 1/11, Kel. Mojo, Kec. Gubeng, Surabaya\r\n', 5, '981635840645000', '1420013332498', 'Lamongan', '1986-11-22', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 138, 0, 0.15, 0.9, 2, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(630, 'Kartika Devi Adrianti', '199106112014125201', '3525111106910001', '-', 'a@a', 'Beton Raya 68 RT 005 RW 005 Pongangan Gresik, Jawa Timur', 6, '717239982612000', '1420013697569', 'Gresik', '1991-06-11', '2014-12-01', '2014-12-24', '2019-09-30', '-', '-', 1, 99, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(631, 'Eva Bilqis Tafdila', '198901202014125201', '3578146001890002', '-', 'a@a', 'Jl.Sikatan 5/16 RT 004 RW 002, Manukan Wetan, Surabaya', 6, '085687390604000', '1420013697692', 'Surabaya', '1989-01-20', '2014-12-16', '2014-12-16', '2019-09-30', '-', '-', 1, 99, 0, 0.2, 1, 1, 3, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(632, 'Agus Asmik', '199507042014125101', '3578100407950007', '-', 'a@a', 'Kapas Baru VI/51 Surabaya', 3, '729862268619000', '1420013742167', 'Surabaya', '1995-07-04', '2014-12-08', '2014-12-08', '2019-09-30', '-', '-', 1, 179, 0, 0.1, 0.9, 2, 1, 2, 4, 1, 39, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(633, 'Putri Nawang Sari', '199103112014125201', '3508095103910001', '-', 'a@a', 'Dsn Pasinan RT 003 RW 011, Karangbendo, Tekung, Kab. Lumajang', 3, '-', '1420013697411', 'Lumajang', '1991-03-11', '2014-12-05', '2014-12-05', '2019-09-30', '-', '-', 1, 99, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(634, 'Silma Kamila', '199107232014125201', '3510056307910002', '-', 'a@a', 'Dsn. krajan RT 002 / RW 001, Wringinputih, Muncar, Kab. Banyuwangi', 6, '715845277627000', '1420013697726', 'Banyuwangi', '1991-07-23', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 99, 0, 0.15, 1, 1, 1, 2, 3, 1, 21, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(635, 'Masfin Muhayanah', '198406112014055201', '3515165106840000', '-', 'a@a', 'Cendrawasih RT 003 RW 004, Punggul, Gedangan, Kab. Sidoarjo, Jawa Timur \r\n', 6, '359524576617000', '9000001303339', 'Sidoarjo', '1984-06-11', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 99, 0, 0.15, 1, 1, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(636, 'Muhammad Sholichudin', '198705082014055101', '3578020805870002', '-', 'a@a', 'Sidosermo IV Gg VIII/3 RT 003 RW 003 Kel Sidosermo Kec Wonocolo Kota Surabaya Provinsi Jawa Timur\r\n', 6, '735197683609000', '1420014645229', 'Surabaya', '1987-05-08', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 169, 0, 0.2, 0.8, 2, 1, 2, 2, 1, 10, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(637, 'Shella Novi Permata Sari', '199011222014125201', '3576076211900001', '085646080420', 'a@a', 'Ploso Timur 4/71 RT 002 RW 009, Ploso, Tambaksari, Surabaya', 6, '714169661619000', '1420013697759', 'Surabaya', '1990-11-22', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 99, 0, 0.1, 1, 1, 2, 2, 3, 3, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(638, 'Pamela Ernes', '199208052014055201', '3518134508920001', '-', 'a@a', 'Perum. Pondok Kencana Blok MM19 RT/RW 007/006 Werungotok, Nganjuk\r\n', 5, '836423053655000', '1410011407426', 'Nganjuk', '1992-08-05', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 140, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 38, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(639, 'Pamela Ridzky Amalia', '198903122014055201', '3578085203890001', '-', 'a@a', 'Jojoran I/56D Surabaya\r\n', 6, '729148353606000', '1410011021094', 'Surabaya', '1989-03-12', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 99, 0, 0.15, 1, 1, 1, 2, 3, 1, 20, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(640, 'Randy Yusuf Pratama', '198901082014125101', '3578040801890001', '-', 'a@a', 'Hayam Wuruk Baru 2/73 RT 006  RW 011, Sawunggaling, Wonokromo, Surabaya', 6, '716042064609000', '1420013697742', 'Blitar', '1989-01-08', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 99, 0, 0.2, 1, 2, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(641, 'Rio Yanuar', '199001292014055101', '3502122901900001', '-', 'a@a', 'Nglarangan RT 001 RW 001 Kel Nglarangan Kec Kauman Kab.Ponorogo Provinsi Jawa  Timur\r\n', 6, '730275211647000', '1410013941638', 'Ponorogo', '1990-01-29', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 99, 0, 0.2, 1, 2, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(642, 'Riza Kusumawati', '198910302014055201', '3509137010890000', '-', 'a@a', 'Jayanegara No 106 RT 01 RW 03 Barat Gudang Bulog Pecoro Rambipuji  Jember\r\n', 6, '729983163626000', '1410013935317', 'Jember ', '1989-10-30', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 99, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(643, 'Rafika Nurmalasari', '199107092014125201', '3510034907900002', '-', 'a@a', 'Dsn Sumber Rejeki RT 009 RW 004 Kel.Sumber Asri Kec.Purwoharjo Kab Banyuwangi Provinsi Jawa Timur', 6, '715845277627000', '1420013697718', 'Banyuwangi', '1990-07-09', '2014-12-01', '2014-12-01', '2019-01-30', '-', '-', 1, 99, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 2, 'rsunair2019'),
(644, 'Shinta Mandasari', '199104062014055201', '3578044604910002', '-', 'a@a', 'Karangrejo Sawah III/16 Surabaya\r\n', 5, '725051502609000', '1410013946918', 'Surabaya', '1991-04-06', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 105, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(645, 'Syahtya Dzulandita Magfiroh', '199007182014055201', '3515095807900002', '-', 'a@a', 'Grogol RT 003 RW 001 Kel.Grogol Kec Tulangan Kab Sidoarjo Provinsi Jawa  Timur\r\n', 6, '729716035603000', '1410013946942', 'Sidoarjo', '1990-07-18', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 99, 0, 0.2, 1, 1, 1, 2, 3, 1, 16, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(646, 'Nugroho Hari Santoso', '198903162014125101', '3515161603890003', '-', 'a@a', 'Jl. Rayanata No. 10 RT003/RW012, Sawotratap', 8, '729765404643000', '1410013310719', 'Surabaya', '1989-03-16', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 77, 136, 0.2, 0.9, 2, 1, 2, 2, 1, 8, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(647, 'Tinok Ayu Putri Wardani', '199010132014055201', '3524175310900001', '-', 'a@a', 'Dusun Cuping Desa Madulegi Rt 03 Rw 01 Kec Sukodadi Lamongan\r\n', 6, '730247764645000', '1410012911103', 'Lamongan', '1990-10-13', '2014-05-01', '2014-05-01', '2019-04-30', '-', '-', 1, 99, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(648, 'Sukma Sekar Sari', '198712062014055201', '3578084612870003', '-', 'a@a', 'Perum Sentra Point AC 15 Gununganyar Surabaya\r\n', 6, '730149150615000', '1410013935424', 'Surabaya', '1987-12-06', '2014-05-02', '2014-05-02', '2019-04-01', '-', '-', 1, 99, 0, 0.1, 1, 1, 1, 2, 3, 1, 26, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(649, 'Marcha Debby Saraswati', '199101312014125201', '3578037101910001', '-', 'a@a', 'Pandugo Baru M-22, Penjaringan Sari, Rungkut', 6, '641454475000000', '1410010042331', 'Surabaya', '1991-01-31', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 75, 136, 0, 0, 1, 2, 2, 2, 3, 46, 5, '1900000', '500000', 1, 0, 1, 'rsunair2019'),
(650, 'Nareswari Aulia Pramudita', '198303272014065201', '3578266703830001', '-', 'a@a', 'Mulyorejo Pertanian I/10 RT 005 RW 002 Kel.Mulyorejo Kec.Mulyorejo Kota Surabaya  Provinsi Jawa  Timur\r\n', 5, '249095282643000', '9000015357313', 'Surabaya', '1983-03-27', '2014-06-01', '2014-06-01', '2019-05-31', '-', '-', 1, 160, 0, 0.2, 0.8, 1, 1, 2, 3, 1, 17, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(651, 'Brihastami Sawitri, dr., Sp.KJ.', '198108032008122002', '3578094308810002', '081234567890', 'a@a', 'JL. Simolowaru Indah 1T-7 Surabaya\r\n', 9, '247588353626000', '1410009812272', 'Surabaya', '1981-08-03', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 4, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(652, 'Bagas Angger Prakoso', '199303262014085101', '3515072603930001', '-', 'a@a', 'Blok A XX/1, RT019/RW005, Kel. Sugihwaras, Kec. Candi, Kab. Sidoarjo, Prov. Jawa Timur\r\n', 5, '730005337617000', '1420013464317', 'Mojokerto', '1993-03-26', '2014-08-01', '2014-08-01', '2019-05-31', '-', '-', 1, 141, 0, 0, 0, 2, 1, 2, 4, 1, 18, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(653, 'Dita Anjarsari', '199010292014085201', '3517176910900003', '-', 'a@a', 'Dsn. Kudu RT 010 RW 004 Kel. Kudubanjar Kec. Kudu Kab. Jombang Provinsi Jawa  Timur\r\n', 5, '982037228602000', '1420013464325', 'Surabaya', '1990-10-29', '2014-08-01', '2014-08-01', '2019-05-31', '-', '-', 1, 138, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 29, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(654, 'Depi Lestari', '199512092014105201', '3321064912950002', '-', 'a@a', 'Mojo 3F/52 Surabaya\r\n', 3, '730532991515000', '1420013606263', 'Demak', '1995-12-09', '2014-10-01', '2014-10-01', '2019-09-30', '-', '-', 1, 167, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(655, 'Barmadisatrio, dr., Sp.B., Sp.BA.', '197708122009121002', '3578031208770003', '081234567890', 'a@a', 'Jl. Rungkut Harapan D-20, Surabaya\r\n', 9, '887406981615000', '1410010336576', 'Surabaya', '1977-08-12', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 43, 0, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(656, 'Eko Susilo Wahyu Suyono', '199110212014105101', '3578172110910004', '-', 'a@a', 'Tambak Wedi Lama Gg.Masjid 3B No 12 Surabaya\r\n', 5, '752128611619000', '1420013610570', 'Surabaya', '1991-10-21', '2014-10-01', '2014-10-01', '2019-09-30', '-', '-', 1, 137, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 37, 3, '1700000', '400000', 1, 0, 2, 'rsunair2019'),
(657, 'Muhammad Aminudin', '198808312014105101', '3525013108880001', '-', 'a@a', 'Dukun Anyar RT 002 RW 001 Kel Dukun Anyar Kab Gresik Provinsi Jawa Timur\r\n', 3, '729708131612000', '1420013606305', 'Gresik', '1988-08-31', '2014-10-01', '2014-10-01', '2019-09-30', '-', '-', 1, 157, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(658, 'Heru Prastyo', '199007272014125101', '3578172707900007', '-', 'a@a', 'Kedinding Lor Gg Sedap Malam No 20 RT 017 RW 001, Tanah Kali Kedinding, Kenjeran, Surabaya', 6, '716025820619000', '1420013697429', 'Surabaya', '1990-07-27', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 99, 0, 0.2, 1, 2, 1, 2, 3, 1, 45, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(659, 'Bangun Mukti Ardi, A.Md', '198806042010121005', '-', '081234567890', 'a@a', 'Surabaya ', 5, '471638106532000', '1420013898647', 'Surabaya', '1988-06-04', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 2, 2, 1, 3, 2, 46, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(660, 'Saputro Sulistiyo', '198506142014105101', '3578041406850001', '-', 'a@a', 'Ngagel Mulyo VI/8 E Surabaya.\r\n', 3, '729864892609000', '1420013606271', 'Malang', '1985-06-14', '2014-10-01', '2014-10-01', '2019-09-30', '-', '-', 1, 167, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 28, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(661, 'Siti Qomariyah', '198710012014105201', '3578104110870003', '-', 'a@a', 'Setro Baru Utara 7 / 120 Surabaya\r\n', 6, '712092881619000', '1420013606297', 'Surabaya', '1987-10-01', '2014-10-15', '2014-10-15', '2019-09-14', '-', '-', 1, 162, 0, 0.2, 0.8, 1, 1, 2, 4, 1, 28, 4, '1800000', '450000', 2, 0, 1, 'rsunair2019'),
(662, 'Heri Wibowo', '197803102014125101', '3521051003780006', '-', 'a@a', 'Dusun Magok, RT001/RW002, Putatbangah, Karangbinangun, Kab. Lamongan', 3, '982037145646000', '1420013697809', 'Ngawi', '1978-03-10', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(663, 'Beta Subakti Nata''atmadja, dr., Sp.BP.', '198010032010121002', '3578040310800005', '081234567890', 'a@a', 'Surabaya ', 9, '086405917609000', '1410011171303', 'Surabaya', '1980-10-03', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(664, 'Bima Prima Yudha', '199310282014115101', '3515182810930001', '-', 'a@a', 'Delta Sari Indah BA 06 Waru Sidoarjo\r\n', 5, '760468603643000', '9000017116451', 'Surabaya', '1993-10-28', '2014-11-10', '2014-11-10', '2019-11-09', '-', '-', 1, 137, 0, 0.2, 0.9, 2, 1, 2, 2, 1, 37, 3, '1700000', '400000', 1, 0, 1, 'rsunair2019'),
(665, 'Kartika Dewi Purnamasari', '199008162014115201', '3501045608900000', '-', 'a@a', 'RT 01/RW02 Dusun Kradenan Desa Bangunsari Kec. Pacitan Kab. Pacitan\r\n', 6, '715958351647000', '1420013697783', 'Pacitan', '1990-08-16', '2014-11-20', '2014-11-20', '2019-11-19', '-', '-', 1, 105, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(666, 'Finarahmatika Yusuf', '199211122014125201', '3578105211920002', '-', 'a@a', 'Pacar Kembang 2 No. 47 Surabaya', 5, '731745493619000', '1420013740484', 'Surabaya', '1992-11-12', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 175, 0, 0.1, 0.9, 1, 1, 2, 2, 1, 13, 3, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(667, 'Aghisna Galih Purwitasari', '199103092014115201', '3502124903910002', '-', 'a@a', 'Dukuh Tamanan RT 003 RW 001 Kel. Kauman, Kab. Ponorogo\r\n', 6, '715630786647000', '1420013697478', 'Ponorogo', '1991-03-09', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 99, 0, 0.2, 1, 1, 1, 2, 3, 1, 15, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(668, 'Ermayulis', '199412042014125201', '3578014412940010', '-', 'a@a', 'Kebraon 3 Gg. Durian No. 19 A Surabaya', 3, '731797957618000', '1420013740393', 'Surabaya', '1994-12-04', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 13, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(669, 'Ari Kusumandani', '199102032014115101', '3578010302910001', '-', 'a@a', 'Karang Pilang Gg Rajawali 2/73 RT 006 RW 002 Kel Karang Pilang Kec Karang Pilang Kota Surabaya Provinsi Jawa  Timur\r\n', 6, '716024211618000', '1420013697502', 'Magetan', '1991-02-03', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 44, 0, 0, 0, 2, 1, 2, 3, 1, 36, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(670, 'Astrilia Diah Kartikasari', '199208212014115201', '3510761089200002', '-', 'a@a', 'Perum Villa Brawijaya Blok E8 RT 003 RW 002 Banyuwangi Provinsi Jawa  Timur\r\n', 6, '716562632627000', '1420013697437', 'Maluku Tengah', '1992-08-21', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 99, 0, 0.15, 1, 1, 1, 2, 3, 1, 24, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(671, 'Bambang Irawan', '197606072014125101', '3523170706760005', '-', 'a@a', 'Dsn. Jati RT 003 RW 003, Jatimulyo, Plumpang, Kab. Tuban', 3, '731249538648000', '1420013697791', 'Tuban', '1976-06-07', '2014-12-01', '2014-12-01', '2019-09-30', '-', '-', 1, 159, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 19, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(672, 'Deny Nevitasari', '199012232014115201', '3516136312900000', '-', 'a@a', 'Dsn. Sumolawang RT002/RW001 Puri Mojokerto\r\n', 6, '715806048602000', '1420013697601', 'Mojokerto', '1990-12-23', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 105, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(673, 'Dian Wahyu Pribadi', '198911082014115101', '3510020811890001', '-', 'a@a', 'Desa Temurejo RT 03 RW 01 Kec Bangorejo Kab Banyuwangi\r\n', 6, '716495718627000', '1420013697395', 'Banyuwangi', '1989-11-08', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 99, 0, 0.2, 1, 1, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(674, 'Diki Elfira Martianingsih', '199203072014115201', '3510064703920002', '-', 'a@a', 'Dusun Simbar II, RT 001 RW 004 Kel. Tampo Kec. Cluring Kab. Banyuwangi Provinsi Jawa  Timur\r\n', 6, '717115901627000', '1420013743132', 'Banyuwangi', '1992-03-07', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 99, 0, 0.1, 1, 1, 1, 2, 3, 1, 46, 4, '1800000', '450000', 1, 0, 2, 'rsunair2019'),
(675, 'Evy Wulandari', '199001172014115201', '351018570190004', '-', 'a@a', 'Dsn.Krajan RT 001 RW 001 Kel.Bengkak Kec.Wongsorejo Kab.Banyuwangi, Provinsi Jawa  Timur\r\n', 6, '700874387627000', '1420013697577', 'Banyuwangi', '1990-01-17', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 105, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(676, 'Fatma Kurnia Sari', '198906112014115201', '3571025106890001', '-', 'a@a', 'Perum Bumi Asri Blok H11 005/006 Kaliombo Kediri\r\n', 6, '715970679622000', '1420013697643', 'Kediri', '1989-06-11', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 105, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(677, 'Iin Nurani Haerunnisa', '199003252014115201', '3213286503900000', '-', 'a@a', 'Kebonsari 28 surabaya\r\n', 6, '715992723609000', '1420013697650', 'Subang', '1990-03-25', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 105, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(678, 'Ika Fitriana', '199104152014115201', '3505045504910002', '-', 'a@a', 'Dsn.Rejowinangun RT 002 RW 003 Desa Rejowinangun Kec.Kademangan Kab Blitar Provinsi Jawa  Timur\r\n', 6, '715983102653000', '1420013697544', 'Blitar', '1991-04-05', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 99, 0, 0.15, 1, 1, 1, 2, 3, 1, 48, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(679, 'Ike Nur Rochimatul Qibtiyah', '199105302014115201', '3522157005910000', '-', 'a@a', 'Jl. Basuki Rahmat 24 B Bojonegoro\r\n', 6, '715745840601000', '1420013697635', 'Bojonegoro', '1991-05-30', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 105, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(680, 'Nurul Ardlianawati', '199108042014115201', '3505122901900001', '-', 'a@a', 'Dusun Rejosari RT 002 RW 005 Kel Tembokrejo Kec Gumuk Mas Kab Jember Provinsi Jawa –Timur\r\n', 6, '717443378626000', '1420013697494', 'Jember', '1991-08-04', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 99, 0, 0.2, 1, 1, 1, 2, 3, 1, 17, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(681, 'Priyo Febri Nurhartanto', '199102212014115101', '3578242102910002', '-', 'a@a', 'Wilis Mukti Gg.III/76 RT 029 RW 005 Kel.Campurejo Kec. Mojoroto Kota Kediri Provinsi Jawa Timur\r\n', 6, '716734710615000', '1420013697510', 'Nganjuk', '1991-02-21', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 99, 0, 0.2, 1, 2, 1, 2, 3, 1, 33, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(682, 'Risa Bisaroh', '199204032014115201', '3207144304920004', '-', 'a@a', 'Jemur Wonosari Gg Buntu Buntu 1B RT 005 RW 009 Kel.Jemur Wonosari Kec Wonocolo Kota Surabaya Provinsi Jawa  Timur\r\n', 6, '716109962609000', '1420013697452', 'Ciamis', '1992-04-03', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 99, 0, 0.15, 1, 1, 1, 2, 3, 1, 22, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(683, 'Tuhfatun Nayyirah', '198810272014115201', '3525096710880001', '-', 'a@a', 'Mriyunan Tengah RT 001 RW 002 Kel.Mriyunan Kec Sidayu Kab.Gresik, Provinsi Jawa  Timur\r\n\r\n', 6, '716058409612000', '1420013697585', 'Gresik', '1988-10-27', '2014-11-24', '2014-11-24', '2019-11-23', '-', '-', 1, 105, 0, 0.15, 1, 1, 1, 2, 3, 1, 23, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(684, 'Ullan Ramadhona Rahmasari', '198904262014115201', '3515106604890004', '-', 'a@a', 'Dermonegoro RT 001 RW 004 Kel.Candinegoro Kec.Wonoayu Kab.Sidoarjo, Provinsi Jawa  Timur\r\n', 6, '715594792603000', '1420013697627', 'Sidoarjo', '1989-04-26', '2014-11-24', '2018-10-15', '2019-11-23', '-', '-', 1, 105, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(685, 'Afifah Wardani', '199004062014125201', '3578174604700001', '-', 'a@a', 'Bulak Banteng Wetan 10/41A Surabaya\r\n', 3, '753878214619000', '1420013742118', 'Surabaya', '1990-04-06', '2014-12-01', '2014-12-01', '2019-11-30', '-', '-', 1, 175, 0, 0.15, 0.9, 1, 1, 2, 2, 1, 12, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(686, 'Cahyo Wibisono Nugroho, dr., Sp.PD.', '197609092010121004', '3578040909760006', '-', 'a@a', 'Surabaya\r\n', 7, '086359833609000', '9000001303156', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 14, 52, 0, 0, 2, 2, 1, 4, 2, 31, 10, '0', '0', 2, 0, 1, 'rsunair2019'),
(687, 'Catur', '196401122007101001', '3578051201640001', '-', 'a@a', 'Jl.Jenggolo 54 Rt.007/Rw.007 Keputran-Tegalsari Surabaya\r\n', 2, '587288135607000', '1410009793407', 'Tuban', '1964-01-12', '2007-10-01', '2007-10-01', '0000-00-00', '-', '-', 1, 189, 0, 0, 0, 2, 2, 1, 4, 2, 44, 10, '0', '0', 2, 0, 1, 'rsunair2019'),
(688, 'Choirul Anwar, S.Kep., Ners', '198610232014041001', '3524252310860000', '-', 'a@a', 'Sugihwaras rt 1 rw 3 Kec Deket Lamongan\r\n', 6, '705414514645000', '1410012750725', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 2, 2, 1, 3, 2, 15, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(690, 'Danang Himawan Limanto, dr., Sp.BTKV.', '198905122015041001', '3578131205890006', '-', 'a@a', 'Asem Jajar 6/7 Rt 005 Rw 003 tembok Dukuh Bubutan Surabaya\r\n', 9, '729732446614000', '9000022787973', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(691, 'Danang Rohadi, A.Md', '198512262010121003', '-', '-', 'a@a', '-', 5, '362629354528000', '1420013898597', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 2, 1, 1, 3, 2, 17, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(692, 'Dendhy Dwi Handana Sagita, S.Kep., Ners', '198812042012121002', '3523160412880001', '-', 'a@a', 'Dsn Kuthi RT 002 RW 007 Sumurgung Tuban\r\n', 6, '550634802648000', '1410013116520', 'Tuban', '1988-12-04', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 2, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(694, 'Devi Rahma Sofia, S.Kep., Ners', '198608192010122006', '3502045908860001', '-', 'a@a', 'Jl. Arif Rahman Hakim 6 Sambit - Ponorogo\r\n', 6, '842463549647000', '1410010831584', 'Ponorogo', '1986-08-19', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 1, 1, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(695, 'Devina Nawangsih, S.Kep., Ners', '198810182014042001', '3577035810880003', '-', 'a@a', 'Jl. Jambu no 20 Madiun\r\n', 6, '711099770609000', '1410012747168', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 1, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(696, 'Dewi Purnama Sari, S.Kep., Ners', '198406142009122002', '3573025406840000', '-', 'a@a', 'Surabaya\r\n', 6, '683524649623000', '1410009985631', 'Pasuruan', '1984-06-14', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 1, 1, 1, 3, 2, 17, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(697, 'Dewi Wara Shinta, S.FARM., MFK., Apt', '198510182008122002', '3525145810850001', '085649015433', 'dewi.wara.shinta@ff.unair.ac.id', 'Perum PT Semen Gresik Blok G/208, Gersik\r\n', 8, '597759356612000', '1410009823808', '-', '0000-00-00', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 136, 0, 0, 0, 1, 1, 1, 2, 2, 9, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(698, 'Diah Puspita Rini, dr., Sp.PK.', '197905012014042001', '3578224105790001', '-', 'a@a', 'Wisma Menanggal 1 No 18 Surabaya\r\n', 9, '662658723609000', '1420011516266', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 58, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(699, 'Diah Sukmawati Pangarsih, S.Kep., Ners', '198810172012122004', '3517135710880003', '-', 'a@a', 'Jl Melati RT 004 RW 003 Pesantren Tembelang Jombang\r\n', 6, '550169825602000', '1410012964409', 'Dili', '1988-11-17', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 1, 1, 3, 1, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(700, 'Diana Novalina, A.Md.Kep', '198803172015042004', '3511135703880001', '-', 'a@a', 'Trebungan RT.008 RW.001 Taman Krocok Bondowoso\r\n', 5, '722778354656000', '9000029940302', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(701, 'Diana Puji Herasari, S.Keb., Bd', '198208172014042001', '3515025708820000', '-', 'a@a', 'Kedung wonokerto rt 02 rw 02 Prampon Sidoarjo\r\n', 6, '711126136603000', '1410012782827', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 103, 0, 0, 0, 1, 1, 1, 3, 2, 23, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(702, 'Dimas Prasetianto W., drg', '198805312014041001', '5271013105880002', '-', 'a@a', 'PANTAI MENTARI X NO. 23 RT/RW 005/004 KEL. KENJERAN KEC. BULAK SURABAYA\r\n', 7, '709339964619000', '1410005057112', '-', '0000-00-00', '2018-01-01', '2018-01-01', '0000-00-00', '-', '-', 1, 195, 0, 0, 0, 2, 1, 1, 1, 2, 36, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(703, 'Dinda Monika Nusantara Putri, S.Farm.,MFK, Apt.', '198804012015042002', '3515184104880002', '08883887654', 'dindamonika@ff.unair.ac.id', 'jl. brigjen katamso no.36-B wedoro-waru sidoarjo\r\n', 8, '972233977602000', '9000025636789', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 136, 0, 0, 0, 1, 2, 1, 2, 2, 9, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(704, 'Ditaruni Asrina Utami, dr., Sp.KFR', '198304172015042001', '3578255704830004', '-', 'a@a', 'Gunung Anyar Baru III/64 Rt 012 Rw 004 Gunung Anyar Surabaya\r\n', 9, '739521763615000', '1420014530462', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(705, 'Achmad Chusnu Romdhoni, Dr., dr., Sp.THT.', '197609022008011009', '3578080209760004', '-', 'a@a', 'Jl. Pucang Asri 5/5 Surabaya\r\n', 9, '597923994606000', '1410009808809', '-', '0000-00-00', '2013-08-01', '2013-08-01', '0000-00-00', '-', '-', 1, 8, 192, 0, 0, 2, 2, 1, 4, 2, 31, 10, '0', '0', 2, 12, 1, 'rsunair2019'),
(706, 'Afif Nurul Hidayati, Dr., dr., Sp.KK .', '196908152016016201', '3578035508690003', '08123028024', 'afif_nurulhidayati@yahoo.com', 'Surabaya', 10, '-', '-', '-', '1969-08-15', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 12, 0, 0, 0, 1, 2, 1, 1, 4, 31, 10, '0', '0', 2, 0, 1, 'rsunair2019'),
(707, 'Anggraini Dwi Sensusiati, Dr., dr., Sp.Rad.', '196109121989032001', '3578265209610002', '-', 'a@a', 'Jl.Darmo F1 /22,Kamp.Semen Gresik\r\n', 9, '887375350619000', '1410017007774', '-', '0000-00-00', '1989-03-01', '1989-03-01', '0000-00-00', '-', '-', 1, 13, 52, 0, 0, 1, 2, 1, 1, 2, 31, 10, '0', '0', 2, 12, 1, 'rsunair2019'),
(708, 'Budi Suprapti, Dr., M.Si., Apt', '196111141987012001', '3578085411610006', '-', 'a@a', 'PerumYKP Rungkut Lor VH/22, Surabaya\r\n', 10, '683439319606000', '1410009801010', '-', '0000-00-00', '1987-01-01', '1987-01-01', '0000-00-00', '-', '-', 1, 9, 0, 0, 0, 1, 2, 1, 4, 2, 31, 10, '0', '0', 2, 13, 1, 'rsunair2019'),
(709, 'Ernawati, Dr., dr., Sp.OG(K).', '197707162008012013', '3578035607770004', '-', 'a@a', 'Rungkut Asri Tengah XIX / 21\r\n', 9, '253918148615000', '1410009808478', '-', '0000-00-00', '2008-01-01', '2008-01-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(710, 'Ernie Maduratna, Dr., drg., M.Kes., Sp.Perio(K).', '196602121992032001', '3578085202680001', '-', 'a@a', 'Karang Menjangan 15 Surabaya\r\n', 9, '254372030606001', '1410009820341', '-', '0000-00-00', '1992-03-01', '1992-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 2, 13, 1, 'rsunair2019'),
(711, 'Hamzah, Dr., dr., Sp.An., KNA', '195607232016016101', '3578082307560005', '-', 'a@a', 'Jl. Kaliwaron 3 / 9 Surabaya\r\n', 9, '078631694606000', '1410009934829', '-', '0000-00-00', '2007-02-01', '2007-02-01', '0000-00-00', '-', '-', 1, 2, 192, 0, 0, 2, 2, 1, 1, 2, 31, 10, '0', '0', 2, 16, 1, 'rsunair2019'),
(712, 'Imam Subadi, Dr., dr., Sp.KFR.', '196104041989031002', '3578060404610001', '-', 'a@a', 'Jl. Sawahan Baru II/7 Surabaya\r\n', 9, '070842513614000', '1410009816356', '-', '0000-00-00', '1989-03-01', '1989-03-01', '0000-00-00', '-', '-', 1, 3, 192, 0, 0, 2, 2, 1, 4, 2, 31, 10, '0', '0', 2, 12, 1, 'rsunair2019'),
(713, 'Ira Widjiastuti, Dr., drg., M.Kes., Sp.KG(K).', '196305141988032002', '3578255405630003', '-', 'a@a', 'Rungkut Barata  V / 14 Surabaya\r\n', 9, '097467526615000', '1410009813841', '-', '0000-00-00', '1988-03-01', '1988-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 14, 1, 'rsunair2019'),
(714, 'Toetik Aryani, Dra., M.Si.', '196104111989032001', '3578105104610002', '08155344120', 'toetik_61@yahoo.com', 'Jl. Kedung Tarukan V/47, Surabaya\r\n', 8, '683439392619000', '1410009826132', '-', '0000-00-00', '1989-03-01', '1989-03-01', '0000-00-00', '-', '-', 1, 61, 0, 0, 0, 1, 2, 1, 4, 2, 31, 10, '0', '0', 2, 12, 1, 'rsunair2019'),
(715, 'Didik Hasmono, Drs., MS.', '195809111986011001', '3578041109580003', '081931022929', 'didik-h@ff.unair.ac.id', 'Griyo Wage Asri Blok E/23, Sudoarjo\r\n', 8, '587280397609000', '1410009849894', '-', '0000-00-00', '1986-01-01', '1986-01-01', '0000-00-00', '-', '-', 1, 136, 0, 0, 0, 2, 2, 1, 2, 2, 8, 0, '0', '0', 2, 12, 1, 'rsunair2019'),
(716, 'Junaidi, Drs.', '196801041987021001', '3578100401680005', '087854503577', 'a@a', 'Jl.Rangka I / 35 RW.007 Surabaya\r\n', 6, '789369238619000', '1410009813726', '-', '0000-00-00', '2015-03-31', '2015-03-31', '0000-00-00', '-', '-', 1, 31, 0, 0, 0, 2, 2, 1, 4, 2, 31, 10, '0', '0', 2, 12, 1, 'rsunair2019'),
(717, 'Dwi Cahya Maharani, S.Kep., Ners', '198608062012122001', '3507084608860000', '-', 'a@a', 'Jl Suropati No 44 Wajak Malang\r\n', 6, '549178150654000', '1410013048194', 'Malang', '1986-08-06', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(718, 'Dwi Suyanti, A.Md.,Kep', '198801172015042001', '3515155701880001', '-', 'a@a', 'Sukorejo RT.006 RW.002 Kel. Sukorejo Kec. Buduran Sidoarjo\r\n', 5, '342938057643000', '1420014411945', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(719, 'Effita Piscesiana, S.Kep., Ners', '198603022009122007', '3578094203860003', '-', 'a@a', 'Surabaya\r\n', 6, '347642852606000', '1410009985680', 'Probolinggo', '1986-03-02', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 69, 97, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(720, 'Eko Budi Koendori, dr., Sp.MK.', '196409041992031004', '3578080409640001', '-', 'a@a', 'Gubeng Jaya Tengah 26 Surabaya.\r\n', 9, '194308979606000', '1410009816430', '-', '0000-00-00', '1992-03-01', '1992-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 29, 10, '0', '0', 2, 11, 1, 'rsunair2019'),
(721, 'Elita Novriana Enisa, S.Kep., Ners', '198702152010122005', '3521035502870002', '-', 'a@a', 'Genggong RT 003/RW 003 Jogorogo - Ngawi\r\n', 6, '362948812646000', '1410010831485', 'Ngawi', '1987-02-15', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(722, 'Emi Widiastuti, S.Kep., Ners', '198910072012122005', '3374044710890003', '-', 'a@a', 'Jl Beruang Dalam Barat No 24 RT 007 RW 001 Gayamsari Semarang\r\n', 6, '550327340518000', '1410013114566', 'Semarang', '1989-10-07', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(723, 'Eni Puji Lestari, S.Kep., Ners', '198908092012122001', '3515134908890002', '-', 'a@a', 'Jl Nyi Cempo Barat RT 014 RW 006 Kedungturi Taman Sidoarjo\r\n', 6, '058724964603000', '1410013085212', 'Sidoarjo', '1989-08-09', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 89, 98, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(724, 'Enny Zuraida, dr. Sp.A.', '197905062010122002', '3578044605790002', '-', 'a@a', 'Surabaya\r\n', 9, '366591006609000', '1410011154952', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(725, 'Eny Widyaningrum, A.Md', '197808022009122003', '3578185205910001', '-', 'a@a', 'Surabaya\r\n', 5, '587409749614000', '1410010045854', 'Boyolali', '1978-08-02', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 137, 0, 0, 0, 2, 2, 1, 2, 2, 37, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(726, 'Erika Marfiani, dr., Sp.PD', '198408312014042001', '3578027108840004', '081335114747', 'a@a', 'Jemursari Utara V/30 Wonocolo Surabaya\r\n', 9, '674896659609000', '1420013507263', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 1, 1, 1, 1, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(727, 'Erreza Rahardiansyah, dr., Sp.OT.', '198408112010121003', '3578051108840001', '-', 'a@a', 'Surabaya\r\n', 9, '365859834607000', '1410011171535', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(728, 'Evy Dwi Rahmawati, S.Kep., Ners', '198711162012122004', '3508075611870001', '-', 'a@a', 'Kebonsari RT 010 RW 005 Yosowilangun Kidul Lumajang\r\n', 6, '549037505625000', '1410013075734', 'Lumajang', '1987-11-16', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 73, 98, 0, 0, 1, 2, 1, 3, 2, 16, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(729, 'Fauziah Firasanti, S.Kep., Ners', '198908282014042001', '3578016808890000', '-', 'a@a', 'Kedurus IV C/4 RT 001 Rw 003 Karang Pilang Surabaya\r\n', 6, '715076485618000', '1410012782942', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019');
INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `nip_nik`, `no_ktp`, `no_telp`, `email`, `alamat`, `id_jenjang`, `no_npwp`, `no_rekening`, `tempat_lahir`, `tanggal_lahir`, `tanggal_masuk`, `tanggal_mulai_tugas`, `tanggal_akhir_tugas`, `no_bpjs_ketenagakerjaan`, `no_bpjs_kesehatan`, `id_agama`, `id_jabatan`, `id_jabatan_2`, `adjustment_factor`, `index_profesi`, `id_jk`, `id_status_pernikahan`, `id_status_kepegawaian`, `id_komite`, `id_ptkp`, `id_unit`, `id_gaji`, `gaji_variabel`, `uang_makan`, `id_rekap`, `id_pangkat`, `id_aktif`, `password`) VALUES
(730, 'Fidiana, dr., Sp.S.', '198110052010122002', '3578054510810001', '-', 'a@a', 'Surabaya\r\n', 9, '358454247607000', '1420010189669', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(731, 'Fikri Rizaldi, dr., Sp.U.', '198302092010121004', '3578080902830001', '-', 'a@a', 'Perumahan Kuda Dua Regency B-02 Jagir Wonokromo Surabaya\r\n', 9, '364648188615000', '1420005667083', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(733, 'Firman Setiawan, dr., Sp.MK.', '198511022014041001', '3518080211850004', '-', 'a@a', 'Dsn Ngebrugan Drenges, Nganjuk\r\n', 9, '349113795604000', '1420004122700', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 29, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(734, 'Frida Syamsiana, S.Keb., Bd', '199002222014042001', '3506256202900000', '-', 'a@a', 'Jl Jaya Katwang Rt 006 Rw 002 Ngasem Kediri\r\n', 6, '714792785655000', '1410009939455', '-', '0000-00-00', '2014-05-01', '2014-05-01', '0000-00-00', '-', '-', 1, 103, 0, 0, 0, 1, 2, 1, 3, 2, 23, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(735, 'Hanna Dyahferi Anomsari, dr., Sp.A.', '197902022014042003', '3578294202790001', '-', 'a@a', 'Jl.Saliman No.3 Komplek Tni-AL Kenjeran Surabaya\r\n', 9, '249093576619000', '1420013861264', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(736, 'Haris Widodo, S.Kep., Ners', '198011202010121001', '3578082011800006', '-', 'a@a', 'Jl.Duku No.83 Rt.04/Rw.04 Seduri-Mojosari Kab.Mojokerto\r\n', 6, '587611336602000', '1410010836823', 'Mojokerto', '1980-11-20', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 68, 97, 0, 0, 2, 2, 1, 3, 2, 33, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(737, 'Hendra Kurnia Rakhma, S.Kep., Ners', '198605102010121003', '3578141005860000', '-', 'a@a', 'Wonorejo I-35 Mnukan Kulon - Tandes Surabaya\r\n', 6, '363239195604000', '1410010831303', 'Surabaya', '1986-05-10', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 2, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(738, 'Hendri Siswanto, A.Md', '198704102010121005', '3520071004870003', '-', 'a@a', 'Nitikan Barat RT 10 RW 02 Nitikan Plaosan Magetan\r\n', 5, '358337863646000', '1410010831204', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 137, 0, 0, 0, 2, 2, 1, 2, 2, 37, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(739, 'Hendri Susilo, dr., Sp.JP.', '198710012012121002', '3523180110870002', '-', 'a@a', 'Sutorejo Tengah IV No 28 RT 011 RW 008 Mulyorejo Surabaya\r\n', 9, '548963271619000', '1410013058755', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(740, 'Hengki Fasisa, A.Md', '198703112010121003', '-', '-', 'a@a', '-', 5, '578648834514000', '1420013898555', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 142, 0, 0, 0, 2, 2, 1, 2, 2, 39, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(741, 'Herdiani Sulistyo Putri, dr., Sp.An.', '198302142010122003', '-', '-', 'a@a', '-', 9, '82668362560900', '1410011174968', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 3, 9, 1, 'rsunair2019'),
(742, 'Herley Windho Setiawan, dr.', '198503232010121006', '3516142303850003', '-', 'a@a', 'Surabaya\r\n', 9, '890227416621000', '1410011201399', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 194, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(743, 'I Sanny Prakosa Wardhana, S.Psi., Psikolog.', '197606202002121014', '1258162006760003', '-', 'sanny.prakoso@psikologi.unair.ac.id', 'Pakis Tirtosari 14/10, Surabaya\r\n', 7, '097504385614000', '1410009793621', 'Surabaya', '1976-06-20', '2018-07-25', '2018-07-25', '0000-00-00', '-', '-', 1, 132, 0, 0, 0, 2, 2, 1, 2, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(744, 'Ika Nursetyo Palupi, A.Md', '198412302010122004', '-', '-', 'a@a', '-', 5, '362379141646000', '1420013898639', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 88, 98, 0, 0, 1, 2, 1, 3, 2, 24, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(745, 'Imam Safari Azhar, drg., M.Kes', '198905222014041001', '3578012205890001', '-', 'a@a', 'GRIYA KEBRAON SELATAN 5-7 G/4 RT/RW 001/012 KEL. KEBRAON KEC. KARANG PILANG SURABAYA\r\n', 7, '709504526618000', '1420013496251', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 195, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(747, 'Indah Rahmawati Eka Putri, A.Md', '198611082010122003', '-', '-', 'a@a', '-', 5, '577474844523000', '9000029938660', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(748, 'Indra Mulyawan, drg., Sp.BMM', '198412292014041002', '3578092912840002', '08175232323', 'a@a', 'MANYAR TIRTOSARI 12/44 RT/RW 002/004 KEL. MENUR PUMPUNGAN KEC. SUKOLILO SURABAYA\r\n', 7, '340243450606000', '1420008232323', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 3, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(749, 'Indri Lakhsmi Putri, dr., Sp.BP-RE.', '198311112010122003', '3578135111830004', '-', 'a@a', 'Surabaya\r\n', 9, '366095735614000', '1410011160736', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 33, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(750, 'Irma Firdiani Wahyuningtias, S.Kep., Ners', '198806042010122007', '3529014406880002', '-', 'a@a', 'Jl.KH.Zaenal Arifin 125-31 Bangselok-Sumenep\r\n', 6, '363002791608000', '1410010836872', 'Sumenep', '1988-06-04', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(751, 'Irwanto, dr., Sp.A.', '196502272016016101', '3578092702650001', '-', 'a@a', 'Cosmopolis Resort B-119 Jl. Arief Rahman Hakim 147  Surabayaa    \r\n', 7, '247988397615000', '1410009934886', '-', '0000-00-00', '2017-04-01', '2017-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 16, 1, 'rsunair2019'),
(752, 'Ismu Nugroho, dr., Sp.B.', '198105222010121005', '3578252205810001', '-', 'a@a', 'Surabaya\r\n', 9, '366153302615000', '1410011186939', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(753, 'Ismulawati Kusumaningrum, Dra', '196310122006042001', '-', '-', 'a@a', '-', 6, '255793291615000', '1410009815689', '-', '0000-00-00', '2006-04-01', '2006-04-01', '0000-00-00', '-', '-', 1, 168, 0, 0, 0, 1, 2, 1, 4, 2, 31, 10, '0', '0', 2, 11, 1, 'rsunair2019'),
(754, 'Ita Maulidiawati, S.Kep., Ners', '198611142010122006', '3528045411860004', '-', 'a@a', 'Jl. Kowel - Pamekasan \r\n', 6, '363140062608000', '1410010831634', 'Pamekasan', '1986-11-14', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(755, 'Ita Ratnasari', '198702242010122006', '3520026402870002', '-', 'a@a', 'Jl. Dukuh Sangen RT.14/RW.06 Mategal-Parang, Magetan.\r\n', 5, '887375749646000', '1410010831261', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 145, 0, 0, 0, 1, 2, 1, 4, 2, 28, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(756, 'Izzatul Fithriyah, dr., Sp.KJ.', '198506222010122004', '3518086006850005', '082257612322', 'a@a', 'Surabaya\r\n', 9, '797659794655000', '9000001303255', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 29, 52, 0, 0, 1, 2, 1, 1, 2, 31, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(757, 'Jimmy Yanuar Annas, dr., Sp.OG.', '197701202008011009', '3578082001770001', '-', 'a@a', 'Jl. Ngagel Tama 72-74\r\n', 9, '247492937606000', '1410009808486', '-', '0000-00-00', '2008-01-01', '2008-01-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(758, 'Kartika Nurhayati, S.Kep., Ners', '198808152014042001', '3518095508880005', '-', 'a@a', 'Jl. Kalisari Damen no 96 Surabaya\r\n', 6, '711023358655000', '1410012747648', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(759, 'Khanisyah Erza Gumilar, dr., Sp.OG.', '198408052015041002', '3578210508840001', '-', 'a@a', 'Bukit Pakis Utara 8/TA-16 Rt 001 Rw 007 Dukuh Pakis Surabaya\r\n', 9, '267817716618000', '1420014060635', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 37, 192, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(760, 'Kusmiyati, A.Md., Kep', '198505172015042001', '3520185705850002', '-', 'a@a', 'Dsn. Slagreng RT.005 RW.002 Sidorejo Magetan \r\n', 5, '722445400646000', '9000029940336', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(761, 'Laily Hidayati, SKM', '198605142009122003', '3516055405860001', '-', 'a@a', 'Surabaya\r\n', 6, '348815176602000', '1410010013670', 'Madiun', '1986-05-14', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 138, 0, 0, 0, 1, 2, 1, 2, 1, 29, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(762, 'Lenny Octavia, dr.', '198710152012122001', 'Manado', '-', 'a@a', 'Griya Kebraon Utara 11 AQ RT 007 RW 009 Karangpilang Surabaya\r\n', 7, '549204584618000', '1410012972097', 'Manado', '1987-10-15', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 194, 0, 0, 0, 1, 2, 1, 1, 2, 46, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(763, 'Lila Ayu Putri Sageta, A.Md.,Kep', '199206272015042002', '3504036706920001', '-', 'a@a', 'Jl. DR. Wahidin Sudiro Husodo 23 RT.004 RW.001 Kedungwaru Tulungagung\r\n', 5, '722779790629000', '1420014411499', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(764, 'Linda Sutrisno, dr', '198202282010122002', '-', '-', 'a@a', '-', 7, '587658915603000', '1420013898621', '-', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '-', '-', 1, 34, 0, 0, 0, 1, 2, 1, 1, 3, 31, 10, '0', '0', 2, 11, 1, 'rsunair2019'),
(766, 'Lucky Andriyanto, dr., Sp.An.', '197902012010121002', '3578060102790004', '-', 'a@a', 'Taman Pondok Indah Blok JY-220\r\n', 9, '346045909614000', '1410011157989', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 40, 52, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(767, 'M. Ayodhia Soebadi, dr., Sp.U.', '198011152010121002', '3578271511800001', '-', 'a@a', 'Jl. Darmo Permai Timur 7/1 Surabaya\r\n', 9, '249203340604000', '1410011263860', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(768, 'M. Djoko Soehartono, SE., SH., MM', '196312071984031001', '-', '-', 'a@a', 'Jl. Dukuh Setro IX/48-48A Surabaya\r\n', 8, '042214189606000', '1410009794272', '-', '0000-00-00', '1984-03-01', '1984-03-01', '0000-00-00', '-', '-', 1, 168, 0, 0, 0, 2, 2, 1, 4, 2, 31, 10, '0', '0', 2, 12, 1, 'rsunair2019'),
(769, 'M. Ilham Aldika Akbar, dr., Sp.OG.', '198201182009121004', '3578021801820001', '-', 'a@a', 'Jemursari Utara V/8\r\n', 9, '896823481609000', '1410010253003', '-', '0000-00-00', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(770, 'Mahardian Rahmadi, S.SI., M.Sc., Apt., PhD.', '198103142005011002', '3578161403810003', '081224656516', 'mahardianr@ff.unair.ac.id', 'WONOREJO INDAH TIMUR 16 (KAV.22A)\r\n', 10, '097416671616000', '1410013180971', '-', '0000-00-00', '2006-03-01', '2006-03-01', '0000-00-00', '-', '-', 1, 136, 0, 0, 0, 2, 2, 1, 2, 2, 8, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(771, 'Maitri Anindita, dr., Sp.M.', '198208062015042001', '3516184608820003', '-', 'a@a', 'Jl. RA Basuni 393 Rt 010 Rw 006 393 Rt 010 Rw 006 Japan Sooko\r\n', 9, '554963157602000', '1410013506605', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(772, 'Manggala Pasca Wardhana, dr., Sp.OG.', '198411202015041001', '3578082011840005', '-', 'a@a', 'Jl. Dharmahusada Indah A/28 Surabaya\r\n', 9, '343317913606000', '1420014523244', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(773, 'Mareta Rindang Andarsari, S.Farm., MFK., Apt.', '199005242014042001', '3578106405900002', '085634576234', 'mareta.ra@ff.unair.ac.id', 'KEDUNG COWEK NO.53-A\r\n', 8, '981524085619000', '1410012651022', '-', '0000-00-00', '2015-05-01', '2015-05-01', '0000-00-00', '-', '-', 1, 136, 0, 0, 0, 1, 2, 1, 2, 2, 8, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(774, 'Maria Al Qibtiyah', '198703112010122004', '3525165103870121', '-', 'a@a', 'Jl.KH.Abd.Karim 14/14 Trate-Gresik\r\n', 6, '362805590612000', '1410010831816', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 81, 0, 0, 0, 1, 2, 1, 2, 2, 13, 10, '0', '0', 2, 11, 1, 'rsunair2019'),
(775, 'Maria Nor Rachmawati, A.Md', '198512282010122003', '-', '-', 'a@a', '-', 5, '358827947614000', '1420013898563', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 142, 0, 0, 0, 1, 2, 1, 2, 2, 39, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(776, 'Medhi Denisa Alinda, dr., Sp.KK.', '198412112014042001', '3578025112840001', '-', 'a@a', 'Jl.Jemursari Utara V No. 8 RT.003 RW.008 Jemurwonosari Wonocolo Surabaya\r\n', 9, '710780578609000', '1420013523658', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 52, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(777, 'Meyta Dwi Yunitasari, S.Kep., Ners', '198905292014042001', '3577036905890002', '-', 'a@a', 'Rawabhakti no 64B rt37 rw 9 Kel. Mojorejo Kec.Taman Kota madiun\r\n', 6, '711059279621000', '1410012750741', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(778, 'Mochamad Arifin, S.Si', '198211192009121003', '3578081911820002', '-', 'a@a', 'Jl.Gubeng Kertajaya 13-C/2-B,Kel.Airlangga-Kec.Gubeng Surabaya\r\n', 6, '597917467606000', '1410010045821', 'Surabaya', '1982-11-19', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 138, 0, 0, 0, 2, 2, 1, 2, 2, 29, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(779, 'Mohamad Nurdin Zuhri, dr., Sp.M.', '198103042010121001', '-', '-', 'a@a', '-', 9, '366303329609000', '1410011152279', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(780, 'Muh Aziiz Sukma Wardana', '198601162010121003', '3578101601860000', '-', 'a@a', 'Surabaya\r\n', 5, '363525569619000', '1410010831287', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 140, 0, 0, 0, 2, 2, 1, 2, 2, 38, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(781, 'Muhammad Ardian Cahya Laksana, dr., Sp.OG., M.Kes.', '197409022008121003', '3578090209740002', '-', 'a@a', 'Galaxi Bumi Permai M-3/20\r\n', 9, '071812325606000', '1410009816083', '-', '0000-00-00', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 6, 51, 0, 0, 2, 2, 1, 1, 2, 31, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(782, 'Muhammad Miftahussurur., dr., Sp.PD.', '197909292008121003', '3578262909790003', '-', 'a@a', 'Dharmahusada Indah 2/45(C-166) Surabaya\r\n', 9, '795182120619000', '1410009816208', '-', '0000-00-00', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(783, 'Muhammad Noor Diansyah, dr., Sp.PD.', '197912022010121003', '3578030212790002', '-', 'a@a', 'Surabaya\r\n', 9, '353650690615000', '1410011155165', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(784, 'Muhammad Robiul Fuadi, dr., Sp.PK.', '197912262010121001', '3317082612790001', '-', 'a@a', 'Sejo Jl. Batavia RT 03 RW 03 Karangrejo Gempol Pasuruan\r\n', 9, '366621647624000', '1410011195146', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 2, 2, 1, 1, 2, 29, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(785, 'Muhammad Syamsul Hidayat, S.Kep., Ners., M.Kep', '198712022012121002', '3574030212870001', '-', 'a@a', 'Jl Nusa Indah Baru RT 005 RW 006 Sukabumi Mayangan Probolinggo\r\n', 8, '547579052625000', '1410013112933', 'Probolinggo', '1987-12-02', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 2, 2, 1, 3, 2, 46, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(786, 'Muhammad Yusuf., dr., Sp.JP., FIHA., FESC.', '197905142008121001', '3578051405790002', '-', 'a@a', 'Jl. Kapuas No. 16 Surabaya.\r\n', 9, '268400835607000', '1410009812264', '-', '0000-00-00', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(787, 'Musofa Rusli., dr., Sp.PD., K-PTI.', '197205292009121001', '3578082905720004', '-', 'a@a', 'Jl. Karangmenur 6 Surabaya\r\n', 9, '195103973606000', '1410010409100', '-', '0000-00-00', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(788, 'Mutiara Rizky Hayati, dr., Sp.PD.', '198311072012122002', '-', '-', 'a@a', 'surabaya\r\n', 9, '551977580604000', '1410013116959', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(790, 'Nanda Aulya Ramadhan, dr', '199004232014041001', '3578082304900001', '-', 'a@a', 'Pucang Anom 5/41, Pucang Sewu, Gubeng, Surabaya\r\n', 7, '548534833606000', '1420013513204', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 194, 0, 0, 0, 2, 1, 1, 1, 2, 17, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(791, 'Neurinda Permata Kusumastuti, dr., Sp.A.', '197904122010122002', '3578085204790002', '-', 'a@a', 'Surabaya\r\n', 9, '363658352606000', '1410011154945', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(792, 'Nia Dyah Rahmiati, dr., Sp.JP.', '198410182015042002', '3525165810840002', '-', 'a@a', 'Ikan Gurami 03/02 Rt 003 Rw 008 Sidokumpul Gresik\r\n', 9, '442218525606000', '9000010032333', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(793, 'Niko Azhari Hidayat, dr., Sp.BTKV.', '198003312010121003', '3578273103800005', '-', 'a@a', 'Surabaya\r\n', 9, '085674695604000', '1410011313368', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(794, 'Nila Kurniasari, dr., Sp.PA.', '198101232006042001', '3578056301810003', '-', 'a@a', 'Jl.Mojoklanggru Kidull Blok H No. 39 Surabaya\r\n', 9, '887375996607000', '1410009807546', '-', '0000-00-00', '2006-04-01', '2006-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 29, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(795, 'Nily Sulistyorini, dr., Sp.F.', '198204152009122002', '3525145504820003', '-', 'a@a', 'Jl.Kapten Dulasem 59, Gresik\r\n', 9, '896969847612000', '1410010046431', '-', '0000-00-00', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 52, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(796, 'Nina Yaroh Ubaidiyah, S.Kep., Ners', '198404122010122005', '3524265204840001', '-', 'a@a', 'Jl.Calan, Morocalan-Glagah Lamongan\r\n', 6, '363000308645000', '1410010836864', 'Lamongan', '1984-04-12', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 35, 97, 0, 0, 1, 2, 1, 3, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(797, 'Nissa Aruming Sila, S.Kep., Ners', '198805292010122005', '3578266905880002', '-', 'a@a', 'Jl.Kalijudan No.262 Rt.001/Rw.004 Kalijudan-Mulyorejo Surabaya\r\n', 6, '363162694619000', '1410010836849', 'Surabaya', '1988-05-29', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 74, 97, 0, 0, 1, 2, 1, 3, 2, 32, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(798, 'Novianti Rizky Reza, dr., Sp.KK.', '198411182015042001', '3525165811840001', '-', 'a@a', 'Jalan Jawa Indah I No. 6-8 RT 005/RW 009 Darus Saadah Gresik\r\n', 9, '257162123612000', '1420014516065', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(799, 'Nur Fauzi Hamidi, S.Farm., Apt', '198509282010121004', '3525022809850001', '-', 'a@a', 'Dusun Jedong No 10 Rt.005/Rw.002 Sekarputih-Balong Panggang Gresik\r\n', 6, '356842757642000', '1410007249220', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 78, 136, 0, 0, 2, 2, 1, 2, 2, 12, 10, '0', '0', 2, 11, 0, 'rsunair2019'),
(800, 'Nur Sulastri, dr., Sp.KFR.', '198211142012122003', '3578255411820002', '-', 'a@a', 'Surabaya\r\n', 7, '550275762615000', '9000015087613', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 1, 2, 1, 1, 2, 38, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(801, 'Nurul Alviana, S.Keb., Bd', '198812242014042001', '3523160412880001', '-', 'a@a', 'Jl. Mojo 3 E / 27 B Surabaya\r\n', 6, '711058578606000', '1410013935382', '-', '0000-00-00', '2014-05-01', '2014-05-01', '0000-00-00', '-', '-', 1, 88, 99, 0, 0, 1, 2, 1, 3, 2, 23, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(802, 'Nurul Fatimah, A.Md', '199103072015042003', '3525104703910003', '-', 'a@a', 'Jl. Kutilang I UB 10 GKA RT.001 RW.014 Kel. Yosowilangun Kec. Manyar Gresik \r\n', 5, '975947045612000', '1420014553993', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 138, 0, 0, 0, 1, 2, 1, 2, 2, 29, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(803, 'Nurul Kamariyah S., S.Kep., Ners', '198806292012122002', '3527126906880003', '-', 'a@a', 'Dsn Sumber Bhakti Ketapang Barat Sampang Madura\r\n', 6, '551313380644000', '1410013158530', 'Sampang', '1988-06-29', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(804, 'Patricia Maria Kurniawati, dr., Sp.KFR.', '196211211989032003', '3578056111620001', '-', 'a@a', 'Jl. Kapuas\r\n', 9, '184494581609000', '1410009813551', '-', '0000-00-00', '1989-03-01', '1989-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 38, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(805, 'Pepy Dwi Endaswari, dr., Sp.MK ', '198402042008122003', '3578234402840002', '-', 'a@a', 'Perum Hillda Regency Kav. 33 Jambangan Surabaya\r\n', 7, '795181213655000', '1410009811621', '-', '0000-00-00', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 1, 2, 1, 1, 2, 17, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(806, 'Pradana Zaky Romadhon, dr., Sp.PD.', '198405292014041001', '3578032905840002', '-', 'a@a', 'Pandugo Baru 2/14 Blok D-7, Penjaringan Sari, Rungkut, Surabaya\r\n', 9, '368795183615000', '1420013512289', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(807, 'Prastuti Asta W., dr., Sp.P.', '197808172008122003', '3578095708780007', '-', 'a@a', 'Kertajaya Indah Timut 15/38 Kel Gebang Putih Kec. Sukolilo Surabaya\r\n', 9, '260667688606000', '1410009816182', '-', '0000-00-00', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(808, 'Prieza Ferdania Choirun Nisa, S.Kep., Ners', '198804172012122001', '3523155704880005', '-', 'a@a', 'Perum Tuban Permai Blok A5 RT 005 RW 006 Gedongombo Semanding Tuban\r\n', 6, '549404374648000', '1410013046412', 'Jombang', '1988-04-17', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 1, 10, 1, 'rsunair2019'),
(809, 'Prihatma Kriswidyatomo, dr., Sp.An.', '198207092012121004', '3578080907820004', '-', 'a@a', 'Surabaya\r\n', 9, '461667578606000', '1410011501798', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(810, 'Puguh Setyo Nugroho, dr., Sp.THT-KL.', '197911232010121001', '3578202311790003', '-', 'a@a', 'Surabaya\r\n', 9, '086295342618000', '1410011250347', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(811, 'Pungky Mulawardhana, dr., Sp.OG.', '198106032009121003', '3688080306810004', '-', 'a@a', 'Jl. Dharmahusada Indah A/28\r\n', 9, '257271478606000', '1410010253078', '-', '0000-00-00', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(812, 'Purwaningsih, S.Kp., M.Kes', '196611212000032001', '1214066111660002', '-', 'a@a', 'Ganggang Panjang RT 15 RW 04 Tanggulangin Sidoarjo\r\n', 8, '487420705617001', '1410009805466', '-', '0000-00-00', '2000-03-01', '2000-03-01', '0000-00-00', '-', '-', 1, 7, 0, 0, 0, 1, 2, 1, 4, 2, 31, 10, '0', '0', 2, 12, 1, 'rsunair2019'),
(813, 'Rahana Shofiya, A.Md., Kep', '199103062015042001', '3321014603910002', '-', 'a@a', 'Ngemplak RT.003 RW.002 Ngemplak Mranggen Demak \r\n', 5, '460819444515000', '1420014411465', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(814, 'Rahmania Kemala Dewi, dr., Sp.F.', '198501112010122005', '3515185101850002', '-', 'a@a', 'Dewi Sartika VII/6-Xh 30 Sidoarjo\r\n', 9, '363000308645000', '1410011112190', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(815, 'Rahmatul Fitriyah, S.Kep., Ners', '198506092009122003', '3578254906850001', '-', 'a@a', 'Surabaya\r\n', 6, '347527889615000', '1410009985615', 'Pasuruan', '1985-06-09', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 86, 97, 0, 0, 1, 2, 1, 3, 2, 21, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(816, 'Ratu Izza Auwah Mairo, S.Kep., Ners', '198612062010122005', '3578234612860000', '-', 'a@a', 'Jl.Wisma Pagesangan V/18 Rt.004/Rw.005 Pagesangan Jambangan Surabaya\r\n', 6, '086436920609000', '1410010836831', 'Tangerang', '1986-12-06', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 35, 97, 0, 0, 1, 1, 1, 3, 2, 49, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(817, 'Reiska Kumala Bhakti, drg', '199105012014042001', '3578064105910002', '-', 'a@a', 'KUPANG KRAJAN 5 NO. 42 RT/RW. 001/004 KEL. KUPANG KRAJAN KEC. SAWAHAN SURABAYA\r\n', 7, '708851522614000', '1410010015832', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 195, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(818, 'Retno Muji Rahayu, S.Kep., Ners', '198603082010122008', '3571034803860004', '-', 'a@a', 'Jl.Singonegaran Pesantren Kediri\r\n', 6, '363148875622000', '1410010836856', 'Kediri', '1986-03-08', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(819, 'Ricky Wibowo, dr., Sp.B.', '198012212015041002', '3578072112800001', '-', 'a@a', 'Jl Polak Wonorejo 3/14 Rt 002 Rw 001 Peneleh Genteng Surabaya\r\n', 9, '078809084611000', '1420013999445', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 33, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(820, 'Rino Andriya., dr., Sp.OG.', '198207072012121004', '3578080707820002', '-', 'a@a', 'Surabaya\r\n', 9, '141694067606000', '1420085306339', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 35, 192, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(821, 'Rizki Dwi Fitriana, S.Kep., Ners', '198905052012122003', '3509274505890000', '-', 'a@a', 'Jl Diponegoro GG Kampung Baru Glagahwero Kalisat Jember\r\n', 6, '549717353626000', '1430005099591', 'Jember', '1989-05-05', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(822, 'Rizky Praditiwi Ajeng Gayatri, SKM', '198505072009122005', '-', '-', 'a@a', 'Jl.Karangmenjangan I/27A Mojo-Gubeng Surabaya\r\n', 6, '885121905606001', '1410010013696', 'Surabaya', '1985-05-07', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 140, 0, 0, 0, 2, 2, 1, 2, 2, 38, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(823, 'Robby Nurhariansyah, dr., Sp.A.', '198302272012121002', '3578102702830001', '-', 'a@a', 'Surabaya\r\n', 7, '597755172619000', '1410013143482', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(824, 'Rosa Falerina, dr., Sp.THT-KL.', '198210052015042001', '3578084510820001', '-', 'a@a', 'Jl. Taman Ketintang Wiyata no 1-3 Rt 003 Rw 004 Gayungan Ketintang Surabaya\r\n', 9, '459382107609000', '1420013313084', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(825, 'Samsul Arifin, A.Md', '199309102015041001', '3309011009930002', '-', 'a@a', 'Tegalsari RT.001 RW.004 Kel. Senden Kec. Selo Boyolali\r\n', 5, '723046777527000', '1420014411416', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 2, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(826, 'Sartika Wulandari, S.Kep., Ns., M.Kep', '198412222009122002', '3517116212840002', '-', 'a@a', 'Surabaya\r\n', 8, '347525909612000', '1410009985607', 'Sragen', '1984-12-22', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 90, 97, 0, 0, 1, 2, 1, 3, 2, 26, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(827, 'Satriyo Dwi Suryantoro, dr., Sp.PD.', '198401272014041001', '3578092701840005', '-', 'a@a', 'Bumi Marina Emas Selatan IV Blok E/54 Surabaya\r\n', 9, '348928565606000', '1420013507354', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 1, 10, 1, 'rsunair2019'),
(828, 'Setyawanti, S.Kep., Ners', '198906282014042001', '3512176806890001', '-', 'a@a', 'KP Gunungsari Rt 7 rw 3 Bungatan Situbondo\r\n', 6, '702885161656000', '1410012747655', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(829, 'Shanti Dhamaiyanti, A.Md., Kep', '199304052015042002', '3273174504930002', '-', 'a@a', 'Jl. Kopo GG Wiradisastra RT.003 RW.007 Kel. Kebonlega Kec. Bojongloa Kidul Kota Bandung\r\n', 5, '725865034422000', '1420014411390', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(830, 'Sita Setyowatie, dr., Sp.S.', '198407112015042001', '3578075107840002', '-', 'a@a', 'Jl. J.A. Soeprapto No 28 Rt 001 Rt 008 Ketabang Genteng Surabaya\r\n', 9, '729775593611000', '1420014059686', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(831, 'Siti Nur Fuanah, A.Md., Rad.', '198503062009122005', '3578024603850001', '-', 'a@a', 'Surabaya\r\n', 5, '362795718609000', '1410010013647', 'Sidoarjo', '1985-03-06', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 137, 0, 0, 0, 1, 2, 1, 2, 2, 37, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(832, 'Siti Nur Imamah, S.Kep., Ners', '198905222012122002', '3510066205890000', '-', 'a@a', 'Dusun Purwosari RT 004 RW 007 Benculuk Cluring Banyuwangi\r\n', 6, '549043842627000', '1410013131743', 'Banyuwangi', '1989-05-22', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(833, 'Sonny Hadi Wijaya, dr', '198110302012121002', '3578043010810002', '-', 'a@a', 'Surabaya\r\n', 7, '147135552915000', '1410012964631', '-', '0000-00-00', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 194, 0, 0, 0, 2, 2, 1, 1, 2, 17, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(834, 'Sri Purwanti, S.Kep., Ners', '198609032009122004', '3314154309860000', '-', 'a@a', 'Surabaya\r\n', 6, '347525057528000', '1410009985649', 'Sragen', '1986-09-03', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 85, 97, 0, 0, 1, 2, 1, 3, 2, 20, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(835, 'Sri Setyorini, dr', '198503122010122004', '-', '-', 'a@a', '-', 7, '787419050503000', '1420013898613', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 194, 0, 0, 0, 1, 2, 1, 1, 2, 17, 10, '0', '0', 3, 11, 1, 'rsunair2019'),
(836, 'Sundawan Priyo Seputra, A.Md. Kep', '198603042010121004', '350615040386003', '-', 'a@a', 'Jl. Kasianto Kawedanan RT 006/RW 001 Kawedanan - Magetan\r\n', 5, '362955999646000', '1410010831220', 'Madiun', '1986-03-04', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 2, 2, 1, 3, 2, 17, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(837, 'Suroso Wibowo, A.Md', '197911102010121002', '-', '-', 'a@a', '-', 5, '256639311514000', '1420013898589', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 2, 2, 1, 3, 2, 17, 10, '0', '0', 2, 8, 1, 'rsunair2019'),
(838, 'Tedy Apriawan, dr., Sp.BS.', '198104022015041001', '3578020204810001', '-', 'a@a', 'Purimas Kuta Paradise IX No 11 Surabaya\r\n', 9, '708388228615000', '1420014520570', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(839, 'Tito Aditya Sanjaya, A.Md', '199401232015041001', '3578032301940001', '-', 'a@a', 'Tambak Medokanayu B/35 RT.006 RW.002 Medokan Ayu Rungkut Surabaya\r\n', 5, '728379371615000', '9000004128048', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 138, 0, 0, 0, 2, 2, 1, 2, 2, 29, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(840, 'Tri Asih Imro''ati, dr., Sp.PD., FINASIM.', '197711152003122007', '3517095511770002', '-', 'a@a', 'jl. Tugu Utara Gg Baru no 36 Rt 3 Rw 4 Kepatihan Jombang\r\n', 9, '142435726602000', '9000023207401', '-', '0000-00-00', '2003-12-01', '2003-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 12, 1, 'rsunair2019'),
(841, 'Tri Pudy Asmarawati., dr., Sp.PD.', '198110192015042002', '3578015910810002', '-', 'a@a', 'Purimas Kuta Paradise IX/11 Rt 009 Rw 007 Gunung Anyar Surabaya\r\n', 9, '708388228615000', '9000030440490', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(842, 'Wahyu Endah Prabawati, dr., Sp.M.', '198705142010122004', '-', '-', 'a@a', 'Surabaya\r\n', 9, '779732510622000', '1410011147485', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(843, 'Wahyu Putri Sulistyaning, S.Kep., Ners', '198103102012122002', '7201045003810000', '-', 'a@a', 'Jl Sunan Geseng No 46 RT 001 RW 001 Kampung Dalem Kediri\r\n', 6, '597853944622000', '1410013079512', 'Kediri', '1981-03-10', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(844, 'Wardah Rahmatul F., dr., Sp.S.', '197905192009122003', '3578265905790003', '-', 'a@a', 'Jl. Mulyosari Utara 1/36 Mulyorejo Surabaya\r\n', 9, '343673596619000', '1410010045698', '-', '0000-00-00', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 52, 192, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(845, 'Widia Yuniarti, S.Kep., Ners', '198706212014042001', '-', '-', 'a@a', 'Kejawan Putih Tambak no 8 Surabaya\r\n', 6, '711026971619000', '1410012782835', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 36, 98, 0, 0, 1, 2, 1, 3, 2, 46, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(846, 'Wikan Purwihantoro Sudarmaji, S.Kep', '198408142009121008', '3519031408840003', '-', 'a@a', 'Surabaya\r\n', 6, '347526725621000', '1410009985623', '-', '0000-00-00', '2009-12-01', '2009-12-01', '0000-00-00', '-', '-', 1, 66, 97, 0, 0, 2, 2, 1, 3, 2, 17, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(847, 'Wiwiek Indriyani Maskoep, dr., Sp.PD., FINASIM.', '195809252016016201', '-', '-', 'a@a', '-', 9, '783795552619000', '1420014922172', '-', '0000-00-00', '2016-01-01', '2016-01-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 9, 1, 'rsunair2019'),
(848, 'Wiwin Is Effendi, dr., Sp.P.', '197803132008121002', '3524181303780002', '-', 'a@a', 'Sungelebak RT. 016 RW. 005, Sungelebak, Karanggeneng, Lamongan\r\n', 9, '261136006645000', '1410009816174', '-', '0000-00-00', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(849, 'Wiwin Pratiwi, S.Kep., Ners', '198608262014042001', '3523046608860006', '-', 'a@a', 'Karanganyar rt 2 rw 1 dusun kradenan Tuban\r\n', 6, '683486427648000', '1410012782777', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(850, 'Yeti Bangun Lestari, S.Keb., Bd', '198508212014042001', '3518036108850001', '-', 'a@a', 'Dukuh Setro 10 / 14 Rt 007 Rw 002 Tambak Sari Surabaya\r\n', 6, '898500988655000', '1410012782819', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 67, 105, 0, 0, 1, 2, 1, 3, 2, 42, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(851, 'Yevi Dwi Lestari, S.Kep., Ners', '198606182012122002', '3517145806860002', '-', 'a@a', 'Dsn Losari Rowo RT 03 RW 03 Losari Ploso Jombang\r\n', 6, '440884120602000', '1410013082987', 'Jombang', '1986-06-18', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 98, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(852, 'Yogo Apriyanto, S.Kep., Ners', '198503262010121002', '3578082603850006', '-', 'a@a', 'Mojo 3-F/52, Mojo - Gubeng Surabaya\r\n', 6, '363077306606000', '1410010831337', 'Lamongan', '1985-03-26', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 97, 0, 0, 0, 2, 2, 1, 3, 2, 17, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(853, 'Yoppie Prim Avidar, dr., Sp.An.', '197404172006041003', '3578221704740001', '-', 'a@a', 'Menanggal III no 44\r\n', 9, '086392008609000', '1410009807538', '-', '0000-00-00', '2006-04-01', '2006-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 33, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(854, 'Yudhi Adrianto, dr., Sp.S.', '198110032010121004', '-', '-', 'a@a', 'Surabaya\r\n', 9, '366177111643000', '1420010607348', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(855, 'Yudith Dian Prawitri, dr., Sp.KFR.', '198306102014042003', '3578045006830008', '-', 'a@a', 'Gunung Sari 43-49 Surabaya\r\n', 9, '711644203609000', '9000028462803', '-', '0000-00-00', '2014-04-01', '2014-04-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 38, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(856, 'Yuni Anggraini Manurung, A.Md., Kep', '199402052015042001', '1208194502940001', '-', 'a@a', 'Mulyorejo Tengah 84 RT.001 RW.003 Mulyorejo Surabaya\r\n', 5, '744947649117000', '1420013946586', '-', '0000-00-00', '2015-04-01', '2015-04-01', '0000-00-00', '-', '-', 1, 99, 0, 0, 0, 1, 2, 1, 3, 2, 17, 10, '0', '0', 2, 7, 1, 'rsunair2019'),
(857, 'Yunus, dr., Sp.OT.', '198301102010121003', '3515131001830001', '-', 'a@a', 'Surabaya\r\n', 9, '365865948603000', '1410011165990', '-', '0000-00-00', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(858, 'Zaenal Abidin, S.Kep., Ners', '198608292010121005', '3506212908860002', '-', 'a@a', 'Dusun Krajan Sebaung - Gending Probolinggo\r\n', 6, '363071804625000', '1410010831386', 'Probolinggo', '1986-08-29', '2010-12-01', '2010-12-01', '0000-00-00', '-', '-', 1, 87, 97, 0, 0, 2, 2, 1, 3, 2, 22, 10, '0', '0', 2, 9, 1, 'rsunair2019'),
(859, 'Zamrotul Izzah, S.FARM., M.Sc., Apt', '198505182008122002', '3578175805850005', '085655191257', 'zamrotulizzah@ff.unair.ac.id', 'Bulak Banteng Baru Gg.Gading No.12, Sby\r\n', 8, '587280561619000', '1410009823774', '-', '0000-00-00', '2008-12-01', '2008-12-01', '0000-00-00', '-', '-', 1, 136, 0, 0, 0, 1, 2, 1, 2, 2, 9, 10, '0', '0', 2, 10, 1, 'rsunair2019'),
(860, 'Zulfayandi Pawanis, dr.', '198804162012121001', '5271011604880001', '-', 'a@a', 'Irigasi V No 15 Tamansari Ampenan Mataram Nusa Tenggara Barat\r\n', 7, '550648299911000', '1410013102785', 'Mataram', '1988-04-04', '2012-12-01', '2012-12-01', '0000-00-00', '-', '-', 1, 194, 0, 0, 0, 2, 2, 1, 1, 2, 17, 10, '0', '0', 3, 10, 1, 'rsunair2019'),
(861, 'Erika Soebakti, dr., Sp.Rad.', '198604102017017201', '3578075004860001', '-', 'a@a', 'Jl. Plampitan XI/87 Surabaya\r\n', 9, '813397916618000', '1410001057553', '-', '0000-00-00', '2011-01-10', '2011-01-10', '0000-00-00', '-', '-', 1, 59, 0, 0, 0, 1, 2, 2, 1, 2, 37, 8, '0', '0', 3, 0, 1, 'rsunair2019'),
(862, 'Diana Suteja, SE., MM., Ak., Ca', '197503052016123201', '3578094503750003', '-', 'a@a', 'Manyar Indah IV-9 Rt/Rw 001/006 Sukolilo Menur Pumpungan Surabaya 60118\r\n', 8, '058131863606000', '1420015343683', '-', '0000-00-00', '2016-12-01', '2016-12-01', '0000-00-00', '-', '-', 1, 10, 0, 0, 0, 1, 2, 3, 4, 2, 31, 10, '0', '0', 2, 0, 1, 'rsunair2019'),
(863, 'Muhammad Amin, Prof., Dr., dr., Sp.P(K).', '194708101974121002', '3501111808930002', '-', 'a@a', '-', 10, '061734554609000', '1410009814245', '-', '0000-00-00', '1974-12-01', '1974-12-01', '0000-00-00', '-', '-', 1, 5, 192, 0, 0, 2, 2, 1, 4, 2, 31, 10, '0', '0', 2, 17, 1, 'rsunair2019'),
(864, 'Suharto, Prof., Dr., dr., M.Sc., DTM&H., Sp.PD-KTI.', '194708121974121001', '-', '-', 'a@a', 'Jl. Sukomanunggal No. 35 Surabaya\r\n', 10, '57932923604', '1410009814971', '-', '0000-00-00', '1974-12-01', '1974-12-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 16, 1, 'rsunair2019'),
(865, 'Bambang Wiirdjatmadi, Prof., Dr., dr., Sp.GK., MS., MCN., PhD.', '194903201977031002', '3578012003490001', '-', 'a@a', 'Kebraon Manis Tengah I/2 Surabaya\r\n', 9, '061402434602000', '1410009808601', '-', '0000-00-00', '1977-03-01', '1977-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 14, 10, '0', '0', 3, 16, 1, 'rsunair2019'),
(866, 'Budi Susetyo Pikir, Prof., Dr., dr., Sp.JP.', '194908081977031002', '3578080808490001', '-', 'a@a', 'Jl. Prambanan No. 7 Surabaya.\r\n', 10, '195093851606000', '1410009814542', '-', '0000-00-00', '1977-03-01', '1977-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 16, 1, 'rsunair2019'),
(867, 'Kuntaman, Prof., Dr., dr., MS., SP.MK(K).', '195107071979031003', '3578060707510002', '-', 'a@a', 'Jl. Kupang Gunung Timur IV/17 Surabaya\r\n', 10, '041876988614000', '1410009815226', '-', '0000-00-00', '1979-03-01', '1979-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 29, 10, '0', '0', 3, 16, 1, 'rsunair2019'),
(868, 'Ami Ashariati Prayoga, Prof., Dr., dr., Sp.PD., KHOM.', '195409301981112001', '3578047009540004', '-', 'a@a', 'Jl. Opak No. 27 Surabaya\r\n', 10, '063073381612000', '1410009815432', '-', '0000-00-00', '1981-11-01', '1981-11-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 16, 0, 'rsunair2019'),
(869, 'Nasronudin, Prof., Dr., dr., Sp.PD., K-PTI., FINASIM.', '195611031984031001', '3578090311560003', '-', 'a@a', 'Jl. Klampis Harapan 6/1 AA-77 Surabaya\r\n', 10, '072403033606000', '1410009815440', '-', '0000-00-00', '1984-03-01', '1984-03-01', '0000-00-00', '-', '-', 1, 1, 192, 0, 0, 2, 2, 1, 4, 2, 31, 10, '0', '0', 2, 17, 1, 'rsunair2019'),
(870, 'Ni Made Mertaniasih, Prof., Dr., dr., Sp.MK., M.Kes.', '195703071984032001', '3578094703570002', '-', 'a@a', 'Jl. Semolowaru Elok G.24 Surabaya\r\n', 10, '248729071606001', '1410009814476', '-', '0000-00-00', '1984-03-01', '1984-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 29, 10, '0', '0', 3, 16, 1, 'rsunair2019'),
(871, 'Jusak Nugraha, Prof., Dr., dr., MS., Sp.PK(K).', '195602141985021001', '3578091402560001', '-', 'a@a', 'Manyar Tirtosari 64, Surabaya\r\n', 10, '058127499606000', '1410009814377', '-', '0000-00-00', '1985-02-01', '1985-02-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 29, 10, '0', '0', 3, 16, 1, 'rsunair2019'),
(872, 'Diah Savitri Ernawati, Prof., Dr., drg., Sp.PM., M.Si.', '196004291985032001', '3578096904600001', '-', 'a@a', 'Galaxi Bumi Permai Blok H3/15 Surabaya\r\n', 10, '058857707615000', '1410009808304', '-', '0000-00-00', '1985-03-01', '1985-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 1, 2, 1, 1, 2, 36, 10, '0', '0', 3, 16, 1, 'rsunair2019'),
(873, 'Mohchammad Thaha, Prof., Dr., dr., Sp.PD., KGH., PhD.', '197205081999031001', '3578090805720001', '-', 'a@a', 'Jl. Nginden Intan Timur I/2-4 Surabaya\r\n', 9, '253043095606000', '1410009816893', '-', '0000-00-00', '1999-03-01', '1999-03-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 15, 1, 'rsunair2019'),
(874, 'Lila Dewata Azinar, Prof., Dr., dr., Sp.KFR.', '194012062016016101', '-', '-', 'a@a', '-', 10, '-', '1410009930678', '-', '0000-00-00', '2016-01-01', '2016-01-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 38, 10, '0', '0', 3, 13, 1, 'rsunair2019'),
(875, 'Soegeng Soegijanto, Prof., Dr., dr., Sp.A(K)., DTM&H.', '194104162016056101', '-', '-', 'a@a', 'Semolowaru Selatan V  - Surabaya\r\n', 10, '058130733606000', '1420088007843', '-', '0000-00-00', '2016-05-01', '2016-05-01', '0000-00-00', '-', '-', 1, 192, 0, 0, 0, 2, 2, 1, 1, 2, 36, 10, '0', '0', 3, 13, 1, 'rsunair2019'),
(876, 'Sinta Widiasti', '139121710', '3578094206900002', '-', 'a@a', 'Surabaya', 5, '731323051606000', '1410012782900', 'Surabaya', '1990-06-02', '2012-12-01', '2012-12-01', '2019-11-30', '-', '-', 1, 107, 0, 0.2, 1, 1, 1, 2, 3, 1, 42, 3, '1700000', '400000', 1, 0, 2, 'rsunair2019'),
(877, 'Pebri Primadani Sasmito', '199302262018115101', '3515132602930003', '083834343747', 'a@a', 'Dusun Kedunglo RT 004 RW 001, Kedungsugo, Prambon, Kab. Sidoarjo\r\n', 6, '544422413603000', '1420017050955', 'Sidoarjo', '1993-02-02', '2018-11-01', '2018-11-01', '2019-10-31', '-', '-', 1, 158, 0, 0.2, 0.8, 2, 1, 2, 4, 1, 27, 4, '1800000', '450000', 1, 0, 1, 'rsunair2019'),
(878, 'Ismail Setiawan', '139121512', '-', '-', 'a@a', 'mojo surabaya', 3, '72997846060600', '1410012521548', 'Surabaya', '1985-08-26', '2012-07-01', '2012-07-01', '2019-06-30', '-', '-', 1, 177, 0, 0.2, 0.8, 2, 2, 2, 4, 2, 44, 2, '1700000', '350000', 1, 0, 1, 'rsunair2019'),
(879, 'Djoko Agus Purwanto, Prof., Dr., Apt., M.Si', '195908051987011001', '3578030508590004', '-', 'a@a', 'Pandugo Baru R/39, Surabaya\r\n', 10, '097475453615000', '1410007576481', '-', '0000-00-00', '1987-01-01', '1987-01-01', '0000-00-00', '-', '-', 1, 4, 0, 0, 0, 2, 2, 1, 4, 5, 31, 10, '0', '0', 2, 15, 1, 'rsunair2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pekerjaan`
--

CREATE TABLE `tbl_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nama_pekerjaan` varchar(255) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pekerjaan`
--

INSERT INTO `tbl_pekerjaan` (`id_pekerjaan`, `id_pegawai`, `nama_pekerjaan`, `nama_jabatan`, `tanggal_masuk`, `tanggal_keluar`) VALUES
(1, 1, 'Rumah Sakit Universitas Airlangga', 'Teknisi TI', '2016-10-01', '2029-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelatihan`
--

CREATE TABLE `tbl_pelatihan` (
  `id_pelatihan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nama_pelatihan` varchar(255) NOT NULL,
  `tanggal_pelatihan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendapatan`
--

CREATE TABLE `tbl_pendapatan` (
  `id_pendapatan` int(11) NOT NULL,
  `nama_pendapatan` varchar(255) NOT NULL,
  `id_bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendidikan`
--

CREATE TABLE `tbl_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `nama_pendidikan` varchar(255) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `tahun_keluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pendidikan`
--

INSERT INTO `tbl_pendidikan` (`id_pendidikan`, `id_pegawai`, `id_jenjang`, `nama_pendidikan`, `tahun_masuk`, `tahun_keluar`) VALUES
(1, 2, 6, 'Administrasi Rumah Sakit', 2012, 2016),
(2, 1, 1, 'SDN 003 Tarakan', 1998, 2014),
(3, 1, 2, 'SMPN 2 Tarakan', 2014, 2017),
(4, 1, 3, 'SMKN 2 Tarakan', 2007, 2010);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `id_pegawai` varchar(11) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `nip_nik` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id_pengguna`, `id_pegawai`, `nama_pegawai`, `nip_nik`, `pass`, `level`, `password`) VALUES
(1, '-', 'Admin', 'admin', 'jangkrik', 1, 'ec3959f7a1e73b714518f3db1e349f84'),
(2, '1', 'Muhammad Rifqi Aditya, S.Kom', '199208052016105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(3, '2', 'Aries Wisnu Mukti', '199104182017045101', 'sdm2017', 2, '10c8829a4c635c6aead37215ca0e186f'),
(4, '3', 'Ahmad Muslim', '199109172018075101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(5, '4', 'Farah Faidah Ayudyani', '199205072018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(6, '5', 'Yoga Hadi Narendra', '199508222019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(7, '6', 'Varadila Fahma', '199509012019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(8, '7', 'Suci Setyawati', '199403022019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(9, '8', 'Rizqotul Maghfiroh R', '199610072019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(10, '9', 'Rizky Raditya Rahmanda', '199608312019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(11, '10', 'Risma Setya Pratiwi', '199605282019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(12, '11', 'Rina Fardiana', '199408112019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(13, '10', 'Risma Setya Pratiwi', '199605282019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(14, '11', 'Rina Fardiana', '199408112019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(15, '12', 'Renny Mey Maghfiroh', '199505042019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(16, '13', 'Refa Hengga Romario', '199505132019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(17, '14', 'Ratna Fitria Isnaini', '199702242019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(18, '15', 'Raafi Puristya Aries Darmawan', '199511022019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(19, '16', 'Onna Nurul Fitria Diah Ambar Rahayu', '199603052019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(20, '17', 'Novi Dwi Ambarsari', '199406072019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(21, '18', 'Novi Anjani', '199711202019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(22, '19', 'Naning Rosita Maulana ', '199408252019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(23, '20', 'Muhammad Amin', '199601022019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(24, '21', 'Mochammad Ichsan Tatisina', '199111052019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(25, '22', 'Mochamad Faisol Al Nizar', '199212192019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(26, '23', 'Mambaul Karomah', '199604212019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(27, '24', 'Mahsus Ridwan', '199506292019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(28, '25', 'Lintang Mega Puspita', '199609012019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(29, '26', 'Juniar Nur Rachmania', '199506222019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(30, '27', 'Indira Zenitania', '199704272019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(31, '28', 'Indri Dwi Purwanti', '199401182019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(32, '29', 'Ifa Junaida', '199703022019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(33, '30', 'Galih Kertiyasa ', '199403152019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(34, '31', 'Frista Amalia', '199603282019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(35, '32', 'Farra Ahdan Naila', '199703192019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(36, '33', 'Farid Cahya Mega Abdillah', '199503262019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(37, '34', 'Evrian Malero', '199104232019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(38, '35', 'Evi Fitri Wijayanti', '199403282019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(39, '36', 'Eva Elmiyatin', '199411242019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(40, '37', 'Entyar Winarba''a Novitasari', '199311202019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(41, '38', 'Ega Sesa Pamase', '199610102019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(42, '39', 'Efira Gladys Ramadhani', '199502232019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(43, '40', 'Dikut Purwantoro', '197212062019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(44, '41', 'Dian Setiyo Rini', '199501032019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(45, '42', 'Dewi Nurasrifah, dr., Sp.DV', '198602222019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(46, '43', 'Devvy Mayangsari', '199412242019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(47, '44', 'Cindy Puspitasari', '199512012019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(48, '45', 'Azkiyatul Fitri', '199503072019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(49, '46', 'Arie Rahmawati', '199707272019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(50, '47', 'Annisa Dewi Khartikasari', '199504192019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(51, '48', 'Andari Pramia Apsari', '199504022019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(52, '49', 'A''ida Fitriyah', '199507072019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(53, '50', 'Alfina Maghfiroh Safitri', '199503012019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(54, '51', 'Ahmad Ainul Zaqqi', '199603182019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(55, '52', 'A''ida Fitriyah', '199507072019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(56, '53', 'Alvinia Laksmi Fitriaty', '199412012019015201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(57, '54', 'Dindo Wahyuprayitno', '198405312019015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(58, '55', 'Yunita Arimulyani, dr', '199006182018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(59, '56', 'Khoir Amaliin, dr', '199407202018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(60, '57', 'Soraya Isfandiary Iskandar, dr', '199409252018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(61, '58', 'Sherly Dwi Agustiningrum', '199608082018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(62, '59', 'Sherly Dwi Agustiningrum', '199608082018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(63, '60', 'Prisma Andita Pebriaini', '199602202018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(64, '61', 'Prisma Andita Pebriaini', '199602202018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(65, '62', 'Nyonita Ratna Sari', '199308032018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(66, '63', 'Nurul Rachmania', '199702172018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(67, '64', 'Nurul Aidi', '198401012018125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(68, '65', 'Novita Dwi Kristanti', '199408272018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(69, '66', 'Nilam Cahya Nafiah', '199608212018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(70, '67', 'Nurul Nafisah', '199608102018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(71, '68', 'Muhammad Reza Rizky Putra, dr', '199306292018125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(72, '69', 'Khansa Muthiah', '199604282018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(73, '70', 'Hafid Nur Dwiansyah', '199204152018125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(74, '71', 'Dinny Indriani Dewi', '198202152018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(75, '72', 'Bondan Kandhito', '197802222018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(76, '73', 'Asty Amalia Safitri', '199601092018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(77, '74', 'Ardha Isma Maziyah', '199608272018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(78, '75', 'Andra Fifian Aprilia', '198704092018125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(79, '76', 'Alief Waitupu, dr', '199312162018125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(80, '77', 'Agong Prasetyo Ragil', '199408052018125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(81, '78', 'Adanan', '198810282018125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(82, '79', 'Surya Aditya', '199310172018115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(83, '80', 'Rudi Raharjo', '199309022018115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(84, '81', 'Prima Rahmadhany', '198402212018115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(85, '82', 'Frans Ardany Dwi Wahyuningsih', '198905232018115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(86, '83', 'Elistiana', '199308082018115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(87, '84', 'Cholifah Tri Wahyuni', '199401092018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(88, '85', 'Aldino Putro Adhi', '199308282018115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(89, '86', 'Afnan Afidatul Ummah', '199603182018115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(90, '87', 'Yustina Dwi Ratnawati', '199311042018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(91, '88', 'Yuli Putri Lestari', '199407022018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(92, '89', 'Yoki Surya', '198402012018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(93, '90', 'Yanuar Sukarno', '199301222018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(94, '91', 'Wahyu Setya Budi', '198307082018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(95, '92', 'Tennia Paramitha', '199804102018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(96, '93', 'Teguh Satrio', '199612212018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(97, '94', 'Talitha Ma''rufiah Froma', '199609082018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(98, '95', 'Susila Rusdiana Dewi', '199109292018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(99, '96', 'Sofiatul Ma''fuah', '199407062018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(100, '97', 'Sjafrilia Rachmadilla', '199705052018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(101, '98', 'Siti Nur Yatimah', '198810162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(102, '99', 'Siti Komariah', '199409182018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(103, '100', 'Sifaul Qolbia', '199307162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(104, '101', 'Rizky Zulfia Rahma', '199209032018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(105, '102', 'Riza Fitri Amaly', '200001142018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(106, '103', 'Rica Wahyuningsih Supriyadi', '199411242018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(107, '104', 'Retno Dewi Puspitarini', '199408222018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(108, '105', 'Raharjo Purnomo', '198711202018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(109, '106', 'Rachmaniar Pramanasari', '198802152018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(110, '107', 'Pravita Dwi Anggraeni', '199510112018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(111, '108', 'Prastiwi Faricatus Soleha', '199408052018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(112, '109', 'Nurul Khotimah', '199406012018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(113, '110', 'Novia Puspita Utami Putri', '199411202018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(114, '111', 'Novia Puspita Utami Putri', '199411202018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(115, '112', 'Novi Afiyanti', '199603202018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(116, '113', 'Nova Farkhatus Sholikhah', '199311162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(117, '114', 'Nailiyatul Faricha', '199311222018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(118, '115', 'Nadhila Nuril Widyaningrum', '199310012018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(119, '116', 'Mutiara Anisa''', '199408092018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(120, '117', 'Muhammad Iqbal', '199305112018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(121, '118', 'Muhammad Faris Rahmat Putra', '199212282018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(122, '119', 'Muhammad Dimas Rahmadiyanto', '199212192018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(123, '120', 'Mohammad Arif Budi Prasetyo', '199307012018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(124, '121', 'Mochamad Alfianto', '199105022018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(125, '122', 'Miftahlia Dara Asmara', '199603162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(126, '123', 'Mentari', '199507292018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(127, '124', 'Mei Lafiyanti', '199505202018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(128, '125', 'Maretha Catur Wardhani', '199503272018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(129, '126', 'Machfud Alfiansyah', '198405122018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(130, '127', 'Machfud Alfiansyah', '198405122018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(131, '128', 'M. Iqbal Zamani', '198908302018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(132, '129', 'Lu''luatul Machfudho', '199407282018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(133, '130', 'Luki Nurbianto', '199502242018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(134, '131', 'Lisa Efiana Malik', '199404112018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(135, '132', 'Lidya Aris Susanto', '198412122018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(136, '133', 'Ledia Kurniawati ', '199612202018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(137, '134', 'Lavifa Yulyanti', '199307272018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(138, '135', 'Latifatul Muna', '199110252018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(139, '135', 'Latifatul Muna', '199110252018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(140, '136', 'Lailatul Isnaini', '199310092018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(141, '137', 'Juwita Esthi Utami', '199512082018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(142, '138', 'Joko Utomo', '199102212018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(143, '139', 'Kurrotul Ayu', '199402212016025201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(144, '140', 'Jihan Syahira', '200005112018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(145, '141', 'Jayanti Iman Sari', '199411252018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(146, '142', 'Jaka Surya Hakim', '199410262018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(147, '143', 'Isfahatin', '198501232018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(148, '144', 'Septian Adly Nugroho', '199209072016025101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(149, '145', 'Agus Widayat', '199412292016035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(150, '146', 'Andy Rahmat Santoso', '199504262016035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(151, '147', 'Bagaskara Nur Ryanto Eka Putra', '199407242016035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(152, '148', 'Irsyad Zaki Ramadhan', '199403062018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(153, '149', 'Budi Prastyo', '199301252016035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(154, '150', 'Ira Tonisiyah', '199407242018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(155, '151', 'Intan Setyorini', '198901142018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(156, '152', 'Imelda Amitharia Jayanti', '199604272018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(157, '153', 'Emi Rif''atus Solikhah', '199610292016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(158, '154', 'Imam Syafi''i', '199405102018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(159, '155', 'Endah Widyaningrum', '199405102016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(160, '156', 'Heru Sunday', '197309022018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(161, '157', 'Hermawan Fitriyanto', '199404152018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(162, '158', 'Hafizh Akhadin Dzulfikar', '199610012016035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(163, '159', 'Halimatus Sholikhah', '199404042016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(164, '160', 'Hoirul Dwi Cahyono', '199112272016035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(165, '161', 'Hafifah Luthfi Wardati', '199003132018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(166, '162', 'Franciscus Fajar Dwi Septian', '199809192018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(167, '163', 'Fitri Nuria Fadilah Hanif', '199607172018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(168, '164', 'Fiqih Andrian Ilmansyah', '199305082018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(169, '165', 'Faradisha Nawandaru', '199509102018105202', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(170, '166', 'Fajar Nasrulloh', '199106112018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(171, '167', 'Fairuza Syarfina', '199504072018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(172, '168', 'Etika Wulandari', '199010232018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(173, '169', 'Endah Puspita Cahyaning Ratri', '199112162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(174, '170', 'Dwi Nur Faidha', '199803132018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(175, '171', 'Nina Lestari', '199310232016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(176, '172', 'Dwi Noor Sukhmawati', '198903312018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(177, '173', 'Dwi Noor Sukhmawati', '198903312018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(178, '174', 'Putra Wahyu Winarko', '199406192016035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(179, '175', 'Riesi Nur Mindiawati', '199404112016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(180, '176', 'Dwi Ambarsari', '199607072018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(181, '177', 'Yanis Olivia Stefani', '199401042016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(182, '178', 'Dimas Yoga Pangestu', '199306152018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(183, '179', 'Dimartari Fitri Atmasari', '199403152018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(184, '180', 'Dimartari Fitri Atmasari', '199403152018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(185, '181', 'Aula Khoirun Nisa''', '199806032016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(186, '182', 'Denis Ida Riftanti', '199512312016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(187, '183', 'Fitri Isnani', '199703042016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(188, '184', 'Dian Ratna Fatmawati', '199401302018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(189, '185', 'Dian Mutiara Chairunnisa', '199405072018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(190, '186', 'Mirna Elita', '199706302016035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(191, '187', 'Mochammad Rizqi Alwy', '199605112016035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(192, '188', 'Diah Wukir Hapsari', '199810252018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(193, '189', 'Dewi Andini Sari', '199412102018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(194, '190', 'Devi Ersa', '199212122018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(195, '191', 'Edjoelpan Rusadi', '198909102016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(196, '192', 'Delvia Widaty', '199601132018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(197, '193', 'Della Amalia Rachma', '199505162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(198, '194', 'Dany Triarmo Prasetyo', '199410062018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(199, '195', 'Danik Edya Ayu Ariska', '199604182018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(200, '196', 'Cindy Prastika', '199411172018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(201, '197', 'Chiza Ulazzuharo', '199309242018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(202, '198', 'Bimo Dwi Lukito', '198808092018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(203, '199', 'Ayudia Jasmine Rasetya Rahardjo', '199609052018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(204, '200', 'Aulia Nurul Aini', '199403232018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(205, '201', 'Atmim Fitria Risdiana', '199602212018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(206, '202', 'Atika Risdiyanti', '199510242018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(207, '203', 'Arga Nur Prasetiawan', '199407252018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(208, '204', 'Annisa Sabrina, drg., Sp.KG', '198507132018105201', '', 5, 'd41d8cd98f00b204e9800998ecf8427e'),
(209, '205', 'Amiiroh Aulia Sari', '199905302018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(210, '206', 'Amalia Prastyarini', '199704162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(211, '207', 'Alvita Brilliana Rahmawati Arafah', '199505092018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(212, '208', 'Akalili Lisa Rodhiyah', '199509102018105201', 'rsunair2019', 2, 'fecc334fff1969b525867af58cd4b52d'),
(213, '209', 'Aisyah Fitria Nurjanah', '199703202018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(214, '210', 'Agustin Puspitasari', '198508162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(215, '211', 'A. Mukromin', '199307202018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(216, '212', 'Shelly Dwi Putri', '199503162018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(217, '213', 'Pochik Try Walachirin', '199412272018105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(218, '214', 'Nurul Nimas Sayekti', '199402042018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(219, '215', 'Savita Putri Rizky Auliya', '199605262018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(220, '216', 'Rosidatus Salimah', '199110122018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(221, '217', 'Rofiqoh Novianti', '199311022018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(222, '218', 'Nimas Ayu Puspita Sari', '199608092018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(223, '219', 'Jihanni Mustika Mawardani', '199211082018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(224, '220', 'Iva Nur Aisyah Paramithasari', '199701022018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(225, '221', 'Enik Harini', '199309032018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(226, '221', 'Enik Harini', '199309032018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(227, '222', 'Devista Fitri Chyintia', '199602102018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(228, '223', 'Udria Satya Pratama, dr., Sp.OT.', '198504292016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(229, '224', 'Abdul Azis', '199112242016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(230, '225', 'Devina Kristanti Nova', '199505112018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(231, '226', 'Aqwin Dwi Praja', '199409222016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(232, '226', 'Aqwin Dwi Praja', '199409222016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(233, '227', 'Arifin Kolillu Anam', '199205302016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(234, '228', 'Devi Rosida Kurniawati', '199608142018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(235, '229', 'Devi Febriana', '199403132018075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(236, '230', 'Dahlia Ulfa', '199201302016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(237, '230', 'Dahlia Ulfa', '199201302016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(238, '231', 'Dwi Bagus Cahyono Wibowo', '198608272016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(239, '232', 'Gita Tola Syntia Minati Dewi', '199210122016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(240, '233', 'Handira Nadhifatul Aini', '199407252018105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(241, '234', 'Alfian Franstama Poli''i', '199501062018075101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(242, '235', 'Achmad Badrus Sholeh', '199610062018075101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(243, '236', 'Tiara Mega Lestari', '199906092018045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(244, '237', 'Rozy Yudha Yudistira', '199102122018045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(245, '238', 'Ristandio Arifin', '199311272018045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(246, '239', 'Muhammad Wibowo Pranoto', '199609162018045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(247, '240', 'Muhamad Yusuf Eko Nugroho', '199207042018045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(248, '241', 'Endiqaputri Dwi Damayanti', '199506222018045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(249, '242', 'Dodik Wijanarko', '199105192018045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(250, '243', 'Dimas Surya Bagaskoro', '199106302018045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(251, '244', 'Dewi Ilmi Muamalah', '199710142018045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(252, '245', 'Catur Fitria Arniawati', '199004242018045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(253, '246', 'Ahmad Salamun', '198805262018045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(254, '247', 'Aba Yusak Novi Yuhas', '199011132018045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(255, '248', 'Uswatun Khasanah', '199410312018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(256, '249', 'Ulfa Amelia', '198702192018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(257, '250', 'Tedo Briantono Basuki', '199202012018035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(258, '251', 'Tanti Cahyani', '199403272018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(259, '252', 'Shova Rizqi Amala', '199505062018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(260, '253', 'Rizky Ramadhan', '199203082018035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(261, '254', 'Nur Iflaha A''isyah', '199607052018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(262, '255', 'Nikita Kawulanda Adhitira', '199110162018035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(263, '256', 'Lilik Maulidyatus Sholikhah', '199109292018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(264, '257', 'Jatu Rahmania Savitri', '199207082018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(265, '258', 'Indri Sagita Faluvianti', '199411112018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(266, '259', 'Indra Hary Nugroho', '199009122018035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(267, '260', 'Imawati Annisa Safitri', '199404042018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(268, '261', 'Hannik Rahmaningrum', '199311192018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(269, '262', 'Fariska Hurun In', '199311012018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(270, '263', 'Fani Lailatul Hikmah', '199402022018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(271, '264', 'Dia Inda Amalia', '199105182018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(272, '265', 'Devi Sarah Intan Permatasari', '199011202018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(273, '266', 'Devi Ayu Kumalasari', '199311262018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(274, '267', 'Della Roekhmatul Irwanda', '199812162018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(275, '268', 'Adelia Ferlina Damayanti', '199506252018035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(276, '269', 'Novi Ikhyarul Hani', '199405142018025201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(277, '270', 'Nisrina Putri Indah Kurnia', '199501082018025201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(278, '271', 'Mita Nur Lathifah', '199406182018025201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(279, '272', 'Itsnaini Indah Farisa', '199301152018025201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(280, '273', 'Gebyar Hafit Suwandaru', '199403132018025101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(281, '274', 'Deby Duwi Arizka', '199507122018025201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(282, '275', 'Ikhwan Supyanto', '199011012016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(283, '276', 'Meirina Eka Kumalasari', '199305292016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(284, '277', 'Viky Rohmantisa Putra', '199412142017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(285, '278', 'Rahmad Aji Hanggoro', '199208042016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(286, '279', 'Retty Wakhidatul Najmah', '199112102016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(287, '280', 'Rinda Hidayati', '199205032016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(288, '281', 'Nada Nazhifah', '199507202017035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(289, '282', 'Agustina Ayu Wulansari', '199808092017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(290, '283', 'Ali Ridho Wahyu Firmansyah', '199711072017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(291, '284', 'Dwi Asriniwati', '199610032017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(292, '285', 'Indra Dwi Framono', '199806062017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(293, '286', 'Seliyuzika Desiawati Angelani', '199112022016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(294, '287', 'Mitha Susilowati', '199801192017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(295, '288', 'Rahmawati Citra Pertiwi', '199503302017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(296, '289', 'Adityarani Putranti, drg., M.Kes.', '198411062017045201', '', 5, 'd41d8cd98f00b204e9800998ecf8427e'),
(297, '290', 'Adityarani Putranti, drg., M.Kes.', '198411062017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(298, '291', 'Siska Dwi Purwaningtyas', '199110012016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(299, '292', 'Angga Dwi Laksana Putra', '199604162017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(300, '293', 'Filsa Cahyaningrum', '199109272017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(301, '294', 'Taufiqul Rochman', '199204132016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(302, '295', 'Yayuk Debi Nilasari', '199208122016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(303, '296', 'Agustin Prasetyo Winarno ', '199108302016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(304, '297', 'Didiet Ermana', '199005102016045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(305, '298', 'Mah Vinda Amalia', '199606052016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(306, '299', 'Nimas Hayati Eka Anugrah', '199408112016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(307, '300', 'Rizka Aprilya', '199704012016045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(308, '301', 'Ulfa Lustantyni', '199610182016055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(309, '302', 'Ali Wardana', '198603122016055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(310, '303', 'Juldhinanta Purtama', '198507172016055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(311, '304', 'Sugeng Hariono', '197904112016055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(312, '305', 'Wiji Nurhayati', '198804202016055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(313, '306', 'Agung Priambodo', '199407302016065101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(314, '307', 'Fitria Setya Dwi Kartika', '199304112017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(315, '308', 'Arief Rachmandhika', '199405172016065101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(316, '309', 'Dian Rosalina Pratiwi', '199408022016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(317, '310', 'Nurul Puji Rahayu', '199404102016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(318, '311', 'Raissa Rahmi Pramadani', '199402042016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(319, '312', 'Fitriana Miftahul Jannah', '199107222017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(320, '313', 'Indah Sulistyo Ningtiyas', '199511062017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(321, '314', 'Lisa Nadia Maulida', '199408242017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(322, '315', 'Moch. Syarifuddin', '199208112017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(323, '316', 'Mohammad Hayat Sa''dan', '199203022017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(324, '317', 'Mohammad Hayat Sa''dan', '199203022017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(325, '318', 'Naylien Ariefa', '199505052017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(326, '319', 'Nur Chumala', '199409262017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(327, '320', 'Nur Elyani', '199407132017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(328, '321', 'Qurratu A''yun Laili', '199511212017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(329, '322', 'Qurratul Aini', '199505282017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(330, '323', 'Rifftya Sinta Lestari', '199307272017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(331, '324', 'Rifftya Sinta Lestari', '199307272017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(332, '325', 'Rizky Ikwan, dr.', '199002052017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(333, '326', 'Rizky Patria Nevangga, dr.', '199102192017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(334, '327', 'Sigit Mulyono', '199409292017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(335, '328', 'Suciati Ningsih', '199201022017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(336, '329', 'Vivi Armany Dessy', '198712052017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(337, '330', 'Weny Kusuma Wardhani', '199405312017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(338, '331', 'Yunita Sari', '199306072017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(339, '332', 'Bayutirta Hadi Prayugo', '199105152017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(340, '333', 'Dewi Noer Maimunah', '199306102017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(341, '334', 'Silfia Desi Anggraini', '199312022017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(342, '335', 'Wahyu Aditiya', '198809142017045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(343, '336', 'Haryati Widayanti', '199406112017045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(344, '337', 'Siswo Afendy', '198408112017055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(345, '338', 'Muhammad Fath Alhaqqi Sanis Salamy, dr', '199007122017065101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(346, '339', 'Sarah Primadani Kaurow, dr.', '198910302017065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(347, '340', 'Desy Widya Indahyani Hartono', '199512062017085201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(348, '341', 'Fajarrina Sihwidi Pangesti', '198604072017017201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(349, '342', 'Nika Susanti', '199010102017017201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(350, '343', 'Yuliansari Adhi Mukti', '199107242017017201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(351, '344', 'Anisa Mardiati Imaniar', '199209062017105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(352, '345', 'Denny Koesumarini', '199210292017105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(353, '346', 'Lintang Kusuma Ananta', '199411292017105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(354, '347', 'Nia Puspitasari', '199503272017105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(355, '348', 'Rio Cristianto', '199403282017105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(356, '349', 'Toni Subarkah', '199406112017105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(357, '350', 'Vinny Prillia Alvionita', '199204132017105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(358, '351', 'Yuli Astutik', '199307162017105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(359, '352', 'Yunita Khoirotus Salamah', '198906212017105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(360, '353', 'Afifatul Mufidah', '199310012017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(361, '354', 'Aprilia', '199404282017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(362, '355', 'Ayu Susilawati', '199404282017125202', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(363, '356', 'Indah Nur Rahmawati', '199404182017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(364, '357', 'Meyvita Sari Rike Yunita', '199405022017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(365, '358', 'Nia Elfira Rahmawati', '199402032017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(366, '359', 'Putri Mulyasari', '199407152017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(367, '360', 'Ria Fitriani', '199403262017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(368, '361', 'Sevina Ramahwati', '199408242017125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(369, '362', 'Fadilah', '198209032014035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(370, '362', 'Fadilah', '198209032014035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(371, '363', 'Riska Ambarwati', '199409242013095201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(372, '364', 'Anang Fauzy', '199207092013115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(373, '365', 'Riantika Apriyanti', '199104102016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(374, '366', 'Weni Fitria Priyantini', '199403202016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(375, '367', 'Anisa Dwi Syafitri', '199908132016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(376, '368', 'Auliya Nur Latifah Wijayanti', '199709172016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(377, '369', 'Azizah Nila Sari', '199808182016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(378, '370', 'Eriza Tri Heriwiyanti', '199105122016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(379, '371', 'Ersinta Putri Kurniawati', '199108012016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(380, '372', 'Fani Nur Fajriani', '199805232016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(381, '373', 'Fauzia Rahmawati', '199801082016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(382, '374', 'Febriansyah Nur Utomo', '199202022016065101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(383, '375', 'Junita Mega Pratiwi', '199806102016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(384, '376', 'Krisna Adhi Dwi Putra', '199810032016065101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(385, '377', 'Muhammad Adi Mahnuri', '199802252016065101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(386, '378', 'Pramita Ismawartin', '199703012016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(387, '379', 'Purna Ujianti', '199803132016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(388, '380', 'Rina Kardiyati', '199709272016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(389, '381', 'Whan Victory Triyanto', '199612122016065101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(390, '382', 'Achmad Farodisi Afnani', '139121700', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(391, '383', 'Achmad Ismail', '199306132015025101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(392, '384', 'Imam Basori', '139111403', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(393, '385', 'Lailatul Musayaroh', '199204262015025201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(394, '386', 'Fidiya Dwi Kartikasari', '199304042015035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(395, '387', 'Rizka Nur Azizah', '199305252015035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(396, '388', 'Yunita Dwi Astutik', '199706112016065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(397, '389', 'Sylviana Radina Ramadhani', '199303042015035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(398, '390', 'Arika Dewi Rahmawati', '199203302016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(399, '391', 'Budi Santoso', '199211042016075101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(400, '392', 'Candra Dwi Arie Prayogo', '199205062016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(401, '393', 'Deska Jaya Anggriana', '199112122016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(402, '394', 'Wiwit Eko Setiawan', '198207292015035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(403, '395', 'Dini Wahyu Aulia Fitri', '198905162016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(404, '396', 'Novanda Indi Nuansa', '198902162015045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(405, '397', 'Damayanti Ekasari', '199207072015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(406, '398', 'Lailatus Sa''baniyah', '198505012015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(407, '399', 'Nurul Dyah Lutfidah', '139121697', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(408, '400', 'Retno Handiarti Oktamia', '139121461', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(409, '401', 'Sigit Pramono', '139121511', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(410, '402', 'Maulidianne Hari Saputri', '199308312015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(411, '403', 'Patria Anggraini', '198909182015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(412, '404', 'Widho Irnawati', '199103112015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(413, '405', 'Juwita Agustin Ratnadewi', '199108272015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(414, '406', 'Kartika Utami Putri', '199007112015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(415, '407', 'Lia Dwi Wijayanti', '198708172015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(416, '408', 'Meirina Yanie Mawita Sari', '199105092015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(417, '409', 'Mochamad Fendi Pradana', '199109182015045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(418, '410', 'Nuran Fataliyaisma Auwalin S', '199106212015045201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(419, '411', 'Nuzulul Zulkarnain Haq', '199104032015045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(420, '412', 'Ryan Reza Falupi', '199109242015045101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(421, '413', 'Karina Dita Anggraeni', '199609022015055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(422, '414', 'Karina Dita Anggraeni', '199609022015055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(423, '415', 'Prima Sari Sugiarsih', '198203042015055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(424, '416', 'Shabrina Liandah Akalili', '199306182015055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(425, '417', 'Hanifah', '199608152015055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(426, '418', 'Hanifah', '199608152015055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(427, '419', 'Rifky Maulana Fuadi', '199206022015055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(428, '420', 'Rizzky Ernianto Lesmono', '199011012015055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(429, '421', 'Rifky Nashrullah', '198509302015055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(430, '422', 'Achmad Rizal Fauzi', '139141854', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(431, '423', 'Adinda Gadis Damayanti', '139141865', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(432, '424', 'Dita Novitasari', '199510312016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(433, '425', 'Dwi Ima Destyo Utami', '199312032016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(434, '426', 'Aditya Galih Nusantara', '139141859', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(435, '427', 'Viqi Asmaudin', '199402262015055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(436, '428', 'Agung Mariono', '139141850', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(437, '429', 'Erlina Dewanti Santoso', '199308212016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(438, '430', 'Chandra Bagus Dwianto., dr', '199003222015105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(439, '431', 'Ah Setyanur Rifki Maimanah', '139141852', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(440, '432', 'Erlysa Diah Pangastuti', '198910252016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(441, '433', 'Ade Sugih Herlambang', '199209122015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(442, '434', 'Afining Dina Ariyanti', '199204082015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(443, '435', 'Agustyas Nikma Aziz', '199708072015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(444, '436', 'Ajeng Afrita Rosanti', '199509302015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(445, '437', 'Esa Rilasti', '197704252016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(446, '438', 'Aldila Azmi Rahmatul Layalia', '199205212015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(447, '439', 'Aminatus Sholikhah', '199102262015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(448, '440', 'Ahmad Amirul Adly', '139141864', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(449, '441', 'Andri Wijaya', '199205092015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(450, '442', 'Ajeng Widya Utami', '139121714', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(451, '443', 'Alimudin Jabaar', '139141840', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(452, '444', 'Angki Marita Handayani', '139141860', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(453, '445', 'Anis Churillailil', '139141813', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(454, '446', 'Anisa Adyalina', '199208182015115202', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d');
INSERT INTO `tbl_pengguna` (`id_pengguna`, `id_pegawai`, `nama_pegawai`, `nip_nik`, `pass`, `level`, `password`) VALUES
(455, '447', 'Aulya Afifatur Rochmah', '139121678', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(456, '448', 'Berinda Januarti Punjungalun Putri', '139121705', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(457, '449', 'Annisa Nur Aini', '199202172015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(458, '450', 'Febri Kardina', '199102022016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(459, '451', 'Cristina Aristya', '139121679', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(460, '452', 'Desy Purnama Sari', '139121707', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(461, '453', 'Dinda Nur Fitria', '139121708', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(462, '454', 'Ari Novitasari', '198909092015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(463, '455', 'Arin Eka Darnasari', '199506272015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(464, '456', 'Arya Bondan Permadi', '199307032015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(465, '457', 'Enok Indrawati', '139141844', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(466, '458', 'Chabib Fitri Lia Wati', '199008272015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(467, '459', 'Erlina Fatma Widiyanti', '139141863', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(468, '460', 'Farid Firmansyah', '139141855', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(469, '461', 'Fatiyah Malihah', '139121691', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(470, '462', 'Firda Amelia Permana Putri', '139141851', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(471, '463', 'Hendra Prasetya', '139141856', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(472, '464', 'Heri Setyoko', '139141846', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(473, '465', 'Chusnul Hidayah', '199301042015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(474, '466', 'Indar Putri Rahayu', '139121701', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(475, '467', 'Fitria Rochmawati', '198406072016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(476, '468', 'Indri Diyah Puji Lestari', '139121687', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(477, '469', 'Khoerun Asna', '198910042016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(478, '470', 'Melysa Niki Aprilya', '199104012016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(479, '471', 'Nanda Idhawanti Putri', '199405212016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(480, '472', 'Ninik Nurul Faizah', '198101022016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(481, '473', 'Ninik Setyowati', '198512292016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(482, '474', 'Nova Eka Twenty Putri', '199110202016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(483, '475', 'Putri Puspita Sari', '199010042016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(484, '476', 'Rahayu Septiana', '199209012016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(485, '477', 'Ririn Halimatus Sa''diah', '199102222016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(486, '478', 'Siti Hidayatul Ula', '199304222016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(487, '479', 'Citra Intansari Ayu Lestari', '198911092015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(488, '480', 'Irine Susanti', '139141845', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(489, '481', 'Yustin Oktavia', '198910062016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(490, '482', 'Zamira Tri Lestari', '198808252016075201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(491, '483', 'Deasy Nusiyanti', '198612262015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(492, '484', 'Deny Martha Hardita', '199303142015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(493, '485', 'Deny Martha Hardita', '199303142015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(494, '486', 'Diah Fajar Safitri', '199104202015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(495, '487', 'Dian Permata Sari, S.Kep., Ns', '199203272015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(496, '488', 'Dian Permata Sari, S.Kep., Ns', '199203272015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(497, '489', 'Diena Moeslima', '199309242015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(498, '490', 'Dinda Wulan Suci', '199104102015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(499, '491', 'Dia Rizka Isnawati, dr', '199010012016085201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(500, '492', 'Dita Dresti Wardani', '199212222015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(501, '493', 'Dwi Agustina', '199108012015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(502, '494', 'Efa Imama Nur Maulina', '199207042015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(503, '495', 'Egha Rizki Masyuda', '199101102015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(504, '496', 'Erna Kustiyaningsih', '199205142015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(505, '497', 'Erwindy Yastika Pradani', '199411302015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(506, '498', 'Khusnul Fitri Hamidah', '139121715', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(507, '499', 'Kisam Samsuri', '139121699', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(508, '500', 'Maria Ulfa', '139121711', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(509, '501', 'Andra Rizqiawan, drg., Sp.BM., Ph.D.', '198109232005011001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(510, '502', 'Farida Fuji Astutik', '199504232015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(511, '503', 'Febri Kusumowidagdo', '199202112015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(512, '504', 'Alphania Rahniayu, dr., Sp.PA.', '198102072008012013', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(513, '505', 'Fidelia Wandita Nareswari', '199206142015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(514, '506', 'Ariandi Setiawan., dr., Sp.B., Sp.BA.', '197306102008011015', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(515, '507', 'Arief Bakhtiar, dr., Sp.P.', '197810222008011005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(516, '508', 'Fitria Wulandari', '199603062015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(517, '509', 'Ghaniya Al Murahman', '199303182015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(518, '510', 'Hana Rahmawati', '199206202015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(519, '511', 'Hana Rahmawati', '199206202015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(520, '512', 'Anny Setijo Rahayu, dr., Sp.PA.', '197009202008122001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(521, '513', 'Hargus Haraudi Barkah', '198708302015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(522, '514', 'Aang Kunaifi, S.Kep., Ners', '198611012010121006', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(523, '515', 'Aditea Etnawati Putri, dr', '198310142010122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(524, '516', 'Aditya Nugrahadi, ST., MM.', '198204122010121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(525, '517', 'Akhmad Ja''far, S.Kep., Ners', '198307152010121008', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(526, '518', 'Hidati Dian Novrita', '199111172015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(527, '519', 'Andis Yuswanto, S.Kep., Ners', '198502042010121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(528, '520', 'Lulytha Rahmanike Putri, drg.', '199010062016095201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(529, '521', 'Alifiah Frisky Ferdianty', '199305232016095201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(530, '522', 'Andi Darus Salam', '199305082016095101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(531, '523', 'Ika Rizqi Lia Ningsih', '199405232015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(532, '524', 'Lia Nikmatul Maula', '199212182016095201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(533, '525', 'Reza', '199401152016095101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(535, '527', 'Niken Sasadhara Sasmita, dr.', '199008032016085201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(536, '528', 'Intan Widiastiti', '199110052015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(537, '529', 'Liya Kurniawati', '199108242015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(538, '530', 'M. Hadi Rofiqur Rohman', '199108082015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(539, '531', 'Miftahul Fahmi', '199210202015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(540, '532', 'Niko Rahardi', '139121721', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(541, '533', 'Muchamad Adiyatama', '199201182015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(542, '534', 'Muhammad Fuad Yasin', '199108092015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(543, '535', 'Nur Lailatul Azmi', '139141866', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(544, '535', 'Nur Lailatul Azmi', '139141866', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(545, '536', 'Nurul Fatimah, S.Si', '139141839', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(546, '537', 'Ogie Okta Ardana', '139141841', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(547, '538', 'Rizki Putri Kurniawati', '139121694', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(548, '539', 'Ruri Rahmadani', '139121702', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(549, '540', 'Muhammad Umar Ali Kusuma', '199001242015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(550, '541', 'Sandy Andhita Saraswati', '139141862', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(551, '542', 'Najmi Layalia', '199108152015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(552, '543', 'Nandya Ayu Silvaningrum', '199206062015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(553, '544', 'Rosita Prananingtias', '139121718', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(554, '545', 'Nikein Trisna Hartini', '199209022015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(555, '546', 'Nor Za''idah Asy''ariyah', '199211022015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(556, '547', 'Nor Za''idah Asy''ariyah', '199211022015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(557, '548', 'Novendra Aji Cahyo Wibowo', '199111042015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(558, '549', 'Siti Maysaroh', '139121703', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(559, '550', 'Suwito', '139141842', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(560, '551', 'Tirsa Rizky Ersanti', '139141847', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(561, '552', 'Nur Inayah', '199202052015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(562, '553', 'Nur Laili Mahzumah', '198810122015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(563, '554', 'Nur Laili Mahzumah', '198810122015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(564, '555', 'Wawan Agustiono', '139141857', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(565, '556', 'Nurul Ainiyah', '199412222015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(566, '557', 'Nurul Hidayati', '199205092015115202', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(567, '558', 'Windy Arie Cahyono', '139121673', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(568, '559', 'Yunita Sarah Az-Zahra', '139141849', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(569, '560', 'Nurul Mita Anisah', '199005082015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(570, '561', 'Nurul Wachyu Fitriyah Andriyani', '199203192015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(571, '562', 'Okki Fajrin Dhisiati', '199110232015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(572, '563', 'Oktaria Nindyawati', '199610052015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(573, '564', 'Oktaria Nindyawati', '199610052015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(574, '565', 'Arina Setyaningtyas., dr., Sp.A.', '197602222010122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(575, '566', 'Arlita Oktanawati', '198510152010122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(576, '567', 'Asdi Wihandono, dr., Sp.B.', '198301212010121006', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(577, '568', 'Oktaviani Putri Wiyono', '199610162015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(578, '569', 'Pembayun Kharisma Rubiah', '199306162015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(579, '570', 'Azril Okta Ardiansyah, dr., Sp.B.', '198010062010121005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(580, '571', 'Purwoning Husnul Chotimah', '199208242015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(581, '572', 'Qurrota A''yunil Masna', '199201112015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(582, '573', 'Rahma Erdha Yunita', '199206302015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(583, '574', 'Ranni Oktoviana', '199310272015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(584, '575', 'Ranni Oktoviana', '199310272015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(585, '576', 'Rany Wanita Wigati', '198810152015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(586, '577', 'Rateh Dwi Wilujeng', '199306132015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(587, '578', 'Rateh Dwi Wilujeng', '199306132015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(588, '579', 'Ratih Harlianingtyas', '199502212015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(589, '580', 'Ratna Nisa'' Anggraini', '198905302015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(590, '581', 'Rena Maulidya Nadzriyah', '199508052015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(591, '582', 'Reni Wijayanti', '199211192015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(592, '583', 'Rio Agus Efendi', '199108152015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(593, '584', 'Rio Agus Efendi', '199108152015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(594, '585', 'Risma Zahra Privea', '199108282015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(595, '586', 'Risma Zahra Privea', '199108282015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(596, '587', 'Siti Suliha', '199111292015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(597, '588', 'Siti Suliha', '199111292015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(598, '589', 'Sulistyorini Budi Wahyuni', '199403182015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(599, '590', 'Sungging Prihangkoro', '198706262015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(600, '591', 'Titik Sugiarti', '199112242015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(601, '592', 'Achmad Farodisi Afnani', '139121700', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(602, '593', 'Wanda Rosalina', '199105072015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(603, '594', 'Adhitya Angga Wardhana, dr., Sp.B.', '198308132012121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(604, '595', 'Yuarnistira', '199201162015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(605, '596', 'Yulia Asti Eka Kisdiawati', '199407102015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(606, '597', 'Ajeng Widya Utami, S.Farm., Apt', '139121714', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(607, '598', 'Ana Puspa Sari, S.Kep., Ners', '198605252012122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(608, '599', 'Yusi Yanuari Fandi', '198901262015115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(609, '600', 'Zahrotun Ulum', '199204292015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(610, '601', 'Ariska Wulandari', '199306092015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(611, '602', 'Lely Jayanti Maipura', '199305292015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(612, '603', 'Anna Nurmita, S.Kep., Ners', '198807072012122001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(613, '604', 'Ayu Kurniawati', '199403202015115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(614, '605', 'Agung Rahmawan', '198607182015125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(615, '606', 'Ardhena Ekasari, S.Kep., Ners', '198807132012122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(616, '607', 'Andyka Reza Prastya', '199111262015125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(617, '608', 'Indung Adi Atmoko', '199708052015125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(618, '609', 'Abdulloh Machin, dr., Sp.S.', '197706152009041004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(619, '610', 'Ryobi Rizki Kurniawan', '199405012015125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(620, '611', 'Septian Angga Priyo Laksono', '198909152015125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(621, '612', 'Adi Wasis Prakosa, dr', '198809172014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(622, '613', 'Agus Arianto', '199308182014015101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(623, '614', 'Alfian Nur Rosyid, dr., Sp.P.', '198203292015041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(624, '615', 'Anang Wijaya, A.Md., Kep', '198801022015041003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(625, '616', 'Andini Dyah Sitawati, dr., Sp.KJ.', '198502142015042002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(626, '617', 'Annisa Qurniawati, A.Md., Kep', '199106292015042002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(627, '618', 'Arga Patrianagara, dr., Sp.B', '198312152015041003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(628, '619', 'Arif Prasetyo, A.Md., Kep', '199405252015041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(629, '620', 'Arina Dery Puspitasari, S.Farm., MFK, Apt.', '198504212015042002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(630, '621', 'Ario Imandiri, dr.', '198202142015043101', 'rs', 5, '3a2d7564baee79182ebc7b65084aabd1'),
(631, '622', 'Abdul Mughni, Drs., Apt', '196311291990021001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(632, '623', 'Bayu Santoso, dr., Sp.KFR.', '194710121974121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(633, '624', 'Pramadhi Dharma', '198703012014035101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(634, '625', 'Burhan, SH', '196505201993031001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(635, '626', 'Anita Oktafia Ellya Shinta', '199410312014035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(636, '627', 'Henny Setyowati', '197803242014035201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(637, '628', 'Agus Subagio', '197308062014055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(638, '629', 'Husnul Ibad', '198611222014055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(639, '630', 'Kartika Devi Adrianti', '199106112014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(640, '631', 'Eva Bilqis Tafdila', '198901202014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(641, '632', 'Agus Asmik', '199507042014125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(642, '633', 'Putri Nawang Sari', '199103112014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(643, '634', 'Silma Kamila', '199107232014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(644, '635', 'Masfin Muhayanah', '198406112014055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(645, '636', 'Muhammad Sholichudin', '198705082014055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(646, '637', 'Shella Novi Permata Sari', '199011222014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(647, '638', 'Pamela Ernes', '199208052014055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(648, '639', 'Pamela Ridzky Amalia', '198903122014055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(649, '640', 'Randy Yusuf Pratama', '198901082014125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(650, '641', 'Rio Yanuar', '199001292014055101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(651, '642', 'Riza Kusumawati', '198910302014055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(652, '643', 'Rafika Nurmalasari', '199107092014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(653, '644', 'Shinta Mandasari', '199104062014055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(654, '645', 'Syahtya Dzulandita Magfiroh', '199007182014055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(655, '646', 'Nugroho Hari Santoso', '198903162014125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(656, '647', 'Tinok Ayu Putri Wardani', '199010132014055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(657, '648', 'Sukma Sekar Sari', '198712062014055201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(658, '649', 'Marcha Debby Saraswati', '199101312014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(659, '650', 'Nareswari Aulia Pramudita', '198303272014065201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(660, '651', 'Brihastami Sawitri, dr., Sp.KJ.', '198108032008122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(661, '652', 'Bagas Angger Prakoso', '199303262014085101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(662, '653', 'Dita Anjarsari', '199010292014085201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(663, '654', 'Depi Lestari', '199512092014105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(664, '655', 'Barmadisatrio, dr., Sp.B., Sp.BA.', '197708122009121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(665, '656', 'Eko Susilo Wahyu Suyono', '199110212014105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(666, '657', 'Muhammad Aminudin', '198808312014105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(667, '658', 'Heru Prastyo', '199007272014125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(668, '659', 'Bangun Mukti Ardi, A.Md', '198806042010121005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(669, '660', 'Saputro Sulistiyo', '198506142014105101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(670, '661', 'Siti Qomariyah', '198710012014105201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(671, '662', 'Heri Wibowo', '197803102014125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(672, '663', 'Beta Subakti Nata''atmadja, dr., Sp.BP.', '198010032010121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(673, '664', 'Bima Prima Yudha', '199310282014115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(674, '665', 'Kartika Dewi Purnamasari', '199008162014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(675, '666', 'Finarahmatika Yusuf', '199211122014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(676, '667', 'Aghisna Galih Purwitasari', '199103092014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(677, '668', 'Ermayulis', '199412042014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(678, '669', 'Ari Kusumandani', '199102032014115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(679, '670', 'Astrilia Diah Kartikasari', '199208212014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(680, '671', 'Bambang Irawan', '197606072014125101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(681, '672', 'Deny Nevitasari', '199012232014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(682, '673', 'Dian Wahyu Pribadi', '198911082014115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(683, '674', 'Diki Elfira Martianingsih', '199203072014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(684, '675', 'Evy Wulandari', '199001172014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(685, '676', 'Fatma Kurnia Sari', '198906112014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(686, '677', 'Iin Nurani Haerunnisa', '199003252014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(687, '678', 'Ika Fitriana', '199104152014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(688, '679', 'Ike Nur Rochimatul Qibtiyah', '199105302014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(689, '680', 'Nurul Ardlianawati', '199108042014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(690, '681', 'Priyo Febri Nurhartanto', '199102212014115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(691, '682', 'Risa Bisaroh', '199204032014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(692, '683', 'Tuhfatun Nayyirah', '198810272014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(693, '684', 'Ullan Ramadhona Rahmasari', '198904262014115201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(694, '685', 'Afifah Wardani', '199004062014125201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(695, '686', 'Cahyo Wibisono Nugroho, dr., Sp.PD.', '197609092010121004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(696, '687', 'Catur', '196401122007101001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(697, '688', 'Choirul Anwar, S.Kep., Ners', '198610232014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(698, '689', 'Dadang Rona Sasetyo, dr., Sp.OT.', '198110152014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(699, '690', 'Danang Himawan Limanto, dr., Sp.BTKV.', '198905122015041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(700, '691', 'Danang Rohadi, A.Md', '198512262010121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(701, '692', 'Dendhy Dwi Handana Sagita, S.Kep., Ners', '198812042012121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(702, '693', 'Dendhy Dwi Handana Sagita, S.Kep., Ners', '198812042012121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(703, '694', 'Devi Rahma Sofia, S.Kep., Ners', '198608192010122006', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(704, '695', 'Devina Nawangsih, S.Kep., Ners', '198810182014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(705, '696', 'Dewi Purnama Sari, S.Kep., Ners', '198406142009122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(706, '697', 'Dewi Wara Shinta, S.FARM., MFK., Apt', '198510182008122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(707, '698', 'Diah Puspita Rini, dr., Sp.PK.', '197905012014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(708, '699', 'Diah Sukmawati Pangarsih, S.Kep., Ners', '198810172012122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(709, '700', 'Diana Novalina, A.Md.Kep', '198803172015042004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(710, '701', 'Diana Puji Herasari, S.Keb., Bd', '198208172014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(711, '702', 'Dimas Prasetianto W., drg', '198805312014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(712, '703', 'Dinda Monika Nusantara Putri, S.Farm.,MFK, Apt.', '198804012015042002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(713, '704', 'Ditaruni Asrina Utami, dr., Sp.KFR', '198304172015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(714, '705', 'Achmad Chusnu Romdhoni, Dr., dr., Sp.THT.', '197609022008011009', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(715, '705', 'Achmad Chusnu Romdhoni, Dr., dr., Sp.THT.', '197609022008011009', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(716, '706', 'Afif Nurul Hidayati, Dr., dr., Sp.KK .', '196908152016016201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(717, '707', 'Anggraini Dwi Sensusiati, Dr., dr., Sp.Rad.', '196109121989032001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(718, '708', 'Budi Suprapti, Dr., M.Si., Apt', '196111141987012001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(719, '709', 'Ernawati, Dr., dr., Sp.OG(K).', '197707162008012013', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(720, '710', 'Ernie Maduratna, Dr., drg., M.Kes., Sp.Perio(K).', '196602121992032001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(721, '711', 'Hamzah, Dr., dr., Sp.An., KNA', '195607232016016101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(722, '712', 'Imam Subadi, Dr., dr., Sp.KFR.', '196104041989031002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(723, '713', 'Ira Widjiastuti, Dr., drg., M.Kes., Sp.KG(K).', '196305141988032002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(724, '714', 'Toetik Aryani, Dra., M.Si.', '196104111989032001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(725, '715', 'Didik Hasmono, Drs., MS.', '195809111986011001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(726, '716', 'Junaidi, Drs.', '196801041987021001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(727, '717', 'Dwi Cahya Maharani, S.Kep., Ners', '198608062012122001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(728, '718', 'Dwi Suyanti, A.Md.,Kep', '198801172015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(729, '719', 'Effita Piscesiana, S.Kep., Ners', '198603022009122007', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(730, '720', 'Eko Budi Koendori, dr., Sp.MK.', '196409041992031004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(731, '721', 'Elita Novriana Enisa, S.Kep., Ners', '198702152010122005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(732, '722', 'Emi Widiastuti, S.Kep., Ners', '198910072012122005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(733, '723', 'Eni Puji Lestari, S.Kep., Ners', '198908092012122001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(734, '724', 'Enny Zuraida, dr. Sp.A.', '197905062010122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(735, '725', 'Eny Widyaningrum, A.Md', '197808022009122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(736, '726', 'Erika Marfiani, dr., Sp.PD', '198408312014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(737, '727', 'Erreza Rahardiansyah, dr., Sp.OT.', '198408112010121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(738, '728', 'Evy Dwi Rahmawati, S.Kep., Ners', '198711162012122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(739, '729', 'Fauziah Firasanti, S.Kep., Ners', '198908282014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(740, '730', 'Fidiana, dr., Sp.S.', '198110052010122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(741, '731', 'Fikri Rizaldi, dr., Sp.U.', '198302092010121004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(742, '732', 'Fikri Rizaldi, dr., Sp.U.', '198302092010121004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(743, '733', 'Firman Setiawan, dr., Sp.MK.', '198511022014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(744, '734', 'Frida Syamsiana, S.Keb., Bd', '199002222014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(745, '735', 'Hanna Dyahferi Anomsari, dr., Sp.A.', '197902022014042003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(746, '736', 'Haris Widodo, S.Kep., Ners', '198011202010121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(747, '737', 'Hendra Kurnia Rakhma, S.Kep., Ners', '198605102010121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(748, '738', 'Hendri Siswanto, A.Md', '198704102010121005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(749, '739', 'Hendri Susilo, dr., Sp.JP.', '198710012012121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(750, '740', 'Hengki Fasisa, A.Md', '198703112010121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(751, '741', 'Herdiani Sulistyo Putri, dr., Sp.An.', '198302142010122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(752, '742', 'Herley Windho Setiawan, dr.', '198503232010121006', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(753, '743', 'I Sanny Prakosa Wardhana, S.Psi., Psikolog.', '197606202002121014', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(754, '744', 'Ika Nursetyo Palupi, A.Md', '198412302010122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(755, '745', 'Imam Safari Azhar, drg., M.Kes', '198905222014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(756, '746', 'Imam Safari Azhar, drg., M.Kes', '198905222014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(757, '747', 'Indah Rahmawati Eka Putri, A.Md', '198611082010122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(758, '748', 'Indra Mulyawan, drg., Sp.BMM', '198412292014041002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(759, '749', 'Indri Lakhsmi Putri, dr., Sp.BP-RE.', '198311112010122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(760, '750', 'Irma Firdiani Wahyuningtias, S.Kep., Ners', '198806042010122007', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(761, '751', 'Irwanto, dr., Sp.A.', '196502272016016101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(762, '752', 'Ismu Nugroho, dr., Sp.B.', '198105222010121005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(763, '753', 'Ismulawati Kusumaningrum, Dra', '196310122006042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(764, '754', 'Ita Maulidiawati, S.Kep., Ners', '198611142010122006', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(765, '755', 'Ita Ratnasari', '198702242010122006', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(766, '756', 'Izzatul Fithriyah, dr., Sp.KJ.', '198506222010122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(767, '757', 'Jimmy Yanuar Annas, dr., Sp.OG.', '197701202008011009', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(768, '758', 'Kartika Nurhayati, S.Kep., Ners', '198808152014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(769, '759', 'Khanisyah Erza Gumilar, dr., Sp.OG.', '198408052015041002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(770, '759', 'Khanisyah Erza Gumilar, dr., Sp.OG.', '198408052015041002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(771, '760', 'Kusmiyati, A.Md., Kep', '198505172015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(772, '761', 'Laily Hidayati, SKM', '198605142009122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(773, '762', 'Lenny Octavia, dr.', '198710152012122001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(774, '763', 'Lila Ayu Putri Sageta, A.Md.,Kep', '199206272015042002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(775, '764', 'Linda Sutrisno, dr', '198202282010122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(776, '765', 'Linda Sutrisno, dr', '198202282010122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(777, '766', 'Lucky Andriyanto, dr., Sp.An.', '197902012010121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(778, '767', 'M. Ayodhia Soebadi, dr., Sp.U.', '198011152010121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(779, '768', 'M. Djoko Soehartono, SE., SH., MM', '196312071984031001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(780, '769', 'M. Ilham Aldika Akbar, dr., Sp.OG.', '198201182009121004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(781, '770', 'Mahardian Rahmadi, S.SI., M.Sc., Apt., PhD.', '198103142005011002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(782, '771', 'Maitri Anindita, dr., Sp.M.', '198208062015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(783, '772', 'Manggala Pasca Wardhana, dr., Sp.OG.', '198411202015041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(784, '773', 'Mareta Rindang Andarsari, S.Farm., MFK., Apt.', '199005242014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(785, '774', 'Maria Al Qibtiyah', '198703112010122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(786, '775', 'Maria Nor Rachmawati, A.Md', '198512282010122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(787, '776', 'Medhi Denisa Alinda, dr., Sp.KK.', '198412112014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(788, '777', 'Meyta Dwi Yunitasari, S.Kep., Ners', '198905292014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(789, '778', 'Mochamad Arifin, S.Si', '198211192009121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(790, '779', 'Mohamad Nurdin Zuhri, dr., Sp.M.', '198103042010121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(791, '780', 'Muh Aziiz Sukma Wardana', '198601162010121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(792, '781', 'Muhammad Ardian Cahya Laksana, dr., Sp.OG., M.Kes.', '197409022008121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(793, '782', 'Muhammad Miftahussurur., dr., Sp.PD.', '197909292008121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(794, '783', 'Muhammad Noor Diansyah, dr., Sp.PD.', '197912022010121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(795, '784', 'Muhammad Robiul Fuadi, dr., Sp.PK.', '197912262010121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(796, '785', 'Muhammad Syamsul Hidayat, S.Kep., Ners., M.Kep', '198712022012121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(797, '786', 'Muhammad Yusuf., dr., Sp.JP., FIHA., FESC.', '197905142008121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(798, '787', 'Musofa Rusli., dr., Sp.PD., K-PTI.', '197205292009121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(799, '788', 'Mutiara Rizky Hayati, dr., Sp.PD.', '198311072012122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(800, '789', 'Mutiara Rizky Hayati, dr., Sp.PD.', '198311072012122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(801, '790', 'Nanda Aulya Ramadhan, dr', '199004232014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(802, '791', 'Neurinda Permata Kusumastuti, dr., Sp.A.', '197904122010122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(803, '792', 'Nia Dyah Rahmiati, dr., Sp.JP.', '198410182015042002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(804, '793', 'Niko Azhari Hidayat, dr., Sp.BTKV.', '198003312010121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(805, '794', 'Nila Kurniasari, dr., Sp.PA.', '198101232006042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(806, '795', 'Nily Sulistyorini, dr., Sp.F.', '198204152009122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(807, '796', 'Nina Yaroh Ubaidiyah, S.Kep., Ners', '198404122010122005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(808, '797', 'Nissa Aruming Sila, S.Kep., Ners', '198805292010122005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(809, '798', 'Novianti Rizky Reza, dr., Sp.KK.', '198411182015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(810, '799', 'Nur Fauzi Hamidi, S.Farm., Apt', '198509282010121004', 'rsunair2019', 6, 'fecc334fff1969b525867af58cd4b52d'),
(811, '800', 'Nur Sulastri, dr., Sp.KFR.', '198211142012122003', 'rsunair2019', 4, 'fecc334fff1969b525867af58cd4b52d'),
(812, '801', 'Nurul Alviana, S.Keb., Bd', '198812242014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(813, '802', 'Nurul Fatimah, A.Md', '199103072015042003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(814, '803', 'Nurul Kamariyah S., S.Kep., Ners', '198806292012122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(815, '804', 'Patricia Maria Kurniawati, dr., Sp.KFR.', '196211211989032003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(816, '805', 'Pepy Dwi Endaswari, dr., Sp.MK ', '198402042008122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(817, '806', 'Pradana Zaky Romadhon, dr., Sp.PD.', '198405292014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(818, '807', 'Prastuti Asta W., dr., Sp.P.', '197808172008122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(819, '808', 'Prieza Ferdania Choirun Nisa, S.Kep., Ners', '198804172012122001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(820, '809', 'Prihatma Kriswidyatomo, dr., Sp.An.', '198207092012121004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(821, '810', 'Puguh Setyo Nugroho, dr., Sp.THT-KL.', '197911232010121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(822, '811', 'Pungky Mulawardhana, dr., Sp.OG.', '198106032009121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(823, '812', 'Purwaningsih, S.Kp., M.Kes', '196611212000032001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(824, '813', 'Rahana Shofiya, A.Md., Kep', '199103062015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(825, '814', 'Rahmania Kemala Dewi, dr., Sp.F.', '198501112010122005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(826, '815', 'Rahmatul Fitriyah, S.Kep., Ners', '198506092009122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(827, '816', 'Ratu Izza Auwah Mairo, S.Kep., Ners', '198612062010122005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(828, '817', 'Reiska Kumala Bhakti, drg', '199105012014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(829, '818', 'Retno Muji Rahayu, S.Kep., Ners', '198603082010122008', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(830, '819', 'Ricky Wibowo, dr., Sp.B.', '198012212015041002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(831, '820', 'Rino Andriya., dr., Sp.OG.', '198207072012121004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(832, '821', 'Rizki Dwi Fitriana, S.Kep., Ners', '198905052012122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(833, '822', 'Rizky Praditiwi Ajeng Gayatri, SKM', '198505072009122005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(834, '823', 'Robby Nurhariansyah, dr., Sp.A.', '198302272012121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(835, '824', 'Rosa Falerina, dr., Sp.THT-KL.', '198210052015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(836, '825', 'Samsul Arifin, A.Md', '199309102015041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(837, '826', 'Sartika Wulandari, S.Kep., Ns., M.Kep', '198412222009122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(838, '827', 'Satriyo Dwi Suryantoro, dr., Sp.PD.', '198401272014041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(839, '828', 'Setyawanti, S.Kep., Ners', '198906282014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(840, '829', 'Shanti Dhamaiyanti, A.Md., Kep', '199304052015042002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(841, '830', 'Sita Setyowatie, dr., Sp.S.', '198407112015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(842, '831', 'Siti Nur Fuanah, A.Md., Rad.', '198503062009122005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(843, '832', 'Siti Nur Imamah, S.Kep., Ners', '198905222012122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(844, '833', 'Sonny Hadi Wijaya, dr', '198110302012121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(845, '834', 'Sri Purwanti, S.Kep., Ners', '198609032009122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(846, '835', 'Sri Setyorini, dr', '198503122010122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(847, '836', 'Sundawan Priyo Seputra, A.Md. Kep', '198603042010121004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(848, '837', 'Suroso Wibowo, A.Md', '197911102010121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(849, '838', 'Tedy Apriawan, dr., Sp.BS.', '198104022015041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(850, '839', 'Tito Aditya Sanjaya, A.Md', '199401232015041001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(851, '840', 'Tri Asih Imro''ati, dr., Sp.PD., FINASIM.', '197711152003122007', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(852, '841', 'Tri Pudy Asmarawati., dr., Sp.PD.', '198110192015042002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(853, '842', 'Wahyu Endah Prabawati, dr., Sp.M.', '198705142010122004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(854, '843', 'Wahyu Putri Sulistyaning, S.Kep., Ners', '198103102012122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(855, '844', 'Wardah Rahmatul F., dr., Sp.S.', '197905192009122003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(856, '845', 'Widia Yuniarti, S.Kep., Ners', '198706212014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(857, '846', 'Wikan Purwihantoro Sudarmaji, S.Kep', '198408142009121008', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(858, '847', 'Wiwiek Indriyani Maskoep, dr., Sp.PD., FINASIM.', '195809252016016201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(859, '848', 'Wiwin Is Effendi, dr., Sp.P.', '197803132008121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(860, '849', 'Wiwin Pratiwi, S.Kep., Ners', '198608262014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(861, '850', 'Yeti Bangun Lestari, S.Keb., Bd', '198508212014042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(862, '851', 'Yevi Dwi Lestari, S.Kep., Ners', '198606182012122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(863, '852', 'Yogo Apriyanto, S.Kep., Ners', '198503262010121002', 'rsunair2019', 3, 'fecc334fff1969b525867af58cd4b52d'),
(864, '853', 'Yoppie Prim Avidar, dr., Sp.An.', '197404172006041003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(865, '854', 'Yudhi Adrianto, dr., Sp.S.', '198110032010121004', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(866, '855', 'Yudith Dian Prawitri, dr., Sp.KFR.', '198306102014042003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(867, '856', 'Yuni Anggraini Manurung, A.Md., Kep', '199402052015042001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(868, '857', 'Yunus, dr., Sp.OT.', '198301102010121003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(869, '858', 'Zaenal Abidin, S.Kep., Ners', '198608292010121005', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(870, '859', 'Zamrotul Izzah, S.FARM., M.Sc., Apt', '198505182008122002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(871, '860', 'Zulfayandi Pawanis, dr.', '198804162012121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(872, '861', 'Erika Soebakti, dr., Sp.Rad.', '198604102017017201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(873, '862', 'Diana Suteja, SE., MM., Ak., Ca', '197503052016123201', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(874, '863', 'Muhammad Amin, Prof., Dr., dr., Sp.P(K).', '194708101974121002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(875, '864', 'Suharto, Prof., Dr., dr., M.Sc., DTM&H., Sp.PD-KTI.', '194708121974121001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(876, '865', 'Bambang Wiirdjatmadi, Prof., Dr., dr., Sp.GK., MS., MCN., PhD.', '194903201977031002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(877, '866', 'Budi Susetyo Pikir, Prof., Dr., dr., Sp.JP.', '194908081977031002', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(878, '867', 'Kuntaman, Prof., Dr., dr., MS., SP.MK(K).', '195107071979031003', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(879, '868', 'Ami Ashariati Prayoga, Prof., Dr., dr., Sp.PD., KHOM.', '195409301981112001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(880, '869', 'Nasronudin, Prof., Dr., dr., Sp.PD., K-PTI., FINASIM.', '195611031984031001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(881, '870', 'Ni Made Mertaniasih, Prof., Dr., dr., Sp.MK., M.Kes.', '195703071984032001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(882, '871', 'Jusak Nugraha, Prof., Dr., dr., MS., Sp.PK(K).', '195602141985021001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(883, '872', 'Diah Savitri Ernawati, Prof., Dr., drg., Sp.PM., M.Si.', '196004291985032001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(884, '873', 'Mohchammad Thaha, Prof., Dr., dr., Sp.PD., KGH., PhD.', '197205081999031001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d');
INSERT INTO `tbl_pengguna` (`id_pengguna`, `id_pegawai`, `nama_pegawai`, `nip_nik`, `pass`, `level`, `password`) VALUES
(885, '874', 'Lila Dewata Azinar, Prof., Dr., dr., Sp.KFR.', '194012062016016101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(886, '875', 'Soegeng Soegijanto, Prof., Dr., dr., Sp.A(K)., DTM&H.', '194104162016056101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(887, '876', 'Sinta Widiasti', '139121710', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(888, '877', 'Pebri Primadani Sasmito', '199302262018115101', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(889, '878', 'Ismail Setiawan', '139121512', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d'),
(890, '879', 'Djoko Agus Purwanto, Prof., Dr., Apt., M.Si', '195908051987011001', 'rsunair2019', 5, 'fecc334fff1969b525867af58cd4b52d');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penilaian`
--

CREATE TABLE `tbl_penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `keterangan_penilaian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penilaian`
--

INSERT INTO `tbl_penilaian` (`id_penilaian`, `id_bulan`, `tahun`, `keterangan_penilaian`) VALUES
(1, 5, 2019, 'Penilaian Kinerja Bulan Mei 2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ptkp`
--

CREATE TABLE `tbl_ptkp` (
  `id_ptkp` int(11) NOT NULL,
  `kode_ptkp` varchar(11) NOT NULL,
  `nominal_ptkp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ptkp`
--

INSERT INTO `tbl_ptkp` (`id_ptkp`, `kode_ptkp`, `nominal_ptkp`) VALUES
(1, 'TK/0', '54000000'),
(2, 'K/0', '58500000'),
(3, 'K/1', '63000000'),
(4, 'K/2', '67500000'),
(5, 'K/3', '72000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_remunerasi`
--

CREATE TABLE `tbl_remunerasi` (
  `id_remunerasi` int(11) NOT NULL,
  `nama_remunerasi` varchar(255) NOT NULL,
  `id_bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal_uang` varchar(255) NOT NULL,
  `pir_jabatan` varchar(255) NOT NULL,
  `update_pir` int(11) NOT NULL,
  `created` date NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_remunerasi`
--

INSERT INTO `tbl_remunerasi` (`id_remunerasi`, `nama_remunerasi`, `id_bulan`, `tahun`, `nominal_uang`, `pir_jabatan`, `update_pir`, `created`, `id_status`) VALUES
(1, 'remunerasi april 2019', 4, 2019, '100000000', '0', 0, '2019-04-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `nama_status`) VALUES
(1, 'Aktif'),
(2, 'Tidak aktif'),
(3, 'Mutasi'),
(4, 'Meninggal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_kepegawaian`
--

CREATE TABLE `tbl_status_kepegawaian` (
  `id_status_kepegawaian` int(11) NOT NULL,
  `nama_status_kepegawaian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status_kepegawaian`
--

INSERT INTO `tbl_status_kepegawaian` (`id_status_kepegawaian`, `nama_status_kepegawaian`) VALUES
(1, 'PNS'),
(2, 'Pegawai Tidak Tetap'),
(3, 'Pegawai Tetap Non PNS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_pernikahan`
--

CREATE TABLE `tbl_status_pernikahan` (
  `id_status_pernikahan` int(11) NOT NULL,
  `status_pernikahan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status_pernikahan`
--

INSERT INTO `tbl_status_pernikahan` (`id_status_pernikahan`, `status_pernikahan`) VALUES
(1, 'Belum Menikah'),
(2, 'Menikah'),
(3, 'Cerai Hidup'),
(4, 'Cerai Mati');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_str`
--

CREATE TABLE `tbl_str` (
  `id_str` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `no_registrasi` varchar(255) NOT NULL,
  `no_serkom` varchar(255) NOT NULL,
  `tgl_str_aktif` date NOT NULL,
  `tgl_str_akhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_str`
--

INSERT INTO `tbl_str` (`id_str`, `id_pegawai`, `no_registrasi`, `no_serkom`, `tgl_str_aktif`, `tgl_str_akhir`) VALUES
(2, 514, 'P2T/16248/03.02/01/XII/2015	', '0169/IV/MTKP-JATIM/UK-P/S1/XI/2010	', '2015-12-04', '2020-11-01'),
(3, 224, 'P2T/1388/03.02/01/II/2016	', '400/001004/13/NS/2015	', '2016-02-02', '2021-12-24'),
(4, 235, '160151118-2275453', '4050161447320170027', '2018-05-22', '2023-10-06'),
(5, 592, '160171117-2047151', '-', '2017-02-02', '2022-02-02'),
(6, 433, '160171116-1192556', '342/001004/13/Ns/2015', '2016-06-14', '2021-09-12'),
(7, 353, '160152118-2221342', '4050161440120150001', '2018-01-30', '2023-10-01'),
(8, 667, '160172115-1060680', '187/001004/13/Ns/2015', '2015-11-11', '2020-03-09'),
(9, 296, '160172116-1192596', '334/001004/13/Ns/2015', '2018-06-14', '2021-08-30'),
(10, 210, 'P2T/7292/03.02/X/2016', '-', '2016-10-27', '2021-08-16'),
(11, 51, 'P2T/836/03.02/01/1/2018', '3440441440120170026', '2018-01-23', '2023-03-18'),
(12, 234, '160151117-2140837', '0731321440120170030', '2017-10-07', '2022-01-06'),
(13, 48, 'P2T/349/03.02/01/I/2019', '0010041490120180027', '2019-01-31', '2024-04-02'),
(14, 519, '160171117-1441863', '-', '2017-10-14', '2022-02-04'),
(15, 441, '160172116-1192591', '329/001004/13/Ns/2015', '2016-06-14', '2021-05-09'),
(16, 603, '1601721172035866', '0201/V/MTKP-JATIM/UK-P/S1/XI/2012', '2017-02-09', '2022-07-07'),
(17, 449, 'P2T/1049/03.02/01/I/2016', '363/001004/13/Ns/2015', '2016-01-21', '2021-02-17'),
(18, 617, 'P2T/1426/03.02/01/I/2014', '-', '2014-01-28', '2019-06-29'),
(19, 354, 'P2T/3810/03.02/01/VII/2018', '0010041490120170097', '2018-07-30', '2023-04-28'),
(20, 226, '1601511172028743', '4050161440120150003', '2017-09-22', '2022-09-22'),
(21, 619, '1601511171442234', '-', '2017-10-14', '2022-05-25'),
(22, 227, '1601711172122558', '0010041490120160113', '2017-09-14', '2022-05-30'),
(23, 447, 'P2T/6060/03.02/01/VI/2013', '0240/V/MTKP-JATIM/UK-P/S1/XI/2012', '2013-06-14', '2018-10-06'),
(24, 355, 'P2T/3715/03.02/01/VII/2018', '0010041490120171023', '2018-07-23', '2023-04-28'),
(25, 45, 'P2T/9338/03.02/01/XII/2016', '3440451440120160078', '2016-12-06', '2021-03-07'),
(26, 659, '160171118-1561127', '0010041490120170105', '2018-06-08', '2023-06-04'),
(27, 448, '160272118-1530381', '327/PMT.IBI/X/2014', '2018-02-22', '2023-01-09'),
(28, 245, 'P2T/7817/03.02/02/XI/2016', '1821/II/MTKP-JATIM/UK-P/DIII/XI/2011', '2016-10-11', '2021-04-25'),
(29, 688, '1601711172035858', '-', '2017-02-09', '2022-10-23'),
(30, 465, '160252115-0993084', 'DM.06.01/I.4/1212.12/2015', '2015-06-11', '2020-01-20'),
(31, 196, '1601721181566037', '0010041490120170112', '2018-06-23', '2023-11-17'),
(32, 691, '160151218-2294548', '1921/DPW.PPNI/r/k.s/ii/201', '2018-04-18', '2023-12-26'),
(33, 274, '1602721181530329', '468/001004/01/Bd/2017', '2018-02-22', '2023-07-12'),
(34, 484, '1601721161192626', '323/001004/13/Ns./2015', '2016-06-14', '2021-03-14'),
(35, 672, '1602721150923260', '188/0113/01/bd/2014', '2015-03-06', '2020-12-23'),
(36, 393, 'P2T/17450/03.02/01/XII/2015', '559/STK/UN.10.7/AK/2015', '2015-12-30', '2020-12-12'),
(37, 452, '1602522182305341', '6293/Sek.pdibi/iii/2018', '2018-12-15', '2023-12-15'),
(38, 266, 'P2T/3611/03.02/01/VII/2018', '0010041490120170118', '2018-07-16', '2023-11-26'),
(39, 694, '160172117-2059167', '0197/IV/MTKP-JATIM/UK-P/S1/XI/2010', '2017-04-08', '2022-08-19'),
(40, 695, '1601721172035861', '0203/V/MTKP-JATIM/UK-P/S1/XI/2012', '2017-02-09', '2022-10-18'),
(41, 222, 'P2T/19961/03.02/01/XII/2016', '4050161440120150091', '2016-09-14', '2021-02-10'),
(42, 333, 'P2T/8710/03.02/01/X/2017', '0010041490120170017', '2017-10-18', '2022-06-10'),
(43, 486, '160252217-2127401', '-', '2017-04-20', '2022-04-20'),
(44, 699, '160172117-2134254', '2098/II/MTKP-JATIM/UK-P/S1/XI/2011', '2017-10-03', '2022-10-17'),
(45, 487, '160172116-1192602', '324/001004/13/Ns/2015', '2016-06-14', '2021-03-27'),
(46, 184, '160272118-1530335', '474/001004/01/Bd/2017', '2018-02-22', '2023-01-30'),
(47, 674, 'P2T/2965/03.02/01/III/2015', '222/STK/UN.10.7/AK/2014', '2015-03-09', '2020-03-07'),
(48, 243, 'P2T/7069/03.02/01/VIII/2017', '0010041490120170019', '2017-08-09', '2022-06-30'),
(49, 395, 'P2T/5066/03.02/01/V/2012', '1297/II/MTKP-JATIM/UK-P/DIII/XI/2011', '2012-05-14', '2017-05-16'),
(50, 242, '1601711182305857', '0705.4/see/ini.3.au/f/2015', '2018-05-11', '2023-05-19'),
(51, 717, 'P2T/10621/03.02/02XII/2014', '-', '2014-12-19', '2019-08-06'),
(52, 425, 'P2T/704/03.02/01/I/2016', 'DM.06.01/I.4/1516.70/2015', '2016-01-14', '2021-12-03'),
(53, 718, '160172115-1028200', '103/0113/13/Ns/2014', '2015-09-01', '2020-01-17'),
(54, 494, '1601721161192575', '0470747', '2016-06-14', '2021-06-14'),
(55, 719, 'P2T/6765/03.02/01/V /2015', '-', '2015-05-25', '2020-03-02'),
(56, 495, 'P2T/4650/03.02/01/III/2015', 'IVa/140/SK-KS-UJIKOM/III/2015', '2015-03-26', '2020-01-10'),
(57, 169, '1602721161093117', '281/001004/01/Bd/2015', '2016-01-11', '2021-12-16'),
(58, 723, '160172117-2047158', '0214/V/MTKP-JATIM/UK-P/S1/XI/2012', '2012-12-28', '2020-08-09'),
(59, 457, '160152117-2047137', '-', '2017-03-07', '2022-01-25'),
(60, 432, '160172114-0768778', '822/0113/13/Ns/2013', '2014-08-07', '2019-10-25'),
(61, 631, '1601721140768784', '828/0113/13/Ns/2013', '2014-01-20', '2019-01-20'),
(62, 35, '1601521161162785', '3440471440120150009', '2016-05-09', '2021-03-28'),
(63, 728, '160172117-2059169', '-', '2017-04-08', '2022-11-16'),
(64, 675, '1602622182359321', '7988/Sek.pdibi/ix/2018', '2018-09-26', '2023-01-17'),
(65, 341, '1602721150923237', '220/0113/01/BD/2014', '2015-04-06', '2020-04-07'),
(66, 263, 'P2T/3802/03.02/01/VII/2018', '0010041490120170140', '2018-07-30', '2023-02-02'),
(67, 262, 'P2T/3972/03.02/01/VIII/2018', '0010041490120170141', '2018-08-06', '2023-11-01'),
(68, 676, '16026211406900523', '167/0113/01/Bd/2013', '2014-09-21', '2019-06-11'),
(69, 505, 'P2T/1760/03.02/01/II/2016', '379/001004/13/Ns/2015', '2016-02-15', '2021-06-14'),
(70, 164, 'P2T/2316/03.02/01/II/2017', '0010191490120160064', '2017-02-22', '2018-05-08'),
(71, 467, 'P2T/2846/0302/02/III/2016', '-', '2016-03-31', '2021-06-07'),
(72, 734, '160262114-0690508', '160262114-0690508', '2014-07-21', '2019-02-22'),
(73, 273, 'P2T/3943/03.02/01VIII/2018', '0010041490120170147', '2018-08-06', '2023-03-13'),
(74, 509, 'P2T/3625/03.01/01/01.III/2015', 'DM.06.01/I.4/1214.14/2015', '2018-03-24', '2020-03-18'),
(75, 232, 'P2T/2531/03.02/01/II/2014', '-', '2014-02-13', '2019-10-12'),
(76, 233, '160172118-1566807', '0010041490120170152', '2018-07-26', '2023-07-25'),
(77, 261, 'P2T/4029/03.02/01/VIII/2018', '0010041490120170153', '2018-08-10', '2023-11-19'),
(78, 736, '160171117-2058661', '-', '2017-04-07', '2022-11-20'),
(79, 658, '160171118-2391562', '036/0113/13/Ns/2014', '2018-11-26', '2023-07-27'),
(80, 518, '1602721151013943', '856/UB/PROFESI/2015', '2015-08-03', '2020-11-17'),
(81, 677, '1602621140690530', '036/PMT.IBI/I/2015', '2019-03-25', '2020-01-18'),
(82, 678, '1601721151060697', '204/001004/13/Ns/2015', '2015-03-15', '2020-04-15'),
(83, 744, '16 01 5 2 2 18-2294641', '1887/dpw.ppni/r/k.s/ii/2018', '2018-04-18', '2023-12-30'),
(84, 523, 'P2T/2494/03.02/01/III/2016', '354/001004/13/Ns/2015', '2016-03-11', '2021-08-24'),
(85, 679, '1602721150923201', '190/0113/01/Bd/2014', '2014-08-18', '2020-05-30'),
(86, 260, '1601721182404800', '0010041490120170160', '2018-12-17', '2023-04-04'),
(87, 356, 'P2T/3830/03.02/01/VII/2018', '0010041490120170161', '2018-07-31', '2023-04-18'),
(88, 313, 'P2T/275/03.03/01/XI/2016', '-', '2016-06-21', '2021-11-06'),
(89, 466, '1601721172047152', '-', '2017-03-07', '2022-03-08'),
(90, 259, '1601711182305888', '073133/04/13.024/NERS/2014', '2018-05-11', '2023-09-12'),
(91, 468, '1601721172051895', '160172117-2051895', '2017-03-12', '2022-03-17'),
(92, 150, 'P2T/5213/03.02/01/X/2018', '0710121490120180058', '2018-10-15', '2023-07-24'),
(93, 745, '160172117-1442236', '792/UB/FK/Ns/2010', '2017-10-14', '2022-11-14'),
(94, 272, 'p2T/3920/03.02/01/VIII/2018', '0010041490120170164', '2018-08-03', '2023-01-15'),
(95, 219, '150172116-2012873', '0010011490120160021', '2016-11-15', '2021-11-08'),
(96, 665, '1602721150923200', '196/0113/01/Bd/2014', '2015-03-06', '2020-08-16'),
(97, 469, 'P2T/7092/03.02/01/VI/2015', '049/0113/13/NS/2014', '2015-07-09', '2020-10-04'),
(98, 760, 'P2T/11094/0302/02/XII/2016', '-', '2016-12-30', '2021-05-17'),
(99, 136, '1601721181561128', '0010041490120170171', '2018-07-08', '2023-10-09'),
(100, 385, 'P2T/190/03.03/01/XI/2014', '-', '2014-11-17', '2019-04-26'),
(101, 135, '160172118-1560730', '0010041490120170184', '2018-06-08', '2023-10-25'),
(102, 407, '160172117-2048512', '0713/III/MTKP-JATIM/UK-P/S1/II/2012', '2017-03-07', '2022-08-17'),
(103, 763, '160152117-2051799', '035/UKOM/STIKESHAH/DIIIKEP/2015', '2017-06-27', '2022-06-27'),
(104, 346, '160172118-2350150', '0010041490120170176', '2018-08-24', '2023-11-29'),
(105, 131, '1601721182330585', '0010041490120170177', '2018-07-10', '2023-04-11'),
(106, 314, '160152117-2060059', '4050161447220160101', '2017-04-09', '2022-08-24'),
(107, 529, '1601721161192594', '326/001004/Ns/2015', '2015-08-04', '2021-08-24'),
(108, 129, '160172118-2245545', '0710791490120170052', '2018-02-23', '2023-07-28'),
(109, 128, 'P2T/285/03.02/01/I/2014', '-', '2014-01-09', '2019-08-30'),
(110, 500, '160272118-1564712', '55/0113/01.2/Bd/2012', '2018-06-23', '2023-05-20'),
(111, 276, 'P2T/318/03.02/01/I/2016', 'DM.06.01/1.4/10517.26/2015', '2016-01-08', '2021-05-29'),
(112, 470, '160172116-1190289', '0133/DHKom/Ns/2015', '2016-06-14', '2021-04-01'),
(113, 777, '1601721172059166', '0245/IV/MTKP-JATIM/UK-P/S1/XI/2012', '2017-04-08', '2022-05-29'),
(114, 357, 'P2T/3609/03.02/01/VII/2018', '0010041490120170190', '2018-07-16', '2023-05-02'),
(115, 531, '160171116-1192609', '346/001004/13/Ns/2016', '2016-06-14', '2021-10-20'),
(116, 271, 'P2T/3456/03.02/01/VII/2018', '0010041490120170193', '2018-07-04', '2023-06-18'),
(117, 409, 'P2T/7694/03.02/01/VII/2015', '178/001004/13/Ns/2015', '2015-07-10', '2020-09-18'),
(118, 240, '1601711182224710', '0010041490120170047', '2018-07-04', '2023-07-04'),
(119, 785, '160171117-2047154', '-', '2017-03-07', '2022-12-02'),
(120, 116, '1601721182323069', '0731271490120180059', '2018-06-08', '2023-08-09'),
(121, 543, '160172116-1192621', '410/001004/13/Ns/2015', '2016-06-14', '2021-06-06'),
(122, 318, 'P2T/263/03.03/01/XI/2016', '-', '2016-11-21', '2021-05-05'),
(123, 358, 'P2T/3999/03.02/01/VIII/2018', '0010041490120170204', '2018-08-09', '2023-02-03'),
(124, 347, '1601521172059644', '4050161440120150082', '2017-03-27', '2022-03-27'),
(125, 342, '1602721150923262', '191/0113/Bd/2014', '2015-03-06', '2020-10-10'),
(126, 218, '1601521182245346', '344044144012070081', '2018-02-21', '2023-08-09'),
(127, 796, 'P2T/11389/03.02/01/X/2015', '-', '2015-10-28', '2020-04-12'),
(128, 472, 'P2T/1809/03.02/01/II/2015', '-', '2015-02-23', '2020-01-02'),
(129, 270, 'P2T/3803/03.02/01/VII/2018', '0010041490120170206', '2018-07-30', '2023-01-08'),
(130, 797, '1601721172095616', '-', '2017-07-17', '2022-07-28'),
(131, 546, '160172116-1192561', '350/001004/13/Ns/2015', '2016-06-14', '2021-11-02'),
(132, 474, '1601721161196610', 'IV.a/129/SK-KS-UJIKOM/III/2015', '2016-06-14', '2021-11-20'),
(133, 113, 'P2T/3742/03.02/01/VII/2018', '1556/001004/13/NS./2017', '2018-07-25', '2023-11-16'),
(134, 18, '1601521181596385', '4050161447320180063', '2018-12-21', '2023-11-20'),
(135, 148, '1501711182277736', '0530441490120180010', '2018-03-27', '2023-03-06'),
(136, 142, '1601711182350120', '001004 1490120170165', '2018-08-24', '2023-10-26'),
(137, 552, 'P2T/1477/03.02/01/II/2016', '399/001004/13/Ns/2015', '2018-02-04', '2021-02-05'),
(138, 553, '1601721182350245', '2113/II/MTKP-JATIM/UK-PS1/XI/2011', '2018-08-24', '2023-10-12'),
(139, 556, '160152117-2122277', '4050161440120150058', '2017-09-14', '2022-12-22'),
(140, 801, '160262112-0692299', '309/PMT.IBI.X/2014', '2014-07-21', '2019-10-11'),
(141, 680, 'P2T/2966/03.02/01/III/2015', '172/STK/UN.10.7/AK/2014', '2015-03-09', '2020-08-04'),
(142, 557, 'P2T/1242/03.02/01/I/2016', '343/001004/13/Ns/2015', '2016-01-27', '2021-05-09'),
(143, 803, '1601721172027257', '672/0113/13/Ns/2012', '2017-01-25', '2022-06-28'),
(144, 109, 'P2T/7671/03.02/01/IX/2017', '0731301490120170181', '2019-06-03', '2019-06-01'),
(145, 411, '160171116-1151619', '286/001004/13/ns/2015', '2015-01-29', '2021-04-03'),
(146, 639, '160172117-2047148', '-', '2017-03-07', '2022-03-12'),
(147, 808, '1601721172027256', '2094/II/MTKP-JATIM/UK-P/S1/XI/2011', '1970-01-01', '2022-04-17'),
(148, 571, '160172116-1192610', '331/001004/13/Ns/2015', '2016-06-14', '2021-08-24'),
(149, 633, '160172115-1060701', '208/001004/13/Ns/2015', '2015-07-10', '2020-03-11'),
(150, 475, 'P2T/9947/03.02/01/XII/2012', '1505/V/MTKP-JATIM/UK-P/DIII/2012', '2012-12-05', '2017-10-04'),
(151, 321, '1601521172059539', '4050161447320160118', '2017-04-09', '2022-11-21'),
(152, 572, '160172116-1192546', '392/001004/13/Ns/2015', '2016-06-14', '2021-01-11'),
(153, 322, 'P2T/10508/03.02/01/XII/2016', '4050161447320160138', '2016-12-20', '2021-05-28'),
(154, 813, '1601522182222071', '8748/DPW.PPNI/R/K.S/IX/2017', '2018-01-30', '2023-03-06'),
(155, 476, '1601721162002239', '0731261490120160076', '2016-06-20', '2021-06-20'),
(156, 573, 'P2T/1209/03.02/01/I/2016', '407/001004/13/Ns/2015', '2016-01-27', '2021-06-30'),
(157, 278, '160151117-2047502', '-', '2017-03-07', '2022-08-04'),
(158, 815, '160172117-2048513', '-', '1970-01-01', '2022-06-09'),
(159, 640, '160171115-1060731', '231/001004/13/Ns/2015', '2015-11-11', '2020-01-08'),
(160, 574, 'P2T/439/03.02/01/1/2016', 'DM.06.01/I.4/10517.31/2015', '2016-01-11', '2021-10-27'),
(161, 582, 'P2T/6868/03.02/01/V/2015', '01.1.11.00651.A/A.Md Kep/2014', '2015-05-28', '2020-11-19'),
(162, 818, 'P2T/12382/03.02/02/XI/2015', '2011/I/MTKP-JATIM/UK-P/S1/II/2010', '2015-11-09', '2020-03-08'),
(163, 360, 'P2T/4006/03.02/01/VIII/2018', '0010041490120170231', '2018-08-09', '2023-03-26'),
(164, 323, 'P2T/1465/03.02/01/I/2017', '0010041490120160250', '2016-07-25', '2022-07-27'),
(165, 280, 'P2T/1192/03.02/01/I/2016', '330/001004/13/Ns/2015', '2016-01-26', '2021-05-03'),
(166, 641, 'P2T/6560/03.02/01/VI/2014', '030/0113/13/Ns/2014', '2014-06-25', '2019-01-29'),
(167, 477, '1601721162004420', '0010251490120160133', '2016-08-18', '2021-08-18'),
(168, 682, 'P2T/7619/03.02/01/VII/2015', '189/001004/13/Ns/2015', '2015-07-07', '2020-04-03'),
(169, 642, '1601721151028236', '140/0113/13/Ns?2014', '2015-09-01', '2020-10-30'),
(170, 821, '160172117-2035860', '0234/V/MTKP-JATIM/UK-P/S1/XI/2012', '2017-02-09', '2022-05-05'),
(171, 538, '1601721171442235', '671/0113/13/Ns./2012', '2017-10-14', '2022-03-26'),
(172, 8, '160272118181530400', '541/001004/01/Bd/2017', '2018-02-22', '2023-10-07'),
(173, 237, '160171117-2122585', '056/un25.1.1.14/sp/2015', '2017-09-14', '2022-02-12'),
(174, 825, '140151115-0967552', 'DM.03.02/I.01/461/2014.139', '2015-05-07', '2020-09-10'),
(175, 828, '160172117-2047156', '-', '2017-03-07', '2022-06-28'),
(176, 361, 'P2T/3904/03.02/01/VIII/2018', '0010041490120170240', '2018-08-03', '2023-08-24'),
(177, 829, '1301521150964581', '4050111440100025', '2015-05-06', '2020-04-05'),
(178, 644, 'P2T/3620/03.01/02/V/2017', '3', '2017-05-24', '2022-04-06'),
(179, 327, '160151117-2046927', '3440471440120160023', '2017-03-06', '2022-09-28'),
(180, 334, 'P2T/1973/03.02/01/ii/2017', '0010041490120160260', '2017-02-09', '2022-12-02'),
(181, 634, 'P2T/8599/03.02/01/VIII/2015', '192/STK/UN.10.7/AK/2014', '2015-08-21', '2020-07-23'),
(182, 291, 'P2T/1094/03.02/01/I/2016', '344/001004/13/Ns/2015', '2016-01-22', '2021-10-01'),
(183, 478, 'P2T/12293/03.01/01/XI/2015', '114/UNUSA/FKK-UKOM/Keb.2.5/XI/2015', '2015-08-07', '2020-04-22'),
(184, 832, '160172117-2027259', '0234/V/MTKP-JATIM/UK-P/S1/XI/2012', '2017-01-25', '2022-05-22'),
(185, 587, '1601721161192589', '371/001004/13/Ns/2015', '2016-06-14', '2021-11-29'),
(186, 7, 'P2T/982/03.02/01/I/2016', '4050161447320160063', '2016-01-20', '2021-03-02'),
(187, 328, '160172116-1192584', '418/001004/13/Ns/2015', '2015-08-04', '2021-01-02'),
(188, 836, '1601511172051593', '-', '2017-03-12', '2022-03-04'),
(189, 590, '160171117-1441862', '387/0437/09/Ns./2012', '2017-10-14', '2022-06-26'),
(190, 645, '160172114-0768770', '814/0113/13/Ns/2013', '2014-08-07', '2019-07-18'),
(191, 294, '1601711161192576', '360/001004/13/ns/2015', '2016-06-14', '2021-04-13'),
(192, 349, '160171118-2330575', '0010041490120170249', '2018-07-10', '2023-06-11'),
(193, 683, '1602721150923223', '015/PMT.IBI/I/2015', '2015-03-06', '2020-10-27'),
(194, 684, '1602621140690503', '147/0113/01/Bd/2013', '2013-08-26', '2019-04-26'),
(195, 248, 'P2T/3842/03.02/01/VIII/2018', '0010041490120170254', '2018-08-01', '2023-10-31'),
(196, 843, '160172117-2035863', '-', '2017-02-09', '2022-03-10'),
(197, 593, 'P2T/14665/03.02/01/XI/2015', '49/NERS/SGH/X/2015', '2015-11-26', '2020-05-07'),
(198, 845, '1601721172035864', '2065/II/MTKP-JATIM/UK-P/S1/XI/2011', '2017-02-09', '2022-06-21'),
(199, 558, '160171117-2051849', '-', '2017-03-12', '2022-12-31'),
(200, 849, '160172117-2047150', '-', '2017-03-07', '2022-08-26'),
(201, 295, '160172117-2035869', '0010041490120160173', '2017-02-09', '2022-08-12'),
(202, 851, 'P2T/15452/03.02/02/XII/2015', '0164/IV/MTKPJATIM/UK-P/S1/XI/2010', '2015-12-03', '2020-06-18'),
(203, 852, '160171117-2051888', '-', '2017-03-12', '2022-03-12'),
(204, 595, 'P2T/1410/03.02/01/II/2016', '402/001004/13/NS/2015', '2016-02-03', '2021-01-16'),
(205, 351, 'P2T/7865/03.01/01/XI/2014', '384/PMT.IBI/XII/2017', '2014-11-06', '2019-07-16'),
(206, 596, '160152117-2122288', '4050161447320160028', '2017-09-14', '2022-07-10'),
(207, 343, '1602721150923268', '199/0113/01/Bd/2014', '2015-03-06', '2020-07-24'),
(208, 856, '0201521161180570', '0945/STIKes-IM/IX/2015/e', '2016-05-30', '2021-02-05'),
(209, 352, '1602721161093147', '311/001004/01/Bd/2015', '2016-01-11', '2021-06-21'),
(210, 331, 'P2T/1299/03.02/01/I/2017', '0010041490120160279', '2017-01-25', '2022-06-07'),
(211, 481, '160262114-0690499', '143/0113/01/Bd/2013', '2014-07-21', '2019-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `id_unit` int(11) NOT NULL,
  `nama_unit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`id_unit`, `nama_unit`) VALUES
(1, 'Akuntansi'),
(2, 'Aset'),
(3, 'Asuransi'),
(4, 'Casemix'),
(5, 'CSSD'),
(6, 'Customer Care'),
(7, 'Endoskopi'),
(8, 'Farmasi ICU'),
(9, 'Farmasi IGD'),
(10, 'Farmasi Logistik'),
(11, 'Farmasi OK'),
(12, 'Farmasi Rawat Inap'),
(13, 'Farmasi Rawat Jalan'),
(14, 'Gizi'),
(15, 'Hemodialisis'),
(16, 'ICU/ICCU'),
(17, 'IGD'),
(18, 'IPM'),
(19, 'IPS'),
(20, 'IRNA 2'),
(21, 'IRNA 3'),
(22, 'IRNA 4'),
(23, 'IRNA 5 Obgyn'),
(24, 'IRNA 5 Pediatri'),
(25, 'IRNA 6'),
(26, 'IRNA 7'),
(27, 'ITI'),
(28, 'Keuangan'),
(29, 'Laboratorium'),
(30, 'Laundry'),
(31, 'Manajemen'),
(32, 'NICU/PICU'),
(33, 'OK'),
(34, 'Marketing'),
(35, 'Pengadaan'),
(36, 'Poli Rawat Jalan'),
(37, 'Radiologi'),
(38, 'Rehab Medik'),
(39, 'Rekam Medis'),
(40, 'Sanitasi'),
(41, 'SPI'),
(42, 'VK'),
(43, 'SDM'),
(44, 'Umum dan Rumah Tangga'),
(45, 'Cath Lab'),
(46, 'Unit/Bagian Lainnya'),
(48, 'RSKI'),
(49, 'Poli VIP / MCU');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload`
--

CREATE TABLE `tbl_upload` (
  `id_upload` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_jenis_file` int(11) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `tbl_bulan`
--
ALTER TABLE `tbl_bulan`
  ADD PRIMARY KEY (`id_bulan`);

--
-- Indexes for table `tbl_cuti`
--
ALTER TABLE `tbl_cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indexes for table `tbl_daftar_penilaian`
--
ALTER TABLE `tbl_daftar_penilaian`
  ADD PRIMARY KEY (`id_daftar_penilaian`);

--
-- Indexes for table `tbl_detail_penilaian`
--
ALTER TABLE `tbl_detail_penilaian`
  ADD PRIMARY KEY (`id_detail_penilaian`);

--
-- Indexes for table `tbl_detail_remunerasi`
--
ALTER TABLE `tbl_detail_remunerasi`
  ADD PRIMARY KEY (`id_detail_remunerasi`);

--
-- Indexes for table `tbl_gaji`
--
ALTER TABLE `tbl_gaji`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indexes for table `tbl_hak_cuti`
--
ALTER TABLE `tbl_hak_cuti`
  ADD PRIMARY KEY (`id_hak_cuti`);

--
-- Indexes for table `tbl_izin`
--
ALTER TABLE `tbl_izin`
  ADD PRIMARY KEY (`id_izin`);

--
-- Indexes for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tbl_jabatan_2`
--
ALTER TABLE `tbl_jabatan_2`
  ADD PRIMARY KEY (`id_jabatan_2`);

--
-- Indexes for table `tbl_jenis_cuti`
--
ALTER TABLE `tbl_jenis_cuti`
  ADD PRIMARY KEY (`id_jenis_cuti`);

--
-- Indexes for table `tbl_jenis_file`
--
ALTER TABLE `tbl_jenis_file`
  ADD PRIMARY KEY (`id_jenis_file`);

--
-- Indexes for table `tbl_jenis_izin`
--
ALTER TABLE `tbl_jenis_izin`
  ADD PRIMARY KEY (`id_jenis_izin`);

--
-- Indexes for table `tbl_jenis_mutasi`
--
ALTER TABLE `tbl_jenis_mutasi`
  ADD PRIMARY KEY (`id_jenis_mutasi`);

--
-- Indexes for table `tbl_jenjang`
--
ALTER TABLE `tbl_jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indexes for table `tbl_jk`
--
ALTER TABLE `tbl_jk`
  ADD PRIMARY KEY (`id_jk`);

--
-- Indexes for table `tbl_kinerja_individu`
--
ALTER TABLE `tbl_kinerja_individu`
  ADD PRIMARY KEY (`id_kinerja_individu`);

--
-- Indexes for table `tbl_kinerja_unit`
--
ALTER TABLE `tbl_kinerja_unit`
  ADD PRIMARY KEY (`id_kinerja_unit`);

--
-- Indexes for table `tbl_komite`
--
ALTER TABLE `tbl_komite`
  ADD PRIMARY KEY (`id_komite`);

--
-- Indexes for table `tbl_mutasi`
--
ALTER TABLE `tbl_mutasi`
  ADD PRIMARY KEY (`id_mutasi`);

--
-- Indexes for table `tbl_pangkat`
--
ALTER TABLE `tbl_pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indexes for table `tbl_parameter`
--
ALTER TABLE `tbl_parameter`
  ADD PRIMARY KEY (`id_parameter`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tbl_pekerjaan`
--
ALTER TABLE `tbl_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `tbl_pelatihan`
--
ALTER TABLE `tbl_pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`);

--
-- Indexes for table `tbl_pendapatan`
--
ALTER TABLE `tbl_pendapatan`
  ADD PRIMARY KEY (`id_pendapatan`);

--
-- Indexes for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tbl_penilaian`
--
ALTER TABLE `tbl_penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `tbl_ptkp`
--
ALTER TABLE `tbl_ptkp`
  ADD PRIMARY KEY (`id_ptkp`);

--
-- Indexes for table `tbl_remunerasi`
--
ALTER TABLE `tbl_remunerasi`
  ADD PRIMARY KEY (`id_remunerasi`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_status_kepegawaian`
--
ALTER TABLE `tbl_status_kepegawaian`
  ADD PRIMARY KEY (`id_status_kepegawaian`);

--
-- Indexes for table `tbl_status_pernikahan`
--
ALTER TABLE `tbl_status_pernikahan`
  ADD PRIMARY KEY (`id_status_pernikahan`);

--
-- Indexes for table `tbl_str`
--
ALTER TABLE `tbl_str`
  ADD PRIMARY KEY (`id_str`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `tbl_upload`
--
ALTER TABLE `tbl_upload`
  ADD PRIMARY KEY (`id_upload`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_bulan`
--
ALTER TABLE `tbl_bulan`
  MODIFY `id_bulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_cuti`
--
ALTER TABLE `tbl_cuti`
  MODIFY `id_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_daftar_penilaian`
--
ALTER TABLE `tbl_daftar_penilaian`
  MODIFY `id_daftar_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_detail_penilaian`
--
ALTER TABLE `tbl_detail_penilaian`
  MODIFY `id_detail_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_detail_remunerasi`
--
ALTER TABLE `tbl_detail_remunerasi`
  MODIFY `id_detail_remunerasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_gaji`
--
ALTER TABLE `tbl_gaji`
  MODIFY `id_gaji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_hak_cuti`
--
ALTER TABLE `tbl_hak_cuti`
  MODIFY `id_hak_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_izin`
--
ALTER TABLE `tbl_izin`
  MODIFY `id_izin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `tbl_jabatan_2`
--
ALTER TABLE `tbl_jabatan_2`
  MODIFY `id_jabatan_2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `tbl_jenis_cuti`
--
ALTER TABLE `tbl_jenis_cuti`
  MODIFY `id_jenis_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_jenis_file`
--
ALTER TABLE `tbl_jenis_file`
  MODIFY `id_jenis_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_jenis_izin`
--
ALTER TABLE `tbl_jenis_izin`
  MODIFY `id_jenis_izin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_jenis_mutasi`
--
ALTER TABLE `tbl_jenis_mutasi`
  MODIFY `id_jenis_mutasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_jenjang`
--
ALTER TABLE `tbl_jenjang`
  MODIFY `id_jenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_jk`
--
ALTER TABLE `tbl_jk`
  MODIFY `id_jk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_kinerja_individu`
--
ALTER TABLE `tbl_kinerja_individu`
  MODIFY `id_kinerja_individu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_kinerja_unit`
--
ALTER TABLE `tbl_kinerja_unit`
  MODIFY `id_kinerja_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_komite`
--
ALTER TABLE `tbl_komite`
  MODIFY `id_komite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_mutasi`
--
ALTER TABLE `tbl_mutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pangkat`
--
ALTER TABLE `tbl_pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_parameter`
--
ALTER TABLE `tbl_parameter`
  MODIFY `id_parameter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=880;
--
-- AUTO_INCREMENT for table `tbl_pekerjaan`
--
ALTER TABLE `tbl_pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_pelatihan`
--
ALTER TABLE `tbl_pelatihan`
  MODIFY `id_pelatihan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pendapatan`
--
ALTER TABLE `tbl_pendapatan`
  MODIFY `id_pendapatan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=891;
--
-- AUTO_INCREMENT for table `tbl_penilaian`
--
ALTER TABLE `tbl_penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_ptkp`
--
ALTER TABLE `tbl_ptkp`
  MODIFY `id_ptkp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_remunerasi`
--
ALTER TABLE `tbl_remunerasi`
  MODIFY `id_remunerasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_status_kepegawaian`
--
ALTER TABLE `tbl_status_kepegawaian`
  MODIFY `id_status_kepegawaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_status_pernikahan`
--
ALTER TABLE `tbl_status_pernikahan`
  MODIFY `id_status_pernikahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_str`
--
ALTER TABLE `tbl_str`
  MODIFY `id_str` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `tbl_upload`
--
ALTER TABLE `tbl_upload`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
