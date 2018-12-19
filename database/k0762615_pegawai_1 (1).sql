-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2018 at 10:06 AM
-- Server version: 5.5.61-cll
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k0762615_pegawai_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `status_masuk` enum('Y','N') NOT NULL DEFAULT 'N',
  `status_keluar` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` char(2) NOT NULL DEFAULT 'NA',
  `terlambat` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `nip`, `tanggal_absen`, `jam_masuk`, `jam_keluar`, `status_masuk`, `status_keluar`, `ket`, `terlambat`) VALUES
(39, '1234', '2013-01-15', '03:28:26', '00:00:00', 'N', 'N', 'I', 'N'),
(37, '1234', '2013-01-16', '03:22:16', '03:22:26', 'Y', 'Y', 'M', 'Y'),
(40, '1234', '2013-01-14', '03:31:50', '00:00:00', 'N', 'N', 'S', 'N'),
(41, '1234', '2013-01-13', '03:32:39', '03:32:55', 'Y', 'Y', 'M', 'N'),
(42, '1234', '2013-01-12', '03:39:01', '03:39:15', 'Y', 'Y', 'M', 'N'),
(43, '1234', '2013-01-11', '03:53:54', '03:54:23', 'Y', 'Y', 'M', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id_bagian` int(4) NOT NULL,
  `kd_bag` varchar(4) NOT NULL,
  `n_bag` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bagian`, `kd_bag`, `n_bag`) VALUES
(4, 'B004', 'ADMINISTRASI'),
(2, 'B001', 'DIREKTUR UTAMA'),
(3, 'B003', 'HRD MANAGER'),
(7, 'B002', 'DIREKTUR'),
(9, 'B005', 'TEKNISI'),
(11, 'B006', 'PROGRAMMER'),
(12, 'B007', 'LAINNYA'),
(13, 'B008', 'LEADER ADMINISTRASI'),
(14, 'B009', 'OFFICE BOY'),
(15, 'B010', 'MARKETING'),
(16, 'B011', 'PERSONAL MANAGER'),
(17, 'B012', 'FREE AGENT');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_gaji`
--

CREATE TABLE `daftar_gaji` (
  `id_gaji` int(6) NOT NULL,
  `tanggal` date NOT NULL,
  `nip` varchar(15) NOT NULL,
  `id_jabatan` varchar(6) NOT NULL,
  `id_departemen` varchar(6) NOT NULL,
  `uang_lembur` int(11) NOT NULL,
  `uang_makan` int(11) NOT NULL,
  `uang_transport` int(11) NOT NULL,
  `tunj_istri` int(11) NOT NULL,
  `tunj_anak` int(11) NOT NULL,
  `tunj_hari_tua` int(11) NOT NULL,
  `tunj_kecelakaan` int(11) NOT NULL,
  `tunj_kesehatan` int(11) NOT NULL,
  `tunj_kematian` int(11) NOT NULL,
  `tunj_hari_raya` int(11) NOT NULL,
  `jumlah_produksi` int(11) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga_per_unit` int(11) NOT NULL,
  `bonus` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `gaji_kotor` int(11) NOT NULL,
  `total_upah` int(11) NOT NULL,
  `status_pgw` enum('Tetap','Kontrak','Buruh') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_gaji`
--

INSERT INTO `daftar_gaji` (`id_gaji`, `tanggal`, `nip`, `id_jabatan`, `id_departemen`, `uang_lembur`, `uang_makan`, `uang_transport`, `tunj_istri`, `tunj_anak`, `tunj_hari_tua`, `tunj_kecelakaan`, `tunj_kesehatan`, `tunj_kematian`, `tunj_hari_raya`, `jumlah_produksi`, `jenis`, `harga_per_unit`, `bonus`, `potongan`, `gaji_kotor`, `total_upah`, `status_pgw`) VALUES
(1, '2011-09-25', '1083038', '1', '2', 80000, 90000, 80000, 50000000, 5000, 1850, 445, 190, 3350, 5000, 0, '', 0, 5000, 5000, 50325835, 0, 'Tetap'),
(2, '2011-09-25', '1083039', '1', '2', 50000, 50000, 50000, 50000, 50000, 1850, 445, 190, 3350, 50000, 0, '', 0, 50000, 50000, 355835, 0, 'Tetap');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `divisi` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `divisi`) VALUES
(1, 'OFFICE'),
(2, 'DIV PROVISIONING'),
(3, 'DIV COMMISSIONING TEST'),
(4, 'DIV RADIO ALITA'),
(5, 'DIV  LINTASARTA'),
(6, 'FREE AGENT');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_ktp` varchar(100) NOT NULL,
  `file_kk` varchar(100) NOT NULL,
  `file_foto` varchar(100) NOT NULL,
  `file_ijazah` varchar(100) NOT NULL,
  `file_sima` varchar(100) NOT NULL,
  `file_simc` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nik` int(50) NOT NULL,
  `gaji` varchar(30) NOT NULL,
  `tunjangan` varchar(30) NOT NULL,
  `insentiv` varchar(30) NOT NULL,
  `thr` varchar(30) NOT NULL,
  `plus_kes` varchar(30) NOT NULL,
  `plus_tenaga` varchar(30) NOT NULL,
  `gaji_bruto` varchar(30) NOT NULL,
  `pajak` varchar(30) NOT NULL,
  `min_tenaga` varchar(30) NOT NULL,
  `min_kes` varchar(30) NOT NULL,
  `pinjaman` varchar(30) NOT NULL,
  `gaji_bersih` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `tgl`, `nik`, `gaji`, `tunjangan`, `insentiv`, `thr`, `plus_kes`, `plus_tenaga`, `gaji_bruto`, `pajak`, `min_tenaga`, `min_kes`, `pinjaman`, `gaji_bersih`) VALUES
(7, '0000-00-00', 15098, '3700000', '250000', '', '3950000', '0', '230880', '', '0', '', '', '', ''),
(4, '2018-06-08', 1810, '10', '101', '10', '10', '0.4', '0.6240000000000001', '132.024', '10', '0.924', '0.5', '10', '110.6'),
(8, '2018-06-01', 15098, '3700000', '250000', '0', '3950000', '0', '230880', '8130880', '0', '0', '37000', '0', '8093880'),
(10, '2018-07-18', 18150, '40000000', '0', '0', '0', '', '0', '3000031', '', '0', '0', '0', '2600000');

-- --------------------------------------------------------

--
-- Table structure for table `h_jabatan`
--

CREATE TABLE `h_jabatan` (
  `idh` int(11) NOT NULL,
  `idkjb` varchar(4) NOT NULL,
  `jab_old` varchar(20) NOT NULL,
  `tgl_ajb` date NOT NULL,
  `jabatan_baru` varchar(20) NOT NULL,
  `tgl_kjb` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `h_jabatan`
--

INSERT INTO `h_jabatan` (`idh`, `idkjb`, `jab_old`, `tgl_ajb`, `jabatan_baru`, `tgl_kjb`) VALUES
(10, 'KJ01', 'Rekom', '2009-01-16', 'Kepala Rekom', '2013-01-16'),
(11, 'KJ01', 'Kepala Rekom', '2009-01-16', 'Mgr.Rekom', '2013-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jab` int(4) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `n_jab` varchar(20) NOT NULL,
  `gapok` varchar(25) NOT NULL,
  `tunj_jab` varchar(25) NOT NULL,
  `m_kerja` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jab`, `kode`, `n_jab`, `gapok`, `tunj_jab`, `m_kerja`) VALUES
(3, 'J003', 'Mgr.Rekom', '1500000', '150000', '0'),
(4, 'J004', 'Kepala IT', '1200000', '500000', '1450'),
(10, 'J005', 'IT', '5000000', '300000', '35'),
(11, 'J005', 'IT 1', '3520000', '220000', '53232'),
(12, 'J006', 'asdad', '236565', '26565', '26565'),
(13, 'J007', 'ASDASDA', '256565', '265656', '2656565'),
(14, 'J008', 'ASDASD', '35656565', '53556565', '35365'),
(15, 'J0009', 'ASDASD', '658689', '6356532', '565650'),
(17, '0009', 'tesss', '23232', '23232', '0');

-- --------------------------------------------------------

--
-- Table structure for table `k_jabatan`
--

CREATE TABLE `k_jabatan` (
  `idkjb` varchar(4) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `masa_kerja` int(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_jabatan`
--

INSERT INTO `k_jabatan` (`idkjb`, `nip`, `masa_kerja`, `keterangan`) VALUES
('KJ01', '1234', 4, 'dsda');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `id` int(3) NOT NULL,
  `nm_pt` varchar(50) NOT NULL,
  `alamat_pt` text NOT NULL,
  `Profile` text NOT NULL,
  `npwp` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id`, `nm_pt`, `alamat_pt`, `Profile`, `npwp`) VALUES
(1, 'PT. LUMBUNG RIANG COMMUNICATION', 'Jl. Pisangan Lama 1 No. 20, Pisangan Jakarta Timur', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `notes`, `status`) VALUES
(1, 'Educate Elevate', 'aktif'),
(3, 'Selamat Hari Raya Idul Fitri 1439H Minal Aidzin Wal Faidzin Mohon Maaf Lahir Batin', 'tidak aktif');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tmpt_lahir` varchar(200) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat_jalan` varchar(200) NOT NULL,
  `rt` text NOT NULL,
  `rw` text NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kode_pos` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_bag` varchar(4) NOT NULL,
  `level_user` int(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tlpn` text NOT NULL,
  `nohp` text NOT NULL,
  `npwp` varchar(30) NOT NULL,
  `id_agm` int(3) NOT NULL,
  `kdpndidik` int(3) NOT NULL,
  `noktp` varchar(25) NOT NULL,
  `nojamsos` varchar(25) NOT NULL,
  `norek` varchar(20) NOT NULL,
  `id_bank` int(15) NOT NULL,
  `kdstatusk` int(3) NOT NULL,
  `kdstatusp` int(3) NOT NULL,
  `time_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nosimc` varchar(30) NOT NULL,
  `nosima` varchar(30) NOT NULL,
  `nokk` varchar(25) NOT NULL,
  `bpjskes` varchar(30) NOT NULL,
  `bpjstk` varchar(30) NOT NULL,
  `filefoto` varchar(100) NOT NULL,
  `filektp` varchar(100) NOT NULL,
  `filekk` varchar(100) NOT NULL,
  `fileijazah` varchar(100) NOT NULL,
  `filesima` varchar(100) NOT NULL,
  `filesimc` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `tmpt_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat_jalan`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kota`, `kode_pos`, `tgl_masuk`, `id_bag`, `level_user`, `foto`, `tlpn`, `nohp`, `npwp`, `id_agm`, `kdpndidik`, `noktp`, `nojamsos`, `norek`, `id_bank`, `kdstatusk`, `kdstatusp`, `time_update`, `nosimc`, `nosima`, `nokk`, `bpjskes`, `bpjstk`, `filefoto`, `filektp`, `filekk`, `fileijazah`, `filesima`, `filesimc`) VALUES
(1, '18150', 'ARI ARIYANTO', 'BOGOR', '2000-04-04', 'L', 'Jl. Cilangkap', '005', '007', 'Cilangkap', 'Tapos', 'Depok', '16465', '2018-05-07', 'B006', 5, '/pega/assets/avatars/avatar5.png', '', '081389061742', '', 1, 3, '3276100404000002', '0', '1570006124581', 3, 1, 2, '2018-06-08 08:03:16', '1221170600432', '', '3276102805140002', '', '', '', '', '', '', '', ''),
(2, '12001', 'ERLAN SUTRAJAT', 'BANDUNG', '1965-07-11', 'L', 'Jl. Camar Blok MD No 1', '05', '05', 'Pasir Gunung Selatan', 'Cimanggis', 'Depok', '16951', '2012-04-15', 'B001', 5, '/pega/assets/avatars/avatar5.png', '(021) 872-5948', '08551006100', '14.254.119.2-412.000', 1, 4, '3276021107650001', '0', '60007215852', 3, 2, 1, '2018-10-29 09:16:21', '650712211191', '650712212034', '3276020710070201', '0001800633429', '14037496966', '', '', '', '', '', ''),
(3, '12003', 'RISKA ADRINI', 'JAKARTA', '1991-11-15', 'P', 'Jl. Camar', '05', '05', 'Pasir Gunung Selatan', 'Cimanggis', 'Depok', '16951', '0000-11-30', 'B002', 5, '/pega/assets/avatars/avatar5.png', '(021) 872-5948', '08569809314', '54.292.579.7-412.000', 1, 5, '3276025511910003', '0', '1570002505866', 3, 2, 1, '2018-10-29 09:47:12', '', '911112210024', '3276020809150026', '0001800653152', '14037497253', '', '', '', '', '', ''),
(4, '12017', 'IRWAN SETIAWAN', 'JAKARTA', '1986-08-13', 'L', 'jalan almubarok III no 75', '007', '010', 'Cipulir', 'Kebayoran Lama', 'Jakarta Selatan', '12230', '2012-10-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '085885778797', '54.293.089.6-013.000', 1, 4, '3174051308860011', '0', '9000011749182', 3, 2, 1, '2018-10-29 09:23:49', '860812054186', '1220170707438', '3174052501111017', '0001609066708', '14037497311', '', '', '', '', '', ''),
(5, '13049', 'AGNES EKA LESTIA', 'JAKARTA', '1994-08-16', 'P', 'Jalan Haji Dalim', '06', '02', 'Pulogadung', 'Pulogadung', 'Jakarta Timur', '13260', '2013-09-02', 'B004', 5, '/pega/assets/avatars/avatar5.png', '', '085891480281', '66.038.781.2-003.000', 1, 3, '3175025608940004', '0', '9000011393288', 3, 1, 1, '2018-10-29 09:24:28', '', '', '3175021901094855', '0001324750184', '14037497196', '', '', '', '', '', ''),
(6, '13057', 'TONI', 'CIREBON', '1989-09-12', 'L', 'Jl. Warujaya', '07', '22', 'Mekarjaya', 'Sukmajaya', 'Depok', '0000', '2013-10-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '+62 857-1873-6624', '36.238.919.9-412.000', 1, 3, '3276050912890002', '0', '-322781', 3, 2, 1, '2018-10-29 09:50:27', '891212210591', '0000', '3276050611070039', '0001609066765', '14037497030', '', '', '', '', '', ''),
(7, '13058', 'ACHMAD SYARIF', 'JAKARTA', '1978-11-15', 'L', 'jl.Jati pulo VI', '09', '05', 'jatipulo', 'palmerah', 'jakarta barat', '11430', '2013-01-10', 'B004', 5, '/pega/assets/avatars/avatar5.png', '', '081585167652', '87.201.214.1-031.000', 1, 4, '3173071511780009 ', '0', '1210005098631', 3, 2, 1, '2018-05-31 04:57:39', '-', '-', '3173070601093070', '0001800385424', '14037497063', '', '', '', '', '', ''),
(8, '14069', 'BADAR SURAWAN', 'JAKARTA', '1972-03-13', 'L', 'JL. BALI MATRAMAN', '008', '008', 'MANGGARAI', 'TEBET', 'JAKARTA SELATAN', '-', '2014-02-03', 'B009', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '+62 858-8869-6266', '77.674.750.3-015.000', 1, 3, '3174051308760002', '0', '-785723', 3, 2, 1, '2018-10-29 09:32:20', '0', '0', '3174010701093826', '0001810422887', '14037497188', '', '', '', '', '', ''),
(9, '18149', 'DEA RACHMAYATI HANDIARTO', 'BOGOR', '1996-05-03', 'P', 'JL. KEBAHAGIAAN NO A-10', '01', '05', 'PASIR GUNUNG SELATAN', 'CIMANGGIS', 'DEPOK', '16951', '2018-03-09', 'B003', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '08558376635', '84.732.792.1-412.000', 1, 5, '3276024305960000', '0', '-772653', 3, 1, 2, '2018-07-02 09:21:54', '', '', '3276020710070270', '', '', '', '', '', '', '', ''),
(10, '14090', 'RAHMANIA RAMADHANI', 'CIANJUR', '1996-02-05', 'P', 'Perum Gadung Permai Blok E/11', '003', '016', 'Bojong', 'Karangtengah', 'Cianjur', '43281', '2014-10-01', 'B004', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '085771005674', '72.689.748.1-406.000', 1, 3, '3203074502960012', '0', '600077296888', 3, 1, 1, '2018-05-31 05:02:24', '-', '-', '3203073005070009', '0001609066743', '15000577062', '', '', '', '', '', ''),
(11, '14091', 'ETI FITRIANI', 'JAKARTA', '1993-02-04', 'P', 'Kramat V', '02', '003', 'Lubang Buaya', 'Cipayung', 'Jakarta Timur', '13810', '2014-11-03', 'B004', 5, '/pega/assets/avatars/avatar5.png', '', '085695876804', '36.744.740.6-009.000', 1, 3, '3175104402931001', '0', '9000029142636', 3, 1, 1, '2018-10-29 09:17:51', '', '', '3175101901111006', '', '11023250514', '', '', '', '', '', ''),
(12, '15095', 'BANGUN DWI PRASETYO', 'BEKASI', '1996-04-15', 'L', 'Jl. Percetakan Negara XI', '04', '05', 'Rawasari', 'Cempaka Putih', 'Jakarta Pusat', '10570', '0000-11-30', 'B010', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '08974337323', '73.395.092.7-024.000', 1, 3, '3171051504960002', '0', '1570005407144', 3, 1, 1, '2018-10-29 09:27:35', '96041205970114', '0', '3171051501098604', '0001658253475', '15050081577000', '', '', '', '', '', ''),
(13, '15097', 'FARHAN RAMADHAN', 'JAKARTA', '1997-01-13', 'L', 'Rawa Kuning', '05', '16', 'Pulogebang', 'Cakung', 'Jakarta Timur', '13950', '2015-04-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '085717709784', '73.358.160.7-006.000', 1, 3, '3175061301970002', '0', '1660001328970', 3, 1, 1, '2018-10-29 09:21:30', '000000000000000000000', '00000000000000000', '3175063001098511', '15037672092', '15037672092000', '', '', '', '', '', ''),
(14, '15098', 'GALUH DEVI PARADHITA GAMEKA', 'JAKARTA', '1997-05-29', 'P', 'Jln. Bekasi Timur II dalam No. 9', '013', '004', 'Rawabunga', 'Jatinegara', 'Jakarta Timur', '13350', '2015-04-01', 'B004', 5, '/pega/assets/avatars/avatar5.png', '', '0896-6862-9873', '73.342.290.1-002.000', 1, 3, '3175036905970001', '0', '-786457', 3, 1, 1, '2018-10-29 09:34:30', '', '', '3175031301095854', '', '15050081643.000', '', '', '', '', '', ''),
(15, '15100', 'MUHAMMAD GILANG RAMADHAN', 'JAKARTA', '1996-01-17', 'L', 'Jalan kebon bawang VIII no 27', '19', '001', 'Kebon bawang', 'Tanjung priok', 'Jakarta utara', '14320', '2015-04-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '082111095931', '73.424.138.3-042.000', 1, 3, '3172021701960002', '0', '9000025487241', 3, 1, 1, '2018-10-12 08:00:33', '96011205971295', '', '', '', '15037672134', '', '', '', '', '', ''),
(16, '15103', 'NUR MUFID', 'BANJARNEGARA', '1996-06-24', 'L', 'Kp. Pulo Jahe', '003', '010', 'Jatinegara', 'Cakung', 'Jakarta Timur', '13930', '2015-04-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '+62 858-9608-5251', '73.345.596.8-004.000', 1, 3, '3175062406960003', '0', '9000028943455', 3, 1, 1, '2018-10-30 03:33:41', '96061205984259', '0000', '3175062406960003', '00000', '15037672076', '', '', '', '', '', ''),
(17, '15107', 'AHMAD AJIJUDIN', 'SERANG', '1997-07-20', 'L', 'Kp Pangodokan Rt 1/1 Kel. Kutabumi Kec. Pasar Kemis Kab. Tangerang Prov. Banten', '01', '001', 'Kutabumi', 'Pasar Kemis', 'Tangerang', '15560', '2015-06-08', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '087886879155', '75.836.431.9-402.000', 1, 3, '3603122007970004', '0', '9000030319470', 3, 1, 1, '2018-10-12 07:52:35', '', '', '3603122006070069', '0001662023349', '15050081585', '', '', '', '', '', ''),
(18, '15116', 'LUTHFIAN SYAUQI', 'TANGERANG', '1997-08-23', 'L', 'Jl. Durian Raya B1/12A Bumi Asri', '02', '018', 'Kuta Bumi', 'Pasar Kemis', 'Tanggerang', '15560', '2015-06-11', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '+62 812-9574-0465', '75.416.017.4-418.000', 1, 3, '3603122308970004', '0', '-3031057', 3, 1, 1, '2018-10-29 09:41:31', '970812193377', '0000', '3603121907080123', '0001766799955', '15050081627', '', '', '', '', '', ''),
(19, '15121', 'MUHAMMAD NAUFAL', 'JAKARTA', '1997-07-04', 'L', 'Persada Raya no.3', '011', '011', 'Menteng Dalam', 'Tebet', 'Jakarta Selatan', '12870', '2015-09-07', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '085775307493', '75.600.736.5-015.000', 1, 3, '3174010407970005', '0', '1570004957016', 3, 1, 1, '2018-06-05 04:53:57', '970712051420', '97071205973274', '3174011301092932', '0', '16006622688', '', '', '', '', '', ''),
(20, '16129', 'HALIM RACHMAN RIFALDI', 'JAKARTA', '1995-01-27', 'L', 'Kp. Kekupu', '02', '03', 'Rangkapan Jaya', 'Pancoran Mas', 'Depok', '16435', '2013-08-13', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(021) 778-8541', '08998176115', '66.010.755.8-412.000', 1, 3, '3276012701950003', '0', '1570005116075', 3, 2, 1, '2018-10-29 09:22:37', '950112210918', '', '3276010410160014', '0001458237857', '14037497055', '', '', '', '', '', ''),
(21, '16130', 'MUADZ AZMI AMRULLAH', 'BANDUNG', '1995-05-28', 'L', 'Komp. Graha Alam Raya Jl. Meteor II W6 No.7', '004', '009', 'Margasari', 'Buah Batu', 'Bandung', '40286', '2016-09-06', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '081617595883', '79.919.259.2-429.000', 1, 3, '3217022805950010', '0', '1320014106711', 3, 1, 1, '2018-06-07 02:27:06', '950513310928', '', '3273220910150002', '0002097605496', '', '', '', '', '', '', ''),
(22, '16132', 'JOSHUA ILHAM', 'PEKANBARU', '1996-02-19', 'L', 'Jl. Kav. Sidomakmur 2', '005', '003', 'Kaliabang Tengah', 'Kaliabang Tengah', ' Bekasi Utara', '17125', '2017-01-04', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '085779457308', '81.076.487.8-432.000', 1, 3, '3275051902960012', '0', '-1232104', 3, 1, 2, '2018-10-29 09:40:01', '000000000000', '000000000000', '3275050412090029', '0002135137061', '18041680176', '', '', '', '', '', ''),
(23, '17135', 'DOBIYANTO KRISNA SETIAWAN', 'PONOROGO', '1996-10-27', 'L', 'Jl.Sunter Muara No.35C', '18', '005', 'Sunter Agung', 'Tanjung Priok', 'Jakarta Utara', '14350', '2015-04-12', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '085894177960', '83.388.103.0-048.000', 1, 3, '3172022710960001', '0', '1570005598355', 3, 1, 2, '2018-10-16 03:58:07', '96101205971813', '00000000000000000000', '000000000000', '0001226285921', '18064206966', '', '', '', '', '', ''),
(24, '17137', 'MUHAMMAD AFIF AFDHOLUL MATIN', 'JAKARTA', '1999-03-13', 'L', 'GG. Yudistira', '012', '003', 'Makasar', 'Makasar', 'Jakarta Timur', '13570', '2017-04-17', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(021) 870-7101', '085711728626', '81.663.274.9-005.000', 1, 3, '3175081303990002', '0', '1290011090863', 3, 1, 2, '2018-11-12 09:24:56', '000', '000', '3175082403160018', '000', '18081027247', '', '', '', '', '', ''),
(32, '111', 'test1', '', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', 0, 0, '1', '', '', 0, 0, 0, '2018-10-15 09:30:45', '', '', '', '', '', '', '', '', '', '', ''),
(33, '112', 'test2', '', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', 0, 0, '2', '', '', 0, 0, 0, '2018-10-15 09:30:40', '', '', '', '', '', '', '', '', '', '', ''),
(26, '17143', 'ADE SYAUKI M', 'JAKARTA', '1992-08-14', 'L', 'Jl. Harapan no. 37', '02', '03', 'Rangkapan Jaya', 'Pancoran Mas', 'Depok', '16435', '2017-11-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(021) 778-8541', '085692258373', '73.259.100.3-411.000', 1, 5, '3674051408920005', '0', '1010006003923', 3, 2, 2, '2018-10-16 18:25:31', '920814190766', '920812190990', '3276010602180005', '0000043586133', '0000', '', '', '', '', '', ''),
(27, '17144', 'JAFAR SIDIX', 'JAKARTA', '1993-12-30', 'L', 'Jl. Kampung bentengan III', '001', '005', 'Sunter Jaya ', 'Sunter', 'Jakarta Utara', '14350', '2017-11-13', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '081213141931', '76.773.567.3-048.000', 1, 3, '3172023112930008', '0', '-2978969', 3, 2, 2, '2018-10-29 09:37:34', '0000000000000', '0000000000000', '0000000000000000', '000000000000', '00000000000', '', '', '', '', '', ''),
(28, '18146', 'RIAN ANANG PRAKOSO', 'JAKARTA', '1994-03-09', 'L', 'Kp. Pengarengan ', '009', '012', 'Jatinegara', 'Cakung', 'Jakarta Timur', '13930', '2018-02-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '081298555981', '66.661.073.8-004.000', 1, 4, '3175060903940005', '0', '1660001033638', 3, 1, 2, '2018-10-15 09:19:20', '940312051608', '0', '3175061201097371', '0001169159332', '14037496941', '', '', '', '', '', ''),
(29, '18147', 'BUDIMAN PRASETYO', 'JAKARTA', '1999-08-24', 'P', 'Jl.Malaka Baru', '008', '011', 'Pondok Kopi', 'Duren Sawit', 'Jakarta Timur', '13460', '2018-03-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(021) 866-1397', '085794954347', '84.385.598.2-008.000', 1, 3, '3175072408990006', '0', '-225301', 3, 1, 2, '2018-10-12 08:04:04', '99081205700142', '-', '3175072301097743', '000000', '000000', '', '', '', '', '', ''),
(30, '18148', 'ARYA ERLANGGA', 'JAKARTA', '1999-05-23', 'L', 'Jln.Cipinang Kebembem IX', '04', '013', 'Pisangan Timur', 'Pulogadung', 'Jakarta Timur', '13230', '2018-06-01', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '085776916411', '84.934.199.5-003.000', 1, 3, '3175022305990004', '0', '60010065476', 3, 1, 2, '2018-06-06 04:36:00', '99051205974621', '', '3175021301092974', '', '', '', '', '', '', '', ''),
(31, '18151', 'RIZKY PRATAMA PUTRA', 'JAKARTA', '2000-06-15', 'L', 'Gg. Masjid Cisalak', '02', '08', 'Cisalak', 'Sukmajaya', 'Depok', '0000', '2018-05-07', 'B006', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '0858-9267-9400', '00.000.000.0-000.000', 1, 3, '3276020506000008', '0', '-612192', 3, 1, 2, '2018-10-19 06:14:48', '0000', '0000', '00000', '00000', '000000', '', '', '', '', '', ''),
(34, '113', 'test3', '', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', 0, 0, '3', '', '', 0, 0, 0, '2018-10-15 09:30:49', '', '', '', '', '', '', '', '', '', '', ''),
(35, '114', 'test4', '', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', 0, 0, '4', '', '', 0, 0, 0, '2018-10-15 09:30:53', '', '', '', '', '', '', '', '', '', '', ''),
(36, '115', 'test5', '', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', 0, 0, '5', '', '', 0, 0, 0, '2018-10-15 09:30:56', '', '', '', '', '', '', '', '', '', '', ''),
(37, '001', 'VIBRA MILIANO', 'JAKARTA', '2000-01-03', 'L', 'jl Kalibata Utara 2', '02', '002', 'Kalibata', 'pancoran', 'DKI Jakarta', '19720', '2018-05-14', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '085714996319', '', 1, 3, '3174080301000003', '0', '0', 0, 1, 3, '2018-10-15 03:33:56', '0', '0', '0', '0', '0', '', '', '', '', '', ''),
(38, '002', 'AQSHAL ATTALLAH SIAHAN', 'JAKARTA', '2000-09-29', 'L', 'Jalan Kemuning Dalam 5', '13', '03', 'Utan Kayu Utara', 'Matraman', 'DKI JAKARTA', '13210', '2018-05-14', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '082119303878', '', 1, 3, '3175012909000004', '0', '0', 0, 1, 3, '2018-10-15 03:18:42', '0', '0', '0', '0', '0', '', '', '', '', '', ''),
(39, '003', 'AHMAD IRGI CHIESA', 'JAKARTA', '2000-01-25', 'L', 'Jalan Cipinang Jaya Blok GG', '02', '08', 'CIPINANG BESAR SELATAN', 'JATINEGARA', 'Jakarta Timur', '14310', '2018-05-14', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '085219788943', '', 1, 3, '3175032501000010', '0', '0', 0, 1, 3, '2018-10-15 03:35:14', '0', '0', '0', '0', '0', '', '', '', '', '', ''),
(40, '004', 'RIAN WAHAB', 'JAKARTA', '2000-08-14', 'L', 'KP.PEDONGKELAN', '05', '015', 'KAYU PUTIH', 'PULO GADUNG', 'JAKARTA TIMUR', '13210', '2000-08-14', 'B005', 5, '/pega/assets/avatars/avatar5.png', '', '089534503375', '', 1, 3, '317502140820002', '0', '0', 0, 1, 3, '2018-10-15 03:30:36', '0', '0', '0', '0', '0', '', '', '', '', '', ''),
(41, '005', 'FAUZAN DINAN MUHAMMAD', 'JAKARTA', '2000-11-02', 'L', 'Jalan Pisangan Baru II', '13', '07', 'Pisangan Baru', 'Matraman', 'Jakarta Timur', '13110', '2018-05-14', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '081224396382', '00.000.000.0-000.000', 1, 3, '3175010211000001', '0', '60010405888', 3, 1, 3, '2018-10-15 03:47:08', '0', '0', '0', '0', '0', '', '', '', '', '', ''),
(42, '006', 'MUHAMMAD IKHSANUDIN', 'MAGELANG', '2001-05-01', 'L', 'Jl. Wijaya 2 w16/13', '01', '10', 'Mekarbakti', 'Panongan', 'Kab. Tangerang', '15710', '2018-09-03', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '081910615218', '00.000.000.0-000.000', 1, 3, '3603190105010001', '0', '0', 6, 1, 3, '2018-10-15 03:56:49', '0', '0', '', '0', '0', '', '', '', '', '', ''),
(43, '007', 'ABYYU HAFIZH SEPTRIANTO', 'JAKARTA', '2001-09-04', 'L', 'Jalan Galunggung 22 no.2', '11', '15', 'Cengkareng Timur', 'Cengkareng', 'Jakarta Barat', '11730', '2018-09-03', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '081211517231', '00.000.000.0-000.000', 1, 3, '3173010409011003', '0', '703369133400', 7, 1, 3, '2018-10-15 04:00:25', '0', '0', '0', '0', '0', '', '', '', '', '', ''),
(44, '008', 'MAHMUD SYAIFUL AMINUDIN', 'NGAWI', '2000-10-24', 'L', 'Jl. Ki Hajar Dewantoro', '004', '06', 'Gondrong', 'Cipondoh', 'Tangerang', '14150', '2018-09-03', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '081318005253', '00.000.000.0-000.000', 1, 3, '3671052410000003', '0', '0', 2, 1, 3, '2018-10-15 04:01:56', '001013480014', '0', '0', '0', '0', '', '', '', '', '', ''),
(45, '009', 'MUHAMAD RIDWANSYAH', 'JAKARTA', '2001-02-15', 'L', 'Jl. Pesing Gadog no.49', '011', '07', 'Kedoya Utara', 'Kebon Jeruk', 'Jakarta Barat, Kota', '11520', '2018-09-03', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '087870825405', '00.000.000.0-000.000', 1, 3, '3173051502010002', '0', '0', 9, 1, 3, '2018-10-15 04:08:05', '1205180709458', '0', '0', '0', '0', '', '', '', '', '', ''),
(46, '010', 'IWAN SETIAWAN', 'BOYOLALI', '2000-05-08', 'L', 'jalan kp gaga', '07', '03', 'Semanan', 'Kalideres', 'Jakarta Barat', '11850', '2018-09-03', 'B005', 5, '/pega/assets/avatars/avatar5.png', '(000) 000-0000', '08995150875', '00.000.000.0-000.000', 1, 3, '3172010805001001', '0', '5490413474', 1, 1, 3, '2018-10-15 04:12:28', '1205170719940', '0', '0', '0', '0', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `id_pelatihan` int(4) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `tgl_pelatihan` date NOT NULL,
  `topik_pelatihan` varchar(100) NOT NULL,
  `penyelenggara` text NOT NULL,
  `hasil_pelatihan` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `idp` int(4) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `t_pdk` varchar(20) NOT NULL,
  `d_pdk` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`idp`, `nip`, `t_pdk`, `d_pdk`) VALUES
(1, '1234', '2000 - 2006', 'SD Negeri 2 Palembang'),
(2, '1234', '2006 - 2007', 'SMP Negeri 3 Palembang'),
(3, '1234', '2007 - 2010', 'SMA 1 Negeri Palembang');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_kerja`
--

CREATE TABLE `pengalaman_kerja` (
  `id_peker` int(4) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `nm_pekerjaan` varchar(50) NOT NULL,
  `d_pekerjaan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengalaman_kerja`
--

INSERT INTO `pengalaman_kerja` (`id_peker`, `nip`, `nm_pekerjaan`, `d_pekerjaan`) VALUES
(1, '1234', 'Freelance Networking ', 'Rancang bangun jaringan untuk warnet.'),
(2, '1234', 'Freelance Web Programmer', '- Merancang Aplikasi Berbasis Web untuk keperluan TA/Skripsi mahasiswa.\r\n- Merancang dan membangun website toko online, Personal, Akademik dan Company profile.\r\n'),
(5, 'admin', 'gvfdg', 'gdfg');

-- --------------------------------------------------------

--
-- Table structure for table `project_kasbon`
--

CREATE TABLE `project_kasbon` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_kasbon`
--

INSERT INTO `project_kasbon` (`id`, `kategori`) VALUES
(1, 'ATK'),
(2, 'BBM'),
(3, 'Kas Masuk'),
(4, 'Material'),
(5, 'Office'),
(6, 'Operasional'),
(7, 'Parkir'),
(8, 'Saldo Awal'),
(9, 'Service'),
(10, 'Supervisi'),
(11, 'Tol'),
(12, 'Transport'),
(13, 'Konsumsi');

-- --------------------------------------------------------

--
-- Table structure for table `project_wo`
--

CREATE TABLE `project_wo` (
  `id` int(11) NOT NULL,
  `nama_project` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_wo`
--

INSERT INTO `project_wo` (`id`, `nama_project`) VALUES
(1, 'Instalasi'),
(2, 'Dismantle'),
(3, 'Aktivasi'),
(4, 'Survey'),
(5, 'Manageable Modem 2018 Batch 1'),
(6, 'Manageable Modem 2018 Batch 2'),
(7, 'Manageable Modem 2018 Batch 3'),
(8, 'Upgrade'),
(9, 'Relokasi'),
(10, 'Deaktivasi'),
(11, 'Testing'),
(12, 'Audit'),
(13, ' [Request] Memindahkan lokasi Akses Point '),
(14, 'Audit Power BTS'),
(15, 'PT PRUDENTIAL LIFE ASSURANCE'),
(16, 'INTERMITTENT (TROBLE)'),
(17, 'Uji performansi link'),
(18, 'Integrasi'),
(19, '[FBB] [IPH] [LRCOM] [Down] '),
(20, 'Test link'),
(21, 'TROUBLE SHOOT'),
(22, '[Maintenance] Planned Outage'),
(23, 'DEAKTIVASI & DISMANTLE '),
(24, 'TS'),
(25, 'Pengetesan Link Schneider'),
(26, 'DEAKTIVASI SERVICE & DISMANTLE'),
(28, 'Pengetesan'),
(29, 'Manageable Modem'),
(30, 'AKTIVASI a.n UPGRADE'),
(31, 'SURVEY & AKTIVASI'),
(33, 'SURVEY & MLD'),
(34, 'RFC test'),
(35, ' Improvement'),
(36, 'RECONFIG '),
(37, 'Manageable '),
(38, '829/SR/DQM/2018'),
(39, 'Standby'),
(40, 'PENARIKAN KABEL');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `berita` text NOT NULL,
  `tipe` int(2) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `nip`, `berita`, `tipe`, `time`) VALUES
(39, '1235', 'test\r\n', 1, '2018-05-16 03:55:27'),
(40, '2558', 'hahahaha', 1, '2018-05-17 02:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `status_app`
--

CREATE TABLE `status_app` (
  `kd_approve` int(11) NOT NULL,
  `approve` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_app`
--

INSERT INTO `status_app` (`kd_approve`, `approve`) VALUES
(0, 'Pending'),
(1, 'Approved'),
(2, 'Bloked');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pesan`
--

CREATE TABLE `tabel_pesan` (
  `nomor` int(10) NOT NULL,
  `waktu` datetime NOT NULL,
  `dari` varchar(50) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `attachments` varchar(100) NOT NULL,
  `sudahbaca` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_pesan`
--

INSERT INTO `tabel_pesan` (`nomor`, `waktu`, `dari`, `kepada`, `subject`, `pesan`, `attachments`, `sudahbaca`) VALUES
(1, '2014-12-01 06:55:00', 'wahyu', '1', 'tes', 'ketika setan berteman', '', 'N'),
(2, '2014-12-01 06:56:00', 'wahyu', '1', 'Hai Kapan Kembali', 'Hai Kapan Kembali', '', 'N'),
(3, '2014-12-01 06:43:00', 'wahyu', '1', 'Admin nih ada yg eror', 'Admin nih ada yg eror', '', 'N'),
(4, '2014-12-01 06:56:00', 'siska', '2', 'Hai Kapan Kembali', 'Hai Kapan Kembali', '', 'N'),
(5, '2014-12-01 06:43:00', 'admin', '2', 'Andez nih link nya', 'Andez nih link nya', '', 'N'),
(6, '2014-12-01 06:43:00', 'portgastea', '1', 'Ni Bagaimana Admin kok eror', 'Ni Bagaimana Admin kok eror', '', 'N'),
(7, '2014-12-01 06:43:00', 'rohmah', '1', 'ni bagaimana ya eror mulu', 'ni bagaimana ya eror mulu', '', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about_me`
--

CREATE TABLE `tbl_about_me` (
  `nip` varchar(20) NOT NULL,
  `about` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about_me`
--

INSERT INTO `tbl_about_me` (`nip`, `about`) VALUES
('111', ''),
('1235', ''),
('1451', ''),
('18150', 'About Me...'),
('18151', ''),
('18152', ''),
('18149', ''),
('18148', ''),
('18147', ''),
('18146', ''),
('17144', ''),
('17143', ''),
('17137', ''),
('17135', ''),
('16132', ''),
('16130', ''),
('16129', ''),
('15121', ''),
('15116', ''),
('15107', ''),
('15103', ''),
('15100', ''),
('15098', ''),
('15097', ''),
('15095', ''),
('14091', ''),
('14090', ''),
('14069', ''),
('13058', ''),
('13057', ''),
('13049', ''),
('12017', ''),
('12003', ''),
('12001', ''),
('010', ''),
('009', ''),
('008', ''),
('007', ''),
('006', ''),
('005', ''),
('004', ''),
('003', ''),
('002', ''),
('001', ''),
('1236', ''),
('00002', ''),
('00001', ''),
('00003', ''),
('00004', ''),
('00005', ''),
('00006', ''),
('00007', ''),
('00008', ''),
('00009', ''),
('00010', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absen`
--

CREATE TABLE `tbl_absen` (
  `id_abs` int(11) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `transport` varchar(15) NOT NULL,
  `uang_shift` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_absen`
--

INSERT INTO `tbl_absen` (`id_abs`, `shift`, `jam_masuk`, `jam_pulang`, `transport`, `uang_shift`) VALUES
(8, 'Shift 1', '08:00:00', '17:00:00', '0', '0'),
(9, 'Shift 2', '08:30:00', '17:30:00', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `id_agm` int(3) NOT NULL,
  `nmagama` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`id_agm`, `nmagama`) VALUES
(1, 'Islam'),
(2, 'Katholik'),
(3, 'Kristen Protestan'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alamat`
--

CREATE TABLE `tbl_alamat` (
  `id_alamat` varchar(20) NOT NULL,
  `nama_jalan` text NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `kelurahan` text NOT NULL,
  `kecamatan` text NOT NULL,
  `kota` text NOT NULL,
  `provinsi` text NOT NULL,
  `kode_pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alamat`
--

INSERT INTO `tbl_alamat` (`id_alamat`, `nama_jalan`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `kode_pos`) VALUES
('ALM0001', 'JL. PONCOL NO. 42', 5, 7, 'CILANGKAP', 'TAPOS', 'DEPOK', 'JAWA BARAT', 16465),
('ALM0003', 'A', 1, 1, 'A', 'A', 'A', 'A', 1),
('ALM0004', '', 0, 0, '', '', '', '', 0),
('ALM0005', '', 0, 0, '', '', '', '', 0),
('ALM0006', '', 0, 0, '', '', '', '', 0),
('ALM0007', 'JL. KEBAHAGIAAN NO A-10', 1, 5, 'PASIR GUNUNG SELATAN', 'CIMANGGIS', 'DEPOK', 'JAWA BARAT', 16951),
('ALM0008', 'JLN.CIPINANG KEBEMBEM IX', 4, 13, 'PISANGAN TIMUR', 'PULOGADUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 13230),
('ALM0009', 'JL.MALAKA BARU', 8, 11, 'PONDOK KOPI', 'DUREN SAWIT', 'JAKARTA TIMUR', 'DKI JAKARTA', 13460),
('ALM0010', 'KP. PENGARENGAN', 9, 12, 'JATINEGARA', 'CAKUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 13930),
('ALM0011', 'JL. KAMPUNG BENTENGAN III', 1, 5, 'SUNTER JAYA', 'SUNTER', 'JAKARTA UTARA', 'DKI JAKARTA', 14350),
('ALM0012', 'JL. HARAPAN NO. 37', 2, 3, 'RANGKAPAN RAYA', 'PANCORAN MAS', 'DEPOK', 'JAWA BARAT', 16435),
('ALM0013', 'GG. YUDISTIRA', 12, 3, 'MAKASAR', 'MAKASAR', 'JAKARTA TIMUR', 'DKI JAKARTA', 13570),
('ALM0014', 'JL.SUNTER MUARA NO.35C', 18, 5, 'SUNTER AGUNG', 'TANJUNG PRIOK', 'JAKARTA UTARA', 'DKI JAKARTA', 14350),
('ALM0015', 'JL. KAV. SIDOMAKMUR 2', 5, 3, 'KALIABANG TENGAH', 'KALIABANG TENGAH', 'BEKASI UTARA', 'JAWA BARAT', 17125),
('ALM0016', 'KOMP. GRAHA ALAM RAYA JL. METEOR II W6 NO.7', 4, 9, 'MARGASARI', 'BUAH BATU', 'BANDUNG', 'JAWA BARAT', 40286),
('ALM0017', 'KP. KEKUPU', 2, 3, 'RANGKAPAN RAYA', 'PANCORAN MAS', 'DEPOK', 'JAWA BARAT', 16435),
('ALM0018', 'PERSADA RAYA NO.3', 11, 11, 'MENTENG DALAM', 'TEBET', 'JAKARTA SELATAN', 'DKI JAKARTA', 12870),
('ALM0019', 'JL. DURIAN RAYA B1/12A BUMI ASRI', 2, 18, 'KUTABUMI', 'PASAR KEMIS', 'TANGERANG', 'BANTEN', 15560),
('ALM0020', 'KP PANGODOKAN ', 1, 1, 'KUTABUMI', 'PASARKEMIS', 'TANGERANG', 'BANTEN', 15560),
('ALM0021', 'KP. PULO JAHE', 3, 10, 'JATINEGARA', 'CAKUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 13930),
('ALM0022', 'JALAN KEBON BAWANG VIII NO 27', 19, 1, 'KEBON BAWANG', 'TANJUNG PRIOK', 'JAKARTA UTARA', 'DKI JAKARTA', 14320),
('ALM0023', 'JLN. BEKASI TIMUR II DALAM NO. 9', 13, 4, 'RAWABUNGA', 'JATINEGARA', 'JAKARTA TIMUR', 'DKI JAKARTA', 13350),
('ALM0024', 'RAWA KUNING', 5, 16, 'PULOGEBANG', 'CAKUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 13950),
('ALM0025', 'JL. PERCETAKAN NEGARA XI', 4, 5, 'RAWASARI', 'CEMPAKA PUTIH', 'JAKARTA PUSAT', 'DKI JAKARTA', 10570),
('ALM0026', 'KRAMAT V', 2, 3, 'LUBANG BUAYA', 'CIPAYUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 13810),
('ALM0027', 'PERUM GADUNG PERMAI BLOK E/11', 3, 16, 'BOJONG', 'KARANGTENGAH', 'CIANJUR', 'JAWA BARAT', 43281),
('ALM0028', 'JL. BALI MATRAMAN', 8, 8, 'MANGGARAI', 'TEBET', 'JAKARTA SELATAN', 'DKI JAKARTA', 0),
('ALM0029', 'JL.JATI PULO VI', 9, 5, 'JATIPULO', 'PALMERAH', 'JAKARTA BARAT', 'DKI JAKARTA', 11430),
('ALM0030', 'JL. WARUJAYA', 7, 22, 'MEKARJAYA', 'SUKMAJAYA', 'DEPOK', 'JAWA BARAT', 0),
('ALM0031', 'JALAN HAJI DALIM', 6, 2, 'PULOGADUNG', 'PULOGADUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 13260),
('ALM0032', 'JALAN ALMUBAROK III NO 75', 7, 10, 'CIPULIR', 'KEBAYORAN LAMA', 'JAKARTA SELATAN', 'DKI JAKARTA', 12230),
('ALM0033', 'JL. CAMAR', 5, 5, 'PASIR GUNUNG SELATAN', 'CIMANGGIS', 'DEPOK', 'JAWA BARAT', 16951),
('ALM0034', 'JL. CAMAR BLOK MD NO 1', 5, 5, 'PASIR GUNUNG SELATAN', 'CIMANGGIS', 'DEPOK', 'JAWA BARAT', 16951),
('ALM0035', 'JALAN KP GAGA', 7, 3, 'SEMANAN', 'KALIDERES', 'JAKARTA BARAT', 'DKI JAKARTA', 11850),
('ALM0036', 'JL. PESING GADOG NO.49', 11, 7, 'KEDOYA UTARA', 'KEBON JERUK', 'JAKARTA BARAT', 'DKI JAKARTA', 11520),
('ALM0037', 'JL. KI HAJAR DEWANTORO', 4, 6, 'GONDRONG', 'CIPONDOH', 'TANGERANG', 'BANTEN', 14150),
('ALM0038', 'JALAN GALUNGGUNG 22 NO.2', 11, 15, 'CENGKARENG TIMUR', 'CENGKARENG', 'JAKARTA BARAT', 'DKI JAKARTA', 11730),
('ALM0039', 'JL. WIJAYA 2 W16/13', 1, 10, 'MEKARBAKTI', 'PANONGAN', 'TANGERANG', 'BANTEN', 15710),
('ALM0040', 'JALAN PISANGAN BARU II', 13, 7, 'PISANGAN BARU', 'MATRAMAN', 'JAKARTA TIMUR', 'DKI JAKARTA', 13110),
('ALM0041', 'KP.PEDONGKELAN', 5, 15, 'KAYU PUTIH', 'PULOGADUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 13210),
('ALM0042', 'JALAN CIPINANG JAYA BLOK GG', 2, 8, 'CIPINANG BESAR SELATAN', 'JATINEGARA', 'JAKARTA TIMUR', 'DKI JAKARTA', 14310),
('ALM0043', 'JALAN KEMUNING DALAM 5', 13, 3, 'UTAN KAYU UTARA', 'MATRAMAN', 'JAKARTA TIMUR', 'DKI JAKARTA', 13210),
('ALM0044', 'JL KALIBATA UTARA 2', 2, 2, 'KALIBATA', 'PANCORAN', 'JAKARTA TIMUR', 'DKI JAKARTA', 19720),
('ALM0045', '', 0, 0, '', '', '', '', 0),
('ALM0046', '', 0, 0, '', '', '', '', 0),
('ALM0047', '', 0, 0, '', '', '', '', 0),
('ALM0048', '', 0, 0, '', '', '', '', 0),
('ALM0049', '', 0, 0, '', '', '', '', 0),
('ALM0050', '', 0, 0, '', '', '', '', 0),
('ALM0051', '', 0, 0, '', '', '', '', 0),
('ALM0052', '', 0, 0, '', '', '', '', 0),
('ALM0053', '', 0, 0, '', '', '', '', 0),
('ALM0054', '', 0, 0, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_amount`
--

CREATE TABLE `tbl_amount` (
  `kode_amount_ptjb` varchar(20) NOT NULL,
  `amount1` varchar(50) NOT NULL,
  `keterangan1` varchar(50) NOT NULL,
  `amount2` varchar(50) NOT NULL,
  `keterangan2` varchar(50) NOT NULL,
  `amount3` varchar(50) NOT NULL,
  `keterangan3` varchar(50) NOT NULL,
  `amount4` varchar(50) NOT NULL,
  `keterangan4` varchar(50) NOT NULL,
  `amount5` varchar(50) NOT NULL,
  `keterangan5` varchar(50) NOT NULL,
  `amount6` varchar(50) NOT NULL,
  `keterangan6` varchar(50) NOT NULL,
  `amount7` varchar(50) NOT NULL,
  `keterangan7` varchar(50) NOT NULL,
  `amount8` varchar(50) NOT NULL,
  `keterangan8` varchar(50) NOT NULL,
  `amount9` varchar(50) NOT NULL,
  `keterangan9` varchar(50) NOT NULL,
  `amount10` varchar(50) NOT NULL,
  `keterangan10` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_amount_kasbon`
--

CREATE TABLE `tbl_amount_kasbon` (
  `kode_amount` varchar(20) NOT NULL,
  `jmlh_amount` varchar(20) NOT NULL,
  `amount1` varchar(20) NOT NULL,
  `keterangan1` varchar(20) NOT NULL,
  `amount2` varchar(20) NOT NULL,
  `keterangan2` varchar(20) NOT NULL,
  `amount3` varchar(20) NOT NULL,
  `keterangan3` varchar(20) NOT NULL,
  `amount4` varchar(20) NOT NULL,
  `keterangan4` varchar(20) NOT NULL,
  `amount5` varchar(20) NOT NULL,
  `keterangan5` varchar(20) NOT NULL,
  `amount6` varchar(20) NOT NULL,
  `keterangan6` varchar(20) NOT NULL,
  `amount7` varchar(20) NOT NULL,
  `keterangan7` varchar(20) NOT NULL,
  `amount8` varchar(20) NOT NULL,
  `keterangan8` varchar(20) NOT NULL,
  `amount9` varchar(20) NOT NULL,
  `keterangan9` varchar(20) NOT NULL,
  `amount10` varchar(20) NOT NULL,
  `keterangan10` varchar(20) NOT NULL,
  `sisa_amount` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(3) NOT NULL,
  `nm_bank` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nm_bank`) VALUES
(1, 'BCA'),
(2, 'BRI'),
(3, 'MANDIRI'),
(4, 'CIMB'),
(6, 'BNI'),
(7, 'CIMB NIAGA'),
(8, 'PERMATA BANK'),
(9, 'SYARIAH MANDIRI'),
(10, 'MNC BANK');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cuti`
--

CREATE TABLE `tbl_cuti` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `total_cuti` varchar(10) NOT NULL,
  `cuti_tahunan` varchar(10) NOT NULL,
  `cuti_diambil` varchar(10) NOT NULL,
  `ambil_tahunan` varchar(10) NOT NULL,
  `cuti_belum_diambil` varchar(10) NOT NULL,
  `tahunan_blm_diambil` decimal(10,0) NOT NULL,
  `sisa_tahunan` int(10) NOT NULL,
  `sisa_cuti` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cuti`
--

INSERT INTO `tbl_cuti` (`id`, `nip`, `total_cuti`, `cuti_tahunan`, `cuti_diambil`, `ambil_tahunan`, `cuti_belum_diambil`, `tahunan_blm_diambil`, `sisa_tahunan`, `sisa_cuti`) VALUES
(1, '18150', '12', '12', '5', '5', '7', '7', 7, '7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_agama`
--

CREATE TABLE `tbl_data_agama` (
  `kode_agama` varchar(20) NOT NULL,
  `nama_agama` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_agama`
--

INSERT INTO `tbl_data_agama` (`kode_agama`, `nama_agama`) VALUES
('AGM0001', 'ISLAM'),
('AGM0002', 'KRISTEN PROTESTAN'),
('AGM0003', 'KRISTEN KATHOLIK'),
('AGM0004', 'HINDU'),
('AGM0005', 'BUDHA'),
('AGM0006', 'KONGHUCU');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_bank`
--

CREATE TABLE `tbl_data_bank` (
  `kode_bank` varchar(20) NOT NULL,
  `nama_bank` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_bank`
--

INSERT INTO `tbl_data_bank` (`kode_bank`, `nama_bank`) VALUES
('BNK0001', 'MANDIRI'),
('BNK0002', 'SYARIAH MANDIRI'),
('BNK0003', 'BCA'),
('BNK0004', 'BRI'),
('BNK0005', 'BNI'),
('BNK0006', 'CIMB NIAGA'),
('BNK0007', 'PERMATA BANK'),
('BNK0008', 'BCA SYARIAH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_divisi`
--

CREATE TABLE `tbl_data_divisi` (
  `kode_divisi` varchar(20) NOT NULL,
  `nama_divisi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_divisi`
--

INSERT INTO `tbl_data_divisi` (`kode_divisi`, `nama_divisi`) VALUES
('DIV0001', 'OFFICE'),
('DIV0002', 'DIV PROVISIONING'),
('DIV0003', 'DIV COMMISIONING TEST'),
('DIV0004', 'DIV RADIO ALITA'),
('DIV0005', 'DIV LINTASARTA'),
('DIV0006', 'FREE AGENT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_email_pegawai`
--

CREATE TABLE `tbl_data_email_pegawai` (
  `nip_pegawai` varchar(20) NOT NULL,
  `email_pegawai` text NOT NULL,
  `domain` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_email_pegawai`
--

INSERT INTO `tbl_data_email_pegawai` (`nip_pegawai`, `email_pegawai`, `domain`) VALUES
('1235', 'hr', '@lrcom.co.id'),
('18150', 'ari.yanto', '@lrcom.co.id'),
('18151', 'rizky.pratama', '@lrcom.co.id'),
('13058', 'achmad.syarif', '@lrcom.co.id'),
('18149', 'dea.handiarto', '@lrcom.co.id'),
('17143', 'ade.syauki', '@lrcom.co.id'),
('13049', 'agnes.eka', '@lrcom.co.id'),
('15107', 'ahmad.ajijudin', '@lrcom.co.id'),
('18148', 'aryaerlangga', '@lrcom.co.id'),
('15095', 'bangun.prasetyo', '@lrcom.co.id'),
('18147', 'budimanp24', '@lrcom.co.id'),
('17144', 'jaffarsdk', '@lrcom.co.id'),
('17135', 'dobi', '@lrcom.co.id'),
('12001', 'erlan.sutrajat', '@lrcom.co.id'),
('14091', 'eti.fitriani', '@lrcom.co.id'),
('15097', 'farhanr', '@lrcom.co.id'),
('15098', 'galuh.devi', '@lrcom.co.id'),
('16129', 'halim.rachman', '@lrcom.co.id'),
('12017', 'irwan.setiawan', '@lrcom.co.id'),
('16132', 'joshuailham', '@lrcom.co.id'),
('15116', 'luthfian.syauqi', '@lrcom.co.id'),
('15100', 'mgilang', '@lrcom.co.id'),
('16130', 'muadzazmi', '@lrcom.co.id'),
('17137', 'muhammad.afif', '@lrcom.co.id'),
('15121', 'muhammad.naufal', '@lrcom.co.id'),
('15103', 'nmufid', '@lrcom.co.id'),
('14090', 'rahmania.ramadhani', '@lrcom.co.id'),
('18146', 'rian.anang', '@lrcom.co.id'),
('12003', 'riskaadrini', '@lrcom.co.id'),
('13057', 'toni', '@lrcom.co.id'),
('14069', 'badar', '@lrcom.co.id');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_jabatan`
--

CREATE TABLE `tbl_data_jabatan` (
  `kode_jabatan` varchar(20) NOT NULL,
  `nama_jabatan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_jabatan`
--

INSERT INTO `tbl_data_jabatan` (`kode_jabatan`, `nama_jabatan`) VALUES
('JBT0001', 'DIREKTUR UTAMA'),
('JBT0002', 'DIREKTUR'),
('JBT0003', 'HRD MANAGER'),
('JBT0004', 'LEADER ADMINISTRASI'),
('JBT0005', 'ADMINISTRASI'),
('JBT0006', 'PERSONAL MANAGER'),
('JBT0007', 'PROGRAMMER'),
('JBT0008', 'LEADER'),
('JBT0009', 'TEKNISI'),
('JBT0010', 'MARKETING'),
('JBT0011', 'OFFICE BOY'),
('JBT0012', 'FREE AGENT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_lokasi`
--

CREATE TABLE `tbl_data_lokasi` (
  `kode_lokasi` varchar(20) NOT NULL,
  `nama_lokasi` text NOT NULL,
  `pj_lokasi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_lokasi`
--

INSERT INTO `tbl_data_lokasi` (`kode_lokasi`, `nama_lokasi`, `pj_lokasi`) VALUES
('LOC0001', 'RUANG DIREKTUR UTAMA', 'ERLAN SUTRAJAT'),
('LOC0002', 'RUANG DIREKTUR', 'RISKA ADRINI'),
('LOC0003', 'RUANG RAPAT', 'BADAR SURAWAN'),
('LOC0004', 'RUANG ADMINISTRASI', 'RAHMANIA RAMADHANI'),
('LOC0005', 'RUANG TEKNISI', 'IRWAN SETIAWAN'),
('LOC0006', 'RUANG HRD', 'DEA'),
('LOC0007', 'MUSHOLLAH', 'BADAR SURAWAN'),
('LOC0008', 'DAPUR', 'BADAR SURAWAN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_status_kawin`
--

CREATE TABLE `tbl_data_status_kawin` (
  `id_status_kawin` varchar(20) NOT NULL,
  `status_kawin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_status_kawin`
--

INSERT INTO `tbl_data_status_kawin` (`id_status_kawin`, `status_kawin`) VALUES
('STK0001', 'MENIKAH'),
('STK0002', 'BELUM MENIKAH'),
('STK0003', 'DUDA'),
('STK0004', 'JANDA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_status_pegawai`
--

CREATE TABLE `tbl_data_status_pegawai` (
  `kode_status` varchar(20) NOT NULL,
  `nama_status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_status_pegawai`
--

INSERT INTO `tbl_data_status_pegawai` (`kode_status`, `nama_status`) VALUES
('STP0001', 'TETAP'),
('STP0002', 'KONTRAK'),
('STP0003', 'MAGANG'),
('STP0004', 'SUBCON'),
('STP0005', 'FREELANCE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_cuti`
--

CREATE TABLE `tbl_detail_cuti` (
  `kode_cuti` varchar(30) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `total` varchar(10) NOT NULL,
  `keperluan` text NOT NULL,
  `ket` enum('Accept','Pending','Reject') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_cuti`
--

INSERT INTO `tbl_detail_cuti` (`kode_cuti`, `nip`, `dari`, `sampai`, `total`, `keperluan`, `ket`) VALUES
('01/CPLR/X/2018', '18150', '2018-10-30', '2018-11-11', '10', 'sendiri', 'Pending');

--
-- Triggers `tbl_detail_cuti`
--
DELIMITER $$
CREATE TRIGGER `cuti` AFTER UPDATE ON `tbl_detail_cuti` FOR EACH ROW BEGIN
IF(NEW.ket = 'Accept') THEN
	UPDATE tbl_cuti SET cuti_diambil = cuti_diambil + OLD.total, 
    sisa_cuti = sisa_cuti - OLD.total, tahunan_blm_diambil = cuti_tahunan - OLD.total,
    sisa_tahunan = cuti_tahunan - ambil_tahunan, 
    cuti_belum_diambil = total_cuti - cuti_diambil WHERE nip = OLD.nip;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_pendidikan`
--

CREATE TABLE `tbl_detail_pendidikan` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `jenjang` text NOT NULL,
  `nama_instansi` text NOT NULL,
  `tahun_ajaran` text NOT NULL,
  `masa_didik` text NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `ket_ijazah` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_pendidikan`
--

INSERT INTO `tbl_detail_pendidikan` (`id`, `nip`, `jenjang`, `nama_instansi`, `tahun_ajaran`, `masa_didik`, `tahun_lulus`, `ket_ijazah`) VALUES
(4, '18150', 'SD', 'SD NEGERI SUKAMAJU 2', '2006 - 2012', '6', 2012, 'YA'),
(5, '18150', 'SMP', 'SMP NEGERI 7 DEPOK', '2012 - 2015', '3', 2015, 'YA'),
(6, '18150', 'SMA/K/Sederajat', 'SMK NEGERI 1 DEPOK', '2015 - 2018', '3', 2018, 'YA'),
(7, '18150', 'S1', 'UNIVERSITAS MERCU BUANA', '2018 - 2022', '4', 2022, 'TIDAK');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dokumen`
--

CREATE TABLE `tbl_dokumen` (
  `id_dokumen` varchar(20) NOT NULL,
  `no_ktp` text NOT NULL,
  `no_kk` text NOT NULL,
  `no_sim_a` text NOT NULL,
  `no_sim_c` text NOT NULL,
  `no_bpjs_kes` text NOT NULL,
  `no_bpjs_tk` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dokumen`
--

INSERT INTO `tbl_dokumen` (`id_dokumen`, `no_ktp`, `no_kk`, `no_sim_a`, `no_sim_c`, `no_bpjs_kes`, `no_bpjs_tk`) VALUES
('DKM0001', '3276100404000002', '3276102805140002', '0', '1221170600432', '0', '0'),
('DKM0003', '1', '1', '1', '1', '1', '1'),
('DKM0004', '', '', '', '', '', ''),
('DKM0005', '', '', '', '', '', ''),
('DKM0006', '', '', '', '', '', ''),
('DKM0007', '', '', '', '', '', ''),
('DKM0008', '', '', '', '', '', ''),
('DKM0009', '', '', '', '', '', ''),
('DKM0010', '', '', '', '', '', ''),
('DKM0011', '', '', '', '', '', ''),
('DKM0012', '', '', '', '', '', ''),
('DKM0013', '', '', '', '', '', ''),
('DKM0014', '', '', '', '', '', ''),
('DKM0015', '', '', '', '', '', ''),
('DKM0016', '', '', '', '', '', ''),
('DKM0017', '', '', '', '', '', ''),
('DKM0018', '', '', '', '', '', ''),
('DKM0019', '', '', '', '', '', ''),
('DKM0020', '', '', '', '', '', ''),
('DKM0021', '', '', '', '', '', ''),
('DKM0022', '', '', '', '', '', ''),
('DKM0023', '', '', '', '', '', ''),
('DKM0024', '', '', '', '', '', ''),
('DKM0025', '', '', '', '', '', ''),
('DKM0026', '', '', '', '', '', ''),
('DKM0027', '', '', '', '', '', ''),
('DKM0028', '', '', '', '', '', ''),
('DKM0029', '', '', '', '', '', ''),
('DKM0030', '', '', '', '', '', ''),
('DKM0031', '', '', '', '', '', ''),
('DKM0032', '', '', '', '', '', ''),
('DKM0033', '', '', '', '', '', ''),
('DKM0034', '', '', '', '', '', ''),
('DKM0035', '', '', '', '', '', ''),
('DKM0036', '', '', '', '', '', ''),
('DKM0037', '', '', '', '', '', ''),
('DKM0038', '', '', '', '', '', ''),
('DKM0039', '', '', '', '', '', ''),
('DKM0040', '', '', '', '', '', ''),
('DKM0041', '', '', '', '', '', ''),
('DKM0042', '', '', '', '', '', ''),
('DKM0043', '', '', '', '', '', ''),
('DKM0044', '', '', '', '', '', ''),
('DKM0045', '', '', '', '', '', ''),
('DKM0046', '', '', '', '', '', ''),
('DKM0047', '', '', '', '', '', ''),
('DKM0048', '', '', '', '', '', ''),
('DKM0049', '', '', '', '', '', ''),
('DKM0050', '', '', '', '', '', ''),
('DKM0051', '', '', '', '', '', ''),
('DKM0052', '', '', '', '', '', ''),
('DKM0053', '', '', '', '', '', ''),
('DKM0054', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email`
--

CREATE TABLE `tbl_email` (
  `id_email` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nm_email` varchar(50) NOT NULL,
  `domain` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_email`
--

INSERT INTO `tbl_email` (`id_email`, `nik`, `nm_email`, `domain`) VALUES
(1, '1235', 'hr', '@lrcom.co.id'),
(2, '18150', 'ari.yanto', '@lrcom.co.id'),
(3, '18151', 'rizky.pratama', '@lrcom.co.id'),
(4, '13058', 'achmad.syarif', '@lrcom.co.id'),
(5, '18149', 'dea.handiarto', '@lrcom.co.id'),
(6, '17143', 'ade.syauki', '@lrcom.co.id'),
(7, '13049', 'agnes.eka', '@lrcom.co.id'),
(8, '15107', 'ahmad.ajijudin', '@lrcom.co.id'),
(10, '18148', 'aryaerlangga', '@lrcom.co.id'),
(11, '15095', 'bangun.prasetyo', '@lrcom.co.id'),
(12, '18147', 'budimanp24', '@lrcom.co.id'),
(14, '17144', 'jaffarsdk', '@lrcom.co.id'),
(15, '17135', 'dobi', '@lrcom.co.id'),
(16, '12001', 'erlan.sutrajat', '@lrcom.co.id'),
(17, '14091', 'eti.fitriani', '@lrcom.co.id'),
(18, '15097', 'farhanr', '@lrcom.co.id'),
(19, '15908', 'galuh.devi', '@lrcom.co.id'),
(20, '16129', 'halim.rachman', '@lrcom.co.id'),
(21, '12017', 'irwan.setiawan', '@lrcom.co.id'),
(22, '16132', 'joshuailham', '@lrcom.co.id'),
(23, '15116', 'luthfian.syauqi', '@lrcom.co.id'),
(24, '15100', 'mgilang', '@lrcom.co.id'),
(25, '16130', 'muadzazmi', '@lrcom.co.id'),
(26, '17137', 'muhammad.afif', '@lrcom.co.id'),
(27, '15121', 'muhammad.naufal', '@lrcom.co.id'),
(28, '15103', 'nmufid', '@lrcom.co.id'),
(29, '14090', 'rahmania.ramadhani', '@lrcom.co.id'),
(30, '18146', 'rian.anang', '@lrcom.co.id'),
(31, '12003', 'riskaadrini', '@lrcom.co.id'),
(32, '17139', 'rizqy.aditama', '@lrcom.co.id'),
(33, '13057', 'toni', '@lrcom.co.id'),
(34, '14069', 'badar', '@lrcom.co.id');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `id_file` varchar(20) NOT NULL,
  `foto` text NOT NULL,
  `ktp` text NOT NULL,
  `kk` text NOT NULL,
  `sim_a` text NOT NULL,
  `sim_c` text NOT NULL,
  `ijazah` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_file`
--

INSERT INTO `tbl_file` (`id_file`, `foto`, `ktp`, `kk`, `sim_a`, `sim_c`, `ijazah`) VALUES
('FLE0001', '_file/18150-foto-profil.jpg', '', '', '', '', ''),
('FLE0002', '', '', '', '', '', ''),
('FLE0004', '', '', '', '', '', ''),
('FLE0005', '', '', '', '', '', ''),
('FLE0006', '', '', '', '', '', ''),
('FLE0007', '', '', '', '', '', ''),
('FLE0008', '', '', '', '', '', ''),
('FLE0009', '', '', '', '', '', ''),
('FLE0010', '', '', '', '', '', ''),
('FLE0011', '', '', '', '', '', ''),
('FLE0012', '', '', '', '', '', ''),
('FLE0013', '', '', '', '', '', ''),
('FLE0014', '', '', '', '', '', ''),
('FLE0015', '', '', '', '', '', ''),
('FLE0016', '', '', '', '', '', ''),
('FLE0017', '', '', '', '', '', ''),
('FLE0018', '', '', '', '', '', ''),
('FLE0019', '', '', '', '', '', ''),
('FLE0020', '', '', '', '', '', ''),
('FLE0021', '', '', '', '', '', ''),
('FLE0022', '', '', '', '', '', ''),
('FLE0023', '', '', '', '', '', ''),
('FLE0024', '', '', '', '', '', ''),
('FLE0025', '', '', '', '', '', ''),
('FLE0026', '', '', '', '', '', ''),
('FLE0027', '', '', '', '', '', ''),
('FLE0028', '', '', '', '', '', ''),
('FLE0029', '', '', '', '', '', ''),
('FLE0030', '', '', '', '', '', ''),
('FLE0031', '', '', '', '', '', ''),
('FLE0032', '', '', '', '', '', ''),
('FLE0033', '', '', '', '', '', ''),
('FLE0034', '', '', '', '', '', ''),
('FLE0035', '', '', '', '', '', ''),
('FLE0036', '', '', '', '', '', ''),
('FLE0037', '', '', '', '', '', ''),
('FLE0038', '', '', '', '', '', ''),
('FLE0039', '', '', '', '', '', ''),
('FLE0040', '', '', '', '', '', ''),
('FLE0041', '', '', '', '', '', ''),
('FLE0042', '', '', '', '', '', ''),
('FLE0043', '', '', '', '', '', ''),
('FLE0044', '', '', '', '', '', ''),
('FLE0045', '', '', '', '', '', ''),
('FLE0046', '', '', '', '', '', ''),
('FLE0047', '', '', '', '', '', ''),
('FLE0048', '', '', '', '', '', ''),
('FLE0049', '', '', '', '', '', ''),
('FLE0050', '', '', '', '', '', ''),
('FLE0051', '', '', '', '', '', ''),
('FLE0052', '', '', '', '', '', ''),
('FLE0053', '', '', '', '', '', ''),
('FLE0054', '', '', '', '', '', ''),
('FLE0055', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harga_barang`
--

CREATE TABLE `tbl_harga_barang` (
  `no_inventory` varchar(40) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `lokasi_beli` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income`
--

CREATE TABLE `tbl_income` (
  `kd_income` varchar(40) NOT NULL,
  `wo_id` varchar(50) NOT NULL,
  `so_id` varchar(50) NOT NULL,
  `no_ba` varchar(50) NOT NULL,
  `no_boq` varchar(50) NOT NULL,
  `tglba` date NOT NULL,
  `deskripsi` text NOT NULL,
  `pm` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `waktu_input` datetime NOT NULL,
  `ket` enum('first','') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income_detail`
--

CREATE TABLE `tbl_income_detail` (
  `kd_detail` varchar(40) NOT NULL,
  `verifikasi` date NOT NULL,
  `no_pb` varchar(50) NOT NULL,
  `pb_date` date NOT NULL,
  `handover` date NOT NULL,
  `po_no` varchar(20) NOT NULL,
  `po_date` date NOT NULL,
  `req_gr` date NOT NULL,
  `inv_no` varchar(50) NOT NULL,
  `pay_stat` enum('PAID','UNPAID','VOID') NOT NULL,
  `pay_date` date NOT NULL,
  `final_stat` enum('OPEN','CLOSE') NOT NULL,
  `notes` text NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory`
--

CREATE TABLE `tbl_inventory` (
  `no_inventory` varchar(40) NOT NULL,
  `nama_barang` text NOT NULL,
  `serial_number` varchar(30) NOT NULL,
  `tipe` enum('Elektronik','Non Elektronik') NOT NULL,
  `deskripsi` text NOT NULL,
  `lokasi` text NOT NULL,
  `pj` text NOT NULL,
  `ket` text NOT NULL,
  `stat` enum('Pending1','Pending2','Pending3','User1','Finance2','User2','Finance3','Approved','Rejected','PendingPinjam1','PendingPinjam2','Pinjam','PendingKembali1','PendingKembali2') NOT NULL,
  `user` enum('ADMIN','ADMIN TEKNIS','FINANCE','SUPER ADMIN','USER','ADMIN FINANCE','ADMIN GUDANG') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inventory`
--

INSERT INTO `tbl_inventory` (`no_inventory`, `nama_barang`, `serial_number`, `tipe`, `deskripsi`, `lokasi`, `pj`, `ket`, `stat`, `user`) VALUES
('NLE_221118_101712', 'MEJA BIRO', '', 'Non Elektronik', '', 'RUANG DIREKTUR UTAMA', 'Erlan Sutrajat', 'Baik', 'Approved', ''),
('ELK_221118_100548', 'LAPTOP THINKPAD T440', '', 'Elektronik', '', 'RUANG DIREKTUR UTAMA', 'Erlan Sutrajat', 'Baik', 'Approved', ''),
('NLE_221118_101812', 'SOFA TAMU HITAM', '', 'Non Elektronik', '', 'RUANG DIREKTUR UTAMA', 'Erlan Sutrajat', 'Baik', 'Approved', ''),
('NLE_221118_101859', 'SOFA TAMU HITAM', '', 'Non Elektronik', '', 'RUANG DIREKTUR UTAMA', 'Erlan Sutrajat', 'Baik', 'Approved', ''),
('NLE_221118_101933', 'MEJA TAMU KACA', '', 'Non Elektronik', '', 'RUANG DIREKTUR UTAMA', 'Erlan Sutrajat', 'Baik', 'Approved', ''),
('NLE_221118_102018', 'LEMARI PENDEK', '', 'Non Elektronik', '', 'RUANG DIREKTUR UTAMA', 'Erlan Sutrajat', 'Baik', 'Approved', ''),
('NLE_221118_102217', 'MEJA BIRO KACA', '', 'Non Elektronik', '', 'RUANG DIREKTUR', 'Riska Adrini', 'baik', 'Approved', ''),
('NLE_221118_102303', 'KURSI DIREKTUR', '', 'Non Elektronik', '', 'RUANG DIREKTUR', 'Riska Adrini', 'Baik', 'Approved', ''),
('NLE_221118_102401', 'KURSI DIREKTUR', '', 'Non Elektronik', '', 'RUANG DIREKTUR UTAMA', 'Erlan Sutrajat', 'Baik', 'Approved', ''),
('NLE_221118_102744', 'LEMARI BUKU', '', 'Non Elektronik', '', 'RUANG DIREKTUR', 'Riska Adrini', 'Baik', 'Approved', ''),
('NLE_221118_103155', 'MEJA RAPAT', '', 'Non Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'Baik', 'Approved', ''),
('NLE_221118_103321', 'KURSI MERAH', '', 'Non Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'Baik', 'Approved', ''),
('NLE_221118_103406', 'KURSI MERAH', '', 'Non Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'Baik', 'Approved', ''),
('NLE_221118_121209', 'KURSI MERAH', '', 'Non Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'Baik', 'Approved', ''),
('NLE_221118_121412', 'KURSI UNGU', '', 'Non Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'Baik', 'Approved', ''),
('NLE_221118_121453', 'KURSI UNGU', '', 'Non Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'Baik', 'Approved', ''),
('NLE_221118_121529', 'KURSI UNGU', '', 'Non Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'baik', 'Approved', ''),
('ELK_221118_121853', 'KIPAS ANGIN DINDING', '', 'Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'Baik', 'Approved', ''),
('ELK_221118_121723', 'KIPAS ANGIN CEILING', '', 'Elektronik', '', 'RUANG RAPAT', 'badar surawan', 'Rusak', 'Approved', ''),
('NLE_221118_122836', 'MEJA BINTANG', '', 'Non Elektronik', '', 'RUANG ADMINISTRASI', 'Galuh', 'Baik', 'Approved', ''),
('ELK_221118_123001', 'KIPAS ANGIN CEILING', '', 'Elektronik', '', 'RUANG ADMINISTRASI', 'Galuh', 'Baik', 'Approved', ''),
('ELK_221118_123107', 'JAM DINDING', '', 'Elektronik', '', 'RUANG ADMINISTRASI', 'Galuh', 'Baik', 'Approved', ''),
('NLE_221118_123218', 'LEMARI BUKU KACA', '', 'Non Elektronik', '', 'RUANG ADMINISTRASI', 'Galuh', 'Baik', 'Approved', '');

--
-- Triggers `tbl_inventory`
--
DELIMITER $$
CREATE TRIGGER `hapus` AFTER DELETE ON `tbl_inventory` FOR EACH ROW BEGIN
DELETE FROM tbl_harga_barang WHERE no_inventory = OLD.no_inventory;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jabatan`
--

CREATE TABLE `tbl_jabatan` (
  `id_jabatan` varchar(20) NOT NULL,
  `jabatan` text NOT NULL,
  `divisi` text NOT NULL,
  `no_npwp` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_mulai_kontrak_1` date NOT NULL,
  `tgl_selesai_kontrak_1` date NOT NULL,
  `tgl_mulai_kontrak_2` date NOT NULL,
  `tgl_selesai_kontrak_2` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`id_jabatan`, `jabatan`, `divisi`, `no_npwp`, `tgl_masuk`, `tgl_mulai_kontrak_1`, `tgl_selesai_kontrak_1`, `tgl_mulai_kontrak_2`, `tgl_selesai_kontrak_2`) VALUES
('JBT0001', 'JBT0007', 'DIV0001', '85.664.916.5-412.000', '2018-05-07', '2018-05-07', '2018-08-31', '2018-09-01', '2019-08-31'),
('JBT0003', 'JBT0012', 'DIV0001', '0', '2018-10-18', '2018-11-02', '2018-11-09', '2018-11-10', '2018-11-24'),
('JBT0004', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0005', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0006', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0007', 'JBT0003', 'Pilih Divisi', '84.732.792.1-412.000', '2018-03-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0008', 'JBT0009', 'Pilih Divisi', '84.934.199.5-003.000', '2018-06-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0009', 'JBT0009', 'Pilih Divisi', '84.385.598.2-008.000', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0010', 'JBT0009', 'Pilih Divisi', '66.661.073.8-004.000', '2018-02-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0011', 'JBT0009', 'Pilih Divisi', '76.773.567.3-048.000', '2017-11-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0012', 'JBT0009', 'Pilih Divisi', '73.259.100.3-411.000', '2017-11-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0013', 'JBT0009', 'Pilih Divisi', '81.663.274.9-005.000', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0014', 'JBT0009', 'Pilih Divisi', '83.388.103.0-048.000', '2015-04-12', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0015', 'JBT0009', 'Pilih Divisi', '81.076.487.8-432.000', '2017-01-04', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0016', 'JBT0009', 'Pilih Divisi', '79.919.259.2-429.000', '2016-09-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0017', 'JBT0009', 'Pilih Divisi', '66.010.755.8-412.000', '2013-08-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0018', 'JBT0009', 'Pilih Divisi', '75.600.736.5-015.000', '2015-09-07', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0019', 'JBT0009', 'Pilih Divisi', '75.416.017.4-418.000', '2015-06-11', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0020', 'JBT0009', 'Pilih Divisi', '75.836.431.9-402.000', '2015-06-08', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0021', 'JBT0009', 'Pilih Divisi', '73.345.596.8-004.000', '2015-04-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0022', 'JBT0009', 'Pilih Divisi', '73.424.138.3-042.000', '2015-04-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0023', 'JBT0005', 'Pilih Divisi', '73.342.290.1-002.000', '2015-04-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0024', 'JBT0009', 'Pilih Divisi', '73.358.160.7-006.000', '2015-04-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0025', 'JBT0010', 'Pilih Divisi', '73.395.092.7-024.000', '0000-11-30', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0026', 'JBT0005', 'Pilih Divisi', '36.744.740.6-009.000', '2014-11-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0027', 'JBT0005', 'Pilih Divisi', '72.689.748.1-406.000', '2014-10-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0028', 'JBT0011', 'Pilih Divisi', '77.674.750.3-015.000', '2014-02-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0029', 'JBT0005', 'Pilih Divisi', '87.201.214.1-031.000', '2013-01-10', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0030', 'JBT0009', 'Pilih Divisi', '36.238.919.9-412.000', '2013-10-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0031', 'JBT0005', 'Pilih Divisi', '66.038.781.2-003.000', '2013-09-02', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0032', 'JBT0009', 'Pilih Divisi', '54.293.089.6-013.000', '2012-10-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0033', 'JBT0002', 'Pilih Divisi', '54.292.579.7-412.000', '0000-11-30', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0034', 'JBT0001', 'Pilih Divisi', '14.254.119.2-412.000', '2012-04-15', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0035', 'JBT0009', 'Pilih Divisi', '-', '2018-09-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0036', 'JBT0009', 'Pilih Divisi', '', '2018-09-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0037', 'JBT0009', 'Pilih Divisi', '', '2018-09-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0038', 'JBT0009', 'Pilih Divisi', '', '2018-09-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0039', 'JBT0009', 'Pilih Divisi', '', '2018-09-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0040', 'JBT0009', 'Pilih Divisi', '', '2018-05-04', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0041', 'JBT0009', 'Pilih Divisi', '', '2018-05-14', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0042', 'JBT0009', 'Pilih Divisi', '', '2018-05-14', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0043', 'JBT0009', 'Pilih Divisi', '', '2018-05-14', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0044', 'JBT0009', 'Pilih Divisi', '', '2018-05-14', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0045', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0046', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0047', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0048', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0049', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0050', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0051', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0052', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0053', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
('JBT0054', 'Pilih Jabatan', 'Pilih Divisi', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kasbon`
--

CREATE TABLE `tbl_kasbon` (
  `id_kasbon` int(11) NOT NULL,
  `kode_status` varchar(40) NOT NULL,
  `kode_amount` varchar(40) NOT NULL,
  `wo_id` varchar(100) NOT NULL,
  `so_id` varchar(100) NOT NULL,
  `no_vr` varchar(100) NOT NULL,
  `tgl_jalan` varchar(20) NOT NULL,
  `tgl_input` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama_project` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_kasbon`
--
DELIMITER $$
CREATE TRIGGER `after_delete_kasbon` AFTER DELETE ON `tbl_kasbon` FOR EACH ROW BEGIN
Delete from tbl_amount_kasbon where kode_amount = OLD.kode_amount;
Delete from tbl_status_kasbon where kode_status = OLD.kode_status;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelahiran`
--

CREATE TABLE `tbl_kelahiran` (
  `id_lahir` varchar(20) NOT NULL,
  `tmpt_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `agama` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelahiran`
--

INSERT INTO `tbl_kelahiran` (`id_lahir`, `tmpt_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`) VALUES
('KLH0001', 'BOGOR', '2000-04-04', 'LK', 'AGM0001'),
('KLH0003', 'A', '2018-10-17', 'LK', 'AGM0001'),
('KLH0004', '', '0000-00-00', 'LK', 'Pilih Agama'),
('KLH0005', 'JAKARTA', '2018-11-07', 'LK', 'AGM0001'),
('KLH0006', 'JAKARTA', '2018-11-07', 'P', 'AGM0001'),
('KLH0007', 'BOGOR', '1996-05-03', 'P', 'AGM0001'),
('KLH0008', 'JAKARTA', '1999-05-23', 'LK', 'AGM0001'),
('KLH0009', 'JAKARTA', '1999-08-24', 'LK', 'AGM0001'),
('KLH0010', 'JAKARTA', '1994-03-09', 'LK', 'AGM0001'),
('KLH0011', 'JAKARTA', '1993-12-30', 'LK', 'AGM0001'),
('KLH0012', 'JAKARTA', '1992-08-14', 'LK', 'AGM0001'),
('KLH0013', 'JAKARTA', '1999-03-13', 'LK', 'AGM0001'),
('KLH0014', 'PONOROGO', '1996-10-27', 'LK', 'AGM0001'),
('KLH0015', 'PEKANBARU', '1996-02-19', 'LK', 'AGM0001'),
('KLH0016', 'BANDUNG', '1995-05-28', 'LK', 'AGM0001'),
('KLH0017', 'JAKARTA', '1995-01-27', 'LK', 'AGM0001'),
('KLH0018', 'JAKARTA', '1997-07-04', 'LK', 'AGM0001'),
('KLH0019', 'TANGERANG', '1997-08-23', 'LK', 'AGM0001'),
('KLH0020', 'SERANG', '1997-07-20', 'LK', 'AGM0001'),
('KLH0021', 'BANJARNEGARA', '1996-06-24', 'LK', 'AGM0001'),
('KLH0022', 'JAKARTA', '1996-01-17', 'LK', 'AGM0001'),
('KLH0023', 'JAKARTA', '1997-05-29', 'P', 'AGM0001'),
('KLH0024', 'JAKARTA', '1997-01-13', 'LK', 'AGM0001'),
('KLH0025', 'BEKASI', '1996-04-15', 'LK', 'AGM0001'),
('KLH0026', 'JAKARTA', '1993-02-04', 'P', 'AGM0001'),
('KLH0027', 'CIANJUR', '1996-02-05', 'P', 'AGM0001'),
('KLH0028', 'JAKARTA', '1972-03-13', 'LK', 'AGM0001'),
('KLH0029', 'JAKARTA', '1978-11-15', 'LK', 'AGM0001'),
('KLH0030', 'CIREBON', '1989-09-12', 'LK', 'AGM0001'),
('KLH0031', 'JAKARTA', '1994-08-16', 'P', 'AGM0001'),
('KLH0032', 'JAKARTA', '1986-08-13', 'LK', 'AGM0001'),
('KLH0033', 'JAKARTA', '1991-11-15', 'P', 'AGM0001'),
('KLH0034', 'BANDUNG', '1965-07-11', 'LK', 'AGM0001'),
('KLH0035', 'BOYOLALI', '2000-05-08', 'LK', 'AGM0001'),
('KLH0036', 'JAKARTA', '2001-02-15', 'LK', 'AGM0001'),
('KLH0037', 'NGAWI', '2018-09-03', 'LK', 'AGM0001'),
('KLH0038', 'JAKARTA', '2001-09-04', 'LK', 'AGM0001'),
('KLH0039', 'MAGELANG', '2001-05-01', 'LK', 'AGM0001'),
('KLH0040', 'JAKARTA', '2000-11-02', 'LK', 'AGM0001'),
('KLH0041', 'JAKARTA', '2000-08-14', 'LK', 'AGM0001'),
('KLH0042', 'JAKARTA', '2000-01-25', 'LK', 'AGM0001'),
('KLH0043', 'JAKARTA', '2000-09-29', 'LK', 'AGM0001'),
('KLH0044', 'JAKARTA', '2000-01-03', 'LK', 'AGM0001'),
('KLH0045', '', '0000-00-00', '', 'Pilih Agama'),
('KLH0046', '', '0000-00-00', 'LK', 'Pilih Agama'),
('KLH0047', '', '0000-00-00', 'LK', 'Pilih Agama'),
('KLH0048', '', '0000-00-00', 'LK', 'Pilih Agama'),
('KLH0049', '', '0000-00-00', 'LK', 'Pilih Agama'),
('KLH0050', '', '0000-00-00', 'LK', 'Pilih Agama'),
('KLH0051', '', '0000-00-00', 'LK', 'Pilih Agama'),
('KLH0052', '', '0000-00-00', 'LK', 'Pilih Agama'),
('KLH0053', '', '0000-00-00', '', 'Pilih Agama'),
('KLH0054', '', '0000-00-00', '', 'Pilih Agama');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kode_income`
--

CREATE TABLE `tbl_kode_income` (
  `id_income` int(11) NOT NULL,
  `kd_income` varchar(40) NOT NULL,
  `kd_detail` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_kode_income`
--
DELIMITER $$
CREATE TRIGGER `after_delete_income` AFTER DELETE ON `tbl_kode_income` FOR EACH ROW BEGIN
DELETE FROM tbl_income WHERE kd_income = OLD.kd_income;
DELETE FROM tbl_income_detail WHERE kd_detail = OLD.kd_detail;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `level` enum('SUPER ADMIN','ADMIN','USER','ADMIN TEKNIS','ADMIN FINANCE') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`level`) VALUES
('SUPER ADMIN'),
('ADMIN'),
('USER'),
('ADMIN TEKNIS'),
('ADMIN FINANCE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user_admin`
--

CREATE TABLE `tbl_level_user_admin` (
  `level` enum('USER') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user_admin`
--

INSERT INTO `tbl_level_user_admin` (`level`) VALUES
('USER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user_super`
--

CREATE TABLE `tbl_level_user_super` (
  `level` enum('ADMIN','ADMIN TEKNIS','ADMIN FINANCE','USER','ADMIN GUDANG','SUPER ADMIN') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user_super`
--

INSERT INTO `tbl_level_user_super` (`level`) VALUES
('ADMIN'),
('ADMIN TEKNIS'),
('ADMIN FINANCE'),
('USER'),
('ADMIN GUDANG'),
('SUPER ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_masa`
--

CREATE TABLE `tbl_masa` (
  `masa` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_masa`
--

INSERT INTO `tbl_masa` (`masa`) VALUES
('BULAN'),
('HARI'),
('TAHUN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `judul`, `deskripsi`, `tanggal`) VALUES
(1, 'Test', 'Nyoba Doang', '2018-10-04'),
(2, 'Test Lagi', 'Nyoba Lagi', '2018-09-04'),
(3, 'kal', 'akls', '2018-10-05'),
(4, 'askd', 'aklsjd', '2018-10-01'),
(5, 'ue', 'kajd', '2018-10-02'),
(6, 'mxm', 'mxmx', '2018-10-02'),
(7, 'lla', 'aklsjdallala', '2018-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_no_telp`
--

CREATE TABLE `tbl_no_telp` (
  `id_telp` varchar(20) NOT NULL,
  `telp` text NOT NULL,
  `hp` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_no_telp`
--

INSERT INTO `tbl_no_telp` (`id_telp`, `telp`, `hp`) VALUES
('TLP0001', '(0__) ___-____', '081389061742'),
('TLP0003', '(0__) ___-____', '0'),
('TLP0004', '', ''),
('TLP0005', '', ''),
('TLP0006', '', ''),
('TLP0007', '', '08558376635'),
('TLP0008', '', '085776916411'),
('TLP0009', '', '085794954347'),
('TLP0010', '', '081298555981'),
('TLP0011', '', '081213141931'),
('TLP0012', '', '085692258373'),
('TLP0013', '', '085711728626'),
('TLP0014', '', '085894177960'),
('TLP0015', '', '085779457308'),
('TLP0016', '', '081617595883'),
('TLP0017', '', '08998176115'),
('TLP0018', '', '085775307493'),
('TLP0019', '', '081295740465'),
('TLP0020', '', '087886879155'),
('TLP0021', '', '085896085251'),
('TLP0022', '', '082111095931'),
('TLP0023', '', '089668629873'),
('TLP0024', '', '085717709784'),
('TLP0025', '', '08974337323'),
('TLP0026', '', '085695876804'),
('TLP0027', '', '085771005674'),
('TLP0028', '', '085888696266'),
('TLP0029', '', '081585167652'),
('TLP0030', '', '085718736624'),
('TLP0031', '', '085891480281'),
('TLP0032', '', '085885778797'),
('TLP0033', '', '08569809314'),
('TLP0034', '', '08551006100'),
('TLP0035', '', '08995150875'),
('TLP0036', '', '087870825405'),
('TLP0037', '', '081318005253'),
('TLP0038', '', '081211517231'),
('TLP0039', '', '081910615218'),
('TLP0040', '', '081224396382'),
('TLP0041', '', '089534503375'),
('TLP0042', '', '085219788943'),
('TLP0043', '', '082119303878'),
('TLP0044', '', '085714996319'),
('TLP0045', '', ''),
('TLP0046', '', ''),
('TLP0047', '', ''),
('TLP0048', '', ''),
('TLP0049', '', ''),
('TLP0050', '', ''),
('TLP0051', '', ''),
('TLP0052', '', ''),
('TLP0053', '', ''),
('TLP0054', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `nik` varchar(20) NOT NULL,
  `nama` text NOT NULL,
  `id_lahir` varchar(20) NOT NULL,
  `id_alamat` varchar(20) NOT NULL,
  `id_jabatan` varchar(20) NOT NULL,
  `id_telp` varchar(20) NOT NULL,
  `id_status` varchar(20) NOT NULL,
  `id_tabungan` varchar(20) NOT NULL,
  `id_dokumen` varchar(20) NOT NULL,
  `id_file` varchar(20) NOT NULL,
  `ket` enum('Non Aktif','Aktif') NOT NULL,
  `time_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`nik`, `nama`, `id_lahir`, `id_alamat`, `id_jabatan`, `id_telp`, `id_status`, `id_tabungan`, `id_dokumen`, `id_file`, `ket`, `time_update`) VALUES
('111', 'A', 'KLH0004', 'ALM0004', 'JBT0004', 'TLP0004', 'STS0004', 'TBG0004', 'DKM0004', 'FLE0005', 'Non Aktif', '2018-10-17 06:44:36'),
('1235', 'aaa', '', '', '', '', '', '', '', 'FLE0002', 'Non Aktif', '2018-10-09 07:00:13'),
('1451', 'TEST USER', 'KLH0003', 'ALM0003', 'JBT0003', 'TLP0003', 'STS0003', 'TBG0003', 'DKM0003', 'FLE0004', 'Non Aktif', '2018-10-30 07:28:25'),
('18150', 'ARI ARIYANTO', 'KLH0001', 'ALM0001', 'JBT0001', 'TLP0001', 'STS0001', 'TBG0001', 'DKM0001', 'FLE0001', 'Aktif', '2018-10-30 07:24:22'),
('18151', 'ADMIN TEKNIS', 'KLH0005', 'ALM0005', 'JBT0005', 'TLP0005', 'STS0005', 'TBG0005', 'DKM0005', 'FLE0006', 'Aktif', '2018-11-07 09:14:49'),
('18152', 'ADMIN FINANCE', 'KLH0006', 'ALM0006', 'JBT0006', 'TLP0006', 'STS0006', 'TBG0006', 'DKM0006', 'FLE0007', 'Aktif', '2018-11-07 09:16:02'),
('18149', 'DEA RACHMAYATI HANDIARTO', 'KLH0007', 'ALM0007', 'JBT0007', 'TLP0007', 'STS0007', 'TBG0007', 'DKM0007', 'FLE0008', 'Aktif', '2018-11-09 04:30:57'),
('18148', 'ARYA ERLANGGA', 'KLH0008', 'ALM0008', 'JBT0008', 'TLP0008', 'STS0008', 'TBG0008', 'DKM0008', 'FLE0009', 'Aktif', '2018-11-09 06:12:07'),
('18147', 'BUDIMAN PRASETYO', 'KLH0009', 'ALM0009', 'JBT0009', 'TLP0009', 'STS0009', 'TBG0009', 'DKM0009', 'FLE0010', 'Aktif', '2018-11-09 06:14:53'),
('18146', 'RIAN ANANG PRAKOSO', 'KLH0010', 'ALM0010', 'JBT0010', 'TLP0010', 'STS0010', 'TBG0010', 'DKM0010', 'FLE0011', 'Aktif', '2018-11-09 06:21:02'),
('17144', 'JAFAR SIDIX', 'KLH0011', 'ALM0011', 'JBT0011', 'TLP0011', 'STS0011', 'TBG0011', 'DKM0011', 'FLE0012', 'Aktif', '2018-11-09 06:28:32'),
('17143', 'ADE SYAUKI M', 'KLH0012', 'ALM0012', 'JBT0012', 'TLP0012', 'STS0012', 'TBG0012', 'DKM0012', 'FLE0013', 'Aktif', '2018-11-09 06:33:36'),
('17137', 'MUHAMMAD AFIF AFDHOLUL MATIN', 'KLH0013', 'ALM0013', 'JBT0013', 'TLP0013', 'STS0013', 'TBG0013', 'DKM0013', 'FLE0014', 'Aktif', '2018-11-09 06:36:21'),
('17135', 'DOBIYANTO KRISNA SETIAWAN', 'KLH0014', 'ALM0014', 'JBT0014', 'TLP0014', 'STS0014', 'TBG0014', 'DKM0014', 'FLE0015', 'Aktif', '2018-11-09 06:39:10'),
('16132', 'JOSHUA ILHAM', 'KLH0015', 'ALM0015', 'JBT0015', 'TLP0015', 'STS0015', 'TBG0015', 'DKM0015', 'FLE0016', 'Aktif', '2018-11-09 06:42:12'),
('16130', 'MUADZ AZMI AMRULLAH', 'KLH0016', 'ALM0016', 'JBT0016', 'TLP0016', 'STS0016', 'TBG0016', 'DKM0016', 'FLE0017', 'Aktif', '2018-11-09 06:45:16'),
('16129', 'HALIM RACHMAN RIFALDI', 'KLH0017', 'ALM0017', 'JBT0017', 'TLP0017', 'STS0017', 'TBG0017', 'DKM0017', 'FLE0018', 'Aktif', '2018-11-09 06:50:17'),
('15121', 'MUHAMMAD NAUFAL', 'KLH0018', 'ALM0018', 'JBT0018', 'TLP0018', 'STS0018', 'TBG0018', 'DKM0018', 'FLE0019', 'Aktif', '2018-11-09 06:57:48'),
('15116', 'LUTHFIAN SYAUQI', 'KLH0019', 'ALM0019', 'JBT0019', 'TLP0019', 'STS0019', 'TBG0019', 'DKM0019', 'FLE0020', 'Aktif', '2018-11-09 07:01:34'),
('15107', 'AHMAD AJIJUDIN', 'KLH0020', 'ALM0020', 'JBT0020', 'TLP0020', 'STS0020', 'TBG0020', 'DKM0020', 'FLE0021', 'Aktif', '2018-11-09 07:07:07'),
('15103', 'NUR MUFID', 'KLH0021', 'ALM0021', 'JBT0021', 'TLP0021', 'STS0021', 'TBG0021', 'DKM0021', 'FLE0022', 'Aktif', '2018-11-09 07:10:56'),
('15100', 'MUHAMMAD GILANG RAMADHAN', 'KLH0022', 'ALM0022', 'JBT0022', 'TLP0022', 'STS0022', 'TBG0022', 'DKM0022', 'FLE0023', 'Aktif', '2018-11-09 07:14:04'),
('15098', 'GALUH DEVI PARADHITA GAMEKA', 'KLH0023', 'ALM0023', 'JBT0023', 'TLP0023', 'STS0023', 'TBG0023', 'DKM0023', 'FLE0024', 'Aktif', '2018-11-09 07:17:42'),
('15097', 'FARHAN RAMADHAN', 'KLH0024', 'ALM0024', 'JBT0024', 'TLP0024', 'STS0024', 'TBG0024', 'DKM0024', 'FLE0025', 'Aktif', '2018-11-09 07:20:37'),
('15095', 'BANGUN DWI PRASETYO', 'KLH0025', 'ALM0025', 'JBT0025', 'TLP0025', 'STS0025', 'TBG0025', 'DKM0025', 'FLE0026', 'Aktif', '2018-11-09 07:26:11'),
('14091', 'ETI FITRIANI', 'KLH0026', 'ALM0026', 'JBT0026', 'TLP0026', 'STS0026', 'TBG0026', 'DKM0026', 'FLE0027', 'Aktif', '2018-11-09 07:31:08'),
('14090', 'RAHMANIA RAMADHANI', 'KLH0027', 'ALM0027', 'JBT0027', 'TLP0027', 'STS0027', 'TBG0027', 'DKM0027', 'FLE0028', 'Aktif', '2018-11-09 07:35:21'),
('14069', 'BADAR SURAWAN', 'KLH0028', 'ALM0028', 'JBT0028', 'TLP0028', 'STS0028', 'TBG0028', 'DKM0028', 'FLE0029', 'Aktif', '2018-11-09 07:37:30'),
('13058', 'ACHMAD SYARIF', 'KLH0029', 'ALM0029', 'JBT0029', 'TLP0029', 'STS0029', 'TBG0029', 'DKM0029', 'FLE0030', 'Aktif', '2018-11-09 07:40:37'),
('13057', 'TONI', 'KLH0030', 'ALM0030', 'JBT0030', 'TLP0030', 'STS0030', 'TBG0030', 'DKM0030', 'FLE0031', 'Aktif', '2018-11-09 07:45:35'),
('13049', 'AGNES EKA LESTIA', 'KLH0031', 'ALM0031', 'JBT0031', 'TLP0031', 'STS0031', 'TBG0031', 'DKM0031', 'FLE0032', 'Aktif', '2018-11-09 07:48:33'),
('12017', 'IRWAN SETIAWAN', 'KLH0032', 'ALM0032', 'JBT0032', 'TLP0032', 'STS0032', 'TBG0032', 'DKM0032', 'FLE0033', 'Aktif', '2018-11-09 07:53:20'),
('12003', 'RISKA ADRINI', 'KLH0033', 'ALM0033', 'JBT0033', 'TLP0033', 'STS0033', 'TBG0033', 'DKM0033', 'FLE0034', 'Aktif', '2018-11-09 07:58:54'),
('12001', 'ERLAN SUTRAJAT', 'KLH0034', 'ALM0034', 'JBT0034', 'TLP0034', 'STS0034', 'TBG0034', 'DKM0034', 'FLE0035', 'Aktif', '2018-11-09 08:04:34'),
('010', 'IWAN SETIAWAN', 'KLH0035', 'ALM0035', 'JBT0035', 'TLP0035', 'STS0035', 'TBG0035', 'DKM0035', 'FLE0036', 'Aktif', '2018-11-09 09:08:09'),
('009', 'MUHAMMAD RIDWANSYAH', 'KLH0036', 'ALM0036', 'JBT0036', 'TLP0036', 'STS0036', 'TBG0036', 'DKM0036', 'FLE0037', 'Aktif', '2018-11-09 09:10:51'),
('008', 'MAHMUD SYAIFUL AMINUDIN', 'KLH0037', 'ALM0037', 'JBT0037', 'TLP0037', 'STS0037', 'TBG0037', 'DKM0037', 'FLE0038', 'Aktif', '2018-11-09 09:15:15'),
('007', 'ABYYU HAFIZH SEPTRIANTO', 'KLH0038', 'ALM0038', 'JBT0038', 'TLP0038', 'STS0038', 'TBG0038', 'DKM0038', 'FLE0039', 'Aktif', '2018-11-09 09:18:10'),
('006', 'MUHAMMAD IKHSANUDIN', 'KLH0039', 'ALM0039', 'JBT0039', 'TLP0039', 'STS0039', 'TBG0039', 'DKM0039', 'FLE0040', 'Aktif', '2018-11-09 09:19:52'),
('005', 'FAUZAN DINAN MUHAMMAD', 'KLH0040', 'ALM0040', 'JBT0040', 'TLP0040', 'STS0040', 'TBG0040', 'DKM0040', 'FLE0041', 'Aktif', '2018-11-09 09:22:01'),
('004', 'RIAN WAHAB', 'KLH0041', 'ALM0041', 'JBT0041', 'TLP0041', 'STS0041', 'TBG0041', 'DKM0041', 'FLE0042', 'Aktif', '2018-11-09 09:23:29'),
('003', 'AHMAD IRGI CHIESA', 'KLH0042', 'ALM0042', 'JBT0042', 'TLP0042', 'STS0042', 'TBG0042', 'DKM0042', 'FLE0043', 'Aktif', '2018-11-09 09:25:15'),
('002', 'AQSHAL ATTALLAH SIAHAN', 'KLH0043', 'ALM0043', 'JBT0043', 'TLP0043', 'STS0043', 'TBG0043', 'DKM0043', 'FLE0044', 'Aktif', '2018-11-09 09:27:05'),
('001', 'VIBRA MILIANO', 'KLH0044', 'ALM0044', 'JBT0044', 'TLP0044', 'STS0044', 'TBG0044', 'DKM0044', 'FLE0045', 'Aktif', '2018-11-09 09:28:33'),
('1236', 'ADMIN GUDANG', 'KLH0045', 'ALM0045', 'JBT0045', 'TLP0045', 'STS0045', 'TBG0045', 'DKM0045', 'FLE0046', 'Aktif', '2018-11-19 09:45:03'),
('00002', 'RIZKI', 'KLH0046', 'ALM0046', 'JBT0046', 'TLP0046', 'STS0046', 'TBG0046', 'DKM0046', 'FLE0047', 'Aktif', '2018-12-12 05:32:36'),
('00001', 'HAFID', 'KLH0046', 'ALM0046', 'JBT0046', 'TLP0046', 'STS0046', 'TBG0046', 'DKM0046', 'FLE0047', 'Aktif', '2018-12-12 05:34:17'),
('00003', 'NIKO', 'KLH0047', 'ALM0047', 'JBT0047', 'TLP0047', 'STS0047', 'TBG0047', 'DKM0047', 'FLE0048', 'Aktif', '2018-12-12 05:53:15'),
('00004', 'DIDIK', 'KLH0048', 'ALM0048', 'JBT0048', 'TLP0048', 'STS0048', 'TBG0048', 'DKM0048', 'FLE0049', 'Aktif', '2018-12-12 05:53:54'),
('00005', 'ABDILLAH', 'KLH0049', 'ALM0049', 'JBT0049', 'TLP0049', 'STS0049', 'TBG0049', 'DKM0049', 'FLE0050', 'Aktif', '2018-12-12 06:04:21'),
('00006', 'ADI', 'KLH0050', 'ALM0050', 'JBT0050', 'TLP0050', 'STS0050', 'TBG0050', 'DKM0050', 'FLE0051', 'Aktif', '2018-12-12 06:07:00'),
('00007', 'DAFFA', 'KLH0051', 'ALM0051', 'JBT0051', 'TLP0051', 'STS0051', 'TBG0051', 'DKM0051', 'FLE0052', 'Aktif', '2018-12-12 06:11:41'),
('00008', 'BABEH', 'KLH0052', 'ALM0052', 'JBT0052', 'TLP0052', 'STS0052', 'TBG0052', 'DKM0052', 'FLE0053', 'Aktif', '2018-12-12 06:14:01'),
('00009', 'SAMIAJI', 'KLH0053', 'ALM0053', 'JBT0053', 'TLP0053', 'STS0053', 'TBG0053', 'DKM0053', 'FLE0054', 'Aktif', '2018-12-12 07:13:26'),
('00010', 'HANIF', 'KLH0054', 'ALM0054', 'JBT0054', 'TLP0054', 'STS0054', 'TBG0054', 'DKM0054', 'FLE0055', 'Aktif', '2018-12-12 08:07:20');

--
-- Triggers `tbl_pegawai`
--
DELIMITER $$
CREATE TRIGGER `hapus_all` AFTER DELETE ON `tbl_pegawai` FOR EACH ROW BEGIN

DELETE FROM tbl_alamat WHERE id_alamat = OLD.id_alamat;

DELETE FROM tbl_kelahiran WHERE id_lahir = OLD.id_lahir;

DELETE FROM tbl_jabatan WHERE id_jabatan = OLD.id_jabatan;

DELETE FROM tbl_no_telp WHERE id_telp = OLD.id_telp;

DELETE FROM tbl_status WHERE id_status = OLD.id_status;

DELETE FROM tbl_tabungan WHERE id_tabungan = OLD.id_tabungan;

DELETE FROM tbl_dokumen WHERE id_dokumen = OLD.id_dokumen;

DELETE FROM tbl_file WHERE id_file = OLD.id_file;

DELETE FROM tbl_prestasi WHERE nip = OLD.nik;

DELETE FROM tbl_pengalaman_kerja WHERE nip = OLD.nik;

DELETE FROM tbl_skil WHERE nip = OLD.nik;

DELETE FROM tbl_skil_bahasa WHERE nip = OLD.nik;

DELETE FROM tbl_user_lr WHERE nip = OLD.nik;

DELETE FROM tbl_about_me WHERE nip = OLD.nik;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peminjaman`
--

CREATE TABLE `tbl_peminjaman` (
  `id` int(11) NOT NULL,
  `no_inventory2` varchar(40) NOT NULL,
  `nama_barang2` text NOT NULL,
  `pj2` text NOT NULL,
  `waktupinjam` text NOT NULL,
  `waktukembali` text NOT NULL,
  `stat2` enum('1','2','3','4','5','0','6') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_peminjaman`
--

INSERT INTO `tbl_peminjaman` (`id`, `no_inventory2`, `nama_barang2`, `pj2`, `waktupinjam`, `waktukembali`, `stat2`) VALUES
(1, 'ELK_191118_163149', 'KIPAS', '1451', '191118_16:50:12', '191118_16:53:48', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendidikan`
--

CREATE TABLE `tbl_pendidikan` (
  `jenjang` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pendidikan`
--

INSERT INTO `tbl_pendidikan` (`jenjang`) VALUES
('D1'),
('D2'),
('D3'),
('S1'),
('S2'),
('S3'),
('SD'),
('SMA/K/Sederajat'),
('SMP');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peng`
--

CREATE TABLE `tbl_peng` (
  `id_pes` int(2) NOT NULL,
  `pesan` text NOT NULL,
  `tgl_pesan` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_peng`
--

INSERT INTO `tbl_peng` (`id_pes`, `pesan`, `tgl_pesan`) VALUES
(2, 'Bagi Para Staff IT di mohon kehadirannya dirapat besok. Terima kasih.\r\n\r\nSTAFF HRD', '2014-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengalaman_kerja`
--

CREATE TABLE `tbl_pengalaman_kerja` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_instansi` text NOT NULL,
  `jabatan` text NOT NULL,
  `deskripsi` text NOT NULL,
  `lama_kerja` text NOT NULL,
  `ket` enum('HARI','BULAN','TAHUN') NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengalaman_kerja`
--

INSERT INTO `tbl_pengalaman_kerja` (`id`, `nip`, `nama_instansi`, `jabatan`, `deskripsi`, `lama_kerja`, `ket`, `dari`, `sampai`) VALUES
(1, '18150', 'PT LUMBUNG RIANG COMMUNICATION', 'JUNIOR PROGRAMMER', 'Melakukan praktik kerja lapangan di PT. Lumbung Riang Communication dan menyelesaikan 1 buah project', '3', 'BULAN', '2017-01-03', '2017-03-31'),
(2, '18150', 'PT LUMBUNG RIANG COMMUNICATION', 'PROGRAMMER', 'menangani berbagai macam project yang ada di PT. Lumbung Riang Communication dan menjadikan saya sebagai Full Stack Web Developer', '8', 'BULAN', '2018-05-07', '2018-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prestasi`
--

CREATE TABLE `tbl_prestasi` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_prestasi` text NOT NULL,
  `tanggal` date NOT NULL,
  `ket` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_prestasi`
--

INSERT INTO `tbl_prestasi` (`id`, `nip`, `nama_prestasi`, `tanggal`, `ket`) VALUES
(1, '18150', 'GEA AWARD 2ND', '2017-11-12', 'CHAMPION OF 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_wo`
--

CREATE TABLE `tbl_project_wo` (
  `id_project` int(11) NOT NULL,
  `kode_project` varchar(40) NOT NULL,
  `kode_jadwal` varchar(40) NOT NULL,
  `kode_teknisi` varchar(40) NOT NULL,
  `level` enum('teknisi','admin') NOT NULL,
  `tgl_project` text NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `wo_id` varchar(40) NOT NULL,
  `so_id` varchar(40) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `lokasi` text NOT NULL,
  `pic` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_project_wo`
--

INSERT INTO `tbl_project_wo` (`id_project`, `kode_project`, `kode_jadwal`, `kode_teknisi`, `level`, `tgl_project`, `project_title`, `wo_id`, `so_id`, `customer`, `lokasi`, `pic`, `status`) VALUES
(14, 'PRO00003-2018', 'SCH00003-2018', 'TCH00003-2018', 'teknisi', '2018/02/01', 'Survey', '2-172305468113', '9ZDbo8rA', 'KANEYO CO LTD ', 'ANZ TOWER LANTAI 16 JL JEND SUDIRMAN KAV 33A, RT.3/RW.2, KARET TENGSIN JAKARTA', 'Nur Aminah', 'first'),
(13, 'PRO00002-2018', 'SCH00002-2018', 'TCH00002-2018', 'teknisi', '2018/02/01', 'Survey', '2-172245313063', 'fKIJq9Ap', ' PT. HOME CREDIT INDONESIA', 'DCI Indonesia Cikarang, Kawasan Industri, MM2100 Jl. Irian Cibitung, Cikarang', 'Debby', 'first'),
(12, 'PRO00001-2018', 'SCH00001-2018', 'TCH00001-2018', 'teknisi', '2018/01/02', 'Aktivasi', '2-161909071893', 'B1r6W0uz', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'GD WISMA DANAMON AETNA LIFE LT 19 JL JEND SUDIRMAN KAV 45-46 JAKARTA 12910', 'Hesti Setiowati', 'first'),
(422, 'PRO00399-2018', 'SCH00399-2018', 'TCH00399-2018', 'teknisi', '2018/02/02', 'Survey', '2-172318045706 ', '16Bxq2I3', 'ASIA OUTSOURCING SERVICE PT', 'Telkomsigma (German Centre), Jl. Kapt. Subijanto Dj. Bumi Serpong Damai Lengkong Gudang, Serpong, KotKota Tangerang Selatan, Banten 15310, SERPONG, 15311, Indonesia', 'Annisya Fahmi', 'first'),
(16, 'PRO00005-2018', 'SCH00005-2018', 'TCH00005-2018', 'teknisi', '2018/01/02', 'Aktivasi', '2-134067908690', 'VlxlXHAK', 'PT SYNGENTA INDONESIA', 'SYN GENTA INDONESIA CIBIS 9 OFFICE TOWER JL \r\nRAYA CILANDAK KKO, CILANDAK TIMUR. PS \r\nMINGGU JAKARTA', 'Ariyanti Masitoh', 'first'),
(17, 'PRO00006-2018', 'SCH00006-2018', 'TCH00006-2018', 'teknisi', '2018/02/02', 'Survey', '2-172318121709', 'p3xPGXQC', 'ASIA OUTSOURCING SERVICE PT', 'PT DCI Indonesia, Jalan Irian 1 Blok GG5-1, Kawasan Industri MM2100, Cibitung, Cikarang Barat, BEKASI, 17530, Indonesia', 'Annisya Fahmi', 'first'),
(18, 'PRO00007-2018', 'SCH00007-2018', 'TCH00007-2018', 'teknisi', '2018/02/02', 'Aktivasi', '6awCARF1', '2-170526463135', 'MEDIA REKAYASA LINTAS', 'Cyber 2, Lantai 2, Jl. H. R. Rasuna Said No.13 Kuningan Jakarta Selatan, 12950', 'Annisya Fahmi', 'first'),
(19, 'PRO00008-2018', 'SCH00008-2018', 'TCH00008-2018', 'teknisi', '2018/01/02', 'Aktivasi', '2-138823532884', '2-162249116894', 'BANK DBS INDONESIA', 'ANZ RBS MANGGA DUA BRANCH, MANGGA DUA SQUARE BLOK H NO. 8&9, JL. GUNUNG SAHARI NO. 1 JAKARTA UTARA 14430', 'Debby', 'first'),
(20, 'PRO00009-2018', 'SCH00009-2018', 'TCH00009-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170528875691', 'Lnn5Oxzs', 'TIN u/ AT&T', 'AT&T (TIN) 200M 1 Cyber KPPTI', 'Tri Purnomo', 'first'),
(21, 'PRO00010-2018', 'SCH00010-2018', 'TCH00010-2018', 'teknisi', '2018/01/02', 'Aktivasi', '8zgzGI7s', '2-167302073823', 'WIFIKU INDONESIA', 'CYBER JL. KUNINGAN BARAT NO. 8 MAMPANG JAKSEL', 'Nur Aminah', 'first'),
(22, 'PRO00011-2018', 'SCH00011-2018', 'TCH00011-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170526147410', 'wy6iy7bc', 'TIN u/ AT&T', 'AT&T (TIN) 200M 2 Cyber KPPTI', 'Tri Purnomo', 'first'),
(46, 'PRO00035-2018', 'SCH00035-2018', 'TCH00035-2018', 'teknisi', '2018/02/08', 'Survey', '2-167484571540', 'nXMcSWXy', 'PT NUSANTARA COMPNET INTEGRATOR', '\"Pusat Pelatihan Multi Fungsi Polri,\r\nGunung Putri, Cikeas Udik, Bogor\"', 'Bobby Yudha Wiratama', 'first'),
(24, 'PRO00013-2018', 'SCH00013-2018', 'TCH00013-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530823866', 'zvGDnM4c', 'TIN u/ AT&T', 'AT&T (TIN) 200M 3 Cyber KPPTI', 'Tri Purnomo', 'first'),
(25, 'PRO00014-2018', 'SCH00014-2018', 'TCH00014-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530824322', 'PBTNAUdt', 'TIN u/ AT&T', 'AT&T (TIN) 200M 4 Cyber KPPTI', 'Tri Purnomo', 'first'),
(26, 'PRO00015-2018', 'SCH00015-2018', 'TCH00015-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530602919', 'ReNJ1mWz', 'TIN u/ AT&T', 'AT&T (TIN) 200M Cyber Telkom Sigma BSD', 'Tri Purnomo', 'first'),
(27, 'PRO00016-2018', 'SCH00016-2018', 'TCH00016-2018', 'teknisi', '2018/02/02', 'Survey', '2-172365835473', 'wystTGnP', 'GIVAUDAN INDONESIA', 'CAPITAL PLACE JL JEND. GATOT SUBROTO KAV. 18 KUNINGAN BARAT, MAMPANG PRAPATAN JAKARTA', 'Nur Aminah', 'first'),
(28, 'PRO00017-2018', 'SCH00017-2018', 'TCH00017-2018', 'teknisi', '2018/02/02', 'Dismantle', 'ryXfkTyP', '2-168329726992', 'GEMALTO SMART CARDS PT', 'ULIA BUSINESS PARK, BUILDING E NO. 105 & 106, JALAN M.T. HARYONO KAV. C 58-60, JAKARTA', 'Nur Aminah', 'first'),
(29, 'PRO00018-2018', 'SCH00018-2018', 'TCH00018-2018', 'teknisi', '2018/02/05', 'Survey', '2-172783186521', '3G69F44w', ' ISPL for IPSOS', 'Mega Plaza Building Lt. 6, Jl. HR. Rasuna Said Kav. C3 Kuningan, Jakarta Selatan 12920. Indonesia', 'Rahmat Hidayatullah', 'first'),
(30, 'PRO00019-2018', 'SCH00019-2018', 'TCH00019-2018', 'teknisi', '2018/02/05', 'Survey', '2-172339653713', 'RTkqLMFJ', 'KDDI FOR BOEHRINGER', '\"BOEHRINGER INGELHEIM INDONESIA\r\n(PLANT), JL. LAWANG GINTUNG NO. 89,\r\nBOGOR 16133\"', 'Adya Pramesthi', 'first'),
(31, 'PRO00020-2018', 'SCH00020-2018', 'TCH00020-2018', 'teknisi', '2018/01/03', 'Aktivasi', '2-136454822341', '04uzoHf7', 'DBS INDONESIA', 'GEDUNG ANZ TOWER Jl Jend Sudirman Kav 33 A', 'Muhammad Indra Kurniawan', 'first'),
(33, 'PRO00022-2018', 'SCH00022-2018', 'TCH00022-2018', 'teknisi', '2018/02/05', 'Survey', '2-172303933261', 'eKK2CTNa', 'KPSG', 'Gedung Bidex BSD, Jl. Pahlawan Seribu No.8, Lengkong Gudang, Serpong, Kota Tangerang Selatan, Banten 15310', 'Akhsan Ibnu Faja', 'first'),
(34, 'PRO00023-2018', 'SCH00023-2018', 'TCH00023-2018', 'teknisi', '2018/01/03', 'Upgrade', 'UOBfEUvS', '2-157415581701', 'Bank Maybank Indonesia Tbk', 'DC BANK MAYBANK CYBER 3 JALAN KUNINGAN BARAT NO. 8, MAMPANG PRAPATAN, JAKARTA SELATAN 12710 - WISMA KODEL LT. 4 JL. HR. RASUNA SAID JAKARTA 12920', 'Evi Fitria', 'first'),
(35, 'PRO00024-2018', 'SCH00024-2018', 'TCH00024-2018', 'teknisi', '2018/02/06', 'Aktivasi', 'c7ViH3R0', '2-172326236605', ' PT INDOCEMENT TUNGGAL PRAKARSA', 'Wisma Indomobil,  gedung Hino Lt. 6, JAKARTA, 13330, Indonesia', 'Annisya Fahmi', 'first'),
(36, 'PRO00025-2018', 'SCH00025-2018', 'TCH00025-2018', 'teknisi', '2018/02/06', 'Aktivasi', 'XBPhBNMl', '2-170573938178', 'PERHUBUNGAN RI (TRIAL)', '\"KEMENTERIAN PERHUBUNGAN RI, JL MEDAN\r\nMERDEKA BARAT NO.8, JAKARTA, 10000\"', 'Annisya Fahmi', 'first'),
(37, 'PRO00026-2018', 'SCH00026-2018', 'TCH00026-2018', 'teknisi', '2018/02/06', ' [Request] Memindahkan lokasi Akses Point ', ' IDIA KPPIP PTI-MMR 150256', '6Wvp15ON', 'KOMITE PERCEPATAN PENYEDIAAN INFRASTRUKTUR PRIORIT', ' Jalan Budi Kemuliaan I No. 2 lantai 8', 'Yoga Prasetyo', 'first'),
(38, 'PRO00027-2018', 'SCH00027-2018', 'TCH00027-2018', 'teknisi', '2018/01/04', 'Aktivasi', 'GyyH6i2z', '2-167751918265', 'Niaga Indoguna Yas', 'LIPPO MALL PURI', 'Rian Anang Prakoso', 'first'),
(39, 'PRO00028-2018', 'SCH00028-2018', 'TCH00028-2018', 'teknisi', '2018/02/06', 'Survey', 'IOpCmNrB', '2-172299046159', ' PRIMACOM INTERBUANA', 'T CBN Nusantara, Gedung Cyber 2 Lt2. JL. HR Rasuna Said X5 No. 13 Jakarta 12950 (Rack Colo MTI di Cyber2)', 'Evi Fitria ', 'first'),
(40, 'PRO00029-2018', 'SCH00029-2018', 'TCH00029-2018', 'teknisi', '2018/02/06', 'Survey', '2-172058626676', 'lwUr09GD', 'GENERAL MOTOR INDONESIA', 'PT. VUTEQ INDONESIA JL. CEMPAKA KM 37 RT.003 RW.002 KEL. JATIMULYA KEC. TAMBUN SELATAN BEKASI', 'Nur Aminah', 'first'),
(41, 'PRO00030-2018', 'SCH00030-2018', 'TCH00030-2018', 'teknisi', '2018/02/07', 'Aktivasi', '2-168369001247', 'hMKZg2t3', 'MANE INDONESIA PT', '\"CIKARANG INDUSTRIAL ESTATEJL JABABEKA XV1\r\nKAV BLOK V-66, CIKARANG BEKASI, 17530\"', 'Annisya Fahmi', 'first'),
(188, 'PRO00177-2018', 'SCH00177-2018', 'TCH00177-2018', 'teknisi', '2018/01/24', 'Survey', '2-167994377287', 'vLzp4nmd', 'TELENET ', '\"LIPPO CYBER PARK JL. BOULEVARD\r\nGAJAH MADA, 2179-81 LIPPO KARAWACI\r\nTANGERANG, BANTEN\"', 'Hesti Setiowati', 'first'),
(43, 'PRO00032-2018', 'SCH00032-2018', 'TCH00032-2018', 'teknisi', '2018/01/04', 'Dismantle', 'I8ST7fBL', '2-155921195369', 'CHUBB INSURANCE', 'JL. JEND. GATOT SUBROTO KAV.27, Jakarta', 'Debby', 'first'),
(44, 'PRO00033-2018', 'SCH00033-2018', 'TCH00033-2018', 'teknisi', '2018/02/07', 'Aktivasi', 'CESELF5x', '2-172303545541', 'TEMI HENDRI', '\"APT ST. MORITZ unit 35-06,\r\nJL.PURI INDAH RAYA BLOK U1-3\"', 'Faizar Hasbi', 'first'),
(45, 'PRO00034-2018', 'SCH00034-2018', 'TCH00034-2018', 'teknisi', '2018/01/04', 'Aktivasi', 'bn5wxRGl', '2-167638857431', 'PT. NUSANTARA COMPNET INTEGRATOR', 'GEDUNG TNCC LT 4 JL. TRUNOJOYO NO3 KEBAYORAN JAKARTA', 'Sri Hartati', 'first'),
(47, 'PRO00036-2018', 'SCH00036-2018', 'TCH00036-2018', 'teknisi', '2018/02/08', 'Testing', '2-163783935652', 'dn5B4RNQ', 'SINGTEL FOR BLOOMBERG', 'SIGMA GERMAN CENTER', 'Rahmat Hidayatullah ', 'first'),
(48, 'PRO00037-2018', 'SCH00037-2018', 'TCH00037-2018', 'teknisi', '2018/01/03', 'Aktivasi', 'Opbr2Noc', '2-167608834404', 'DIGITAL VISION NUSANTARA', 'LINTASARTA DC JL. TB SIMATUPANG KAV. 10 JAKARTA', 'Ariyanti Masitoh', 'first'),
(49, 'PRO00038-2018', 'SCH00038-2018', 'TCH00038-2018', 'teknisi', '2018/02/08', 'Aktivasi', '2-166410321813', 'uRBqDg3i', 'LINKNET', 'JL. KAYOON 72 SURABAYA NODE LINKNET KAYOON', 'Hovidin ( Opi )', 'first'),
(50, 'PRO00039-2018', 'SCH00039-2018', 'TCH00039-2018', 'teknisi', '2018/02/08', 'Aktivasi', '4sgLhgou', '2-188653192350', 'DIGITAL VISION NUSANTARA', '\"PT. DIGITAL VISION NUSANTARA, THE JAKARTA POST\r\nBUILDING 4TH FLOOR, JL. PALMERAH BARAT NO 142-\r\n143, JAKARTA, 10270\"', 'Annisya Fahmi', 'first'),
(51, 'PRO00040-2018', 'SCH00040-2018', 'TCH00040-2018', 'teknisi', '2018/01/04', 'Survey', '2-123847785780', 'XAcgPNvf', 'AEON CREDIT SERVICE INDONESIA', 'AEON Fantasy, Ratu Plaza Lantai 26 Jl. Jend. Sudirman Kav 9 Jakarta 10270', 'Debby', 'first'),
(52, 'PRO00041-2018', 'SCH00041-2018', 'TCH00041-2018', 'teknisi', '2018/02/09', 'Aktivasi', 'lrO6w1tT', '2-186942561240', 'KANEYO CO LTD ', 'ANZ TOWER LANTAI 16 JL JEND SUDIRMAN KAV 33A, RT.3/RW.2, KARET TENGSIN JAKARTA', 'Nur Aminah', 'first'),
(53, 'PRO00042-2018', 'SCH00042-2018', 'TCH00042-2018', 'teknisi', '2018/01/04', 'Aktivasi', '2-138834667972', '2-167141721349', 'PT BANK DBS INDONESIA', 'WISMA PONDOK INDAH I, GF SUITE 02, JL. SULTAN ISKANDAR MUDA KAV. V JAKARTA 12310', 'Evi Fitria', 'first'),
(54, 'PRO00043-2018', 'SCH00043-2018', 'TCH00043-2018', 'teknisi', '2018/02/09', 'Survey', '2-189347059532', 'UAe7kEv1', 'APLIKASI KARYA ANAK BANGSA', 'GO-JEK INDONESIA HQ PASARAYA BLOK M GEDUNG B LT. 6, JL. ISKANDARSYAH II NO. 7, MELAWAI, KEBAYORAN BARU, JAKARTA SELATAN', 'Evi Fitria ', 'first'),
(55, 'PRO00044-2018', 'SCH00044-2018', 'TCH00044-2018', 'teknisi', '2018/02/09', 'Survey', '2-172212388224', '2UQmoJGL', 'INDOSAT-IT OPS', '\"JL. MEDAN MERDEKA BARAT NO. 21,\r\nGAMBIR, JAKARTA PUSAT, DKI\r\nJAKARTA, 11101\"', 'Annisya Fahmi', 'first'),
(56, 'PRO00045-2018', 'SCH00045-2018', 'TCH00045-2018', 'teknisi', '2018/01/04', 'Aktivasi', '2-138865296480', '2-167481571955', 'PT BANK DBS INDONESIA', 'ANZ RBS PURI INDAH BRANCH, PURI NIAGA III RUKAN PURI KENCANA BLOK M8 NO. 1 & 2 JAKARTA BARAT	', 'Evi Fitria', 'first'),
(57, 'PRO00046-2018', 'SCH00046-2018', 'TCH00046-2018', 'teknisi', '2018/01/05', 'Dismantle', '2-156624645778', 'nlKduRZd', 'Bank Muamalat Indonesia Tbk', 'KK JKT FATMAWATI - Masjid Pondok Indah, Jl. Sultan Iskandar Muda No. 1 Jakarta 12310', 'Debby', 'first'),
(58, 'PRO00047-2018', 'SCH00047-2018', 'TCH00047-2018', 'teknisi', '2018/02/09', 'Survey', ' 2-189347059532', '0aMW8dy2', 'APLIKASI KARYA ANAK BANGSA', 'GO-JEK INDONESIA HQ PASARAYA BLOK M GEDUNG B LT. 6, JL. ISKANDARSYAH II NO. 7, MELAWAI, KEBAYORAN BARU, JAKARTA SELATAN', 'Evi Fitria ', 'first'),
(59, 'PRO00048-2018', 'SCH00048-2018', 'TCH00048-2018', 'teknisi', '2018/01/05', 'Survey', '2-167794115107', 'RCXN4xoQ', 'PT SURYA CITRA TELEVISI', 'SUBROTO SENAYAN RT1 RW3 JAKARTA', 'Ariyanti Masitoh', 'first'),
(60, 'PRO00049-2018', 'SCH00049-2018', 'TCH00049-2018', 'teknisi', '2018/02/12', 'Aktivasi', '0asKuZG0', '2-199957223331', 'KANEYO CO LTD ', 'ANZ TOWER LANTAI 16 JL JEND SUDIRMAN KAV 33A, RT.3/RW.2, KARET TENGSIN JAKARTA', 'Nur Aminah', 'first'),
(61, 'PRO00050-2018', 'SCH00050-2018', 'TCH00050-2018', 'teknisi', '2018/01/05', 'Aktivasi', 'TcFtOFcd', '2-167794115107', 'PT SURYA CITRA TELEVISI', 'JCC PLENARY HALL JL. JEND, GATOT \r\nSUBROTO SENAYAN RT1 RW3 JAKARTA', 'Ariyanti Masitoh', 'first'),
(62, 'PRO00051-2018', 'SCH00051-2018', 'TCH00051-2018', 'teknisi', '2018/02/12', 'Aktivasi', 'xcLGayDI', '2-199950491995', 'MANDIRI GRIYA ARTHA MAKMUR (QQ Herbal)', 'CIBIS TOWER 9 JL. RAYA CILANDAK KKO, RT.13/RW.5 JAKARTA SELATAN', 'Nur Aminah', 'first'),
(63, 'PRO00052-2018', 'SCH00052-2018', 'TCH00052-2018', '', '2018/01/08', 'Aktivasi', '2-150674340478', 'hH6Pv2Sg', 'DWDM Permata Bintaro', 'Jl mh thamrin blok b1 no 1 bintaro sektor 7', 'M Indra Kurniawan', 'first'),
(64, 'PRO00053-2018', 'SCH00053-2018', 'TCH00053-2018', 'teknisi', '2018/02/12', 'Aktivasi', '2-172070142209', 'i9HJI6sT', 'AEON CREDIT SERVICE INDONESIA', 'AEON Fantasy, Ratu Plaza Lantai 26 Jl. Jend. Sudirman Kav 9 Jakarta 10270', 'Debby', 'first'),
(65, 'PRO00054-2018', 'SCH00054-2018', 'TCH00054-2018', 'teknisi', '2018/01/08', 'Survey', '2-167650815254', 'Wf4etIAS', 'BEND. PENGELUARAN BPPTL (AMRAN FIRDAUS)', 'BPPTL, JL M KAHFI II NO 88, Cipedak, Jagakarsa, Kota Jakarta Selatan, DKI JAKARTA, 12630, Indonesia', 'Annisya Fahmi', 'first'),
(66, 'PRO00055-2018', 'SCH00055-2018', 'TCH00055-2018', 'teknisi', '2018/02/13', 'Survey', '2-172326401964', '9BVVXnyc', 'HKT GLOBAL (SINGAPORE) PTE.LTD - PCCW', '\"Jl Jend. Sudirman Kav 52-53, Jakarta\r\nEnergy Building, 15 Fl Sudirman Central Business District\"', 'Tri Purnomo', 'first'),
(67, 'PRO00056-2018', 'SCH00056-2018', 'TCH00056-2018', 'teknisi', '2018/01/08', 'Aktivasi', '2-131412371073', '2-149519141807', 'PT. MASTERCARD INDONESIA', 'SENTRAL SENAYAN 1 LT 17, JL. ASIA AFRIKA NO.8, JAKARTA 10270', 'Debby', 'first'),
(68, 'PRO00057-2018', 'SCH00057-2018', 'TCH00057-2018', 'teknisi', '2018/02/14', 'Aktivasi', 'OVtGqEQs', '2-203782075619', ' MANDIRI GRIYA ARTHA MAKMUR (Server Cibis)', 'CIBIS TOWER 9 JL. RAYA CILANDAK KKO, RT.13/RW.5 JAKARTA SELATAN', 'Nur Aminah', 'first'),
(69, 'PRO00058-2018', 'SCH00058-2018', 'TCH00058-2018', 'teknisi', '2018/01/08', 'Survey', '2-167604435959', '2-167610212576', 'DFID INDONESIA, BRITISH EMBASSY', 'Kedutaan Besar Inggris, Jl. Patra Kuningan Raya, Blok L5-6, JAKARTA, 12950, Indonesia', 'Annisya Fahmi', 'first'),
(186, 'PRO00175-2018', 'SCH00175-2018', 'TCH00175-2018', 'teknisi', '2018/01/17', 'Survey', '2-163657143932', '3KVP2Plm', 'PT Prudential', 'Jl. Jend Sudirman kav 79 (Prudential tower)', 'Dendy Hartanto', 'first'),
(187, 'PRO00176-2018', 'SCH00176-2018', 'TCH00176-2018', 'teknisi', '2018/01/24', 'Survey', '2-170179979411', 'KnlS1A1t', 'SOSIAL REPUBLIK INDONESIA', 'KEMENSOS BUILDING, PANTI MELATI, Jl. GEBANGSARI NO 38 BAMBU APUS CIPAYUNG JAKARTA TIMUR, DKI JAKARTA, 13890, Indonesia', 'Annisya Fahmi', 'first'),
(71, 'PRO00060-2018', 'SCH00060-2018', 'TCH00060-2018', 'teknisi', '2018/01/08', 'Dismantle', 'AmhRvNeR', '2-166553051242', 'PT. HOME CREDIT INDONESIA', 'DCI Indonesia Cikarang, Kawasan Industri, MM2100 Jl. Irian Cibitung, Cikarang 17530', 'Debby', 'first'),
(72, 'PRO00061-2018', 'SCH00061-2018', 'TCH00061-2018', 'teknisi', '2018/02/15', 'Upgrade', '2-172244077670', '2-187166255634', 'SUN LIFE FINANCIAL INDONESIA, PT', 'Menara Sun Life Jl Dr Ide Anak Agung Gde Agung Blok 6.3, Kawasan Mega Kuningan - Jakarta Selatan 12950', 'Debby', 'first'),
(73, 'PRO00062-2018', 'SCH00062-2018', 'TCH00062-2018', 'teknisi', '2018/02/18', 'Aktivasi', 'Fxz7VxXT', '2-189751933798', 'BENDAHARA PENGELUARAN DITJEN. ADMINISTRASI HUKUM U', '\"KEMENTERIAN HUKUM DAN HAK ASASI MANUSIA, JL.\r\nHR RASUNA SAID KAV 6-7, KARET SETIABUDI,\r\nJAKARTA SELATAN, DKI JAKARTA, 12940\"', 'Annisya Fahmi Rizqi', 'first'),
(74, 'PRO00063-2018', 'SCH00063-2018', 'TCH00063-2018', 'teknisi', '2018/01/08', 'Survey', '2-167793695000', 'lNxKIKGC', 'ADHYA AVIA PRIMA (Site Husein) ', 'PT. ADHYA AVIA PRIMA JL. HUSEIN SASTRANEGARA NO.12, RAWABOKOR, KEL/, BENDA, KOTA TANGERANG', 'Nur Aminah', 'first'),
(75, 'PRO00064-2018', 'SCH00064-2018', 'TCH00064-2018', 'teknisi', '2018/02/18', 'Aktivasi', 'Miubq8CZ', '2-190052361318', 'BENDAHARA PENGELUARAN DITJEN. ADMINISTRASI HUKUM U', '\"KEMENTERIAN HUKUM DAN HAK ASASI MANUSIA, JL.\r\nHR RASUNA SAID KAV 6-7, KARET SETIABUDI,\r\nJAKARTA SELATAN, DKI JAKARTA, 12940\"', 'Annisya Fahmi Rizqi', 'first'),
(76, 'PRO00065-2018', 'SCH00065-2018', 'TCH00065-2018', 'teknisi', '2018/01/08', 'Survey', '2-167793776610', 'wegccO2l', 'ADHYA AVIA PRIMA (Taman Mahkota)', 'PT. ADHYA AVIA PRIMA RUKO TAMAN MAHKOTA BLOK A2/2 JL. HUSEIN SASTRANEGARA, RAWABOKOR, KEL/, BENDA TANGERANG', 'Nur Aminah', 'first'),
(77, 'PRO00066-2018', 'SCH00066-2018', 'TCH00066-2018', 'teknisi', '2018/02/19', 'Aktivasi', '1GIUUP9r', '2-206909082948', 'SUMBER MITRA JAYA', 'GEDUNG CYBER 2 LT. 9 JL. HR RASUNA SAID BLOK X-5 NO.13 â€“ KUNINGAN JAKARTA', 'Nur Aminah ', 'first'),
(78, 'PRO00067-2018', 'SCH00067-2018', 'TCH00067-2018', 'teknisi', '2018/01/08', 'Aktivasi', 'zgNqlIJP', '2-167792367602', 'PT KARAKTER TALENTA INDONESIA', 'Lippo mall puri jl. Puri indah raya , \r\npuri indah cbd, kembangan, jakarta \r\nbarat', 'Rian Anang Prakoso', 'first'),
(79, 'PRO00068-2018', 'SCH00068-2018', 'TCH00068-2018', 'teknisi', '2018/02/20', 'Upgrade', '2-149279778388', '2-167955906346', ' PT. AXA TECHNOLOGY SERVICES ASIA INDONESIA', 'AXA TOWER KUNINGAN CITY LT. 12, JL. PROF. DR. SATRIO KAV. 18, SETIABUDI KUNINGAN JAKARTA 12940', 'Debby', 'first'),
(80, 'PRO00069-2018', 'SCH00069-2018', 'TCH00069-2018', 'teknisi', '2018/01/08', 'Aktivasi', 'BJUIKmlT', '2-167804521596', 'PT SWALAYAN SUKSES ABADI', 'Lippo mall puri jl. Puri indah raya , puri indah \r\ncbd, kembangan, jakarta barat', 'Rian Anang Prakoso', 'first'),
(81, 'PRO00070-2018', 'SCH00070-2018', 'TCH00070-2018', 'teknisi', '2018/02/20', 'Survey', '2-179056599847', 'MhKnU6dV', 'COMMONWEALTH BANK ', 'Bank Commonwealth World Trade Center, Jl. Jend Sudirman Kav. 29-31, Karet, Setiabudi, Gedung World Trade Center 6 Lantai 12', 'Evi Fitria ', 'first'),
(82, 'PRO00071-2018', 'SCH00071-2018', 'TCH00071-2018', 'teknisi', '2018/02/20', 'Survey', '2-179097053650', 'MdVgUFBP', 'COMMONWEALTH BANK ', 'Bank Commonwealth World Trade Center, Jl. Jend Sudirman Kav. 29-31, Karet, Setiabudi, Gedung World Trade Center 6 Lantai 12', 'Evi Fitria ', 'first'),
(83, 'PRO00072-2018', 'SCH00072-2018', 'TCH00072-2018', 'teknisi', '2018/01/08', 'Aktivasi', '6SKOqmQA', '2-167778873094', 'SHONY FEBRIMAS', 'ST. MORITZ AMBASADOR LANTAI \r\nP1 R.3606', 'Rian Anang Prakoso', 'first'),
(84, 'PRO00073-2018', 'SCH00073-2018', 'TCH00073-2018', 'teknisi', '2018/02/20', 'Aktivasi', '2fdMyWI0', '2-167861004199', 'UNIT PELAKSANA KEBERSIHAN BADAN AIR DINAS KEBERSIH', 'Kantor Seksi Dinas Kebersihan Cengkareng Jl.Kamal Raya', 'Aprianti Lestari ', 'first'),
(85, 'PRO00074-2018', 'SCH00074-2018', 'TCH00074-2018', 'teknisi', '2018/01/08', 'Aktivasi', '0wNo2Lzf', '2-167778942627', 'SHONY FEBRIMAS', 'ST. MORITZ AMBASADOR LANTAI \r\nP1 R.3606', 'Rian Anang Prakoso', 'first'),
(86, 'PRO00075-2018', 'SCH00075-2018', 'TCH00075-2018', 'teknisi', '2018/01/08', 'Aktivasi', 'a6aOmKCt', '2-167778954610', 'SHONY FEBRIMAS', 'ST. MORITZ AMBASADOR LANTAI \r\nP1 R.3606', 'Rian Anang Prakoso', 'first'),
(87, 'PRO00076-2018', 'SCH00076-2018', 'TCH00076-2018', 'teknisi', '2018/02/20', 'Aktivasi', '2-149611847416', 'RugtrGP5', 'PT ADA KAMAR INDONESIA SIPP TRUNK-CYBER', 'Gedung Cyber 1 APJII Rack Q (Infratel), Jl. Kuningan Barat No. 8, Jakarta', 'Bobby Yudha Wiratama ', 'first'),
(88, 'PRO00077-2018', 'SCH00077-2018', 'TCH00077-2018', 'teknisi', '2018/01/08', 'Aktivasi', 'WIxaoSr2', '2-167511443559', 'HERU', 'Apartemen gading mediterania residences tower B utara lantai 2 Jalan Boulevard Bukit Gading Raya Kelapa Gading Barat', 'Rian Anang Prakoso', 'first'),
(89, 'PRO00078-2018', 'SCH00078-2018', 'TCH00078-2018', 'teknisi', '2018/02/21', 'Aktivasi', '2-167594930550', 'JNTn6q1Q', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', '\"PT OCEAN NETWORK EXPRESS\r\nINDONESIA, JL. RAYA BATAM CENTRE,\r\nTELUK TERING, GRAHA PENA BATAM\r\nBUILDING, BATAM 29461\"', 'Tri Purnomo', 'first'),
(90, 'PRO00079-2018', 'SCH00079-2018', 'TCH00079-2018', 'teknisi', '2018/02/21', 'Aktivasi', '2-172302711246', 'PXfpvura', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', '\"PT OCEAN NETWORK EXPRESS\r\nINDONESIA, JL. HAYAM WURUK NO. 88K,\r\nKEL. KEDAMAIAN, KEC. TANJUNG\r\nKARANG TIMUR, BANDAR LAMPUNG\r\n35122\"', 'Tri Purnomo', 'first'),
(91, 'PRO00080-2018', 'SCH00080-2018', 'TCH00080-2018', 'teknisi', '2018/01/08', 'Aktivasi', '3opnfkaI', '2-167511481393', 'HERU', 'Apartemen gading mediterania residences tower B utara lantai 2 Jalan Boulevard Bukit Gading Raya Kelapa Gading Barat', 'Rian Anang Prakoso', 'first'),
(92, 'PRO00081-2018', 'SCH00081-2018', 'TCH00081-2018', 'teknisi', '2018/02/21', 'Aktivasi', '2-213316472507', 'D8WS6UZo', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', '\"PT OCEAN NETWORK EXPRESS\r\nINDONESIA, PALEMBANG TRADE CENTER\r\nBLOK H NO. 3, JL. R. SUKAMTO,\r\nPALEMBANG TRADE CENTER BUILDING,\r\nPALEMBANG 30114\"', 'Tri Purnomo', 'first'),
(93, 'PRO00082-2018', 'SCH00082-2018', 'TCH00082-2018', 'teknisi', '2018/01/08', 'Aktivasi', 'FsRtH9Xe', '2-167511517086', 'HERU', 'Apartemen gading mediterania residences tower B utara lantai 2 Jalan Boulevard Bukit Gading Raya Kelapa Gading Barat', 'Rian Anang Prakoso', 'first'),
(94, 'PRO00083-2018', 'SCH00083-2018', 'TCH00083-2018', 'teknisi', '2018/01/08', 'Aktivasi', 'ncgMIGRI', '2-167511558809', 'HERU', 'Apartemen gading mediterania residences tower B utara lantai 2 Jalan Boulevard Bukit Gading Raya Kelapa Gading Barat', 'Rian Anang Prakoso', 'first'),
(95, 'PRO00084-2018', 'SCH00084-2018', 'TCH00084-2018', 'teknisi', '2018/02/21', 'Audit', 'ILC A-P-2 CKN-SNG 150002', '23zE6bia', '\"LEMBAGA PENYELENGGARA PELAYANAN NAVIGASI PENERBAN', 'BANDARA CENGKARENG, DATA CENTER JATCS', 'Firdaus Ibrahim Setyo Wiedhi', 'first'),
(96, 'PRO00085-2018', 'SCH00085-2018', 'TCH00085-2018', 'teknisi', '2018/02/21', 'Aktivasi', '2-189519781172', 'eeCzGrm8', 'WIJAYA KARYA', '\"Jl.D.I.Panjaitan Kav.9 Jakarta 13340 Indonesia \r\n\"', 'Hovidin ( Opi )', 'first'),
(97, 'PRO00086-2018', 'SCH00086-2018', 'TCH00086-2018', 'teknisi', '2018/01/08', 'Survey', '2-162891993009', 'BtCOQklC', 'PT BANK DBS INDONESIA', 'DC SIGMA GERMAN CENTER, JL. KAPTEN SUBIJANTO, BSD, TANGERANG, 15225 - RACK DBS DCI CIBITUNG MM2100 CIBITUNG BEKASI 17520', 'Evi Fitria', 'first'),
(98, 'PRO00087-2018', 'SCH00087-2018', 'TCH00087-2018', 'teknisi', '2018/02/21', 'Aktivasi', '2-189519780945', '2EOxNDJz', 'WIJAYA KARYA', '\"Jl.D.I.Panjaitan Kav.9 Jakarta 13340 Indonesia \r\n\"', 'Hovidin ( Opi )', 'first'),
(99, 'PRO00088-2018', 'SCH00088-2018', 'TCH00088-2018', 'teknisi', '2018/01/08', 'Survey', '2-162898980814', 'cW3aTwiP', 'PT BANK DBS INDONESIA', 'DC SIGMA GERMAN CENTER JL. KAPTEN SUBIJANTO, BSD, TANGERANG 15321 - DCI CIBITUNG, JL JAWA BLOK GG-5-1 DCI DATA CENTER MM 2100 CIKARANG BARAT BEKASI 17520', 'Evi Fitria', 'first'),
(100, 'PRO00089-2018', 'SCH00089-2018', 'TCH00089-2018', 'teknisi', '2018/02/22', 'Aktivasi', 'Hdug5vid', '2-213389972243', 'GENERAL MOTOR INDONESIA', 'PT. VUTEQ INDONESIA JL. CEMPAKA KM 37 RT.003 RW.002 KEL. JATIMULYA KEC. TAMBUN SELATAN BEKASI', 'Nur Aminah', 'first'),
(101, 'PRO00090-2018', 'SCH00090-2018', 'TCH00090-2018', 'teknisi', '2018/01/09', 'Aktivasi', '2-163156815660', '61PbBgJv', 'AT&T - BLUESCOPE CIBITUNG', 'PT NS BlueScope Lysaght Indonesia, Jl. Irian Blok DD 2/2 Kawasan Industri, MM2100, Cibitung, Bekasi 17520', 'Hesti Setiowati', 'first'),
(102, 'PRO00091-2018', 'SCH00091-2018', 'TCH00091-2018', 'teknisi', '2018/02/22', 'Audit Power BTS', 'DIPV B-MMI PMG 161062', 'OF2dsgw6', 'BANK MUAMALAT INDONESIA TBK', 'BTS PASAR MINGGU', 'Aldi Levadi', 'first'),
(103, 'PRO00092-2018', 'SCH00092-2018', 'TCH00092-2018', 'teknisi', '2018/01/09', 'Aktivasi', 'cWvIK1dP', '2-167488924485', 'JASNITA TELEKOMINDO', 'CYBER 1 JL. KUNINGAN BARAT NO.8, RT.1/RW.3, KUNINGAN BARAT, MAMPANG PRAPATAN JAKARTA', 'Nur Aminah', 'first'),
(189, 'PRO00178-2018', 'SCH00178-2018', 'TCH00178-2018', 'teknisi', '2018/01/22', 'Survey', '2-170110051863', '9sW1e2hy', 'INDONESIA COMNETS PLUS PT_BINTARO', '\"GD. WISMA MULIA LT 50-51, JL. JEND\r\nGATOT SUBROTO NO 42 KUNINGAN\r\nBARAT MAMPANG, DKI JAKARTA 12710\"', 'Hesti Setiowati', 'first'),
(105, 'PRO00094-2018', 'SCH00094-2018', 'TCH00094-2018', 'teknisi', '2018/01/09', 'Survey', '2-167851722399', 'gsc5tT9K', 'PELINDO', 'DATA CENTER TELKOMSIGMA SENTUL JL IR H JUANDA NO 7 SENTUL CITY BOGOR', 'Nur Aminah', 'first'),
(106, 'PRO00095-2018', 'SCH00095-2018', 'TCH00095-2018', 'teknisi', '2018/02/23', 'Survey', '2-213324528449', 'Ogua34nC', 'QUANTUM TERA NETWORK', '\"CINERE RESORT APARTMENT, JALAN\r\nRAYA GANDUL, GANDUL, CINERE,\r\nGANDUL, CINERE, KOTA DEPOK 16512\"', 'Adya Pramesthi', 'first'),
(107, 'PRO00096-2018', 'SCH00096-2018', 'TCH00096-2018', 'teknisi', '2018/01/09', 'Survey', '2-167775343387', 'ED6J7E3q', 'PT NETTOCYBER INDONESIA', 'MENARA JAMSOSTEK JL. GATOT \r\nSUBROTO KAV. 38 JAKARTA 12930', 'Hesti Setiowati', 'first'),
(108, 'PRO00097-2018', 'SCH00097-2018', 'TCH00097-2018', 'teknisi', '2018/02/23', 'Dismantle', '4GeUKNGo', '2-172221704696', 'CITIBANK NA', 'CITIBANK TOWER - CITIBANK KLP GADING, JL.BOULEVARD BARAT RAYA BLOK LC6 NO.1-3', 'Debby ', 'first'),
(109, 'PRO00098-2018', 'SCH00098-2018', 'TCH00098-2018', 'teknisi', '2018/01/09', 'Aktivasi', '2-147954627303', '2-167760454274', 'PT BANK DBS INDONESIA', 'ANZ Tower Lt 15 Jl Jend Sudirman Kav 33 A Jakarta 10220', 'Evi Fitria', 'first'),
(110, 'PRO00099-2018', 'SCH00099-2018', 'TCH00099-2018', 'teknisi', '2018/02/25', 'INTERMITTENT (TROBLE)', '2-213449764746', 'rtUHmQrq', 'AKNES SINTIYA DEWI F', 'OYAL MEDITERANIA GARDEN TWR LAVENDER 5BR JL.LETJEN S PARMAN KAV 28 DKI Jakarta  Jakarta Indonesia', 'M.Sauqie', 'first'),
(111, 'PRO00100-2018', 'SCH00100-2018', 'TCH00100-2018', 'teknisi', '2018/02/26', 'Survey', '2-205777109672', 'VcWfdcWs', 'BANK RAKYAT INDONESIA TBK', 'BNI Sudirman, Kantor Besar BNI lantai 5, Jl. Jendral Sudirman Kav. 1, Jakarta', ' Evi Fitria ', 'first'),
(112, 'PRO00101-2018', 'SCH00101-2018', 'TCH00101-2018', 'teknisi', '2018/01/09', 'Aktivasi', '2-147955014933', '2-167760532546', 'PT BANK DBS INDONESIA', 'ANZ Tower Lt 15 Jl Jend Sudirman Kav 33 A Jakarta 10221', 'Evi Fitria', 'first'),
(113, 'PRO00102-2018', 'SCH00102-2018', 'TCH00102-2018', 'teknisi', '2018/02/26', 'Aktivasi', '2-167650294204', '7TlqE6Wt', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', '\"MASTERCARD / DCI JK1 MM2100 INDUSTRIAL\r\nTOWN (CIBITUNG) JL. IRIAN I BLOK GG 5-1\r\nCIKARANG BARAT, BEKASI\"', 'Ariyanti Masito', 'first'),
(114, 'PRO00103-2018', 'SCH00103-2018', 'TCH00103-2018', 'teknisi', '2018/01/09', 'Aktivasi', '2-147955137803', '2-167760666917', 'PT BANK DBS INDONESIA', 'ANZ Tower Lt 15 Jl Jend Sudirman Kav 33 A Jakarta 10222', 'Evi Fitria', 'first'),
(115, 'PRO00104-2018', 'SCH00104-2018', 'TCH00104-2018', 'teknisi', '2018/02/26', 'Aktivasi', 'gSn0kuLR', '2-178940245976', 'SINGAPORE TELECOMMUNICATIONS LTD FOR MANULIFE ASET', '\"NTTI Nexcenter Building, CYBER CSF\r\nJalan kuningan barat no.8 Jakarta\r\n12710\"', 'Rahmat Hidayatullah', 'first'),
(116, 'PRO00105-2018', 'SCH00105-2018', 'TCH00105-2018', 'teknisi', '2018/02/26', 'Aktivasi', '2-162960811747', '2-167629223040', ' BT COMMUNICATIONS INDONESIA for MASTERCARD', 'DCI Indonesia Cikarang, Kawasan Industri, MM2100 Jl. Irian Cibitung, Cikarang', 'Rahmat Hidayatullah', 'first'),
(117, 'PRO00106-2018', 'SCH00106-2018', 'TCH00106-2018', 'teknisi', '2018/01/10', 'Survey', '2-163156815204', 'VydsHTqU', 'PT OCEAN NETWORK EXPRESS INDONESIA', 'Jalan Jend. Sudirman Kav. 48A, RT.5/RW.4,Karet Semanggi, Kota Jakarta Selatan, Daerah Khusus Ibukota, AIA Central Building, 22nd Floor, Server room, Jakarta, Indonesia, 12930', 'Tri Purnomo', 'first'),
(118, 'PRO00107-2018', 'SCH00107-2018', 'TCH00107-2018', 'teknisi', '2018/02/26', 'Aktivasi', 'wKvr1IuU', '2-187013496552', 'INDOSAT-IT OPS', '\"JL. MEDAN MERDEKA BARAT NO. 21, GAMBIR,\r\nJAKARTA PUSAT, DKI JAKARTA, 11101\"', 'Annisya Fahmi', 'first'),
(119, 'PRO00108-2018', 'SCH00108-2018', 'TCH00108-2018', 'teknisi', '2018/02/26', 'Survey', '2-213361764285', '7BkgJ4iF', 'PT. ARSENET GLOBAL SOLUSI', 'IDC 3D JL. DUREN TIGA RAYA NO.7H, RT.9/RW.5 DUREN TIGA JAKARTA', 'Nur Aminah', 'first'),
(120, 'PRO00109-2018', 'SCH00109-2018', 'TCH00109-2018', 'teknisi', '2018/01/11', 'Dismantle', 'qP9ITToA', '2-158050956569', 'MEGA PILAR MAS', 'PT. MEGA PILAR MAS, JL. ARYA KEMUNING NO.65, PRIUK JAYA, TANGERANG	', 'Nur Aminah', 'first'),
(121, 'PRO00110-2018', 'SCH00110-2018', 'TCH00110-2018', 'teknisi', '2018/01/11', 'Aktivasi', '2-158907087751', '0UcaPwNM', 'DWDM Permata Bank Bintaro', 'Permata Bank Bintaro Jl hayam wuruk no 84', 'Muhammad Indra Kurniawan', 'first'),
(122, 'PRO00111-2018', 'SCH00111-2018', 'TCH00111-2018', 'teknisi', '2018/02/26', 'Aktivasi', 'GqUhE5SO', '2-213410693402', 'COMMONWEALTH BANK', 'Bank Commonwealth World Trade Center, Jl. Jend Sudirman Kav. 29-31, Karet, Setiabudi, Gedung World Trade Center 6 Lantai 12', 'Evi Fitria', 'first'),
(123, 'PRO00112-2018', 'SCH00112-2018', 'TCH00112-2018', 'teknisi', '2018/02/26', 'Aktivasi', 'aLXehB7V', '2-213331307136', ' PRIMACOM INTERBUANA', 'BANK INA DC DCI CIBITUNG 17520', 'Evi Fitria ', 'first'),
(124, 'PRO00113-2018', 'SCH00113-2018', 'TCH00113-2018', 'teknisi', '2018/01/12', 'Survey', '2-156852496678', 'i0sUNZwN', 'GLOBAL DIGITAL NIAGA', 'IDC DUREN TIGA RACK BLIBLI.COM JL. \r\nDUREN TIGA RAYA NO.7H, RT.9/RW.5, \r\nDUREN TIGA, PANCORAN JAKARTA', 'Ariyanti Masitoh', 'first'),
(125, 'PRO00114-2018', 'SCH00114-2018', 'TCH00114-2018', 'teknisi', '2018/02/26', 'Aktivasi', ' 2-172022166813', 'pMIb4XOA', 'ATT Mastercard DCI', 'DCI', 'Hovidin', 'first'),
(126, 'PRO00115-2018', 'SCH00115-2018', 'TCH00115-2018', 'teknisi', '2018/01/12', 'Dismantle', 'xkCPqNHi', '2-167608861902', 'DIAN KENCANA PURI PRIMA', 'JALAN MATRAMAN RAYA O 15, JAKARTA TIMUR 13140', 'Aprianti Lestari', 'first'),
(129, 'PRO00118-2018', 'SCH00118-2018', 'TCH00118-2018', 'teknisi', '2018/01/12', 'Relokasi', '2-149124111418', '2-167854164897', 'PT. HANWHA LIFE INSURANCE INDONESIA - WTC 1', 'WTC 1 Lt.12, Jl. Jend. Sudirman Kav. 29 - 31 RT.8/RW.3, Jakarta Selatan 12920', 'Hesti Setiowati', 'first'),
(128, 'PRO00117-2018', 'SCH00117-2018', 'TCH00117-2018', 'teknisi', '2018/01/12', 'Deaktivasi', 'bNu5uxMB', '2-97124768952', 'BARRY CALLEBAUT COMEXTRA INDONESIA (ARTHA TELEKOMI', 'Gedung Cyber 1, Jl.Kuningan Barat no 8, Mampang Prapatan Jakarta', 'Hesti Setiowati', 'first'),
(130, 'PRO00119-2018', 'SCH00119-2018', 'TCH00119-2018', 'teknisi', '2018/02/27', 'Aktivasi', '2-167793295701', 'FM8q1AWz', 'AT&T OCEAN SEMARANG', 'Jl. Pandanaran No. 30, Semarang, Central Java, 50134,', 'Hovidin ( Opi )', 'first'),
(131, 'PRO00120-2018', 'SCH00120-2018', 'TCH00120-2018', 'teknisi', '2018/02/27', 'Aktivasi', 'wZguCfpJ', '2-206163985173', 'JASNITA TELEKOMINDO (Denpasar)', 'GEDUNG CYBER 1 JL.KUNINGAN BARAT NO 8 KUNINGAN JAKARTA', 'Nur Aminah', 'first'),
(132, 'PRO00121-2018', 'SCH00121-2018', 'TCH00121-2018', 'teknisi', '2018/01/12', 'Aktivasi', 'b8sBXJaz', '2-168371450964', 'LIMA MENARA BINTANG', 'GEDUNG KIRANA TWO LANTAI 10-A, JALAN BOULEVARD\r\nTIMUR NO.88 RT.005 RW.002, PEGANGSAAN DUA,\r\nKELAPA GADING, JAKARTA UTARA, DKI JAKARTA, 14250', 'Annisya Fahmi', 'first'),
(133, 'PRO00122-2018', 'SCH00122-2018', 'TCH00122-2018', 'teknisi', '2018/02/27', 'Survey', '2-213317619762', 'H0UAObk8', 'PT Indo Corpora Investama', 'PT. KAI Bandung, Lt. 1, Jl. Perintis Kemerdekaan No. 1 Bandung', 'Bobby Yudha Wiratama', 'first'),
(134, 'PRO00123-2018', 'SCH00123-2018', 'TCH00123-2018', 'teknisi', '2018/02/27', 'Aktivasi', 'QHyKQRF5', '2-204131172147', 'FENDY SURIJANTO', 'APARTEMEN MEDITERANIA GARDEN RESIDENCES', 'Faizar Hasbi', 'first'),
(135, 'PRO00124-2018', 'SCH00124-2018', 'TCH00124-2018', 'teknisi', '2018/02/28', 'Survey', '2-172063004040', '4iq9Xq6T', 'PT BANK NEGARA INDONESIA ( PERSERO) TBK SLIPI', 'DC BNI SLIPI, Jl. Jend. S Parman Slipi, Blok E No. 1-5 dan Blok F 1-8 Slipi', 'Evi Fitria ', 'first'),
(136, 'PRO00125-2018', 'SCH00125-2018', 'TCH00125-2018', 'teknisi', '2018/02/28', 'Aktivasi', '2-181793847544', 'IxefqSbw', 'NETTOCYBER', 'Pacific Building', 'Hovidin ( Opi )', 'first'),
(137, 'PRO00126-2018', 'SCH00126-2018', 'TCH00126-2018', 'teknisi', '2018/02/28', 'Aktivasi', '2-181549125513', 'cgDq0yrd', 'NETTOCYBER', 'Wisma HSBC Semarang', 'Hovidin ( Opi )', 'first'),
(138, 'PRO00127-2018', 'SCH00127-2018', 'TCH00127-2018', 'teknisi', '2018/01/15', 'Survey', '2-167905967389', 'hNmrgSDV', 'KREATIF PASIFIC', 'IKIP PGRI PONTIANAK JL. AMPERA NO. 88, PONTIANAK, KALBAR', 'Nur Aminah', 'first'),
(139, 'PRO00128-2018', 'SCH00128-2018', 'TCH00128-2018', 'teknisi', '2018/01/15', 'Aktivasi', '2-161615718246', 's5VaXTnJ', 'DBS INDONESIA', 'JL JAWA BLOK GG-5-1 DCI DATA CENTER MM 2100 CIKARANG BARAT BEKASI', 'Muhammad Indra Kurniawan', 'first'),
(140, 'PRO00129-2018', 'SCH00129-2018', 'TCH00129-2018', 'teknisi', '2018/01/16', 'Aktivasi', 'baCTHJ4l', '2-169763607797', 'BATIK KERIS', 'KUNINGAN CITY MALL JL PROF\r\nDR SATRIO KAV 18, Lt. UG\r\nNo.21 JAKARTA', 'Rian Anang Prakoso', 'first'),
(141, 'PRO00130-2018', 'SCH00130-2018', 'TCH00130-2018', 'teknisi', '2018/01/16', 'Aktivasi', 'JRAIiCzV', '2-169470080499', 'ANDRE GUNAWAN / BREXIT', 'Lippo mall puri jl. Puri indah raya ,\r\npuri indah cbd, kembangan,\r\njakarta barat', 'Rian Anang Prakoso', 'first'),
(142, 'PRO00131-2018', 'SCH00131-2018', 'TCH00131-2018', 'teknisi', '2018/01/16', 'Aktivasi', 'WJVz82dR', '2-169773022549', 'PT YUKK KREASI INDONESIA', 'Lippo mall puri jl. Puri indah raya ,\r\npuri indah cbd, kembangan, jakarta\r\nbarat', 'Rian Anang Prakoso', 'first'),
(143, 'PRO00132-2018', 'SCH00132-2018', 'TCH00132-2018', 'teknisi', '2018/01/17', 'Survey', '2-163667509945', 'eI2zfvN4', 'PT Prudential', 'Jl. Kasablanka Raya kav 88 (Prudential center)', 'Dendy Hartanto', 'first'),
(144, 'PRO00133-2018', 'SCH00133-2018', 'TCH00133-2018', 'teknisi', '2018/01/18', 'Survey', '2-170473829349', 'feG8TW7A', 'US EMBASSY', 'CDC OFFICE, JL. PERCETAKAN NEGARA NO.23A, JAKARTA, INDONESIA, 10560', 'Annisya Fahmi', 'first'),
(145, 'PRO00134-2018', 'SCH00134-2018', 'TCH00134-2018', 'teknisi', '2018/01/19', 'Survey', '2-167896840929', 'maR7xxrM', 'BANK MANDIRI (PERSERO) TBK', 'PSB CABANG JAKARTA ATRIUM SENEN RUKO SEGITIGA SENEN BLOK E-21/22, JL. SENEN RAYA NO. 135 JAKARTA 10150', 'Evi Fitria', 'first'),
(146, 'PRO00135-2018', 'SCH00135-2018', 'TCH00135-2018', 'teknisi', '2018/01/19', 'Survey', '2-167896948286', 'cequWJJN', 'BANK MANDIRI (PERSERO) TBK', 'JL. JEND. GATOT SUBROTO NO. 79', 'Evi Fitria', 'first'),
(147, 'PRO00136-2018', 'SCH00136-2018', 'TCH00136-2018', 'teknisi', '2018/01/19', 'Survey', '2-167896956806', '428Dl3KN', 'BANK MANDIRI (PERSERO) TBK', 'JL. RAYA PASAR MINGGU KM. 17 NO.8', 'Evi Fitria', 'first'),
(148, 'PRO00137-2018', 'SCH00137-2018', 'TCH00137-2018', 'teknisi', '2018/01/19', 'Survey', '2-167896951878', 'ExB6xU55', 'BANK MANDIRI (PERSERO) TBK', 'JL. KENARI II NO. 5', 'Evi Fitria', 'first'),
(149, 'PRO00138-2018', 'SCH00138-2018', 'TCH00138-2018', 'teknisi', '2018/01/19', 'Aktivasi', '2-167596093837', 'R3DTRFxz', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'GD WISMA DANAMON AETNA LIFE LT 19 JL JEND SUDIRMAN KAV \r\n\r\n45-46 JAKARTA', 'Tri Purnomo', 'first'),
(150, 'PRO00139-2018', 'SCH00139-2018', 'TCH00139-2018', 'teknisi', '2018/01/19', 'Survey', '2-167896990408', 'FAwWUzTH', 'BANK MANDIRI (PERSERO) TBK', 'JL. DIPONEGORO NO. 71', 'Evi Fitria', 'first'),
(151, 'PRO00140-2018', 'SCH00140-2018', 'TCH00140-2018', 'teknisi', '2018/01/19', 'Survey', '2-167876014698', 'FwzFInWy', 'BANK MANDIRI (PERSERO) TBK', 'PLAZA MANDIRI, JL. GATOT SUBROTO KAV 36-38 JAKARTA 10120', 'Debby', 'first'),
(152, 'PRO00141-2018', 'SCH00141-2018', 'TCH00141-2018', 'teknisi', '2018/01/22', 'Aktivasi', 'KhUgZOBQ', '2-170848283339', 'ZHANG PENNEY / BIANG', 'Lippo mall puri jl. Puri indah raya , \r\npuri indah cbd, kembangan, jakarta \r\nbarat', 'Rian Anang Prakoso', 'first'),
(155, 'PRO00144-2018', 'SCH00144-2018', 'TCH00144-2018', 'teknisi', '2018/01/19', 'Survey', '2-167886830561', 'BnXUyLWC', 'BANK MANDIRI (PERSERO) TBK ', 'PLAZA MANDIRI, JL. GATOT SUBROTO KAV 36-38 JAKARTA 10121', 'Debby ', 'first'),
(154, 'PRO00143-2018', 'SCH00143-2018', 'TCH00143-2018', 'teknisi', '2018/01/22', 'Aktivasi', 'gbDn0PFN', '2-170985238044', 'BEND. PENGELUARAN BPPTL (AMRAN FIRDAUS)', 'BPPTL, JL M KAHFI II NO 88, Cipedak, Jagakarsa, Kota Jakarta Selatan, DKI JAKARTA, 12630, Indonesia', 'Annisya Fahmi', 'first'),
(156, 'PRO00145-2018', 'SCH00145-2018', 'TCH00145-2018', 'teknisi', '2018/01/22', 'Aktivasi', '2-149609361285', 'BmfeT9R2', ' AKTIF TENGAH MALAM', '\"PT AKTIF TENGAH MALAM, JL. GUNUNG SAHARI XII\r\nNO 10., KEL. GUNUNG SAHARI UTARA KEC. SAWAH\r\nBESAR, JAKARTA PUSAT, DKI JAKARTA, 10000\"', 'Annisya Fahmi', 'first'),
(157, 'PRO00146-2018', 'SCH00146-2018', 'TCH00146-2018', 'teknisi', '2018/01/22', 'Survey', '2-170578089049', 'UGylx4IG', 'FULLERTON HEALTH INDONESIA', 'CIBIS 9 - Lantai 5- FULLERTON Jalan TB Simatupang, RT.13/RW.5, Kel. Cilandak Timur, Kec. Pasar Minggu Jakarta Selatan', 'Aprianti Lestari', 'first'),
(158, 'PRO00147-2018', 'SCH00147-2018', 'TCH00147-2018', 'teknisi', '2018/01/22', 'Survey', ' 2-165714229728', '2-167736005356', 'PT BANK DBS INDONESIA ', 'GERMAN CENTER JL. KAPTEN SUBIJANTO, BSD SERPONG 15321', ' Evi Fitria ', 'first'),
(159, 'PRO00148-2018', 'SCH00148-2018', 'TCH00148-2018', 'teknisi', '2018/01/23', 'Survey', '2-170128503463', 'lHpgzmhL', 'PT.CITIGROUP SEKURITAS INDONESIA', 'PT DCI INDONESIA - JL IRIAN 1 BLOK GG5-1, KAWASAN INDUSTRI MM2100, CIBITUNG, CIKARANG BARAT, BEKASI', 'Nur Aminah', 'first'),
(160, 'PRO00149-2018', 'SCH00149-2018', 'TCH00149-2018', 'teknisi', '2018/01/22', 'Aktivasi', 'Z7rQL5Fw', '2-172032005706', 'PELINDO ', 'DATA CENTER TELKOMSIGMA SENTUL JL IR H  JUANDA NO 7 SENTUL CITY BOGOR ', 'Nur Aminah', 'first'),
(161, 'PRO00150-2018', 'SCH00150-2018', 'TCH00150-2018', 'teknisi', '2018/01/23', 'Survey', '2-172169239582', 'fPckkcL5', 'SUMBER MITRA JAYA', 'GEDUNG CYBER 2 LT. 9 JL. HR RASUNA SAID BLOK X-5 NO.13 â€“ KUNINGAN JAKARTA', 'Nur Aminah', 'first'),
(162, 'PRO00151-2018', 'SCH00151-2018', 'TCH00151-2018', 'teknisi', '2018/01/23', 'Survey', '2-167858818520', 'nc3xVxlU', 'PT NEC INDONESIA', 'SUMMITMAS 1, JEND SUDIRMAN KAV 61-62, NEC INDONESIA, JAKARTA, 12910, Indonesia', 'Annisya Fahmi', 'first'),
(163, 'PRO00152-2018', 'SCH00152-2018', 'TCH00152-2018', 'teknisi', '2018/01/23', 'Aktivasi', '2-138851561249 (IPHONE)', '2-171934498064 (MIDI)', 'PT BANK DBS INDONESIA', 'RUKO PLUIT VILLAGE BLOK MG NO. 40 â€“ 41 PLUIT, JAKARTA 14440', 'Evi Fitria', 'first'),
(164, 'PRO00153-2018', 'SCH00153-2018', 'TCH00153-2018', 'teknisi', '2018/01/24', 'Aktivasi', 'fnJ3KGq9', '2-167601645804', 'UNIT PELAKSANA KEBERSIHAN BADAN AIR DINAS KEBERSIH', 'Jl. Kemang Timur V No. 5A, Duren Tiga Pancoran, Kota Jakarta Selatan. DKI Jakarta 12780', 'Aprianti Lestari ', 'first'),
(165, 'PRO00154-2018', 'SCH00154-2018', 'TCH00154-2018', 'teknisi', '2018/01/23', 'Aktivasi', 'F65xaCr8', '2-172178895462', 'FULLERTON HEALTH INDONESIA', 'CIBIS 9 - Lantai 5- FULLERTON Jalan TB Simatupang, RT.13/RW.5, Kel. Cilandak Timur, Kec. Pasar Minggu Jakarta Selatan', 'Aprianti Lestari ', 'first'),
(166, 'PRO00155-2018', 'SCH00155-2018', 'TCH00155-2018', 'teknisi', '2018/01/24', 'Survey', '2-172168798310', 'akmuwhSV', 'SAMSUNG SDS ASIA PACIFIC', 'PT Samsung SDS Global SCL Indonesia, Marunda Center â€“ International Warehouse & Industrial Estate. Bekasi, 17211, Indonesia', 'Annisya Fahmi', 'first'),
(167, 'PRO00156-2018', 'SCH00156-2018', 'TCH00156-2018', 'teknisi', '2018/01/25', 'Aktivasi', '2-149411782715', 'U5GA24iQ', 'BANK BRI SYARIAH', 'CN4 - DRC BRI Syariah Ragunan', 'Evi Fitria ', 'first'),
(168, 'PRO00157-2018', 'SCH00157-2018', 'TCH00157-2018', 'teknisi', '2018/01/25', 'Survey', '2-170221129313', 'vVxfFH9V', 'PT. BEIERSDORF INDONESIA', '\"GEDUNG RATU PRABU II. LT.5, JL. TB\r\nSIMATUPANG KAV. 1B, RT 008/RW 003 PASAR\r\nMINGGU JAKARTA SELATAN\"', 'Sri Hartati', 'first'),
(169, 'PRO00158-2018', 'SCH00158-2018', 'TCH00158-2018', 'teknisi', '2018/01/26', 'Aktivasi', '4CfQB7Er', '2-167539168505', 'UNIT PELAKSANA KEBERSIHAN BADAN AIR DINAS KEBERSIH', 'Jl. Inspeksi Kali Sunter, Pintu Air 8 RT.4/RW.4, Klp. Gading Barat Kota Jkt Utara 14240', 'Nur Aminah ', 'first'),
(170, 'PRO00159-2018', 'SCH00159-2018', 'TCH00159-2018', 'teknisi', '2018/01/26', 'Survey', '2-149598363266', 'w9hZyqex', 'PERHUBUNGAN RI (TRIAL)', 'Kementrian Perhubungan Balitbang, Jl. Medan Merdeka Tim. No.5, RT.2/RW.1, Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, 10110, Indonesia', 'Annisya Fahmi', 'first'),
(171, 'PRO00160-2018', 'SCH00160-2018', 'TCH00160-2018', 'teknisi', '2018/01/26', 'Survey', '2-167115327735', 'aMAWncnQ', 'MAC SARANA DJAYA', 'CYBER BUILDING, Jl. Kuningan Barat no.8, JAKARTA, 12710, Indonesia', 'Annisya Fahmi', 'first'),
(172, 'PRO00161-2018', 'SCH00161-2018', 'TCH00161-2018', 'teknisi', '2018/01/26', 'Aktivasi', '2-170505849308', 'n4ec6LmU', ' PT BANK DBS INDONESIA ', 'DBS BANK, PT. SIGMA CIPTA CARAKA, DESA SIGMA GERMAN CENTRE 3RD, JL. KAPT. SUBIJANTO DJ BUMI SERPONG DAMAI TANGERANG SELATAN 15321 - DCI CIBITUNG JL JAWA BLOK GG-5-1 DCI DATA CENTER MM 2100 CIKARANG BA', 'Evi Fitria ', 'first'),
(173, 'PRO00162-2018', 'SCH00162-2018', 'TCH00162-2018', 'teknisi', '2018/01/26', 'Dismantle', 'S07M8TnF', '2-165862108380', 'CITIBANK NA', 'CITIBANK SOUTH QUARTER GEDUNG B LT. 6, JLN. RA. KARTINI NO. 8, CILANDAK BARA, JAKARTA', 'Debby ', 'first'),
(174, 'PRO00163-2018', 'SCH00163-2018', 'TCH00163-2018', 'teknisi', '2018/01/29', 'Survey', '2-170187945346', 'yTnfKyRc', 'BANK BUKOPIN', 'Kantor Pusat Bank Bukopin MT Haryono Kav 50-51', 'Evi Fitria ', 'first'),
(175, 'PRO00164-2018', 'SCH00164-2018', 'TCH00164-2018', 'teknisi', '2018/01/29', 'Relokasi', '2-149282794993', 'U8NSDSRc', 'TATA - Grasim Primary', '\"JL. CEMPAKA KM. 37 RT.003 RW.002 JATIMULYA TAMBUN SELATAN, Bekasi, 	\"', 'Tri Purnomo ', 'first'),
(176, 'PRO00165-2018', 'SCH00165-2018', 'TCH00165-2018', 'teknisi', '2018/01/29', 'Survey', '2-172222125291', 'lCu5mm3c', 'BANK BUKOPIN', 'KCU BANK BUKOPIN MARGONDA DEPOK JL. MARGONDA RAYA NO. 9 -10 DEPOK 16424 - NODE IDIA KPPT', 'Evi Fitria ', 'first'),
(177, 'PRO00166-2018', 'SCH00166-2018', 'TCH00166-2018', 'teknisi', '2018/01/30', 'Aktivasi', 'rQiOKoac', '2-167546338870', 'UNIT PELAKSANA KEBERSIHAN BADAN AIR DINAS KEBERSIH', 'Jl. Tanggul Barat Kel Angke ( depan RPTRA Kalijodo )', 'Aprianti Lestari', 'first'),
(178, 'PRO00167-2018', 'SCH00167-2018', 'TCH00167-2018', 'teknisi', '2018/01/30', 'Survey', '2-172296569431', '7IkXbKao', 'BANK BTPN', 'MENARA BTPN JLN. IDE ANAK AGUNG GDE AGUNG KAV. 5.5-5.6, JAKARTA SELATAN 12950', ' Evi Fitria ', 'first'),
(179, 'PRO00168-2018', 'SCH00168-2018', 'TCH00168-2018', 'teknisi', '2018/01/31', 'Aktivasi', '2-167876084864', '2-172214669889', 'BANK BTPN', 'Gedung Menara BTPN Jl. Dr. Ide Anak Agung Gde Agung Kav. 5.5 - 5.6 Jakarta Selatan 12950', 'Muhammad Indra Kurniawan', 'first'),
(180, 'PRO00169-2018', 'SCH00169-2018', 'TCH00169-2018', 'teknisi', '2018/01/31', 'Survey', '2-172238429711', 'M5HbpWwq', 'MULTIPOLAR TECHNOLOGY TBK ', 'TALAVERA OFFICE PARK JL. LETJEN TB SIMATUPANG KAV 20-26 CILANDAK 12430 - DRC JATILUHUR', ' Evi Fitria ', 'first'),
(181, 'PRO00170-2018', 'SCH00170-2018', 'TCH00170-2018', 'teknisi', '2018/01/31', 'Aktivasi', 'nnIn2FJ0', '2-172325242867', 'PT MORA TELEMATIKA INDONESIA', '\"GRHA 9 6TH FLOOR, JL PANATARAN NO 9\r\nPROKLAMASI, JAKARTA PUSAT, DKI JAKARTA, 10320\"', 'Annisya Fahmi', 'first'),
(182, 'PRO00171-2018', 'SCH00171-2018', 'TCH00171-2018', 'teknisi', '2018/01/31', 'Aktivasi', 'U8Zn1Que', '2-172245106009', 'NARESH KUMAR JEVANMALL', '\"Apartement Gading Mediterania\r\nResidence tower A\"', 'Faizar Hasbi', 'first'),
(183, 'PRO00172-2018', 'SCH00172-2018', 'TCH00172-2018', 'teknisi', '2018/01/31', 'Aktivasi', 'rNDLqgBA', '2-172302972499', 'PUDJI SUGIANTO', '\"Apartement Gading Mediterania Residence\r\ntower B Unit 6 lt.6 Jalan Boulevard Bukit gading\r\nraya\"', 'Faizar Hasbi', 'first'),
(184, 'PRO00173-2018', 'SCH00173-2018', 'TCH00173-2018', 'teknisi', '2018/01/31', 'Aktivasi', 'weMOIO4U', '2-172340838437', 'PT. CITIGROUP SEKURITAS INDONESIA', 'PT DCI INDONESIA - JL IRIAN 1 BLOK GG5-1, KAWASAN INDUSTRI MM2100, CIBITUNG, CIKARANG BARAT, BEKASI', 'Nur Aminah', 'first'),
(185, 'PRO00174-2018', 'SCH00174-2018', 'TCH00174-2018', 'teknisi', '2018/01/31', 'Aktivasi', 'XUTcyrRm', '2-172327959008', 'PRIMACOM INTERBUANA', 'CITIBANK SOUTH QUARTER GEDUNG B LT. 6 JLN. RA. KARTINI NO. 8, CILANDAK BARAT, JAKARTA 12430', 'Evi Fitria ', 'first'),
(190, 'PRO00179-2018', 'SCH00179-2018', 'TCH00179-2018', 'teknisi', '2018/01/17', 'Manageable Modem 2018 Batch 1', '2-81228880565', 'uIREJtc2', 'BANK MANDIRI (PERSERO) TBK', 'KCP JAKARTA MALL TAMAN ANGGREK LT. G-46, JL. LETJEN S. PARMAN KAV. 21 JAKARTA 11430', 'NA', 'first'),
(191, 'PRO00180-2018', 'SCH00180-2018', 'TCH00180-2018', 'teknisi', '2018/01/17', 'Manageable Modem 2018 Batch 2', 'MIGRATION_ASSET-1858794', 'xX3f1hFT', 'PT. BANK INTERNASIONAL INDONESIA TBK', 'KCP ITC MANGGA DUA, ITC BUILDING LT.DASAR BLOK D NO. 6-9 JL ARTERI MANGGA DUA JAKARTA', 'NA', 'first'),
(192, 'PRO00181-2018', 'SCH00181-2018', 'TCH00181-2018', 'teknisi', '2018/01/17', 'Manageable Modem 2018 Batch 3', '2-148380116735', 'CAvpLXeg', 'BCA KCP MANGGADUA MALL', 'BCA KCP MANGGA DUA MALL, MANGGA DUA MALL NO. RM. 49, JL. MANGGA DUA RAYA JAKARTA', 'NA', 'first'),
(193, 'PRO00182-2018', 'SCH00182-2018', 'TCH00182-2018', 'teknisi', '2018/01/17', 'Aktivasi', '2-138862145911', '2-167884738023', 'PT BANK DBS INDONESIA', 'UOB PLAZA LT 26, JL. MH THAMRIN NO 10 JAKARTA 10230', 'NA', 'first'),
(194, 'PRO00183-2018', 'SCH00183-2018', 'TCH00183-2018', 'teknisi', '2018/01/19', 'Aktivasi', 'CJTo6eZr', '2-170963719810', 'ADHYA AVIA PRIMA (Site Husein) ', 'PT. ADHYA AVIA PRIMA JL. HUSEIN SASTRANEGARA NO.12, RAWABOKOR, KEL/, BENDA, KOTA TANGERANG', 'NA', 'first'),
(195, 'PRO00184-2018', 'SCH00184-2018', 'TCH00184-2018', 'teknisi', '2018/01/19', 'Aktivasi', 'F2k25sME', '2-170964868550', 'ADHYA AVIA PRIMA (Site Taman Mahkota)', '\"PT. ADHYA AVIA PRIMA RUKO TAMAN MAHKOTA BLOK A2/2 JL. HUSEIN SASTRANEGARA, RAWABOKOR, KEL/, BENDA TANGERANG\r\n\"', 'NA', 'first'),
(196, 'PRO00185-2018', 'SCH00185-2018', 'TCH00185-2018', 'teknisi', '2018/02/28', 'Aktivasi', '2-167752644081', 'aXsvm51b', 'TATA ICHIKOH', 'LINTASARTA TATA NODE Jl. T.B. Simatupang (Kav. 10) Jakarta Capital Region', 'NA', 'first'),
(199, 'PRO00188-2018', 'SCH00188-2018', 'TCH00188-2018', 'teknisi', '2018/03/01', 'Aktivasi', '34GLfvFT', '2-149519496654', 'PEMUDA BERKARYA MANUNGGAL', '\"IDC DUREN 3, GEDUNG CYBER LT DASAR, JL. KUNINGAN BARAT\r\nNO.8 JAKARTA\"', 'Antony Christovel Sitorus ', 'first'),
(198, 'PRO00187-2018', 'SCH00187-2018', 'TCH00187-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'DsEr8NSC', '2-214188569470', 'PT BANK DBS INDONESIA', 'WISMA PONDOK INDAH I, GF SUITE 02 JL. SULTAN ISKANDAR MUDA KAV. V-TA JAKARTA 12310', ' Evi Fitria ', 'first'),
(200, 'PRO00189-2018', 'SCH00189-2018', 'TCH00189-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'SOxBaTAJ', '2-214194776003', 'PT BANK DBS INDONESIA', 'DBS JL. MH. THAMRIN KAV. 8-10 JAKARTA PUSAT 10230', ' Evi Fitria ', 'first'),
(201, 'PRO00190-2018', 'SCH00190-2018', 'TCH00190-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'veay9RZV', '2-214193774057', 'PT BANK DBS INDONESIA', 'RUKO PLUIT VILLAGE BLOK MG NO. 40 â€“ 41 PLUIT - JAKARTA UTARA 14440', ' Evi Fitria ', 'first'),
(202, 'PRO00191-2018', 'SCH00191-2018', 'TCH00191-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'JzxSHqiI', '2-214185636263', 'PT BANK DBS INDONESIA', 'ANZ RBS PONDOK INDAH BRANCH, JL. METRO PONDOK INDAH KAV. IIIBB PONDOK INDAH JAKARTA SELATAN', ' Evi Fitria ', 'first'),
(203, 'PRO00192-2018', 'SCH00192-2018', 'TCH00192-2018', 'teknisi', '2018/03/01', 'Aktivasi', '8J9Jmsso', '2-214195532118', 'PT BANK DBS INDONESIA', 'DBS JUANDA MAIN BRANCH, JL. IR. H JUANDA NO. 23-24 P.O. BOX 2950 JAKARTA PUSAT 10120', ' Evi Fitria ', 'first'),
(204, 'PRO00193-2018', 'SCH00193-2018', 'TCH00193-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'hxuQpCPo', '2-214198252160', 'PT BANK DBS INDONESIA', 'ANZ RBS KELAPA GADING PERMAI, JL.BOULEVARD BARAT RAYA BLOK XB NO. 12 KELAPA GADING PERMAI JAKARTA 14240', ' Evi Fitria ', 'first'),
(205, 'PRO00194-2018', 'SCH00194-2018', 'TCH00194-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'MGiPwW2z', '2-214190268108', 'PT BANK DBS INDONESIA', 'ANZ RBS KEMANG BRANCH, JL. KEMANG RAYA NO. 2 JAKARTA SELATAN', ' Evi Fitria ', 'first'),
(206, 'PRO00195-2018', 'SCH00195-2018', 'TCH00195-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'ZLaCRSmp', '2-214201229500', 'PT BANK DBS INDONESIA', 'ANZ RBS MANGGA DUA BRANCH, MANGGA DUA SQUARE BLOK H NO. 8&9, JL. GUNUNG SAHARI NO. 1 JAKARTA 14430', ' Evi Fitria ', 'first'),
(207, 'PRO00196-2018', 'SCH00196-2018', 'TCH00196-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'kX6GV5vn', '2-214191186154', 'PT BANK DBS INDONESIA', 'ANZ RBS PURI INDAH BRANCH, PURI NIAGA III RUKAN PURI KENCANA BLOK M8 JAKARTA 11510', ' Evi Fitria ', 'first'),
(208, 'PRO00197-2018', 'SCH00197-2018', 'TCH00197-2018', 'teknisi', '2018/03/02', 'Aktivasi', 'FCT0caNi', '2-184545952492', 'SOSIAL REPUBLIK INDONESIA', '\"KEMENTRIAN SOSIAL, JALAN SALEMBA RAYA NO.28,\r\nKENARI, SENEN, KOTA JAKARTA PUSAT, DAERAH\r\nKHUSUS IBUKOTA JAKARTA 10430\"', 'Annisya Fahmi', 'first'),
(209, 'PRO00198-2018', 'SCH00198-2018', 'TCH00198-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'TVpmL0mX', '2-214191947946', 'PT BANK DBS INDONESIA', 'JL. PLUIT KARANG NO. 40 - BLOK Y5 SELATAN, MUARA KARANG, JAKARTA UTARA', ' Evi Fitria ', 'first'),
(210, 'PRO00199-2018', 'SCH00199-2018', 'TCH00199-2018', 'teknisi', '2018/03/02', 'Survey', '2-190508490939', 'gbfv1tCC', 'ELANG ANDALAN NUSANTARA', 'CAPITAL PLACE', 'Annisya Fahmi', 'first'),
(211, 'PRO00200-2018', 'SCH00200-2018', 'TCH00200-2018', 'teknisi', '2018/03/02', 'Aktivasi', '2-213524717284', 'lCbfvU2z', 'PT. AT&T  GLOBAL NETWORK SERVICES INDONESIA', 'Jalan JAWA BLOK GG-5-1 DCI DATA CENTER MM 2100 CIKARANG BARAT', 'Tri Purnomo', 'first');
INSERT INTO `tbl_project_wo` (`id_project`, `kode_project`, `kode_jadwal`, `kode_teknisi`, `level`, `tgl_project`, `project_title`, `wo_id`, `so_id`, `customer`, `lokasi`, `pic`, `status`) VALUES
(212, 'PRO00201-2018', 'SCH00201-2018', 'TCH00201-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DIPV PERTA PTA 150034', 'pCCOH8Kg', 'PT Pertamina', 'Backhaul MPLS Kantor Pusat (Upgrade) ', 'Fajar Sodhiq Ediwibowo', 'first'),
(213, 'PRO00202-2018', 'SCH00202-2018', 'TCH00202-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DIPV PERTA HAL 150974', 'rNIW2kp8', 'PT Pertamina', 'DPPU Halim Perdanakusuma ', 'Fajar Sodhiq Ediwibowo', 'first'),
(214, 'PRO00203-2018', 'SCH00203-2018', 'TCH00203-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DETH PERTA PTA 151002', 'tAq7tVVF', 'PT Pertamina', 'Backhaul MetroE Kantor Pusat ', 'Fajar Sodhiq Ediwibowo', 'first'),
(215, 'PRO00204-2018', 'SCH00204-2018', 'TCH00204-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DIPV PERTA MCK 150087', 'hHxipupU', 'PT Pertamina', 'Kantor PGE Cakrawala (Upgrade) ', 'Fajar Sodhiq Ediwibowo', 'first'),
(216, 'PRO00205-2018', 'SCH00205-2018', 'TCH00205-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DETH PERTA SUN 151129', 'NTDppNBI', 'PT Pertamina', 'Kantor Logistik Sunter', 'Fajar Sodhiq Ediwibowo', 'first'),
(217, 'PRO00205-2018', 'SCH00205-2018', 'TCH00205-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DETH PERTA PTJ 151109', '50wRVkbt', 'PT Pertamina', 'Gedung Patrajasa (Migrasi dari MPLS ke MetroE) ', 'Fajar Sodhiq Ediwibowo', 'first'),
(218, 'PRO00206-2018', 'SCH00206-2018', 'TCH00206-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DETH PERTA ADM 160730', 'cGw7zOsq', 'PT Pertamina', 'JL.Abdul Muis Jakarta Pusat', 'Fajar Sodhiq Ediwibowo', 'first'),
(219, 'PRO00207-2018', 'SCH00207-2018', 'TCH00207-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DETH PERTA RWN 160729', 'JelRUt5B', 'PT Pertamina', 'Rawamangun', 'Fajar Sodhiq Ediwibowo', 'first'),
(220, 'PRO00208-2018', 'SCH00208-2018', 'TCH00208-2018', 'teknisi', '2018/03/02', 'Uji performansi link', 'DETH PERTA PLG 160979', 'zxXq4xrT', 'PT Pertamina', 'Pertamina Pulo Gadung', 'Fajar Sodhiq Ediwibowo', 'first'),
(221, 'PRO00209-2018', 'SCH00209-2018', 'TCH00209-2018', 'teknisi', '2018/03/05', 'Aktivasi', '2-213388598660', 'xsPbpsV5', 'MEGA MEDIA INDONESIA PT - ORANGE TV', '\"MEGA MEDIA INDONESIA PT - ORANGE TV, JL. HR\r\nRASUSAN SAID KAV. B6, KUNINGAN, JAKARTA\r\nSELATAN, DKI JAKARTA, 12000\"', 'Annisya Fahmi', 'first'),
(222, 'PRO00210-2018', 'SCH00210-2018', 'TCH00210-2018', 'teknisi', '2018/03/05', 'Survey', '2-213404124701', 'ZLaISKBe', 'PT KALTIM INDUSTRIAL ESTATE (KIE) ', 'Jl Paku Aji KAV No 79 RT 15, Kel Guntung, Kec Bontang Utara', 'Aprianti Lestari', 'first'),
(223, 'PRO00211-2018', 'SCH00211-2018', 'TCH00211-2018', 'teknisi', '2018/03/05', 'Dismantle', '2-169820925576', '2-172324477809', 'PT. MANDIRI GRIYA ARTHA MAKMUR', 'Gedung Cibis 9 lantai 5 JL Raya Cilandak KKO', 'Nur Aminah', 'first'),
(224, 'PRO00212-2018', 'SCH00212-2018', 'TCH00212-2018', 'teknisi', '2018/03/05', 'Aktivasi', 'JNb3JHmb', '2-213325576299', ' BANK BTPN ', 'MENARA BTPN JLN. IDE ANAK AGUNG GDE AGUNG KAV. 5.5-5.6, JAKARTA SELATAN 12950', 'Evi Fitria', 'first'),
(225, 'PRO00213-2018', 'SCH00213-2018', 'TCH00213-2018', 'teknisi', '2018/03/06', 'Survey', '2-213900856630', 'SW5TOQ58', 'PT Indo Internet', '\"DANAMON KEBON SIRIH Jl. Kebon Sirih\r\nNo.15 RT.15/RW.7, Kb. Sirih, Menteng\r\nJAKARTA 10340 Indonesia\"', 'Akhmad Rifqi ', 'first'),
(226, 'PRO00214-2018', 'SCH00214-2018', 'TCH00214-2018', 'teknisi', '2018/03/06', 'Aktivasi', '2-185391518169', 'cNf8ddTm', 'ATT - Mastercard Sigma', 'Jl. Ir. H. Juanda no. F7, Sentul City Babakan Madang  Bogor Jawa Barat', 'Tri Purnomo', 'first'),
(227, 'PRO00215-2018', 'SCH00215-2018', 'TCH00215-2018', 'teknisi', '2018/03/06', 'Aktivasi', 'QtJCmhao', '2-215742670825', 'DFID INDONESIA, BRITISH EMBASSY', 'JL. MH THAMRIN NO. 75, JAKARTA, 10310', 'NA', 'first'),
(228, 'PRO00216-2018', 'SCH00216-2018', 'TCH00216-2018', 'teknisi', '2018/03/06', 'Aktivasi', 'NTpPL4PF', '2-215670021831', 'PT BANK NEGARA INDONESIA ( PERSERO) TBK', 'DC BNI SLIPI, Jl. Jend. S Parman Slipi, Blok E No. 1-5 dan Blok F 1-8 Slipi', 'Evi Fitria', 'first'),
(229, 'PRO00217-2018', 'SCH00217-2018', 'TCH00217-2018', 'teknisi', '2018/03/07', 'Relokasi', '2-213389007383', '2-215924098745', 'PT. AXA TECHNOLOGY SERVICES ASIA INDONESIA', 'Axa Tower Kuningan City Lt. 12, Jl. Prof Dr. Satrio Kav. 18 Setiabudi Kuningan, Jakarta 12940', 'Debby ', 'first'),
(230, 'PRO00218-2018', 'SCH00218-2018', 'TCH00218-2018', 'teknisi', '2018/03/07', 'Survey', 'DIPV TRANS KTN 15115', 'G34D7Myc', 'Trans Media ', 'Jl. Kapten P. Tendean Kav 12-14 A Mampang Prapatan, Jakarta Selatan 12790', 'Aldi Levadi', 'first'),
(231, 'PRO00219-2018', 'SCH00219-2018', 'TCH00219-2018', 'teknisi', '2018/03/07', 'Aktivasi', '2-178733504703', 'pXGkl40X', 'Lintasarta for Givaudan Capital Place', 'l Jend. Gatot Subroto Kav 18, Kuningan Barat, DKI Jakarta 12710', 'Akhsan Ibnu Fajar', 'first'),
(232, 'PRO00220-2018', 'SCH00220-2018', 'TCH00220-2018', 'teknisi', '2018/03/07', 'Survey', '2-213556193176', 'L7TB3BRQ', 'PT CENTRAL PROTEINA PRIMA', '\"PURI MATARI, JL. HR RASUNA SAID NO.62,\r\nRT.18/RW.2, KARET KUNINGAN, SETIA BUDI,\r\nJAKARTA SELATAN\"', 'Sri Hartati', 'first'),
(233, 'PRO00221-2018', 'SCH00221-2018', 'TCH00221-2018', 'teknisi', '2018/03/07', 'Survey', '2-214299250578', 'T7lwN520', 'PT HYDRO PERDANA RETAILINDO', '\"DC HYDRO PERDANA RETAILINDO,\r\nJL. H.ABDUL GANI, KARANGGAN, GN. PUTRI,\r\nBOGOR, JAWA BARAT 16960\"', 'Sri Hartati ', 'first'),
(234, 'PRO00222-2018', 'SCH00222-2018', 'TCH00222-2018', 'teknisi', '2018/03/07', 'Survey', '2-213555285571', 'GdcLWLKU', 'PT CENTRAL PROTEINA PRIMA', '\"DC TELKOM SIGMA SENTUL SENTUL CITY,\r\nJALAN IR H JUANDA, CIJAYANTI, BABAKAN\r\nMADANG, BOGOR\"', 'Sri Hartati ', 'first'),
(235, 'PRO00223-2018', 'SCH00223-2018', 'TCH00223-2018', 'teknisi', '2018/03/08', 'Aktivasi', 'ByCU9gVc', '2-215933458278', 'VODAFONE for Garena ', 'Pacific Century Place Jakarta Tower 28F,', 'Rahmat Hidayatullah ', 'first'),
(236, 'PRO00224-2018', 'SCH00224-2018', 'TCH00224-2018', 'teknisi', '2018/03/07', 'Aktivasi', '2-186881863138', '7tfvaDhg', 'PT. SARI COFFEE INDONESIA (MALL LAGOON AVANUE)', 'MALL LAGOON AVENUE, LAGOON AVENUE GF G-32 BEKASI', 'Sri Hartati', 'first'),
(237, 'PRO00225-2018', 'SCH00225-2018', 'TCH00225-2018', 'teknisi', '2018/03/08', 'Survey', ' 2-215926806387', 'JRwEsqVU', 'MAYAPADA CLINIC PRATAMA', 'PT MAYAPADA CLINIC PRATAMA JL. JENDRAL SUDIRMAN NO 1, RUKO BUSSINES PARK TANGERANG CITY NO B7 TANGERANG KOTA', 'Nur Aminah', 'first'),
(238, 'PRO00226-2018', 'SCH00226-2018', 'TCH00226-2018', 'teknisi', '2018/03/09', 'Survey', '2-214293064573', 'TZ0zNL5z', 'PT Maxindo Network', 'Cyber Lt.7 Jl. Kuningan Barat no.8 Jakarta Selatan', 'Akhsan Ibnu Fajar', 'first'),
(239, 'PRO00227-2018', 'SCH00227-2018', 'TCH00227-2018', 'teknisi', '2018/03/09', 'Survey', '2-184566082357', 'OKZe5UH0', 'PSN ENAM INDONESIA', '\"RACK SERVER PSN ENAM TTNC STATION\r\nBUMI JATILUHUR PURWAKARTA\"', 'Sri Hartati', 'first'),
(240, 'PRO00228-2018', 'SCH00228-2018', 'TCH00228-2018', 'teknisi', '2018/03/09', 'Survey', '2-158761731884', 'RVAPbi4K', 'PSN SINARMAS LAND', 'CYBER APJII Jl. Kuningan Barat no.8 Jakarta Selatan', 'Akhsan Ibnu Fajar', 'first'),
(241, 'PRO00229-2018', 'SCH00229-2018', 'TCH00229-2018', 'teknisi', '2018/03/12', 'Aktivasi', '2-205568527010', 'WJDiGLq2', 'PT.  ELANG ANDALAN NUSANTARA', 'CAPITAL PLACE JL. JEND. GATOT SUBROTO KAV.18, KUNINGAN BARAT', 'Tri Purnomo', 'first'),
(242, 'PRO00230-2018', 'SCH00230-2018', 'TCH00230-2018', 'teknisi', '2018/03/12', 'Aktivasi', 'IoFKVAn6', '2-148198233560', ' NET MEDIATAMA', '\"GD. THE EAST LT.29, JL. DR. IDE ANAK AGUNG GDE\r\nAGUNG KAV. E.3.2 NO. 1, KUNINGAN TIMUR,\r\nSETIABUDI, JAKARTA, INDONESIA, 12950\"', 'Annisya Fahmi', 'first'),
(243, 'PRO00231-2018', 'SCH00231-2018', 'TCH00231-2018', 'teknisi', '2018/03/12', 'Survey', '2-215969739966', '0iFb5w0C', 'AT&T - ABOTT', 'Wisma Pondok Indah 2 , 10 Fl Jl.Sultan Iskandar Muda Kav V-TA, Server room, 10th floor, Only one rack, Pondok Indah Office Tower 2, Jakarta, Indonesia â€“ 12310', 'Tri Purnomo', 'first'),
(244, 'PRO00232-2018', 'SCH00232-2018', 'TCH00232-2018', 'teknisi', '2018/03/13', 'Aktivasi', ' 2-168056138150', 'sdbtWD1B', 'TATA - TOKAI', 'TATA - TOKAI', 'Tri Purnomo', 'first'),
(245, 'PRO00233-2018', 'SCH00233-2018', 'TCH00233-2018', 'teknisi', '2018/03/13', 'Survey', '2-215945967827', 'TQiiTI1V', 'PT SUMBER ALFARIA TRIJAYA', '\"KAMPUNG CARANG PULANG RT 005/002 KEL.\r\nWANAKERTA KEC. SINDANG JAYA KABUPATEN\r\nTANGERANG\"', 'Sri Hartati', 'first'),
(246, 'PRO00234-2018', 'SCH00234-2018', 'TCH00234-2018', 'teknisi', '2018/03/13', 'Survey', '2-215945766732', '5OJC3A44', 'PT SUMBER ALFARIA TRIJAYA', '\"JL. KOMPLEK ALAM INDAH RT 05/04 KEL.PORIS\r\nPELAWAD KEC. CIPONDOH KOTA TANGERANG\"', 'Sri Hartati', 'first'),
(247, 'PRO00235-2018', 'SCH00235-2018', 'TCH00235-2018', 'teknisi', '2018/03/13', 'Dismantle', 'afp5zpm9', '2-215977453420', 'PT SUMBER ALFARIA TRIJAYA', '\"ALFAMART PREPEDAN/ F K263, JL PREPEDAN NO. 9A RT.001/007 KEL KAMAL, KEC\r\nKALIDERES JAK - BAR\"', 'Sri Hartati', 'first'),
(248, 'PRO00236-2018', 'SCH00236-2018', 'TCH00236-2018', 'teknisi', '2018/03/13', 'Survey', '2-215977453420', '5GPX5c6s', 'PT SUMBER ALFARIA TRIJAYA', '\"JL. DAAN MOGOT RT.005 RW.006 KEL.\r\nSUKARASA KEC. TANGERANG\"', 'Sri Hartati', 'first'),
(249, 'PRO00237-2018', 'SCH00237-2018', 'TCH00237-2018', 'teknisi', '2018/03/13', 'Dismantle', 'WBlSUwHJ', '2-215945766732', 'PT SUMBER ALFARIA TRIJAYA', '\"ALFAMART TOTAL PERSADA/ F_ T183, VILLA TANGERANG REGENCY KOMP.WISMA\r\nHARAPAN BLOK C 1/2-RT.07 RW.09 KEL.GEMBOR-KEC.PERIUK TANGERANG\"', 'Sri Hartati', 'first'),
(250, 'PRO00238-2018', 'SCH00238-2018', 'TCH00238-2018', 'teknisi', '2018/03/13', 'Dismantle', 'ScM7G1Rd', '2-215900648181', 'PT SUMBER ALFARIA TRIJAYA', '\"ALFAMART TELUK NAGA 3/ F_ T635, JL. KAMPUNG MELAYU BARAT NO.12 RT.02\r\nRW.01,DS.KP.MELAYU BARAT , KEC.TELUK NAGA TANGERANG\"', 'Sri Hartati', 'first'),
(251, 'PRO00239-2018', 'SCH00239-2018', 'TCH00239-2018', 'teknisi', '2018/03/15', 'Aktivasi', '2-213331521360', 'ypLVk0dl', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', '\"GD WISMA DANAMON AETNA LIFE LT 19\r\nJL JEND SUDIRMAN KAV 45-46 JAKARTA\r\n12910\"', 'Tri Purnomo', 'first'),
(252, 'PRO00240-2018', 'SCH00240-2018', 'TCH00240-2018', 'teknisi', '2018/03/13', 'Survey', '2-216051149723', 'hpH4F41l', 'BANK SYARIAH MANDIRI (BSM)', 'KCP PEJATEN RAYA, GD. BUNCIT LT. 1, JL. WARUNG JATI RAYA (BARAT) NO. 36 RAGUNAN, JAKARTA SELATAN', 'Evi Fitria', 'first'),
(253, 'PRO00241-2018', 'SCH00241-2018', 'TCH00241-2018', 'teknisi', '2018/03/15', 'Survey', '2-216057358617', '8fmlnJqd', 'Telstra - Artajasa', 'jl.TB Simatupang kav.10 Jakarta Selatan, Indonesia', 'Tri Purnomo', 'first'),
(254, 'PRO00242-2018', 'SCH00242-2018', 'TCH00242-2018', 'teknisi', '2018/03/15', 'Relokasi', '2-167855321385', 'QHFZNtLJ', 'PT. SIERAD PRODUCE TBK', 'GD. THE CITY CENTRE 6-7 FLOOR JL. KH. MAS MANSYUR KAV. 126 JAKARTA', 'Bobby Yudha Wiratama', 'first'),
(255, 'PRO00243-2018', 'SCH00243-2018', 'TCH00243-2018', 'teknisi', '2018/03/15', 'Survey', '2-216049921197', 'pqTFOLdJ', 'AT&T ', 'JL. Mampang Prapatan Raya No. 139 , Graha Mobisel Building ,4th Floor, PT Monier Room Server, Jakarta- 12790 ', 'Tri Purnomo', 'first'),
(256, 'PRO00244-2018', 'SCH00244-2018', 'TCH00244-2018', 'teknisi', '2018/03/16', 'Aktivasi', '2-213343507686', 'sAWBQLrP', 'HERBALIFE INDONESIA', 'THE GARDEN CENTRE BUILDING CILANDAK COMMERCIAL ESTATE JL. RAYA CILANDAK KKO, CILANDAK JAKARTA', 'Nur Aminah', 'first'),
(257, 'PRO00245-2018', 'SCH00245-2018', 'TCH00245-2018', 'teknisi', '2018/03/16', 'Relokasi', '2-216100162873', 'anx0zUhu', 'PT MIDI UTAMA INDONESIA', 'JL. RAYA CIPAYUNG KAV. DKI CIPAYUNG-CIPAYUNG JAKTIM', 'Sri Hartati', 'first'),
(258, 'PRO00246-2018', 'SCH00246-2018', 'TCH00246-2018', 'teknisi', '2018/03/16', 'Aktivasi', 'xdmiwaqe', '2-216125092717', 'PT. ARSENET GLOBAL SOLUSI', 'IDC 3D JL. DUREN TIGA RAYA NO.7H, RT.9/RW.5 DUREN TIGA JAKARTA', 'Nur Aminah', 'first'),
(259, 'PRO00247-2018', 'SCH00247-2018', 'TCH00247-2018', 'teknisi', '2018/03/16', 'Survey', '7dR87tbU', '2-148533789004', 'Reach Cargill Gresik ', 'Reach Cargill Gresik ', 'Tri Purnomo', 'first'),
(260, 'PRO00248-2018', 'SCH00248-2018', 'TCH00248-2018', 'teknisi', '2018/03/16', 'Survey', ' 2-216123071591', '2JQPZ71p', 'Bank Muamalat Indonesia Tbk ', 'KCP Jakarta Tendean - Kemang l. Kemang Raya No. 72C RT.007/002 Jakarta Selatan 12850', ' Evi Fitria ', 'first'),
(261, 'PRO00249-2018', 'SCH00249-2018', 'TCH00249-2018', 'teknisi', '2018/03/17', 'Survey', '2-93606384456', '6yfFSEtf', 'BANK MANDIRI (PERSERO) TBK', 'GD POOL FX PLAZA 5,  JL. JEND. SUDIRMAN JAKARTA 10270', 'Evi Fitria', 'first'),
(262, 'PRO00250-2018', 'SCH00250-2018', 'TCH00250-2018', 'teknisi', '2018/03/17', 'Survey', '2-93618926143', 'sy2xAPB3', 'BANK MANDIRI (PERSERO) TBK', 'GED STANDARD CHARTERED JL. PROF.DR.SATRIO NO.164 JAKARTA 12930', 'Evi Fitria', 'first'),
(263, 'PRO00251-2018', 'SCH00251-2018', 'TCH00251-2018', 'teknisi', '2018/03/17', 'Survey', '2-93641464531', '8zXrldZ1', 'BANK MANDIRI (PERSERO) TBK', 'JKT ML HYPARMART MORITZ 1 JL. PURI BOULEVARD JAKARTA BARAT 11610', 'Evi Fitria', 'first'),
(264, 'PRO00252-2018', 'SCH00252-2018', 'TCH00252-2018', 'teknisi', '2018/03/17', 'Survey', '2-93641649687', 'IpQhvi1T', 'BANK MANDIRI (PERSERO) TBK', 'JKT GD WTC 2-1 JL. JEND SUDIRMAN KAV. 29-31 JAKARTA SELATAN 12920', 'Evi Fitria', 'first'),
(265, 'PRO00253-2018', 'SCH00253-2018', 'TCH00253-2018', 'teknisi', '2018/03/17', 'Survey', '2-93606864088', 'rQezIDQr', 'Bank Muamalat Indonesia Tbk ', 'JKT CB MALL KUNINGAN CITY JL. PROF. DR. SATRIO JAKARTA SELATAN 12940', ' Evi Fitria ', 'first'),
(266, 'PRO00254-2018', 'SCH00254-2018', 'TCH00254-2018', 'teknisi', '2018/03/17', 'Survey', '2-93641357933', 'ROBxGQKd', 'Bank Muamalat Indonesia Tbk ', 'JKT GD MENARA MERDEKA JL BUDI KEMULIAAN 1 NO 2 JAKARTA PUSAT 10110', ' Evi Fitria ', 'first'),
(267, 'PRO00255-2018', 'SCH00255-2018', 'TCH00255-2018', 'teknisi', '2018/03/17', 'Survey', '2-93641613439', 'wa43iJDf', 'Bank Muamalat Indonesia Tbk ', 'JKT GD TEMPO SCAN TOWER JL. HR RASUNA SAID KAV. 3-4 JAKARTA SELATAN 12710', ' Evi Fitria ', 'first'),
(268, 'PRO00256-2018', 'SCH00256-2018', 'TCH00256-2018', 'teknisi', '2018/03/19', 'Aktivasi', '2-186999396526', '2K1Aloox', 'TATA - OPPO', 'CTG SBB OPPO TANGERANG', 'Tri Purnomo', 'first'),
(273, 'PRO00261-2018', 'SCH00261-2018', 'TCH00261-2018', 'teknisi', '2018/03/19', 'Aktivasi', '2-156060043733', '2-172081771193', 'PT BANK CIMB NIAGA TBK', 'BERITA SATU PLAZA 4th FL Jl. Jend. Gatot Subroto Kav 35-36 Jakarta 12950', 'Debby ', 'first'),
(270, 'PRO00258-2018', 'SCH00258-2018', 'TCH00258-2018', 'teknisi', '2018/03/20', 'Aktivasi', '2-214297878490', '2-216092919124', 'PT PRUDENTIAL LIFE ASSURANCE', 'Prudential Centre,  Jl. Casablanca Raya Kav. 88 Jakarta Selatan 12870', 'Debby ', 'first'),
(271, 'PRO00259-2018', 'SCH00259-2018', 'TCH00259-2018', 'teknisi', '2018/03/19', 'Survey', '2-216036799444', 'sRsMO72a', 'PT SANATEL', '\"PT SANATEL, JL. PUSPA NIAGA BLOK 402\r\nD.1, SEKTOR KOMERSIAL SERPONG 15321\"', 'Adya Pramesthi', 'first'),
(272, 'PRO00260-2018', 'SCH00260-2018', 'TCH00260-2018', 'teknisi', '2018/03/20', 'Relokasi', '2-167269845082', 'Bw1IrkCe', 'INDOSAT SINGAPORE PTE LTD', 'PELANGGAN GOOGLE, PASIFIC PLACE LT.45', 'Rahmat Hidayatullah ', 'first'),
(274, 'PRO00262-2018', 'SCH00262-2018', 'TCH00262-2018', 'teknisi', '2018/03/20', 'Aktivasi', 'oEd4m21z', '2-214206913474', 'PRIMACOM INTERBUANA', 'Gedung Cyber 2 Lt2. JL. HR Rasuna Said X5 No. 13 Jakarta 12950 (Rack Colo MTI di Cyber2)', 'Evi Fitria ', 'first'),
(275, 'PRO00263-2018', 'SCH00263-2018', 'TCH00263-2018', 'teknisi', '2018/03/19', 'Survey', 'v0WNQw2U', '2-216125313392', 'SOSIAL REPUBLIK INDONESIA', '\"JL. SALEMBA RAYA 28, KENARI â€“ SENEN,\r\nJAKARTA PUSAT, DKI JAKARTA, 10430\"', 'Annisya Fahmi', 'first'),
(276, 'PRO00264-2018', 'SCH00264-2018', 'TCH00264-2018', 'teknisi', '2018/03/21', 'Aktivasi', 'BQXTBdTB', ' 2-213363345571', 'GIVAUDAN INDONESIA', 'CAPITAL PLACE JL JEND. GATOT SUBROTO KAV. 18 KUNINGAN BARAT, MAMPANG PRAPATAN JAKARTA', 'Nur Aminah', 'first'),
(277, 'PRO00265-2018', 'SCH00265-2018', 'TCH00265-2018', 'teknisi', '2018/03/22', 'Survey', '2-215945778357', 'ryWuk4MW', 'TRI ERSA GEMILANG ', 'PT TRI ERSA GEMILANG CYBER 2 JL HR RASUNA SAID BLOK X-5 NO 13 KUNINGAN', 'Nur Aminah', 'first'),
(278, 'PRO00266-2018', 'SCH00266-2018', 'TCH00266-2018', 'teknisi', '2018/03/23', 'Survey', '2-215977388647', 'ScZP09sR', 'TATA - NAP INFO', ' Cyber 1', 'Tri Purnomo', 'first'),
(279, 'PRO00267-2018', 'SCH00267-2018', 'TCH00267-2018', 'teknisi', '2018/01/24', 'INTERMITTENT (TROBLE)', '2-161909071893-18.12.12.53.48', 'B1r6W0uz', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'GD WISMA DANAMON AETNA LIFE LT 19 JL JEND SUDIRMAN KAV 45-46 JAKARTA 12910', 'Hesti Setiowati', ''),
(280, 'PRO00268-2018', 'SCH00268-2018', 'TCH00268-2018', 'teknisi', '2018/01/02', 'INTERMITTENT (TROBLE)', '2-161909071893-18.12.12.55.37', 'B1r6W0uz', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'GD WISMA DANAMON AETNA LIFE LT 19 JL JEND SUDIRMAN KAV 45-46 JAKARTA 12910', 'Hesti Setiowati', ''),
(281, 'PRO00269-2018', 'SCH00269-2018', 'TCH00269-2018', 'teknisi', '2018/01/02', 'Instalasi', '2-161909071893-18.12.12.05.17', 'B1r6W0uz', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'GD WISMA DANAMON AETNA LIFE LT 19 JL JEND SUDIRMAN KAV 45-46 JAKARTA 12910', 'Hesti Setiowati', ''),
(282, 'PRO00270-2018', 'SCH00270-2018', 'TCH00270-2018', 'teknisi', '2018/01/04', 'Survey', 'bn5wxRGl-18.12.12.26.42', '2-167638857431', 'PT. NUSANTARA COMPNET INTEGRATOR', 'GEDUNG TNCC LT 4 JL. TRUNOJOYO NO3 KEBAYORAN JAKARTA', 'Sri Hartati', ''),
(315, 'PRO00303-2018', 'SCH00303-2018', 'TCH00303-2018', 'teknisi', '2018/01/15', 'Aktivasi', '2-167793695000-18.12.13.29.07', 'lNxKIKGC', 'ADHYA AVIA PRIMA (Site Husein) ', 'PT. ADHYA AVIA PRIMA JL. HUSEIN SASTRANEGARA NO.12, RAWABOKOR, KEL/, BENDA, KOTA TANGERANG', 'Nur Aminah', ''),
(284, 'PRO00272-2018', 'SCH00272-2018', 'TCH00272-2018', 'teknisi', '2018/01/23', 'Aktivasi', '2-167604435959-18.12.12.26.50', '2-167610212576', 'DFID INDONESIA, BRITISH EMBASSY', 'Kedutaan Besar Inggris, Jl. Patra Kuningan Raya, Blok L5-6, JAKARTA, 12950, Indonesia', 'Annisya Fahmi', ''),
(285, 'PRO00273-2018', 'SCH00273-2018', 'TCH00273-2018', 'teknisi', '2018/01/08', 'Survey', '2-167604435959-18.12.12.28.05', '2-167610212576', 'DFID INDONESIA, BRITISH EMBASSY', 'Kedutaan Besar Inggris, Jl. Patra Kuningan Raya, Blok L5-6, JAKARTA, 12950, Indonesia', 'Annisya Fahmi', ''),
(286, 'PRO00274-2018', 'SCH00274-2018', 'TCH00274-2018', 'teknisi', '2018/01/26', 'Aktivasi', '2-163156815204-18.12.12.04.54', 'VydsHTqU', 'PT OCEAN NETWORK EXPRESS INDONESIA', 'Jalan Jend. Sudirman Kav. 48A, RT.5/RW.4,Karet Semanggi, Kota Jakarta Selatan, Daerah Khusus Ibukota, AIA Central Building, 22nd Floor, Server room, Jakarta, Indonesia, 12930', 'Tri Purnomo', ''),
(1052, 'PRO01026-2018', 'SCH01026-2018', 'TCH01026-2018', 'teknisi', '2018/07/23', 'Aktivasi', '2-232854565893-18.12.18.27.21', '6hu69ILL', 'PT UNGARAN SARI GARMEN', '\"Ungaran Sari Garment\r\nAXA Tower\r\n Jl. Prof. Doktor Satria Kav. 18 Setiabudi Jakarta Selatan \"', 'Abel Mohammad', ''),
(288, 'PRO00276-2018', 'SCH00276-2018', 'TCH00276-2018', 'teknisi', '2018/03/23', 'Survey', '2-216051172507', 'l6DFU8ev', 'PT. ADARO ENERGY', '\"MENARA KARYA LT. 23, JL. HR RASUNA\r\nSAID BLOK X-5 KAV.1-2, JAKARTA\r\nSELATAN, DKI JAKARTA, 12950\"', 'Annisya Fahmi', 'first'),
(289, 'PRO00277-2018', 'SCH00277-2018', 'TCH00277-2018', 'teknisi', '2018/03/23', 'Survey', '2-189068884197', 'BMW40cuI', 'BADAN PENGAWAS OBAT DAN MAKANAN RI', '\"BADAN POM GD.B LT.1, JL.PERCETAKAN\r\nNEGARA 23, JOHAR BARU, JAKARTA\r\nPUSAT, DKI JAKARTA, 10560\"', 'Annisya Fahmi', 'first'),
(290, 'PRO00278-2018', 'SCH00278-2018', 'TCH00278-2018', 'teknisi', '2018/03/23', 'Aktivasi', 'AOxT4L3u', '2-216797349654', 'UNIT PELAKSANA KEBERSIHAN BADAN AIR DINAS KEBERSIH', 'Jl. Pluit Selatan Raya , Penjaringan, Pluit, Jakarta Utara', 'Aprianti Lestari', 'first'),
(291, 'PRO00279-2018', 'SCH00279-2018', 'TCH00279-2018', 'teknisi', '2018/03/26', 'Integrasi', '2-170530602919-18.12.12.21.18', 'ReNJ1mWz', 'TIN u/ AT&T', 'AT&T (TIN) 200M Cyber Telkom Sigma BSD', 'Tri Purnomo', ''),
(294, 'PRO00282-2018', 'SCH00282-2018', 'TCH00282-2018', 'teknisi', '2018/03/26', 'Aktivasi', 'ahEVNuRV', '2-149541185209', 'RIA INDRIATI', 'APARTEMEN THE LAVANDE\r\nRESIDENCE', 'Faizar Hasbi', 'first'),
(293, 'PRO00281-2018', 'SCH00281-2018', 'TCH00281-2018', 'teknisi', '2018/03/26', 'Aktivasi', 'RtHLSRny', '2-149268464530', 'ANDRE CHRISTIAN', 'APARTEMEN THE LAVANDE\r\nRESIDENCE', 'Faizar Hasbi', 'first'),
(295, 'PRO00283-2018', 'SCH00283-2018', 'TCH00283-2018', 'teknisi', '2018/03/26', 'Aktivasi', '2-215793781433', 'xKJmyXAs', 'AT&T', 'Lengkong Gudang, Serpong Tangerang Selatan Jalan Kapt. Subijanto Dj. Bumi Serpong Damai,', 'Tri Purnomo ', 'first'),
(296, 'PRO00284-2018', 'SCH00284-2018', 'TCH00284-2018', 'teknisi', '2018/03/26', 'Aktivasi', 'fE7XsHAy', '2-215953266129', 'SETIO WIBOWO', '\"APARTEMEN THE LAVANDE\r\nRESIDENCE\"', 'Faizar Hasbi', 'first'),
(297, 'PRO00285-2018', 'SCH00285-2018', 'TCH00285-2018', 'teknisi', '2018/03/26', 'Survey', '2-216819644447', 'JvakQ9hp', 'DIREKTORAT JENDERAL SUMBER DAYA DAN PERANGKAT POS ', 'GEDUNG SAPTA PESONA, JL MEDAN\r\nMERDEKA BARAT NO 19, JAKARTA\r\nPUSAT, DKI JAKARTA, 10110,\r\nINDONESIA', 'Annisya Fahmi', 'first'),
(298, 'PRO00286-2018', 'SCH00286-2018', 'TCH00286-2018', 'teknisi', '2018/03/26', 'Survey', '2-213557060862', '4OFpoCz9', 'BOSTON CONSULTING GROUP', 'TOWER A LT. 19 JL. JEND. SUDIRMAN KAV. 45-46 JAKARTA', 'Nur Aminah', 'first'),
(299, 'PRO00287-2018', 'SCH00287-2018', 'TCH00287-2018', 'teknisi', '2018/03/26', 'Aktivasi', '2-216035558100', 'gkoqgtXH', 'BANK UOB PLAZA', 'BANK UOB PLAZA', 'Andri Witjaksono', 'first'),
(300, 'PRO00288-2018', 'SCH00288-2018', 'TCH00288-2018', 'teknisi', '2018/03/26', 'Aktivasi', 'ibVysy1b', '2-21620114794', 'TOP FOOD INDONESIA', 'Lippo mall puri jl. Puri indah raya ,\r\npuri indah cbd, kembangan, jakarta\r\nbarat', 'Faizar Hasbi', 'first'),
(301, 'PRO00289-2018', 'SCH00289-2018', 'TCH00289-2018', 'teknisi', '2018/03/26', 'Aktivasi', 'fG5uP87u', ' 2-218166732389', 'HERBALIFE INDONESIA', 'THE GARDEN CENTRE BUILDING CILANDAK COMMERCIAL ESTATE JL. RAYA CILANDAK KKO, CILANDAK JAKARTA', 'Nur Aminah', 'first'),
(302, 'PRO00290-2018', 'SCH00290-2018', 'TCH00290-2018', 'teknisi', '2018/03/26', '[FBB] [IPH] [LRCOM] [Down] ', '2-21568293429', 'nN45Wft7', 'PT PACIFIC PATENT MULTIGLOBAL', '\"DIPO TOWER\r\nJL. GATOT SUBROTO KAV. 51-52  LT 11\"', 'Mega Andiyani', 'first'),
(303, 'PRO00291-2018', 'SCH00291-2018', 'TCH00291-2018', 'teknisi', '2018/03/27', 'Survey', '2-216173857008', 'RUS39JOl', 'PT. AIA FINANCIAL', 'Telkom Sigma Sentul City, Sentul City, Jalan Ir H Juanda, Cijayanti, Babakan, Bogor 16810', 'Debby', 'first'),
(304, 'PRO00292-2018', 'SCH00292-2018', 'TCH00292-2018', 'teknisi', '2018/03/27', 'Aktivasi', 'Jr3kEuGP', '2-216805517175', 'DAVID JAHJA', 'Apartemen gading mediterania residences', 'Faizar Hasbi', 'first'),
(305, 'PRO00293-2018', 'SCH00293-2018', 'TCH00293-2018', 'teknisi', '2018/03/27', 'Survey', '2-213494661463', 'eHoaSRh0', ' PT. AXA TECHNOLOGY SERVICES ASIA INDONESIA', 'Ruko The Galery Metro PIK Unit 8, Pantai Indah Kapuk, Jakarta 14460', 'Debby', 'first'),
(306, 'PRO00294-2018', 'SCH00294-2018', 'TCH00294-2018', 'teknisi', '2018/03/27', 'Survey', '2-213522348053', 'neocw6vO', ' PT. AXA TECHNOLOGY SERVICES ASIA INDONESIA', 'Ruko The Galery Metro PIK Unit 8, Pantai Indah Kapuk, Jakarta 14460 - LA', 'Debby', 'first'),
(307, 'PRO00295-2018', 'SCH00295-2018', 'TCH00295-2018', 'teknisi', '2018/03/27', 'Survey', '2-216191376138', '5pPtw808', 'TRADA TELECOM INDONESIA', 'GEDUNG CYBER LANTAI 8 JALAN KUNINGAN BARAT MAMPANG - JAKARTA', 'Nur Aminah', 'first'),
(308, 'PRO00296-2018', 'SCH00296-2018', 'TCH00296-2018', 'teknisi', '2018/03/28', 'Aktivasi', '2-214584734631', 'V88GlmZG', 'AKT DETH - AT&T Abbott Depok', 'AKT DETH - AT&T Abbott Depok', 'Tri Purnomo', 'first'),
(309, 'PRO00297-2018', 'SCH00297-2018', 'TCH00297-2018', 'teknisi', '2018/03/29', 'Survey', '2-218201577313', '0AkUmGPm', 'PT SUMBER ALFARIA TRIJAYA', 'JL. TOL PADALEUNYI - JAKARTA, DESA CIGELAM,\r\nKEC. BABAKAN CIKAO, PURWAKARTA', 'Sri Hartati', 'first'),
(310, 'PRO00298-2018', 'SCH00298-2018', 'TCH00298-2018', 'teknisi', '2018/03/30', 'Survey', '2-216999389301', 'MUqlEGeO', ' AT&T - Eaton 2M Bidakara ', 'Eaton Corporation, Menara Bidakara 2, JI. Jend. Gatot Subroto Kav, 71-73 Pancoran, 12th Floor, Telco Room, Jakarta, Indonesia, 12870', 'Tri Purnomo', 'first'),
(311, 'PRO00299-2018', 'SCH00299-2018', 'TCH00299-2018', 'teknisi', '2018/03/29', 'Aktivasi', '2-172058626676-18.12.12.58.56', 'lwUr09GD', 'GENERAL MOTOR INDONESIA', 'PT. VUTEQ INDONESIA JL. CEMPAKA KM 37 RT.003 RW.002 KEL. JATIMULYA KEC. TAMBUN SELATAN BEKASI', 'Nur Aminah', ''),
(312, 'PRO00300-2018', 'SCH00300-2018', 'TCH00300-2018', 'teknisi', '2018/02/05', 'Aktivasi', '2-167994377287-18.12.12.00.51', 'vLzp4nmd', 'TELENET ', '\"LIPPO CYBER PARK JL. BOULEVARD\r\nGAJAH MADA, 2179-81 LIPPO KARAWACI\r\nTANGERANG, BANTEN\"', 'Hesti Setiowati', ''),
(313, 'PRO00301-2018', 'SCH00301-2018', 'TCH00301-2018', 'teknisi', '2018/01/15', 'Aktivasi', '2-167793776610-18.12.12.18.38', 'wegccO2l', 'ADHYA AVIA PRIMA (Taman Mahkota)', 'PT. ADHYA AVIA PRIMA RUKO TAMAN MAHKOTA BLOK A2/2 JL. HUSEIN SASTRANEGARA, RAWABOKOR, KEL/, BENDA TANGERANG', 'Nur Aminah', ''),
(314, 'PRO00302-2018', 'SCH00302-2018', 'TCH00302-2018', 'teknisi', '2018/01/25', 'Dismantle', '2-149124111418-18.12.12.25.54', '2-167854164897', 'PT. HANWHA LIFE INSURANCE INDONESIA - WTC 1', 'WTC 1 Lt.12, Jl. Jend. Sudirman Kav. 29 - 31 RT.8/RW.3, Jakarta Selatan 12920', 'Hesti Setiowati', ''),
(316, 'PRO00304-2018', 'SCH00304-2018', 'TCH00304-2018', 'teknisi', '2018/04/02', 'Survey', 'URDo7lqq', '2-216093208856', 'PT. ZURICH TOPAS LIFE ', 'Mayapada Tower 2, Jl. Jend Sudirman Kav.27 Jakarta 12920 - Taman Tekno, Komplek Pergudangan Taman Tekno Blok D No 8,  BSD City, Tangerang Selatan, Serpong 15314', 'Evi Fitria ', 'first'),
(317, 'PRO00305-2018', 'SCH00305-2018', 'TCH00305-2018', 'teknisi', '2018/04/02', 'Aktivasi', '2-216800224024', 'qso0Cn0y', 'CITIBANK NA', 'CITIBANK SOUTH QUARTER GEDUNG B LT. 6 JLN. RA. KARTINI NO. 8, CILANDAK BARAT, JAKARTA 12430', 'Evi Fitria ', 'first'),
(318, 'PRO00306-2018', 'SCH00306-2018', 'TCH00306-2018', 'teknisi', '2018/04/02', 'Aktivasi', 'i29G0TeQ', '2-172034829688$', 'UNION ROUTELINK COMMUNICATION', 'KOMINFO PEMKAB BANTUL JL Robert Wolter Monginsidi, Bantul ROUTELINK (PEMKAB BANTUL)', 'Nur Aminah', 'first'),
(319, 'PRO00307-2018', 'SCH00307-2018', 'TCH00307-2018', 'teknisi', '2018/04/03', 'Survey', '2-216805981799', 'i7ILW2C2', 'PT. ASTRA SEDAYA FINANCE', 'GERMAN CENTER, JL. KAPTEN SUBIJANTO DS BSD CITY TANGGERANG 15321', 'Evi Fitria ', 'first'),
(320, 'PRO00308-2018', 'SCH00308-2018', 'TCH00308-2018', 'teknisi', '2018/04/03', 'Aktivasi', 'MI1BcGp0', '2-217983457482', 'PHINISI MEDIA INDONESIA', 'IDC 3D Jl. Duren Tiga Raya no.7H Mampang raya JAKARTA', 'Aprianti Lestari ', 'first'),
(321, 'PRO00309-2018', 'SCH00309-2018', 'TCH00309-2018', 'teknisi', '2018/04/03', 'Survey', '2-218390025633', 'N66rlNgD', 'PT ANGKASA KOMUNIKASI GLOBAL UTAMA DC NTT NEXCENTE', 'DC NTT NexCenter (Cyber CSF) Jl Kuningan Barat no 8, Jaksel 12710', 'Evi Fitria ', 'first'),
(322, 'PRO00310-2018', 'SCH00310-2018', 'TCH00310-2018', 'teknisi', '2018/04/03', 'Survey', '2-218989933484', 'DcOXPwvt', 'TCH ', 'TCH ', 'Tri Purnomo', 'first'),
(323, 'PRO00311-2018', 'SCH00311-2018', 'TCH00311-2018', 'teknisi', '2018/04/03', 'Aktivasi', '2-216177184896', 'lu2uP4Ba', 'PT BANK DBS INDONESIA', 'GEDUNG CYBER 1 LANTAI 7 JALAN KUNINGAN BARAT RAYA NO 8 MAMPANG PRAPATAN JAKARTA SELATAN 12710', 'Evi Fitria', 'first'),
(324, 'PRO00312-2018', 'SCH00312-2018', 'TCH00312-2018', 'teknisi', '2018/04/04', 'Aktivasi', '5fKey7q7', '2-218814185683', 'PT. INDO CORPORA INVESTAMA', 'JL. TB. SIMATUPANG KAV. 10, KEBAYORAN LAMA, CILANDAK, JAKARTA\r\nSELATAN', 'Sri Hartati', 'first'),
(325, 'PRO00313-2018', 'SCH00313-2018', 'TCH00313-2018', 'teknisi', '2018/04/05', 'Aktivasi', '2-218991455108', 'fTqN5B57', 'IMMOBI SOLUSI PRIMA_DAAN MOGOT', ' Daan Mogot A, Pusat Bisnis Daan Mogot Baru Blok KJF 6-7 Jl. Tampak Siring Raya Daan Mogot Baru Jakarta Barat', 'Akhsan Ibnu Fajar', 'first'),
(326, 'PRO00314-2018', 'SCH00314-2018', 'TCH00314-2018', 'teknisi', '2018/04/05', 'Survey', '2-156568081797', 'SI3rXPO2', 'BANK CENTRAL ASIA ', 'BCA KCU PANTAI INDAH KAPUK, JL. PANTAI INDAH KAPUK UTARA I BLOK F, KEL.KAMAL MUARA,KEC.PENJARINGAN JAKARTA UTARA 14470', 'Evi Fitria ', 'first'),
(327, 'PRO00315-2018', 'SCH00315-2018', 'TCH00315-2018', 'teknisi', '2018/04/05', 'Survey', '2-156573808982', 'wNv5SJvT', 'BANK CENTRAL ASIA ', 'KCU BCA BEKASI JL. JEND. AHMAD YANI NO. 9 RT.01 RW,05 BEKASI 17141', 'Evi Fitria', 'first'),
(328, 'PRO00316-2018', 'SCH00316-2018', 'TCH00316-2018', 'teknisi', '2018/04/05', 'Aktivasi', 'qKAcNM5i', '2-219175283334', 'IFORTE GLOBAL INTERNET (Sidoarjo)', 'CYBER 1 APJII RACK IFORTE JL KUNINGAN BARAT NO. 8 JAKARTA SELATAN', 'Nur Aminah', 'first'),
(329, 'PRO00317-2018', 'SCH00317-2018', 'TCH00317-2018', 'teknisi', '2018/04/05', 'Aktivasi', 'xGBTLidk', '2-213574524791', 'COMMONWEALTH BANK', 'Bank Commonwealth World Trade Center, Jl. Jend Sudirman Kav. 29-31, Karet, Setiabudi, Gedung World Trade Center 6 Lantai 12', 'Evi Fitria', 'first'),
(330, 'PRO00318-2018', 'SCH00318-2018', 'TCH00318-2018', 'teknisi', '2018/04/05', 'Aktivasi', 'PNlAMCS4', ' 2-217738630803', 'INDOSAT-IT OPS', '\"RUKO CROWN PALACE JL. DR. SOEPOMO SH NO.231\r\nRT7/RW1 MENTENG DALAM, TEBET, JAKARTA, 12870\r\nINDONESIA\"', 'Annisya Fahmi', 'first'),
(331, 'PRO00319-2018', 'SCH00319-2018', 'TCH00319-2018', 'teknisi', '2018/04/06', 'Aktivasi', 'RZzeEUIu', '2-216121422712', 'PT BANK DBS INDONESIA', 'RACK DBS DCI CIBITUNG MM2100 CIBITUNG BEKASI 17520', 'Evi Fitria', 'first'),
(332, 'PRO00320-2018', 'SCH00320-2018', 'TCH00320-2018', 'teknisi', '2018/04/06', 'Survey', '2-216797208595', 'JHIDfTKR', 'PT. PRIMAVISTA SOLUSI', 'DC BNI SUDIRMAN GEDUNG BNI LT 5 JL. JEND SUDIRMAN KAV 15 JAKARTA 10250', 'Evi Fitria', 'first'),
(333, 'PRO00321-2018', 'SCH00321-2018', 'TCH00321-2018', 'teknisi', '2018/04/06', 'Survey', '2-216797603286', '2eUBktKG', 'PT. PRIMAVISTA SOLUSI', 'MENARA BIDAKARA LT 12, JL. GATOTSUBROTO KAV 71-73 JAKARTA 12870', 'Evi Fitria', 'first'),
(334, 'PRO00322-2018', 'SCH00322-2018', 'TCH00322-2018', 'teknisi', '2018/04/06', 'Survey', '2-218729284564', '2yR6CkIF', 'PT MIDI UTAMA INDONESIA', 'JL.ABDUL MAJID RAYA NO. 18 RT. 013 RW. 07\r\nKEL. CIPETE UTARA KEC. KEBAYORAN BARU\r\nJAKARTA SELATAN', 'Sri Hartati', 'first'),
(335, 'PRO00323-2018', 'SCH00323-2018', 'TCH00323-2018', 'teknisi', '2018/04/06', 'Survey', '2-172668747028', 'iyg1LPJA', 'PT SUMBER ALFARIA TRIJAYA', 'JL. JAGAKARSA RAYA NO.2A RT.009/07 KEL. JAGAKARSA KEC. JAGAKARSA JAKSEL', 'Sri Hartati', 'first'),
(336, 'PRO00324-2018', 'SCH00324-2018', 'TCH00324-2018', 'teknisi', '2018/04/08', 'Aktivasi', '2-153299116166', 'Q6T1VvGw', 'PT BANK NEGARA INDONESIA ( PERSERO) TBK', 'DC BNI Slipi Jl. Jend. S Parman Slipi Blok E No. 1-5 dan Blok F 1-8 Slipi Jakarta 11480 - Bank BNI (DRC), DRC Indosat Jatiluhur, Jl. Lurah Kawi, Purwakarta', 'Evi Fitria', 'first'),
(337, 'PRO00325-2018', 'SCH00325-2018', 'TCH00325-2018', 'teknisi', '2018/04/06', 'Dismantle', 'NKkV5Rr4', '2-218999459782', 'PT. MIDI UTAMA INDONESIA', '\"ALFAMIDI SUMUR BATU[SBT] (SC65), JL. SUMUR BATU RY BLOK.A3 NO. 9 RT.011/02\r\nKEL.SUMUR BATU KEMAYORAN JAKARTA DKI JAYA\"', 'Sri Hartati', 'first'),
(338, 'PRO00326-2018', 'SCH00326-2018', 'TCH00326-2018', 'teknisi', '2018/04/08', 'Aktivasi', 'Wi2cZpoh', '2-218369769985', 'GENERAL MOTOR INDONESIA', 'PT. VUTEQ INDONESIA JL. CEMPAKA KM 37 RT.003 RW.002 KEL. JATIMULYA KEC. TAMBUN SELATAN BEKASI', 'Nur Aminah', 'first'),
(339, 'PRO00327-2018', 'SCH00327-2018', 'TCH00327-2018', 'teknisi', '2018/04/08', 'Aktivasi', 'zspmyd8t', '2-215977694391', 'BANK DANAMON', 'Danamon Kebon Sirih Jakarta Jl. Kebon Sirih No. 15 Menteng, Jakarta Pusat 10340 - NODE IPHONE INDOSAT', 'Evi Fitria', 'first'),
(340, 'PRO00328-2018', 'SCH00328-2018', 'TCH00328-2018', 'teknisi', '2018/04/08', 'Survey', '2-218760182934', 'rh3O1I4h', 'BANK RAKYAT INDONESIA', 'Gedung IT BRI Ragunan Jl. RM. Harsono no. 2 Jakarta 12230', 'Evi Fitria', 'first'),
(341, 'PRO00329-2018', 'SCH00329-2018', 'TCH00329-2018', 'teknisi', '2018/04/08', 'Survey', '2-152516615365', 'bU8roGCl', 'SUPRA BOGA LESTARI - GRAND WISATA', 'SUPRA BOGA LESTARI - GRAND WISATA', 'Andri Setyawan', 'first'),
(342, 'PRO00330-2018', 'SCH00330-2018', 'TCH00330-2018', 'teknisi', '2018/04/08', 'Survey', '2-219207106595', 'LCZLEMCH', 'WEB DATA SOLUSINDO', 'MENARA STANDARD CHARERED, JLN. PROF. DR. SATRIO NO. 164, JAKARTA 12930', 'Adya Pramesthi', 'first'),
(343, 'PRO00331-2018', 'SCH00331-2018', 'TCH00331-2018', 'teknisi', '2018/04/08', 'Survey', '2-215907658171', 'CtyBDnqJ', 'SUN LIFE FINANCIAL INDONESIA, PT', 'The Plaza IBM, Jl. MH. Thamrin No. 28 - 30, The Plaza Complex, Gondangdia, Menteng, RT.9/RW.5, RT.9/RW.5, Gondangdia, Menteng, Jakarta Pusat 10350', 'Debby', 'first'),
(344, 'PRO00332-2018', 'SCH00332-2018', 'TCH00332-2018', 'teknisi', '2018/04/10', 'Aktivasi', '2-213364245072', 'yvct4hKE', ' Arthael', 'BEJ Indonesia Stock Exchange 1st Tower, Jl. Jend.Sudirman Kav. 52-53 RT.5/RW.3 Senayan', 'Akhsan Ibnu Fajar', 'first'),
(345, 'PRO00333-2018', 'SCH00333-2018', 'TCH00333-2018', 'teknisi', '2018/04/09', 'Aktivasi', '2-167781664860', 'n0H1Teyn', 'BANK DANAMON', 'Danamon Kebon Sirih Jakarta Jl. Kebon Sirih No. 15 Menteng, Jakarta Pusat 10340 - NODE IPHONE INDOSAT', 'Evi Fitria', 'first'),
(346, 'PRO00334-2018', 'SCH00334-2018', 'TCH00334-2018', 'teknisi', '2018/04/10', 'Dismantle', '2nFasTz0', '2-216799377701', 'BANK BTPN', 'KANTOR BTPN JUANDA BKS Plaza Bekasi Jaya Jl. Ir. H Juanda Blok A4 No.81 Bekasi Timur', 'Debby', 'first'),
(347, 'PRO00335-2018', 'SCH00335-2018', 'TCH00335-2018', 'teknisi', '2018/04/10', 'Dismantle', 'QUTWCa7W', '2-216181569616', 'BANK BTPN', 'KANTOR BTPN KK CIAWI (0135) Jl. Raya Wangun No.238 D Ciawi', 'Debby', 'first'),
(348, 'PRO00336-2018', 'SCH00336-2018', 'TCH00336-2018', 'teknisi', '2018/04/10', 'Dismantle', 'f9cLuXuV', '2-216181978312', 'BANK BTPN', 'KANTOR BTPN KK PALMERAH, Jl. Meruya Ilir Raya No.40, RT 01/RW 07, Kel. Srengseng, Jakarta Barat 11620', 'Debby', 'first'),
(349, 'PRO00337-2018', 'SCH00337-2018', 'TCH00337-2018', 'teknisi', '2018/04/10', 'Dismantle', 'a7pS8KRt', '2-216799434440', 'BANK BTPN', 'KANTOR BTPN PDGEDE Jl. Raya Jati Waringin No.200 A RT.03/RW.02 Kel. Jatiwaringin Kec. Pondok Gede, Bekasi', 'Debby', 'first'),
(350, 'PRO00338-2018', 'SCH00338-2018', 'TCH00338-2018', 'teknisi', '2018/04/10', 'Dismantle', 'EhmF30Xt', '2-216182565214', 'BANK BTPN', 'BTPN KCP GROGOL (BARU) Jl. Daan Mogot No. 9C, RT 011/RW 04, Kelurahan Jelambar, Jakarta Barat', 'Debby', 'first'),
(351, 'PRO00339-2018', 'SCH00339-2018', 'TCH00339-2018', 'teknisi', '2018/04/10', 'Aktivasi', 'ynfsm0B2', '2-216830775454', 'BANK CENTRAL ASIA ', 'KCU BCA BEKASI JL. JEND. AHMAD YANI NO. 9 RT.01 RW,05 BEKASI 17141', 'Evi Fitria', 'first'),
(352, 'PRO00340-2018', 'SCH00340-2018', 'TCH00340-2018', 'teknisi', '2018/04/10', 'Aktivasi', '2-213482270406', 'Do5cVyKc', 'SINGTEL H&M', 'Artha Graha Building 8th flr, Jl Jend Sudirman Kav 52-53 12190', 'Rahmat Hidayatullah', 'first'),
(353, 'PRO00341-2018', 'SCH00341-2018', 'TCH00341-2018', 'teknisi', '2018/04/11', 'Survey', '2-219041192533', 'qTurAdlS', 'TRAVELOKA', '\"	Wisma 77 Jl. Letjen S. Parman, Slipi, Palmerah, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11410\"', 'Evi Fitria', 'first'),
(354, 'PRO00342-2018', 'SCH00342-2018', 'TCH00342-2018', 'teknisi', '2018/04/11', 'Relokasi', '2-219516486657', 'vBHHuDTL', 'BANK SYARIAH MANDIRI ', 'KCP PEJATEN RAYA, GD. BUNCIT LT. 1, JL. WARUNG JATI RAYA (BARAT) NO. 36 RAGUNAN, JAKARTA SELATAN', 'Evi Fitria', 'first'),
(355, 'PRO00343-2018', 'SCH00343-2018', 'TCH00343-2018', 'teknisi', '2018/04/11', 'Survey', '2-219185782571', 'C3aw62iN', 'PATRA TELEKOMUNIKASI INDONESIA', 'JL. PRINGGONDANI II NO. 33, ALTERNATIF\r\nCIBUBUR, DEPOK 16954', 'Adya Pramesthi', 'first'),
(356, 'PRO00344-2018', 'SCH00344-2018', 'TCH00344-2018', 'teknisi', '2018/04/11', 'Aktivasi', '2-215955477553', 'MZpIqPKT', 'AT&T NUTRECO (PT Trouw Nutrition Indonesia)', 'Trouw Nutrition Indonesia, MM 2100 INDUSTRIAL TOWN, JL. SELAYAR BLOK A3-2,Main Floor,Server Room, CIBITUNG-17845, West Java, Indonesia', 'Hovidin ( Opi )', 'first'),
(357, 'PRO00345-2018', 'SCH00345-2018', 'TCH00345-2018', 'teknisi', '2018/04/11', 'Aktivasi', 'UWpvZBMw', '2-218140533344', 'ST MORITZ', 'ST MORITZ MANAGEMENT', 'Faizar Hasbi', 'first'),
(358, 'PRO00346-2018', 'SCH00346-2018', 'TCH00346-2018', 'teknisi', '2018/04/11', 'Aktivasi', '2-219529746442', 'QCIJtpRy', 'PT BANK MANDIRI (PERSERO) TBK', 'Alfamart Benda Kemang ( KB73) / Jl. Benda Kemang, Jakarta 12560', ' Evi Fitria ', 'first'),
(359, 'PRO00347-2018', 'SCH00347-2018', 'TCH00347-2018', 'teknisi', '2018/04/11', 'Aktivasi', 'y9HL1nhc', '2-218107192959', 'TEDDY TJOEGITO', 'APT. GADING MEDITERANIA\r\nRESIDANCE, TOWER B, LT.1 UNIT\r\nCB-B1- 03', 'Indah Mulyat', 'first'),
(360, 'PRO00348-2018', 'SCH00348-2018', 'TCH00348-2018', 'teknisi', '2018/04/12', 'Survey', '2-219489799702', 'uWnZDb6m', 'PT. Bank Central Asia ', 'JL BRIGJEN KATAMSO N 1 WISMA ASIA II JAKARTA 11420 Building : WismaAsi, 6th Floor, BUSSUNIT', 'Tri Purnomo', 'first'),
(361, 'PRO00349-2018', 'SCH00349-2018', 'TCH00349-2018', 'teknisi', '2018/04/13', 'Relokasi', '2-215977641193', 'dzPwEPyu', 'PT BANK HSBC INDONESIA ', 'HSBC WTC 1 Lt. 5 Jln. Jend. Sudirman Kav. 29, Jakarta 12920', 'Evi Fitria', 'first'),
(362, 'PRO00350-2018', 'SCH00350-2018', 'TCH00350-2018', 'teknisi', '2018/04/13', 'Survey', '2-219433264913', 'Qm0IwI97', 'PT SUMBER BAHAGIA SENTOSA (SILOAM PASAR BARU JAKAR', '\"SILOAM PASAR BARU JL. PASAR BARU TIMUR\r\nNO. 9, KEL.PASAR BARU, JAKARTA PUSAT\"', 'Sri Hartati', 'first'),
(363, 'PRO00351-2018', 'SCH00351-2018', 'TCH00351-2018', 'teknisi', '2018/04/16', 'Survey', '2-220003680127', 'Hw3fz4R1', ' AT&T u/  PT KOHLER INDONESIA', 'Jalan Prof. Dr. Satrio Kav. E.IV No.: 6 Zone D, RDTX TOWER TOWER,27th Floor,Comm Room, JAKARTA-12940,Indonesia', 'Tri Purnomo ', 'first'),
(364, 'PRO00352-2018', 'SCH00352-2018', 'TCH00352-2018', 'teknisi', '2018/04/16', 'Survey', '2-219943833760', '6GFG9dC5', ' AT&Tu/ KONE MNC', '\"Media MNC Tower Floor 9th, Jalan Kebon Sirih Kav. 17-19,Park Hyatt Tower,Data Centre Room,9th Floor,Jakarta-\r\n10340, Indonesia\"', 'Tri Purnomo ', 'first'),
(365, 'PRO00353-2018', 'SCH00353-2018', 'TCH00353-2018', 'teknisi', '2018/04/16', 'Aktivasi', '2-216073174675', 'SfwT7Ews', 'ALIBABA (UCWEB)', 'CAPITAL PLACE LT.23', 'Rahmat Hidayatullah', 'first'),
(366, 'PRO00354-2018', 'SCH00354-2018', 'TCH00354-2018', 'teknisi', '2018/04/16', 'Survey', '2-219434349143', 'lr1RL7Dz', 'PT ZURICH INSURANCE INDONESIA', 'Mayapada Tower 2 Lt 5, Jl. Jend. Sudirman Kav. 27 Jakarta 12210', 'Debby', 'first'),
(367, 'PRO00355-2018', 'SCH00355-2018', 'TCH00355-2018', 'teknisi', '2018/04/17', 'Aktivasi', 'ss6JHUCZ', '2-219799704092', 'PT FANWELL WIRA MANDIRI', 'LIPPO MALL PURI', 'Indah Mulyati ', 'first'),
(368, 'PRO00356-2018', 'SCH00356-2018', 'TCH00356-2018', 'teknisi', '2018/04/17', 'Aktivasi', 'pcldTzwK', '2-219503349430', 'PT. BANK UOB INDONESIA', 'RACK UOB DCI CIKARANG, KAWASAN INDUSTRI MM2100, JL. IRIAN BLOK GG 5-1, CIBITUNG 17520, CIKARANG, INDONESIA', 'Evi Fitria ', 'first'),
(369, 'PRO00357-2018', 'SCH00357-2018', 'TCH00357-2018', 'teknisi', '2018/04/16', 'Dismantle', 'yBxe7yRS', '2-216029960628', 'SMU NEGERI 3 JAKARTA', 'JL. SETIABUDI NO.2', 'Nur Aminah', 'first'),
(370, 'PRO00358-2018', 'SCH00358-2018', 'TCH00358-2018', 'teknisi', '2018/04/17', 'Survey', '2-218993042659', 'nSTT8Dw7', 'SUMBER MITRA JAYA (Parung)', 'PT. SUMBER MITRA JAYA JL. PEMUDA PARUNG DESA CURUG, KEC GUNUNG SINDUR BOGOR', 'Nur Aminah', 'first'),
(371, 'PRO00359-2018', 'SCH00359-2018', 'TCH00359-2018', 'teknisi', '2018/04/16', 'Survey', ' 2-219484817839', 'yTrFiZNQ', 'PT BADAK NGL', '\"WISMA NUSANTARA, BADAK NGL 9TH FLOOR,\r\nJL MH THAMRIN NO 59 JAKARTA 10350\"', 'Sri Hartati', 'first'),
(372, 'PRO00360-2018', 'SCH00360-2018', 'TCH00360-2018', 'teknisi', '2018/04/17', 'Survey', '2-219952267880', 'GuLOs9q1', 'DAYA SINERGI TELEKOMUNIKASI ', 'Dinas Perpustakaan, Jl. Jend. Sudirman No. 1, Kotabumi, Kota Gapura, Lampung Utara, Kabupaten Lampung Utara, Lampung 34516', 'Debby', 'first'),
(373, 'PRO00361-2018', 'SCH00361-2018', 'TCH00361-2018', 'teknisi', '2018/04/18', 'Survey', '2-220064958808', 'CgzGc91h', 'HERBALIFE JAKARTA', 'Unit K - N Jl. T.B. Simatupang No. 2, CIBIS NINE Building,Computer Room,6th Floor,Jakarta-12560', 'Tri Purnomo', 'first'),
(374, 'PRO00362-2018', 'SCH00362-2018', 'TCH00362-2018', 'teknisi', '2018/04/17', 'Aktivasi', '2-219537654451', 'sJGPmhGg', 'INERTIA UTAMA BINTARO TANGERANG SELATAN', 'GD RATU PRABU 2 IT, 5 JL. T.B, SIMATUPANG KAV. 1B, JAKARTA SELATAN', 'Akhsan Ibnu Fajar', 'first'),
(375, 'PRO00363-2018', 'SCH00363-2018', 'TCH00363-2018', 'teknisi', '2018/04/19', 'Aktivasi', '2-148275201600', 'SiBKhzwt', 'BANK PERMATA', 'DRC Bank Permata, Jl. Mh Thamrin Blok B1 No.1 Bintaro Sektor 7 Pondok Aren, Tangerang, 15224', 'Evi Fitria', 'first'),
(376, 'PRO00364-2018', 'SCH00364-2018', 'TCH00364-2018', 'teknisi', '2018/04/19', 'Survey', '2-173037958860', 'lC2fNtew', 'BT for SWIFT BNI', 'Gedung BNI Lt.5', 'Rahmat Hidayatullah', 'first'),
(377, 'PRO00365-2018', 'SCH00365-2018', 'TCH00365-2018', 'teknisi', '2018/04/19', 'Aktivasi', '2-148275659506', 'o9edwZye', 'BANK PERMATA', 'DRC Bank Permata, Jl.  Hayam Wuruk No 84, Maphar, Jakarta 11160', 'Evi Fitria', 'first'),
(378, 'PRO00366-2018', 'SCH00366-2018', 'TCH00366-2018', 'teknisi', '2020/04/18', 'Relokasi', ' 2-181920664908', '2-148656366879', 'BANK SYARIAH MANDIRI ', 'DATA CENTER BSM REMPOA JL. PAHLAWAN KOMPLEKS PERUMAHAN MANDIRI REMPOA CIPUTAT 15412', 'Debby', 'first'),
(379, 'PRO00366-2018', 'SCH00366-2018', 'TCH00366-2018', 'teknisi', '2018/04/20', 'Aktivasi', '2-219203134631', 'u9oDtXLb', 'PT JALA MEDIA LINTAS LIMBOTO', 'Cyber APJII Jakarta', 'Agung Pribadi Yahya', 'first'),
(380, 'PRO00367-2018', 'SCH00367-2018', 'TCH00367-2018', 'teknisi', '2018/04/20', 'Aktivasi', 'wB81AOT9', '2-219515125634', 'PRIMACOM INTERBUANA', 'Bank Index Selindo (DRC) Rumah Indonet, Jl. Rempoa Raya No. 11 Ciputat , Tangerang Selatan, Banten 15412', 'Evi Fitria', 'first'),
(381, 'PRO00368-2018', 'SCH00368-2018', 'TCH00368-2018', 'teknisi', '2018/04/18', 'Relokasi', ' 2-181920664477', '2-167512836193', 'BANK SYARIAH MANDIRI ', 'DATA CENTER BSM REMPOA JL. PAHLAWAN KOMPLEKS PERUMAHAN MANDIRI REMPOA CIPUTAT 15412', 'Debby', 'first'),
(382, 'PRO00369-2018', 'SCH00369-2018', 'TCH00369-2018', 'teknisi', '2020/04/23', 'Survey', '2-220090097888', 'JfawPi5o', 'MANDIRI GRIYA ARTHA MAKMUR', 'WISMA ABADI JL. BALIKPAPAN NO. 31 JAKARTA PUSAT', 'Nur Aminah', 'first'),
(383, 'PRO00369-2018', 'SCH00369-2018', 'TCH00369-2018', 'teknisi', '2018/04/20', 'Survey', '2-220082753083', 'BAfRehbr', 'BANK MAYBANK INDONESIA TBK ', 'Garden Shopping Arcade Beaufort Nomor 8C, Central Park, Grogol Petamburan Jakarta Barat', 'Debby', 'first'),
(413, 'PRO00390-2018', 'SCH00390-2018', 'TCH00390-2018', 'teknisi', '2018/04/26', 'Aktivasi', '2-149676189593', '2-215908281790', 'LINK NET, TBK', 'UPH BUILDING C, 5TH FLOOR JL .MH THAMRIN\r\nBOULEVARD NO.2 LIPPO KARAWACI 1100\r\nTANGERANG', 'Tri Purnomo', 'first'),
(418, 'PRO00395-2018', 'SCH00395-2018', 'TCH00395-2018', 'teknisi', '2018/04/17', 'TROUBLE SHOOT', '2-219970100739', 'f4T1UT8o', 'BUDIMAN 02130438172', 'CENTRAL PARK RESIDENCES TWR AMANDINE 45-07 JL.LETJEN S.PARMAN KAV. 28', 'M.Sauqie', 'first'),
(416, 'PRO00393-2018', 'SCH00393-2018', 'TCH00393-2018', 'teknisi', '2018/04/23', 'Survey', '2-220058529325', 'owv5gMEv', 'KINEZ CREATIVE SOLUTIONS ', 'GD. CYBER LT. APJIII JL. KUNINGAN BARAT JAKARTA', 'Nur Aminah', 'first'),
(417, 'PRO00394-2018', 'SCH00394-2018', 'TCH00394-2018', 'teknisi', '2018/04/23', 'Aktivasi', '2-167611588639', 'XlUR6rmV', 'BANK MANDIRI (PERSERO) TBK', 'SOGO PLAZA SENAYAN MALL JALAN ASIA AFRIKA NO. 8 JAKARTA 10270', ' Evi Fitria ', 'first'),
(412, 'PRO00389-2018', 'SCH00389-2018', 'TCH00389-2018', 'teknisi', '2018/04/24', 'Aktivasi', '2-220171175737', 'hh15cknT', 'WEB DATA SOLUSINDO', 'JLN. PROF. DR. SATRIO NO. 164, JAKARTA', 'Akhsan Ibnu Fajar', 'first'),
(415, 'PRO00392-2018', 'SCH00392-2018', 'TCH00392-2018', 'teknisi', '2018/04/27', 'Aktivasi', '2-220216181929', '9nPsK9xU', 'PT DANKOM MITRA ABADIYAYASAN', 'CDC CYBER LT.2 RACK 2A0817', 'Rahmat Hidayatullah ', 'first'),
(414, 'PRO00391-2018', 'SCH00391-2018', 'TCH00391-2018', 'teknisi', '2018/04/27', 'Survey', '2-216822510115', 'wXttLLzJ', 'MANDIRI GRIYA ARTHA MAKMUR', 'CIBIS TOWER 9 LANTAI 5 JL. RAYA CILANDAK KKO, CILANDAK TIMUR JAKARTA', 'Nur Aminah', 'first'),
(394, 'PRO00372-2018', 'SCH00372-2018', 'TCH00372-2018', 'teknisi', '2018/04/24', 'Survey', '2-220165134304', 'TwgSDFud', 'ASURANSI JIWA CENTRAL ASIA RAYA. PT ', 'DRC Jatiluhur 3, Jl Lurah kawi, Jatiluhur,Purwakarta, Jawa barat 41152', 'Debby', 'first'),
(395, 'PRO00373-2018', 'SCH00373-2018', 'TCH00373-2018', 'teknisi', '2018/04/24', 'Aktivasi', 'rcmZbEb6', '2-220165680319', 'RESMAN BUTAR BUTAR', 'APARTEMENT KEMANG VILLAGE', 'Indah Mulyati', 'first'),
(396, 'PRO00374-2018', 'SCH00374-2018', 'TCH00374-2018', 'teknisi', '2018/04/25', 'Aktivasi', '2-220193691185', 'zf6Jct6d', 'BANK PERMATA ', 'Lobby Bank Permata, Gedung Perkantoran Astra Biz Centre BSD,  Jl. BSD Raya Utama Kav. Commercial Park Barat I 11 G, Kelurahan Lengkong Kulon, Kec. Pagedangan, Tangerang', 'Evi Fitria ', 'first'),
(397, 'PRO00375-2018', 'SCH00375-2018', 'TCH00375-2018', 'teknisi', '2018/04/25', 'Aktivasi', 'RoMa3L1J', '2-220165710961', 'PRIMACOM INTERBUANA', 'BANK CAPITAL DRC, KOMPLEK PERGUDANGAN TAMAN TEKNO BLOK D NO.8, BANTEN, TANGERANG SELATAN 15314', 'Evi Fitria', 'first'),
(398, 'PRO00376-2018', 'SCH00376-2018', 'TCH00376-2018', 'teknisi', '2018/04/26', 'Survey', '2-220206673203', 'lFpSNzrT', 'PT GRAHA COM', '\"BLOK M PLAZA LT. 8, JL. BULUNGAN NO.76,\r\nKERAMAT PELA KEBAYORAN BARU BLOK M\r\nJAKARTA SELATAN\"', 'Sri Hartati', 'first'),
(399, 'PRO00377-2018', 'SCH00377-2018', 'TCH00377-2018', 'teknisi', '2018/04/27', 'Survey', '2-220058117963', 'BXMFQ2Bn', 'CHEVRON PACIFIC INDONESIA', '\"Chevron Sentral Senayan 1, Jl. Asia Afrika\r\nNo. 8 Jakarta 10270\"', 'Agung Pribadi Yahya', 'first'),
(400, 'PRO00378-2018', 'SCH00378-2018', 'TCH00378-2018', 'teknisi', '2018/04/27', 'Aktivasi', 'VIhSdfDX', '2-220252520157', 'PRIMACOM INTERBUANA', 'Bank Panin Dubai Syariah DC Gedung Cyber 1 Lt.2, Jl. Kuningan Barat No. 8 Mampang Prapatan, Jakarta Selatan', ' Evi Fitria ', 'first'),
(401, 'PRO00379-2018', 'SCH00379-2018', 'TCH00379-2018', 'teknisi', '2018/04/27', 'Aktivasi', '2MSmDU2P', '2-220185690135', 'PT JOHS LARSEN', 'APT. GADING MEDITERANIA RESIDENCES', 'Indah Mulyati ', 'first'),
(402, 'PRO00380-2018', 'SCH00380-2018', 'TCH00380-2018', 'teknisi', '2018/04/27', 'Aktivasi', 'kEuE6VxO', '2-220193095917', 'PT ANGKASA KOMUNIKASI GLOBAL UTAMA DC NTT NEXCENTE', 'DC NTT NexCenter (Cyber CSF) Jl Kuningan Barat no 8, Jaksel 12710 ', 'Evi Fitria', 'first'),
(403, 'PRO00381-2018', 'SCH00381-2018', 'TCH00381-2018', 'teknisi', '2018/04/27', 'Dismantle', 'mGd0OTls', '2-97181924155', 'BANK BTPN', 'KANTOR BTPN JOHAR KARAWANG, JL. RUKO GRAND PLAZA BLOK IV NO. 11-12, JL. RAYA GALUH MAS, KEC. TALUK JAMBE TIMUR, KARAWANG 41361', 'Debby', 'first'),
(404, 'PRO00382-2018', 'SCH00382-2018', 'TCH00382-2018', 'teknisi', '2018/04/30', 'Aktivasi', 'b8TfJWhK', '2-216052892579', 'LP UNISADHUGUNA', 'MENARA KUNINGAN', 'Indah Mulyati ', 'first'),
(405, 'PRO00383-2018', 'SCH00383-2018', 'TCH00383-2018', 'teknisi', '2018/04/30', 'Survey', '2-220239212389', 'kI3Qo6dd', 'PT. HOME CREDIT INDONESIA ', 'DC Finexus, Jl. Ir. H. Juanda 3 No.22, RT.2/RW.2, Kb. Klp., Gambir, Jakarta 10120', 'Debby', 'first'),
(406, 'PRO00384-2018', 'SCH00384-2018', 'TCH00384-2018', 'teknisi', '2018/04/30', 'Survey', '2-220320155269', 'SxhUelf1', 'BANK PERMATA', 'BANK PERMATA BINTARO Jl. M.H. Thamrin Blok. B1 No. 1, Bintaro Sektor 7, Pd. Jaya, Pd. Aren, Kota Tangerang Selatan, Banten 15224', 'Debby', 'first'),
(407, 'PRO00385-2018', 'SCH00385-2018', 'TCH00385-2018', 'teknisi', '2018/04/30', 'Aktivasi', '2-219960435382', 'ohtMNwVh', 'PT PASIFIK SATELIT NUSANTARA', 'STATION BUMI JATILUHUR ERVER PSN 6 PURWAKARTA', 'Sri Hartati', 'first'),
(408, 'PRO00386-2018', 'SCH00386-2018', 'TCH00386-2018', 'teknisi', '2020/04/27', 'Aktivasi', 'BeREA1Z3', '2-220234130372', 'PT JOHS LARSEN', 'APT. GADING MEDITERANIA RESIDENCES', 'Indah Mulyati ', 'first'),
(409, 'PRO00386-2018', 'SCH00386-2018', 'TCH00386-2018', 'teknisi', '2018/01/27', 'Dismantle', 'QdCEv5mM', '2-97181965492', 'BANK BTPN', 'KANTOR BTPN PANDEGLANG, JL. RAYA SERANG KM. 1, CURUG SAWER RT 001/009, KEL PANDEGLANG, KEC. PANDEGLANG, PANDEGLANG 42211', 'Debby', 'first'),
(410, 'PRO00387-2018', 'SCH00387-2018', 'TCH00387-2018', 'teknisi', '2018/04/30', 'Survey', '2-220258516371', '1LXXJ7TS', 'JALUR NUGRAHA EKA LOGISTIK', 'JNE LOGISTIK, KAWASAN JIEP PULOGADUNG JL.\r\nPULOAYANG BLOK FF 3 JAKARTA TIMUR', 'Sri Hartati', 'first'),
(411, 'PRO00388-2018', 'SCH00388-2018', 'TCH00388-2018', 'teknisi', '2018/04/30', 'Aktivasi', '8BCnDT8B', '2-220273427708', 'INTEGRA MITRA SEJATI', 'Cyber 1 Lt 8 Jl Kuningan Barat Raya No 8 Kuningan Barat Jakarta', 'Aprianti Lestari ', 'first'),
(419, 'PRO00396-2018', 'SCH00396-2018', 'TCH00396-2018', 'teknisi', '2018/04/05', 'Test link', '2-213410104293', 'goGTPaQL', 'Upgrade ATI DCI', 'Upgrade ATI DCI', 'Tri Purnomo', 'first'),
(420, 'PRO00397-2018', 'SCH00397-2018', 'TCH00397-2018', 'teknisi', '2018/04/12', '[Maintenance] Planned Outage', '2-219517657869', 'gppdWW3f', 'Nutreco MM2100 Bekasi', 'Nutreco MM2100 Bekasi', 'Tri Purnomo', 'first');
INSERT INTO `tbl_project_wo` (`id_project`, `kode_project`, `kode_jadwal`, `kode_teknisi`, `level`, `tgl_project`, `project_title`, `wo_id`, `so_id`, `customer`, `lokasi`, `pic`, `status`) VALUES
(421, 'PRO00398-2018', 'SCH00398-2018', 'TCH00398-2018', 'teknisi', '2018/04/28', 'TROUBLE SHOOT', '2-220275289155', '1kcywDi4', 'BUDIMAN 02130438172', 'CENTRAL PARK RESIDENCES TWR AMANDINE 45-07 JL.LETJEN S.PARMAN KAV. 28', 'Tofan Ramadhan', 'first'),
(423, 'PRO00400-2018', 'SCH00400-2018', 'TCH00400-2018', 'teknisi', '2018/05/02', 'Survey', '2-220312814759', 'o7bRIxxs', 'MANDIRI GRIYA ARTHA MAKMUR', 'GEDUNG CYBER LANTAI 5 LT. 5 DATA CENTER RACK RM 18 ( DHE CYBER ) KUNINGAN BARAT JAKARTA', 'Nur Aminah', 'first'),
(424, 'PRO00401-2018', 'SCH00401-2018', 'TCH00401-2018', 'teknisi', '2018/05/02', 'Aktivasi', 'RTsakDsT', '2-220273833694', 'PRIMACOM INTERBUANA', 'Bank Harda International (DC) Rumah Indonet Rempoa Jl. Rempoa Raya No. 11, Bintaro, Tangerang Selatan', 'Evi Fitria', 'first'),
(425, 'PRO00402-2018', 'SCH00402-2018', 'TCH00402-2018', 'teknisi', '2018/05/02', 'Survey', '2-220192150941', '4hd1WyAx', 'PT. HANASTA DAKARA,  LT. 7 (IDC)', 'JL. KUNINGAN BARAT NO. 8 CYBER 1 LANTAI 7', 'Akhsan Ibnu Fajar', 'first'),
(426, 'PRO00403-2018', 'SCH00403-2018', 'TCH00403-2018', 'teknisi', '2018/05/03', 'Aktivasi', 'TgvkqLPk', '2-220370831142', ' BANK RAKYAT INDONESIA', 'Gedung IT BRI Ragunan Jl. RM. Harsono No. 2 Jakarta 12230', 'Evi Fitria', 'first'),
(427, 'PRO00404-2018', 'SCH00404-2018', 'TCH00404-2018', 'teknisi', '2018/05/03', 'Aktivasi', 'V9akRtZT', '2-220185829557', 'AGUSTINA HINDRIARTI', 'APT. GADING MEDITERANIA RESIDENCES', 'Indah Mulyati ', 'first'),
(428, 'PRO00405-2018', 'SCH00405-2018', 'TCH00405-2018', 'teknisi', '2018/05/03', 'Aktivasi', 'gMOeiUCi', '2-220386314149', 'CITIBANK NA ', 'CITIBANK SOUTH QUARTER TOWER B LT. 6 JLN. RA. KARTINI NO. 8, CILANDAK BARAT, JAKARTA 12430', 'Evi Fitria', 'first'),
(429, 'PRO00406-2018', 'SCH00406-2018', 'TCH00406-2018', 'teknisi', '2018/05/03', 'Aktivasi', '2-220259218939', ' 2-220217917126', 'JAWA POS MULTIMEDIA', 'Graha Pena Jakarta, Jalan Raya kebayoran Lama No. 12, Grogol Utara, Jakarta 10110', 'Debby', 'first'),
(430, 'PRO00407-2018', 'SCH00407-2018', 'TCH00407-2018', 'teknisi', '2018/05/03', 'Aktivasi', '1TMuwdUz', '2-220315753861', 'MANDIRI GRIYA ARTHA MAKMUR', 'WISMA ABADI JL. BALIKPAPAN NO. 31 JAKARTA PUSAT', 'Nur Aminah', 'first'),
(431, 'PRO00408-2018', 'SCH00408-2018', 'TCH00408-2018', 'teknisi', '2018/05/03', 'Survey', '2-219512102854', 'GEt42U74', 'LIMA SATU TIGA GLOBAL TEL-ACCES', '\"LIMA SATU TIGA GEDUNG CYBER LANTAI 1\r\nRUANG DATA CENTER APJII\"', 'Sri Hartati', 'first'),
(432, 'PRO00409-2018', 'SCH00409-2018', 'TCH00409-2018', 'teknisi', '2018/05/03', 'Aktivasi', '2 2-219434349143', '2-220392343733', 'PT ZURICH INSURANCE INDONESIA', 'Mayapada Tower 2 Lt 5, Jl. Jend. Sudirman Kav. 27 Jakarta 12210', 'Debby', 'first'),
(433, 'PRO00410-2018', 'SCH00410-2018', 'TCH00410-2018', 'teknisi', '2018/05/04', 'Survey', '2-220406098440', 'QmTmDE2T', 'MANDIRI GRIYA ARTHA MAKMUR', 'IDC DUREN 3 LANTAI 2 RAK 201 JL. DUREN TIGA RAYA NO.7H JAKARTA', 'Nur Aminah', 'first'),
(434, 'PRO00411-2018', 'SCH00411-2018', 'TCH00411-2018', 'teknisi', '2018/05/04', 'Survey', '2-220186803405', '8vP3F7Id', 'Pustaka Bogor (Topologi)', 'Pustaka Bogor, Jl Ir H Juanda No.20 Bogor', 'Akhsan Ibnu Fajar', 'first'),
(435, 'PRO00412-2018', 'SCH00412-2018', 'TCH00412-2018', 'teknisi', '2018/05/03', 'Aktivasi', 'rFyOUtdF', '2-220383546519', 'GE OPERATIONS INDONESIA', 'GE AVIATION GEDUNG TEKNIK LANTAI 2 LION OPERATION CENTER JL. MARSEKAL SURYA DARMA NO.44 SELAPAJANG JAYA, NEGLASARI KOTA TANGERANG', 'Nur Aminah', 'first'),
(436, 'PRO00413-2018', 'SCH00413-2018', 'TCH00413-2018', 'teknisi', '2018/05/07', 'Aktivasi', '2-219280511169', '2-220236798628', 'TEKNOKRAT MITRA DATA', 'APT. MEDITERANIA GARDEN RESIDENCES', 'Indah Mulyati', 'first'),
(437, 'PRO00414-2018', 'SCH00414-2018', 'TCH00414-2018', 'teknisi', '2018/05/07', 'Aktivasi', '2-220088673495', '7dzBASMU', 'PT.KARYAPUTRASURYAGEMILANG', ' KPSG Menara Sunlife Jalan Dr Ide Anak Agung Gde Agung Blok 6.3, Kawasan Mega Kuningan, RT.5/RW.2', 'Rahmat Hidayatullah', 'first'),
(438, 'PRO00415-2018', 'SCH00415-2018', 'TCH00415-2018', 'teknisi', '2018/05/07', 'Aktivasi', '2-202364924124', 'B5rhgpJo', 'SINGTEL FOR BNP PARIBAS', 'Wisma BCA BSD Lt.1', 'Rahmat Hidayatullah', 'first'),
(439, 'PRO00416-2018', 'SCH00416-2018', 'TCH00416-2018', 'teknisi', '2018/05/07', 'Dismantle', '2-148659443701', 'Vw33T6a7', 'PT BANK HSBC INDONESIA', 'WTC LT. 4, JL. JEND SUDRIMAN KAV. 29-31 JAKARTA', 'Debby', 'first'),
(440, 'PRO00417-2018', 'SCH00417-2018', 'TCH00417-2018', 'teknisi', '2018/05/07', 'Aktivasi', '2-218990963369', '2-220167480815', 'PT. ZURICH TOPAS LIFE', 'DC Lintsarta Taman Tekno, Komp. Pergudangan Taman Tekno Blok D No. 8, BSD, Tangerang Selatan 15313', 'Debby', 'first'),
(992, 'PRO00969-2018', 'SCH00969-2018', 'TCH00969-2018', 'teknisi', '2018/09/05', 'Dismantle', 'T09NUBC9', '2-233638038295', 'PT. ZURICH TOPAS LIFE', 'Mayapada tower 2, Jl. Jend Sudirman Kav.27, Jakarta 12920 (1)\r\nNODE MPLS (PE) INDOSAT (2)', 'Trimah Astuti ', 'first'),
(442, 'PRO00419-2018', 'SCH00419-2018', 'TCH00419-2018', 'teknisi', '2018/05/08', 'Aktivasi', '1542ZoPu', '2-220577318059', 'SUMBER MITRA JAYA (Backhaul)', 'PT SUMBER MITRA JAYA GRAHA IRAMA LT. 14 JL. HR. RASUNA SAID X-1, KAV 1 & 2 JAKARTA', 'Nur Aminah', 'first'),
(443, 'PRO00420-2018', 'SCH00420-2018', 'TCH00420-2018', 'teknisi', '2018/05/08', 'Aktivasi', 'TBPWWkD8', '2-220575736498', 'MANDIRI GRIYA ARTHA MAKMUR', 'CIBIS TOWER 9 LANTAI 5 JL. RAYA CILANDAK KKO, CILANDAK TIMUR JAKARTA', 'Nur Aminah', 'first'),
(993, 'PRO00970-2018', 'SCH00970-2018', 'TCH00970-2018', 'teknisi', '2018/09/05', 'Dismantle', 'KbmNByIU', '2-233614291582', 'PT BANK ANZ INDONESIA', 'GERMAN CENTER, JL. KAPTEN SUBIJANTO DJ BSD, TANGERANG 15321 (1)\r\nNODE MPLS (PE) INDOSAT (2)', 'Trimah Astuti ', 'first'),
(445, 'PRO00422-2018', 'SCH00422-2018', 'TCH00422-2018', 'teknisi', '2018/05/09', 'Aktivasi', '2-220387330903', 'v58TLpTh', 'PT. NUSANTARA COMPNET INTEGRATOR', 'JL. BANGKA II NO. 34 JAKARTA SELATAN', 'Sri Hartati ', 'first'),
(446, 'PRO00423-2018', 'SCH00423-2018', 'TCH00423-2018', 'teknisi', '2018/05/09', 'Aktivasi', '2-220003680581', '2-220480947340', 'AT&T (Omya)', 'PT Omya Indonesia Sidoarjo Jl.Raya Km 20 Surabaya - Mojokerto, Desa Tanjungsari Trosobo, Sidoarjo', 'Hovidin ( Opi )', 'first'),
(447, 'PRO00424-2018', 'SCH00424-2018', 'TCH00424-2018', 'teknisi', '2018/05/11', 'Survey', '2-213413765983 (INIX) ', 'VcUgxUXG', 'DIREKTORAT JENDERAL PAJAK', 'KANTOR PUSAT DIREKTORAT JENDRAL\r\nPAJAK, JALAN GATOT SUBROTO KAV. 40-42,\r\nRT.7/RW.1, SENAYAN, KBY. BARU, KOTA\r\nJAKARTA SELATAN, DKI JAKARTA, 12190,\r\nINDONESIA', 'Sri Hartati ', 'first'),
(448, 'PRO00425-2018', 'SCH00425-2018', 'TCH00425-2018', 'teknisi', '2018/05/11', 'Survey', '2-213413579944 (INP)', 'oBkLFkHy', 'DIREKTORAT JENDERAL PAJAK', '\"KANTOR PUSAT DIREKTORAT JENDRAL\r\nPAJAK, JALAN GATOT SUBROTO KAV. 40-42,\r\nRT.7/RW.1, SENAYAN, KBY. BARU, KOTA\r\nJAKARTA SELATAN, DKI JAKARTA, 12190,\r\nINDONESIA\"', 'Sri Hartati', 'first'),
(449, 'PRO00426-2018', 'SCH00426-2018', 'TCH00426-2018', 'teknisi', '2018/05/11', 'Survey', '2-220209386729', '6eIEB0mm', 'AT&T at Cyber NTTI nexcenter', 'GD WISMA DANAMON AETNA LIFE LT 19 JL JEND SUDIRMAN KAV\r\n45-46 JAKARTA 12910', 'Tri Purnomo', 'first'),
(450, 'PRO00427-2018', 'SCH00427-2018', 'TCH00427-2018', 'teknisi', '2018/05/11', 'Survey', '2-220250714708', 'aJdMfoJv', 'BANK SHINHAN INDONESIA', 'RUKO TIME SQUARE JL ALTERNATIF CIBUBUR JATI KARYA JATI SAMPURNA BEKASI 17435', ' Evi Fitria ', 'first'),
(451, 'PRO00428-2018', 'SCH00428-2018', 'TCH00428-2018', 'teknisi', '2018/05/11', 'Survey', '2-220840862834', 'NXwwWiO6', 'BANK SHINHAN INDONESIA', 'TANAH ABANG JL KH FACHRUDDIN N0.36 BLOK AA-31 JAKARTA 10250', 'Evi Fitria', 'first'),
(452, 'PRO00429-2018', 'SCH00429-2018', 'TCH00429-2018', 'teknisi', '2018/05/14', 'Aktivasi', 'uIfLD4QP', '2-220251893864', 'PT INTERSHOP PRIMA CENTER (JERRY DAMIAN)', 'WTC Mangga Dua', 'Indah Mulyati ', 'first'),
(453, 'PRO00430-2018', 'SCH00430-2018', 'TCH00430-2018', 'teknisi', '2018/05/14', 'Survey', '2-220386952105', 'mMv0FrFo', 'BATAVIA PROSPERINDO ASET MANAJEMEN', 'CHASE PLAZA LT. 12 JL JEND SUDIRMAN KAV. 21 JAKARTA', 'Nur Aminah', 'first'),
(454, 'PRO00431-2018', 'SCH00431-2018', 'TCH00431-2018', 'teknisi', '2018/05/14', 'Aktivasi', 'wIzQaAsA', '2-220386570234', 'AGUSTINA HINDRIARTI', 'APT. GADING MEDITERANIA RESIDENCES', 'Indah Mulyati ', 'first'),
(455, 'PRO00432-2018', 'SCH00432-2018', 'TCH00432-2018', 'teknisi', '2018/05/14', 'Aktivasi', 'GX4xs5kT', '2-220417190962', 'HENRY MONIAGA', 'APT. GADING MEDITERANIA RESIDENCES', 'Indah Mulyati ', 'first'),
(456, 'PRO00433-2018', 'SCH00433-2018', 'TCH00433-2018', 'teknisi', '2018/05/14', 'Dismantle', 'y3vH3m8E', '2-148662472296', 'PT BANK HSBC INDONESIA', 'WTC LT. 4, JL. JEND. SUDIRMAN KAV. 29-31, JAKARTA', 'Tommy Lond Togi Parsaoran', 'first'),
(457, 'PRO00434-2018', 'SCH00434-2018', 'TCH00434-2018', 'teknisi', '2018/05/14', 'Aktivasi', 'TUhKpqX7', '2-225764984949', 'BOSTON CONSULTING GROUP', 'TOWER A LT. 19 JL. JEND. SUDIRMAN KAV. 45-46 JAKARTA', 'Nur Aminah', 'first'),
(458, 'PRO00435-2018', 'SCH00435-2018', 'TCH00435-2018', 'teknisi', '2018/05/14', 'Dismantle', 'D2nalb2B', '2-149658997012', 'PT BANK HSBC INDONESIA', 'HSBC WTC BUILDING LT.4 JL. JENDRAL SUDIRMAN Kav 29-31 JAKARTA 12920', 'Tommy Lond Togi Parsaoran', 'first'),
(459, 'PRO00436-2018', 'SCH00436-2018', 'TCH00436-2018', 'teknisi', '2018/05/14', 'Aktivasi', 'UlBfSleb', '2-220218394924', 'PT. METRA DIGITAL MEDIA', 'GEDUNG BIN JLN SENO RAYA PEJATEN TIMUR PASAR MINGGU, JAKARTA\r\nSELATAN', 'Sri Hartati', 'first'),
(460, 'PRO00437-2018', 'SCH00437-2018', 'TCH00437-2018', 'teknisi', '2018/05/14', 'Dismantle', 'kn3PAFfI', '2-187218533948', 'GRAHA LAYAR PRIMA PLAZA SLIPI JAYA', 'PLAZA SLIPI JAYA LT. 4, Jl Let. Jen. S. Parman Kav 17-18 JAKARTA', 'Indah Mulyati', 'first'),
(461, 'PRO00438-2018', 'SCH00438-2018', 'TCH00438-2018', 'teknisi', '2018/05/14', 'Dismantle', 'gUennTDt', '2-187226763714', 'GRAHA LAYAR PRIMA BEKASI CYBER PARK', 'BEKASI CYBER PARK, JLN. KH NOOR ALI NO 177 Lantai 3 BEKASI\r\n', 'Indah Mulyati ', 'first'),
(462, 'PRO00439-2018', 'SCH00439-2018', 'TCH00439-2018', 'teknisi', '2018/05/14', 'Aktivasi', 'GktOkoBX', '2-220490901423', 'DIREKTORAT JENDERAL SUMBER DAYA DAN PERANGKAT POS ', 'GEDUNG SAPTA PESONA JL MEDAN MERDEKA BARAT NO 17 JAKARTA', 'Sri Hartati', 'first'),
(463, 'PRO00440-2018', 'SCH00440-2018', 'TCH00440-2018', 'teknisi', '2018/05/15', 'Aktivasi', 'Xs9QFpRG', '2-220477067570', 'FRANCISCA INDRIANI', 'APT. GADING MEDITERANIA RESIDENCES', 'Indah Mulyati', 'first'),
(464, 'PRO00441-2018', 'SCH00441-2018', 'TCH00441-2018', 'teknisi', '2018/05/16', 'Aktivasi', '2-220021217800', 'w1COSgGt', 'BT for SKF SVerige', 'Talavera Office Park Lt.9', 'Rahmat Hidayatullah', 'first'),
(465, 'PRO00442-2018', 'SCH00442-2018', 'TCH00442-2018', 'teknisi', '2018/05/16', 'Survey', '2-220371518657', '1MTTktpy', 'PT TRICORE OPTIMA PERSADA', 'GEDUNG CYBER LT.8 JL. KUNINGAN BARAT NO.\r\n8 JAKARTA SELATAN', 'Sri Hartati', 'first'),
(466, 'PRO00443-2018', 'SCH00443-2018', 'TCH00443-2018', 'teknisi', '2018/05/17', 'Aktivasi', '2-219545867454', '2-220183864842', 'MASTERCARD ARTAJASA', 'INL AT&T 015 PTI-PTI 1G2132/LL', 'Tri Purnomo', 'first'),
(467, 'PRO00444-2018', 'SCH00444-2018', 'TCH00444-2018', 'teknisi', '2018/05/17', 'Aktivasi', '2-220251438666', '2-226790873338', 'MASTERCARD ARTAJASA #2', 'INL AT&T 015 PTI-PTI 1G2132/LL', 'Tri Purnomo', 'first'),
(468, 'PRO00445-2018', 'SCH00445-2018', 'TCH00445-2018', 'teknisi', '2018/05/17', 'Aktivasi', '2-152516636277', 'eC5BeTKT', 'PT. SUPRA BOGA LESTARI TBK (FARMERS MARKET CITRA G', 'FARMERS MARKET CITRA GARDEN BLOK J6 CITRA 6, KALIDERES', 'Sri Hartati', 'first'),
(469, 'PRO00446-2018', 'SCH00446-2018', 'TCH00446-2018', 'teknisi', '2018/05/18', 'Survey', '2-226728680560', 'F1WdtJsL', 'PT BANK DBS INDONESIA GMC', 'GD. SIGMA, GERMAN CENTER, BSD TANGERANG', 'Evi Fitria', 'first'),
(470, 'PRO00447-2018', 'SCH00447-2018', 'TCH00447-2018', 'teknisi', '2018/05/18', 'Survey', '2-228991187461', 'HeOEUJ7L', 'LIMA MENARA BINTANG', 'IDC DUREN TIGA (RACK 5MB), JL. DUREN TIGA RAYA LT. 2 BLOK H NO.7 DUREN TIGA PT. ADI INTI MANDIRI SOLUSI, MMR LT.3, JAKARTA 12760', 'Debby', 'first'),
(471, 'PRO00448-2018', 'SCH00448-2018', 'TCH00448-2018', 'teknisi', '2018/05/18', 'Survey', '2-220580315969', '511fQlU7', 'MITRA TRANSAKSI INDONESIA', 'CYBER BUILDING 2 LT 2 ROOM ND 4 JL. HR RASUNA SAID NO. 13 JAKARTA 12310', 'Evi Fitria', 'first'),
(472, 'PRO00449-2018', 'SCH00449-2018', 'TCH00449-2018', 'teknisi', '2018/05/18', 'Survey', '2-220577847457', 'HIvhr79u', 'MITRA TRANSAKSI INDONESIA', 'GRAHA TELKOMSIGMA, D/A. GERMAN CENTER : RUANG MEET ME ROOM  LANTAI 5 JL. KAPT SUBIJANTO DJ, BUMI SERPONG DAMAI TANGERANG SELATAN 15321 - CYBER BUILDING 2 LT 2 ROOM ND 4 JL. HR RASUNA SAID NO. 13 JAKAR', 'Evi Fitria', 'first'),
(473, 'PRO00450-2018', 'SCH00450-2018', 'TCH00450-2018', 'teknisi', '2018/05/21', 'Survey', '2-220469795700', 'QeztDElq', ' CENTURY TOKYO LEASING INDONESIA ', 'MENARA ASTRA LT. 25, JALAN JEND. SUDIRMAN NO. KAV 506, KARET TENGSIN, JAKARTA PUSAT, 10220', 'Debby ', 'first'),
(474, 'PRO00451-2018', 'SCH00451-2018', 'TCH00451-2018', 'teknisi', '2018/05/22', 'Aktivasi', 'LM54LBMl', '2-233558946797', 'MANDIRI GRIYA ARTHA MAKMUR', 'GEDUNG CYBER LANTAI 5 LT. 5 DATA CENTER RACK RM 18 ( DHE CYBER ) KUNINGAN BARAT JAKARTA', 'Nur Aminah', 'first'),
(475, 'PRO00452-2018', 'SCH00452-2018', 'TCH00452-2018', 'teknisi', '2018/05/22', 'Survey', '2-152516615821', 'HmUe6U7T', 'PT. SUPRA BOGA LESTARI TBK (FARMERS MARKET BINTARO', 'FARMERS MARKET BINTARO EXCHANGE LG FLOOR JL. LINGKAR LUAR BINTARO JAYA SEKTOR 7', 'Sri Hartati', 'first'),
(476, 'PRO00453-2018', 'SCH00453-2018', 'TCH00453-2018', 'teknisi', '2018/05/22', 'Aktivasi', '2-213463846240', 'aAFtKJ5G', 'PT.TRANSINDONESIA NETWORK', 'Jl. Kuningan Barat No.8, RT.1/RW.3 Jakarta', 'Tri Purnomo', 'first'),
(477, 'PRO00454-2018', 'SCH00454-2018', 'TCH00454-2018', 'teknisi', '2018/05/22', 'Survey', '2-152516592909', 'W9MwvzOP', 'FARMERS MARKET EPICENTRUM WALK', 'FARMERS MARKET EPICENTRUM WALK\r\nJL.HR.RASUNA SAID KUNINGAN JAKARTA', 'Sri Hartati', 'first'),
(478, 'PRO00455-2018', 'SCH00455-2018', 'TCH00455-2018', 'teknisi', '2018/05/22', 'Survey', '2-222807304231', 'lwewK0nZ', 'PT NETTOCYBER INDONESIA', '\"PT. NETTOCYBER INDONESIA, THE\r\nMANHATAN SQUARE MID TOWER 2ND\r\nFLOOR, JL. TB SIMATUPANG NO.1S,\r\nJAKARTA 12430\"', 'Adya Pramesthi', 'first'),
(479, 'PRO00456-2018', 'SCH00456-2018', 'TCH00456-2018', 'teknisi', '2018/05/22', 'Aktivasi', '2-233568186637 ', '8Mrp1SCL', 'MANDIRI GRIYA ARTHA MAKMUR', 'IDC DUREN 3 LANTAI 2 RAK 201 JL. DUREN TIGA RAYA NO.7H JAKARTA', 'Nur Aminah', 'first'),
(480, 'PRO00457-2018', 'SCH00457-2018', 'TCH00457-2018', 'teknisi', '2018/05/22', 'Survey', '2-232914175720', 'DVM1Li4G', 'PT BANK HSBC INDONESIA', 'GED WTC, JEND. SUDIRMAN KAV 29 - 31, LT 1 - 4 S B, Jakarta', 'Debby', 'first'),
(481, 'PRO00458-2018', 'SCH00458-2018', 'TCH00458-2018', 'teknisi', '2018/05/22', 'Aktivasi', 'DoWA5U4T', '2-233109299500', 'Solusi Media Semesta', 'Jalan Mujaer Dalam No 26 A RT 3 RW 9, Jati Padang, Pasar Minggu Muamalat Data Center', 'Akhsan Ibnu Fajar', 'first'),
(482, 'PRO00459-2018', 'SCH00459-2018', 'TCH00459-2018', 'teknisi', '2018/05/22', 'Relokasi', '2-227762574213', '25ASAqnh', 'VISIONET INTERNASIONAL', 'JL.HR RASUNA SAID, BLOK X-5 NO 13, SETIA BUDI, JAKARTA 12920', 'Hovidin ( Opi )', 'first'),
(483, 'PRO00460-2018', 'SCH00460-2018', 'TCH00460-2018', 'teknisi', '2018/05/22', 'Aktivasi', '9Zy6EmUA', '2-233205989585', 'Hanasta Dakara', 'HANASTA DAKARA, LT. 7 Cyber 1 (IDC)', 'Akhsan Ibnu Fajar', 'first'),
(484, 'PRO00461-2018', 'SCH00461-2018', 'TCH00461-2018', 'teknisi', '2018/05/23', 'Aktivasi', '2-222752325306', '39Wwh0q0', 'ELANG ANDALAN NUSANTARA', 'ATI (ELANG ANDALAN NUSANTARA)\r\nCapital Place Tower, 6th Floor \r\nJl. Gatot Subroto Kav 18  - Jakarta', 'Hovidin ( Opi )', 'first'),
(485, 'PRO00462-2018', 'SCH00462-2018', 'TCH00462-2018', 'teknisi', '2018/05/22', 'Aktivasi', 'TRqeB0AD', '2-233567691081', 'PELINDO', 'PT PELINDO 1 JL.IR H JUANDA NO. 7, SENTUL', 'Nur Aminah', 'first'),
(486, 'PRO00463-2018', 'SCH00463-2018', 'TCH00463-2018', 'teknisi', '2018/05/23', 'Dismantle', 'ZRoqnQqM', '2-123920753417', 'VISIONET DATA INTERNASIONAL', 'LIPPO CYBER PARK - DATA CENTER LIPPO VILLAGE - TANGERANG JL. BOULEVARD\r\nGAJAH MADA, NO. 2110 - 2197', 'Indah Mulyati ', 'first'),
(487, 'PRO00464-2018', 'SCH00464-2018', 'TCH00464-2018', 'teknisi', '2018/05/23', 'Dismantle', 'fMCLTUGM', ' 2-97026773712 ', 'PT. MITRA ADIPERKASA TBK', 'Gedung CybeR3 LTI 1 MAP mmr Jalan Kuningan Barat JAKARTA', 'Indah Mulyati', 'first'),
(488, 'PRO00465-2018', 'SCH00465-2018', 'TCH00465-2018', 'teknisi', '2018/05/23', 'Dismantle', 'CPnMMDip', '2-124529374482', 'BANK BTPN', 'KANTOR BTPN RENGASDK, Jl. Raya Rengas Dengklok No.8 Kel. Rengas Dengklok Selatan Kec. Rengas Dengklok Kab. Karawang 41352', 'Jerry Erlangga', 'first'),
(489, 'PRO00466-2018', 'SCH00466-2018', 'TCH00466-2018', 'teknisi', '2018/05/24', 'Dismantle', 'JBoVJEnS', '2-121219067042', 'PT. SIERAD PRODUCE TBK', 'GD. THE CITY CENTRE 6-7 FLOOR JL. KH. MAS MANSYUR KAV. 126 JAKARTA', 'Indah Mulyati', 'first'),
(490, 'PRO00467-2018', 'SCH00467-2018', 'TCH00467-2018', 'teknisi', '2018/05/24', 'Survey', '2-232929895768', 'iPpJKAKS', 'PT SUMBER ALFARIA TRIJAYA', 'JL.KEMENANGAN 111 NO.43 RT.010 KEL\r\nGLODOK, KEC PINANGSIA JAKARTA BARAT', 'Sri Hartati', 'first'),
(491, 'PRO00468-2018', 'SCH00468-2018', 'TCH00468-2018', 'teknisi', '2018/05/24', 'Survey', '2-233594255574', 'lP4WJ7RT', 'INDONESIA INFRASTRUCTURE FINANCE ', 'THE ENERGY BUILDING LT.3, JL. JEND SUDIRMAN KAV.52-53 JAKARTA 10110', 'Debby ', 'first'),
(492, 'PRO00469-2018', 'SCH00469-2018', 'TCH00469-2018', 'teknisi', '2018/05/24', 'Dismantle', '2-220016098844', '2-220079581995', 'PT. ORORI INDONESIA', 'JL. ABDUL MUIS NO.46, PETOJO SELATAN, GAMBIR', 'Nur Aminah ', 'first'),
(493, 'PRO00470-2018', 'SCH00470-2018', 'TCH00470-2018', 'teknisi', '2018/05/25', 'Survey', '2-226978781214', 'oiQZt4xu', 'PT ANTAM - POMALA', 'JJl. Letjen TB.Simatupang No.1', 'Rahmat Hidayatullah', 'first'),
(494, 'PRO00471-2018', 'SCH00471-2018', 'TCH00471-2018', 'teknisi', '2018/05/28', 'Dismantle', '6rtOPWJq', '2-156779608306', 'AJE INDONESIA', '\"JL. ARYA KEMUNING NO. 198 (BELAKANG PERUMAHAN PERIUK JAYA)\r\nTANGERANG\"', 'Indah Mulyati', 'first'),
(495, 'PRO00472-2018', 'SCH00472-2018', 'TCH00472-2018', 'teknisi', '2018/05/28', 'Aktivasi', '2-233559029200', '2vqSJNlQ', 'INDOSAT SINGAPORE PTE LTD', 'PCP Building - Sudirman Central Business\r\nDistrict Lot 10 Jalan Jendral Sudirman', 'Rahmat Hidayatullah', 'first'),
(496, 'PRO00473-2018', 'SCH00473-2018', 'TCH00473-2018', 'teknisi', '2018/05/28', 'Aktivasi', 'GlXVkApe', '2-107217412540', 'ENERGI SEJAHTERA MAS', '\"PLAZA SINAR MAS LAND LT 8\r\nPELANTARAN PAKIT TOWER II JL. MH\r\nTHAMRIN NO 51 JAKARTA\"', 'Nur Aminah', 'first'),
(497, 'PRO00474-2018', 'SCH00474-2018', 'TCH00474-2018', 'teknisi', '2018/05/28', 'Upgrade', '5C1a19kL', '2-222826575043', 'BANK OF TOKYO MITSUBISHI', 'Mid Plaza 1 lt.5 Jalan Jend Sudirman kav 10-11 Jakarta 10110', 'Evi Fitria', 'first'),
(498, 'PRO00475-2018', 'SCH00475-2018', 'TCH00475-2018', 'teknisi', '2018/05/28', 'Aktivasi', 'NkNOlnqz', '2-233615848581', 'TORNADO TEKNOLOGI VENTURA', 'LA TB SIMATUPANG KEBAGUSAN JAKARTA', 'Aprianti Lestari ', 'first'),
(499, 'PRO00476-2018', 'SCH00476-2018', 'TCH00476-2018', 'teknisi', '2018/05/28', 'Aktivasi', 'BtsiprEu', '2-233700853226', 'TRADA TELECOM INDONESIA', 'GEDUNG CYBER LANTAI 8 JALAN KUNINGAN BARAT MAMPANG - JAKARTA', 'Nur Aminah', 'first'),
(500, 'PRO00477-2018', 'SCH00477-2018', 'TCH00477-2018', 'teknisi', '2018/05/28', 'Aktivasi', '2-220259133750', '2-233693320560', 'GARUDA MEDIA NUSANTARA. PT', 'INDOSAT DAAN MOGOT GEDUNG A, JL. RAYA DAAN MOGOT KM. 11, Jakarta 11750', 'Debby', 'first'),
(501, 'PRO00478-2018', 'SCH00478-2018', 'TCH00478-2018', 'teknisi', '2018/05/30', 'Aktivasi', 'ouyv4XDh', '2-220064958808', 'AT&T Herbalife CIbis', 'AT&T Herbalife CIbis', 'Tri Purnomo', 'first'),
(502, 'PRO00479-2018', 'SCH00479-2018', 'TCH00479-2018', 'teknisi', '2018/05/30', 'Dismantle', '2-172069532672', 'LosJUfLy', 'MIDI UTAMA INDONESIA', 'ALFA MIDI - TOKO CIBARUSAH [CBRS]SC20 JL. RY CIKARANG-CIBARUSAH NO.72 RT.01/003 KEL SUKA RESMI KEC.CIKARANG BEKASI JAWA BARAT', 'Indah Mulyati', 'first'),
(503, 'PRO00480-2018', 'SCH00480-2018', 'TCH00480-2018', 'teknisi', '2018/05/30', 'Aktivasi', 'lFTS7KUh', '2-233701424814', 'BANK OF TOKYO MITSUBISHI', 'MID Plaza 1  Jl. Jend.Sudirman Kav 10-11 DKI Jakarta', ' Evi Fitria ', 'first'),
(504, 'PRO00481-2018', 'SCH00481-2018', 'TCH00481-2018', 'teknisi', '2018/05/26', 'Aktivasi', '2-216971993463', 'GNLtiIZ4', 'AKT IDIA - Arthatel Cyber SMS', 'JL. Kuningan Barat LT 1 Setia Budi\r\nGedung Cyber 1', 'Akhsan Ibnu Fajar', 'first'),
(505, 'PRO00482-2018', 'SCH00482-2018', 'TCH00482-2018', 'teknisi', '2018/05/30', 'Survey', 'z65fORKT', '2-228824621581', 'PT. LOTTE DATA COMMUNICATION INDONESIA', '\"GREEN PRAMUKA JENDERAL AHMAD YANI\r\nNO. 49, CEMPAKA PUTIH, DAERAH KHUSUS\r\nIBUKOTA JAKARTA\"', 'Sri Hartati', 'first'),
(506, 'PRO00483-2018', 'SCH00483-2018', 'TCH00483-2018', 'teknisi', '2018/05/31', 'Aktivasi', '2-233700740870', 'KeJxb93M', 'PT SUMBER ALFARIA TRIJAYA', 'JL RAYA JATIASIH RT. 007 RW. 011\r\nKEL. JATIWARNA KEC. JATIASIH BEKASI', 'Sri Hartati', 'first'),
(507, 'PRO00484-2018', 'SCH00484-2018', 'TCH00484-2018', 'teknisi', '2018/05/31', 'Aktivasi', '2-223058203350', '9zsymnBa', 'SINGTEL FOR ROBREST BOSH', 'JLN. CILANDAK KKO, CILANDAK COMMERCIAL ESTATEBLDG ZIP, JAKARTA , INDONESIA 12520', 'Rahmat Hidayatullah', 'first'),
(508, 'PRO00485-2018', 'SCH00485-2018', 'TCH00485-2018', 'teknisi', '2018/05/31', 'Survey', '2-232015903925', 'wAU34pb5', 'BITSANDBYTES LOVINA', 'Jl. Seririt - Singaraja No.224, Kaliasem, Lovina, Buleleng Regency, Bali 81152', 'Aprianti Lestari ', 'first'),
(509, 'PRO00486-2018', 'SCH00486-2018', 'TCH00486-2018', 'teknisi', '2018/05/31', 'Aktivasi', '2-167999189408', '2-220023671322', 'LINKNET', 'jl. Gub H Bastari, 15 Ulu, Seberang Ulu I, Kota Palembang, Sumatera Selatan 30267', 'Hovidin ( Opi )', 'first'),
(510, 'PRO00487-2018', 'SCH00487-2018', 'TCH00487-2018', 'teknisi', '2018/05/31', 'Aktivasi', '2-222803554294', '2-233752065244', 'PT NU SKIN DISTRIBUTION INDONESIA,', ' PT NU SKIN DISTRIBUTION INDONESIA, Area Gd. City Plaza Jl. Jend Gatot Subroto No. 44 Kuningan Barat, Mampang Prapatan Jakarta Selatan', 'Hovidin ( Opi )', 'first'),
(511, 'PRO00488-2018', 'SCH00488-2018', 'TCH00488-2018', 'teknisi', '2018/04/26', 'DEAKTIVASI & DISMANTLE ', 'zKz51ihC', '2-172194115810', 'SOSIAL REPUBLIK INDONESIA', 'KEMENSOS BUILDING, COMMAND CENTER KEMENSOS, JL SALEMBA RAYA NO 28JAKARTA', 'Sri Hartati', 'first'),
(512, 'PRO00489-2018', 'SCH00489-2018', 'TCH00489-2018', 'teknisi', '2018/04/26', 'DEAKTIVASI & DISMANTLE ', 'HbAJgfc5', '2-172194495613', 'SOSIAL REPUBLIK INDONESIA', '\"KEMENSOS BUILDING, WISMA PENDAWA CILOTO, JL RAYA PUNCAK KM BD 88,8\r\nCILOTO CIPANANS-CIANJUR (0263)512637\"', 'Sri Hartati', 'first'),
(513, 'PRO00490-2018', 'SCH00490-2018', 'TCH00490-2018', 'teknisi', '2018/04/26', 'DEAKTIVASI & DISMANTLE ', '0rK0GRiK', '2-172194689255', 'SOSIAL REPUBLIK INDONESIA', '\"KEMENSOS BUILDING, BACKHAUL MPLS, KEMENTERIAN SOSIAL JL RAYA SALEMBA\r\nNO 28 JAKARTA PUSAT\"', 'Sri Hartati', 'first'),
(514, 'PRO00491-2018', 'SCH00491-2018', 'TCH00491-2018', 'teknisi', '2018/06/04', 'Aktivasi', 'OCsXSXOz', '2-220478661258', 'GE OPERATIONS INDONESIA', 'GE OPERATIONS INDONESIA JALAN RA KARTINI KAV 8, CILANDAK BARAT JAKARTA', 'Nur Aminah', 'first'),
(515, 'PRO00492-2018', 'SCH00492-2018', 'TCH00492-2018', 'teknisi', '2018/06/04', 'Aktivasi', 'zrcvumXt', '2-220478394431', 'GE OPERATIONS INDONESIA', 'GE OPERATIONS INDONESIA JALAN RA KARTINI KAV 8, CILANDAK BARAT JAKARTA', 'Nur Aminah', 'first'),
(516, 'PRO00493-2018', 'SCH00493-2018', 'TCH00493-2018', 'teknisi', '2018/06/04', 'Survey', 'mJnxVBml', '2-233593632345', 'BANGKOK BANK ', 'BANGKOK BANK BUILDING, JL. MH THAMRIN NO. 03 JAKARTA 10110', 'Evi Fitria', 'first'),
(517, 'PRO00494-2018', 'SCH00494-2018', 'TCH00494-2018', 'teknisi', '2018/06/04', 'Survey', '2-233842642033', 'Wln0WxoR', 'PT SUMBER ALFARIA TRIJAYA', 'JL. RAYA LINGKAR SELATAN CILEGON KEL.\r\nKEPUH KEC. CIWANDANG KOTA CILEGONG', 'Sri Hartati', 'first'),
(518, 'PRO00495-2018', 'SCH00495-2018', 'TCH00495-2018', 'teknisi', '2018/06/05', 'Survey', '2-227937552805', 'amJTfmTD', 'FEDERAL INTERNATIONAL FINANCE PT ', 'Menara FIF, PT FEDERAL LT.4', 'Rahmat Hidayatullah', 'first'),
(519, 'PRO00496-2018', 'SCH00496-2018', 'TCH00496-2018', 'teknisi', '2018/06/05', 'Aktivasi', 'TpAADrWp', '2-215946452602', 'FASTEL SARANA INDONESIA', 'Jl. Kuningan Barat\r\nIDC  Gedung cyber lantai 7, Jakarta 10110', 'Hovidin ( Opi )', 'first'),
(520, 'PRO00497-2018', 'SCH00497-2018', 'TCH00497-2018', 'teknisi', '2018/06/06', 'Dismantle', 'KLyWAuPe', '2-216028245975', 'PT. SYNTHETIC RUBBER INDONESIA', 'PT SYNTHETIC RUBBER INDONESIA, JALAN RAYA ANYER KM 123, CILEGON,BANTEN', 'Indah Mulyati ', 'first'),
(521, 'PRO00498-2018', 'SCH00498-2018', 'TCH00498-2018', 'teknisi', '2018/06/06', 'Aktivasi', '2-227980490230', 'HCCJbF3R', 'INDIKA ENERGY', 'SIGMA GERMAN CENTER', 'Rahmat Hidayatullah', 'first'),
(522, 'PRO00499-2018', 'SCH00499-2018', 'TCH00499-2018', 'teknisi', '2018/06/08', 'Aktivasi', '2-233558455318', 'AkvrXSfG', 'INDOSAT SINGAPORE PTE LTD', 'TAMAN TECHNO BSD', 'Rahmat Hidayatullah', 'first'),
(523, 'PRO00500-2018', 'SCH00500-2018', 'TCH00500-2018', 'teknisi', '2018/06/11', 'Dismantle', '2-220469789265', '2-227969499466', 'MARINA ANCOL GREEN HOTEL', 'JL.LODAN TIMUR NO 7, TAMAN IMPIAN JAYA ANCOL', 'Nur Aminah', 'first'),
(524, 'PRO00501-2018', 'SCH00501-2018', 'TCH00501-2018', 'teknisi', '2018/06/11', 'Aktivasi', '2-228824621581', 'E8pVZCmc', 'PT. LOTTE DATA COMMUNICATION INDONESIA', 'GREEN PRAMUKA JENDERAL AHMAD YANI NO. 49, CEMPAKA PUTIH,\r\nDAERAH KHUSUS IBUKOTA JAKARTA', 'Sri Hartati', 'first'),
(525, 'PRO00502-2018', 'SCH00502-2018', 'TCH00502-2018', 'teknisi', '2018/06/22', 'Aktivasi', '2-218834824789', '2-233692183002', 'PT. LAXO GLOBAL AKSES', 'GD. CYBER LT.8, DACEN INDONET JL. KUNINGAN BARAT NO. 8 JAKARTA PUSAT', 'Aprianti Lestari ', 'first'),
(526, 'PRO00503-2018', 'SCH00503-2018', 'TCH00503-2018', 'teknisi', '2018/06/06', 'Aktivasi', '2-233867123243', ' 2-233867123243', ' BUT. ENI MUARA BAKAU B.V.', 'ENI WISMA PONDOK INDAH 3 LT. 19, JL SULTAN ISKANDAR MUDA KAV V-TA JAKARTA 12310', 'Debby', 'first'),
(527, 'PRO00504-2018', 'SCH00504-2018', 'TCH00504-2018', 'teknisi', '2018/06/22', 'Aktivasi', '2-219960759662', '2-225617869944', 'PT. LAXO GLOBAL AKSES', 'PT LAXO GLOBAL AKSES GD. CYBER LT.8, DACEN INDONET JL. KUNINGAN BARAT NO. 8 JAKARTA PUSAT', 'Aprianti Lestari ', 'first'),
(528, 'PRO00505-2018', 'SCH00505-2018', 'TCH00505-2018', 'teknisi', '2018/06/22', 'Aktivasi', '2-219511518989', '2-220388295336', 'PT. LAXO GLOBAL AKSES', 'PT LAXO GLOBAL AKSES GD. CYBER LT.8, DACEN INDONET JL. KUNINGAN BARAT NO. 8 JAKARTA PUSAT', 'Aprianti Lestari ', 'first'),
(529, 'PRO00506-2018', 'SCH00506-2018', 'TCH00506-2018', 'teknisi', '2018/06/22', 'Dismantle', '8Lcspad0', '2-213363345571', 'GIVAUDAN INDONESIA', 'JALAN LINGKAR MEGA KUNINGAN, MENARA ANUGRAH LT. 7 KUNINGAN JAKARTA', 'Nur Aminah', 'first'),
(530, 'PRO00507-2018', 'SCH00507-2018', 'TCH00507-2018', 'teknisi', '2018/06/22', 'Aktivasi', '2-220102696416', '2-233886492480', 'SKYLINE SEMESTA', 'PT SKYLINE IDC DUREN 3 LANTAI 3 JL DUREN 3 PANCORAN JAKRTA', 'Aprianti Lestari ', 'first'),
(531, 'PRO00508-2018', 'SCH00508-2018', 'TCH00508-2018', 'teknisi', '2018/06/22', 'Aktivasi', '2-220164452267', '2-233566704284', 'SKYLINE SEMESTA', 'PT SKYLINE IDC DUREN 3 LANTAI 3 JL DUREN 3 PANCORAN JAKRTA', 'Aprianti Lestari ', 'first'),
(532, 'PRO00509-2018', 'SCH00509-2018', 'TCH00509-2018', 'teknisi', '2018/06/22', 'Aktivasi', 'IoytoCM4', '2-234221762874', 'BITSANDBYTES LOVINA', 'CYBER 1 LANTAI 7 JL. KUNINGAN BARAT NO. 8 JAKARTA', 'Aprianti Lestari ', 'first'),
(533, 'PRO00510-2018', 'SCH00510-2018', 'TCH00510-2018', 'teknisi', '2018/06/22', 'Aktivasi', '2-220164101376', '2-233560376862', 'SKYLINE SEMESTA', 'PT SKYLINE IDC DUREN 3 LANTAI 3 JL DUREN 3 PANCORAN JAKRTA', 'Aprianti Lestari', 'first'),
(534, 'PRO00511-2018', 'SCH00511-2018', 'TCH00511-2018', 'teknisi', '2018/06/22', 'Survey', '2-234202011163', 'RIJDQEk7', 'PT BANK QNB INDONESIA', 'BANK QNB FATMAWATI, GOLDEN PLAZA, JL FATMAWATI NO. BL A/12, GANDARIA SELATAN, JAKARTA 12420', 'Debby', 'first'),
(535, 'PRO00512-2018', 'SCH00512-2018', 'TCH00512-2018', 'teknisi', '2018/06/25', 'Dismantle', 'Fzd6GqLR', '2-223110818933', 'PT NUTRICIA INDONESIA SEJAHTERA', 'JL. LEBAK BULUS II NO. 6A JAKARTA SELATAN', 'Indah Mulyati ', 'first'),
(536, 'PRO00513-2018', 'SCH00513-2018', 'TCH00513-2018', 'teknisi', '2018/06/25', 'Survey', '2-184241140203', 'BcuLImNy', 'JOB PERTAMINA-JADESTONE ENERGY(OGAN KOMERING)LTD', 'Arkadia Office Tower F Lantai 4, Jl. Letjend Term. Simatupang No.kav 88, RT.1/RW.1, Jakarta 12520', 'Debby', 'first'),
(537, 'PRO00514-2018', 'SCH00514-2018', 'TCH00514-2018', 'teknisi', '2018/06/25', 'Survey', '2-233880262834', 'FzSGSgMh', 'ALFAMART ', 'JL LODAN RAYA NO.2A - 2B MIDET KEL ANCOL, KEC PADEMANGAN JAK - UT', 'Indah Mulyati ', 'first'),
(538, 'PRO00515-2018', 'SCH00515-2018', 'TCH00515-2018', 'teknisi', '2018/06/25', 'Survey', '2-233880263288', '9lXyENzD', 'ALFAMART ', 'JL. GONDANGDIA KEL. MENTENG, KEC. MENTENG JAKARTA PUSAT', 'Indah Mulyati ', 'first'),
(539, 'PRO00516-2018', 'SCH00516-2018', 'TCH00516-2018', 'teknisi', '2018/06/25', 'Survey', '2-233880375742', 'zZddcpVD', 'ALFAMART ', 'JL. PANJANG KEDOYA ( APARTEMEN KEDOYA ELOK ) KEL. KEDOYA SELATAN, KEC. KEBON JERUK JAKARTA BARAT', 'Indah Mulyati ', 'first'),
(540, 'PRO00517-2018', 'SCH00517-2018', 'TCH00517-2018', 'teknisi', '2018/06/25', 'Survey', '2-233880376196', '7DR6cyNz', 'ALFAMART ', 'JL. IR. H. JUANDA, NO. 1 (STASIUN JUANDA) KEL. KEBON KELAPA, KEC. GAMBIR JAKARTA PUSAT', 'Indah Mulyati ', 'first'),
(541, 'PRO00518-2018', 'SCH00518-2018', 'TCH00518-2018', 'teknisi', '2018/06/25', 'Survey', '2-233880377650', 'F2X0yiNZ', 'ALFAMART ', 'JL. SRIKAYA, NO. 17 KEL. KEBON SIRIH, KEC. MENTENG JAKARTA PUSAT KEL.KEBON SIRIH', 'Indah Mulyati ', 'first'),
(542, 'PRO00519-2018', 'SCH00519-2018', 'TCH00519-2018', 'teknisi', '2018/06/25', 'Survey', '2-216217993158', 'OOPRr49p', 'PT IBM INDONESIA', 'DC BNI SUDIRMAN LANTAI 5 JL. JENDRAL\r\nSUDRIMAN KAV. 1 JAKARTA', 'Sri Hartati', 'first'),
(543, 'PRO00520-2018', 'SCH00520-2018', 'TCH00520-2018', 'teknisi', '2018/06/26', 'Survey', '2-222939036127', 'Vm5XUsEx', 'TELEKOMUNIKASI INDONESIA TBK', 'TVRI JL. GERBANG PEMUDA, TANAH\r\nABANG JAKARTA', 'Sri Hartati', 'first'),
(544, 'PRO00521-2018', 'SCH00521-2018', 'TCH00521-2018', 'teknisi', '2018/06/26', 'Dismantle', 'OqtW0LTn', '2-220185000466', 'ERICSSON INDONESIA', 'WISMA PONDOK INDAH 1 LT. 3, JL. SULTAN ISKANDAR MUDA V-TA PONDOK\r\nINDAH, JAKARTA 12310', ' Indah Mulyati', 'first'),
(545, 'PRO00522-2018', 'SCH00522-2018', 'TCH00522-2018', 'teknisi', '2018/06/26', 'Survey', '2-234175380832', 'x59CcKXH', 'AT&T MASTRERCARD CIMB NIAGA ', 'Gedung Griya CIMB Niaga l, Jalan Wahid Hasyim Block B4, No 3, Bintaro Jaya Sektor 7 Pusat Kawasan Niaga / CBD, Tangerang 15224', 'Hovidin ( Opi )', 'first'),
(546, 'PRO00523-2018', 'SCH00523-2018', 'TCH00523-2018', 'teknisi', '2018/06/28', 'Aktivasi', '2-233877478663', 'AV6MvpUo', 'PT. WAN SOLUTIONS', 'TECHNOPARK KOMPLEK PERGUDANGAN TAMAN TEKNO BLOK D NO.8,\r\nBSD, SETU, KOTA TANGERANG SELATAN, BANTEN', 'Sri Hartati', 'first'),
(547, 'PRO00524-2018', 'SCH00524-2018', 'TCH00524-2018', 'teknisi', '2018/06/28', 'Survey', '2-234348616375', 'BvwUegBc', 'BANK MANDIRI (PERSERO) TBK', 'JKT AM BAMBU LARANGAN (S1ADA18I) / JL BAMBU LARANGAN CENGKARENG JAKARTA BARAT', ' Evi Fitria ', 'first'),
(548, 'PRO00525-2018', 'SCH00525-2018', 'TCH00525-2018', 'teknisi', '2018/06/29', 'Survey', '2-234304206436', 'bweTkCkA', 'MANDIRI GRIYA ARTHA MAKMUR', 'OCBS NISP JL GUNUNG SAHARI 7 NO.36 GUNUNG SAHARI - JAKARTA PUSAT', 'Nur Aminah', 'first'),
(549, 'PRO00526-2018', 'SCH00526-2018', 'TCH00526-2018', 'teknisi', '2018/06/29', 'Dismantle', 'dbPkPTJy', '2-216826384164', 'BEJANA KASIH KARUNIA', 'GEDUNG PUSINTEL AD, JL. MATRAMAN RAYA NO. 38 JAKARTA', 'Indah Mulyati ', 'first'),
(550, 'PRO00527-2018', 'SCH00527-2018', 'TCH00527-2018', 'teknisi', '2018/06/29', 'Dismantle', 'QUOv0fBX', '2-187193276819', 'GRAHA LAYAR PRIMA MALL OF INDONESIA', 'MALL OF INDONESIA, Jln. Boulevard Barat No.1 Kelapa Gading JAKARTA', 'Indah Mulyati ', 'first'),
(551, 'PRO00528-2018', 'SCH00528-2018', 'TCH00528-2018', 'teknisi', '2018/06/29', 'Dismantle', '9uP6EHKv', '2-179097687225', 'EUROKARS MOTOR INDONESIA', '\"Porsche Center Jakarta Jl. Sultan Iskandar Muda No. 51 RT. 002 RW. 003\r\nKEBAYORAN LAMA, JAKARTA SELATAN\"', 'Indah Mulyati ', 'first'),
(552, 'PRO00529-2018', 'SCH00529-2018', 'TCH00529-2018', 'teknisi', '2018/06/29', 'Aktivasi', 'K57wbDwX', '2-234011588522', 'PT. MEDIA REKAYASA LINTAS', '\"CYBER 1 LANTAI 2 RACK NO.2A1208 JL. KUNINGAN BARAT NO.8,\r\nRT.1/RW.3, KUNINGAN BARAT, MAMPANG PRAPATAN JAKARTA\"', 'Sri Hartati', 'first'),
(553, 'PRO00530-2018', 'SCH00530-2018', 'TCH00530-2018', 'teknisi', '2018/07/02', 'Survey', '2-227983330135', 'AyXe4lzc', 'PT FTN Mangkuluhur City', 'Jalan Jendral Gatot Subroto Kav. 1-3,\r\nKaret Semanggi, Setiabudi, RT.1/RW.4\r\nJakarta', 'Rahmat Hidayatullah', 'first'),
(554, 'PRO00531-2018', 'SCH00531-2018', 'TCH00531-2018', 'teknisi', '2018/07/02', 'Survey', '2-234353483376', 'UZVr1zvH', 'BT MARS INCORPORATED-NEW', 'MARS INCORPORATED-NEW_PONDOK\r\nINDAH', 'Rahmat Hidayatullah', 'first'),
(555, 'PRO00532-2018', 'SCH00532-2018', 'TCH00532-2018', 'teknisi', '2018/07/02', 'Survey', '2-234290413062', 'Q0yCC9pT', 'BERDIKARI PRIMA MANDIRI', 'GEDUNG CYBER LANTAI 1 APJII JL. KUNINGAN BARAT NO. 8 JAKARTA', 'Nur Aminah', 'first'),
(556, 'PRO00533-2018', 'SCH00533-2018', 'TCH00533-2018', 'teknisi', '2018/07/03', 'Aktivasi', 't9Tk3r5t', '2-23400962355', 'PT INTERSHOP PRIMA CENTER (ZULFIKAR)', 'WTC Mangga Dua', ' Indah Mulyati', 'first'),
(557, 'PRO00534-2018', 'SCH00534-2018', 'TCH00534-2018', 'teknisi', '2018/07/04', 'Survey', '2-232854565893', '6hu69ILL', 'PT UNGARAN SARI GARMEN', '\"Ungaran Sari Garment\r\nAXA Tower\r\n Jl. Prof. Doktor Satria Kav. 18 Setiabudi Jakarta Selatan \"', 'Abel Mohammad', 'first'),
(558, 'PRO00535-2018', 'SCH00535-2018', 'TCH00535-2018', 'teknisi', '2018/07/04', 'Survey', '2-234208590349', 'mwx17AJv', 'JAWA POS MULTIMEDIA', 'GEDUNG GRAHA PENA JAKARTA JALAN RAYA KEBAYORAN LAMA NO. 12 JAKARTA BARAT 10110', 'Debby', 'first'),
(559, 'PRO00536-2018', 'SCH00536-2018', 'TCH00536-2018', 'teknisi', '2018/07/05', 'Survey', '2-227739132517', 'qTpK9Ufe', 'PT. PRIMAVISTA SOLUSI', 'GEDUNG IT BRI RAGUNAN JL. RM. HARSONO NO. 2 JAKARTA 12230', 'Evi Fitria', 'first'),
(560, 'PRO00537-2018', 'SCH00537-2018', 'TCH00537-2018', 'teknisi', '2018/07/04', 'Survey', '2-233860381854', 'TsT2qPCk', 'BT for PANALPINA ASIA PACIFIC', 'International Financial Centre 22th\r\nFloor', 'Rahmat Hidayatullah', 'first'),
(561, 'PRO00538-2018', 'SCH00538-2018', 'TCH00538-2018', 'teknisi', '2018/07/05', 'Survey', '2-234483399273', 'GbTHZTK0', 'PT BANK HSBC INDONESIA', 'Gedung CIBIS Nine Lt 8 CIBIS Business Park Jln. TB Simatupang RT 13/RW 5 Jakarta 12560 - WTC 1 Jl. Jend Sudirman kav 29 Jakarta 12920', 'Evi Fitria', 'first'),
(562, 'PRO00539-2018', 'SCH00539-2018', 'TCH00539-2018', 'teknisi', '2018/07/05', 'Survey', '2-234496214394', 'N7UdvwNO', 'PRIMACOM INTERBUANA', 'Bank BNI (HQ), Wisma BNI 46 Lt 5 Jl. Jend Sudirman Kav 1, Jakarta 10220', 'Evi Fitria', 'first'),
(563, 'PRO00540-2018', 'SCH00540-2018', 'TCH00540-2018', 'teknisi', '2018/07/06', 'Survey', '2-233702343635', '5hCLJSgl', 'BT FOR CATHAY PACIFIC', 'BEJ TOWER 1 LT.18', 'Rahmat Hidayatullah', 'first'),
(564, 'PRO00541-2018', 'SCH00541-2018', 'TCH00541-2018', 'teknisi', '2018/07/06', 'Survey', '2-234479647941', '5ThmyiTc', 'BANK RAKYAT INDONESIA TBK.PT ', 'BNI Sudirman, Kantor Besar BNI lantai 5, Jl. Jendral Sudirman Kav. 1, Jakarta', 'Evi Fitria', 'first'),
(565, 'PRO00542-2018', 'SCH00542-2018', 'TCH00542-2018', 'teknisi', '2018/07/06', 'Aktivasi', '2-233866604425', 'HvKy06Ly', 'POC ISPL POP SEA', 'CYBER CDC LT.2', 'Rahmat Hidayatullah', 'first'),
(566, 'PRO00543-2018', 'SCH00543-2018', 'TCH00543-2018', 'teknisi', '2018/07/06', 'Survey', '2-233910166411', 'oFApVmKh', 'PT. UNILEVER INDONESIA TBK', '\"UNILEVER INDONESIA WEST JAVA ZARA\r\nCIKARANG, JL.JABABEKA V BLOK U NO. 14-\r\n16, CIKARANG, BEKASI\"', 'Sri Hartati', 'first'),
(567, 'PRO00544-2018', 'SCH00544-2018', 'TCH00544-2018', 'teknisi', '2018/07/06', 'Survey', '2-233909907302', 'eT9Fx3a1', 'PT. UNILEVER INDONESIA TBK (UNILEVER WISMA ALDIRON', 'UNILEVER WISMA ALDIRON DIRGANTARA\r\nJL. GATOT SUBROTO KAV. 72. PANCORAN\r\nJAKARTA', 'Sri Hartati', 'first'),
(568, 'PRO00545-2018', 'SCH00545-2018', 'TCH00545-2018', 'teknisi', '2018/07/06', 'Dismantle', '2-216028245975', '6s3iU8of', 'PT SYNTHETIC RUBBER INDONESIA', 'Cilegon', 'Indah Mulyati', 'first'),
(569, 'PRO00546-2018', 'SCH00546-2018', 'TCH00546-2018', 'teknisi', '2018/07/09', 'Aktivasi', '2-234375180360', '3PUxM2qh', 'KPSG SUNLIFE', 'KPSG Menara Sunlife Jalan Dr Ide Anak Agung Gde Agung Blok 6.3, Kawasan Mega Kuningan, RT.5/RW.2', 'Rahmat Hidayatullah', 'first'),
(570, 'PRO00547-2018', 'SCH00547-2018', 'TCH00547-2018', 'teknisi', '2018/07/09', 'Aktivasi', '2-220421542014', 'fhzBeTPV', 'PROGRAM KERJASAMA INDONESIA AUSTRALIA UNTUK PEREKO', 'KEMENTERIAN KOORDINATOR PEREKONOMIAN, GEDUNG ALI WARDHANI LT.6 (RUANG STAFF AHLI) JL. LAPANGAN BANTENG TIMUR NO.2 JAKARTA', 'Evi Fitria', 'first'),
(571, 'PRO00548-2018', 'SCH00548-2018', 'TCH00548-2018', 'teknisi', '2018/07/09', 'Survey', '533/SR/DQM/2018', 'pnSMzZZJ', 'PT. EVONIK/DEGUSA INDONESIA', 'PT EVONIK Jl. Cempaka Jatimulya Km. 38, Tambun', 'Wahyu Hawibowo', 'first'),
(572, 'PRO00549-2018', 'SCH00549-2018', 'TCH00549-2018', 'teknisi', '2018/07/09', 'Survey', '2-234356601631', 'hDtvKbhR', 'PT BANK DBS INDONESIA PLAZA MANDIRI', 'PLAZA MANDIRI LT 4 JL JEND GATOT SUBROTO KAV 36 - 38 JAKARTA', 'Evi Fitria', 'first'),
(573, 'PRO00550-2018', 'SCH00550-2018', 'TCH00550-2018', 'teknisi', '2018/07/10', 'Aktivasi', '2-234347604578', 'eqnzG07I', 'PT. NEC INDONESIA', 'NEC INDONESIA SUMMITMAS 1 JEND SUDIRMAN KAV 61-62 JAKARTA', 'Sri Hartati', 'first'),
(574, 'PRO00551-2018', 'SCH00551-2018', 'TCH00551-2018', 'teknisi', '2018/07/10', 'Aktivasi', '2-233763768135', 'CHG8QCil', 'PT.MEISSA BERKAH TEKNOLOGI', 'GEDUNG CYBER LT.1 JL.KUNINGAN BARAT NO. 8 MAMPANG', 'Sri Hartati', 'first'),
(575, 'PRO00552-2018', 'SCH00552-2018', 'TCH00552-2018', 'teknisi', '2018/07/10', 'Aktivasi', '2-213467610469', 'eBNJfm2D', 'US Embassy', 'CDC OFFICE, JL. PERCETAKAN NEGARA NO.29 JAKARTA PUSAT, DKI JAKARTA, INDONESIA, 10560', 'Sri Hartati', 'first'),
(576, 'PRO00553-2018', 'SCH00553-2018', 'TCH00553-2018', 'teknisi', '2018/07/10', 'Survey', '2-232901243671', 'MCyfup8T', 'LIMA MENARA BINTANG', 'PT LIMA MENARA BINTANG, POLDA METRO JAYA, JL. JENDERAL SUDIRMAN SENAYAN KAV 55, JAKARTA 12190', 'Debby', 'first'),
(577, 'PRO00554-2018', 'SCH00554-2018', 'TCH00554-2018', 'teknisi', '2018/07/10', 'Survey', '2-233617544754', 'TOZITDlH', 'PT BANK HSBC INDONESIA ', 'TALAVERA OFFICE PARK LT. 2, JL. LETJEN TB SIMATUPANG NO. 26, JAKARTA', 'Evi Fitria', 'first'),
(578, 'PRO00555-2018', 'SCH00555-2018', 'TCH00555-2018', 'teknisi', '2018/07/10', 'Survey', ' 2-234578627663', '0RkoTOTb', 'Indosat Mega Media for Surfer Girl', 'Ruko Prominence Blok 38 F No. 43 Alam Sutera Cipondoh Tangerang, Banten', 'Akhsan Ibnu Fajar', 'first'),
(579, 'PRO00556-2018', 'SCH00556-2018', 'TCH00556-2018', 'teknisi', '2018/07/10', 'Aktivasi', '2-234227489264', 'EyWAad4l', 'AT&T for Kohler RDTX', 'RDTX Tower, RT.5/RW.2, Jl. Kuningan Barat Raya, Kuningan, East Kuningan, Setiabudi, South Jakarta City, Jakarta 12710', 'Angga Aditya Permana', 'first'),
(580, 'PRO00557-2018', 'SCH00557-2018', 'TCH00557-2018', 'teknisi', '2018/07/10', 'Aktivasi', '2-149541411320', 'eIJqpk4P', '\"Primacom Bank JTRUST AEON MALL  CAKUNG\"', 'Jl. Raya Bekasi KM. 22 RT. 001/ 001 Kel. Cakung Barat, Kec. Cakung, Jakarta Timur', 'Ady Kurniawan', 'first'),
(581, 'PRO00558-2018', 'SCH00558-2018', 'TCH00558-2018', 'teknisi', '2018/07/11', 'Aktivasi', '[Site Access Request 20180711-[1]-[01JKP', '98tTWBoy', 'Permata Bank', 'PERMATA BANK TOWER - JL.SUDIRMAN KAV.27 JAKARTA', 'Muhammad Indra Kurniawan', 'first'),
(582, 'PRO00559-2018', 'SCH00559-2018', 'TCH00559-2018', 'teknisi', '2018/07/11', 'Aktivasi', '2-172080956565', 'abasSLhF', 'PT. BANK CIMB NIAGA TBK GEDUNG GRIYA CIMB NIAGA', 'Gedung Griya CIMB Niaga l, Rack 9AC Network Room 5th Floor JL.Wahid Hasyim Block B4, No 3, Bintaro Jaya Sektor 7 Tangerang 15224', 'Evi Fitria', 'first'),
(583, 'PRO00560-2018', 'SCH00560-2018', 'TCH00560-2018', 'teknisi', '2018/07/12', 'Aktivasi', '2-234611320485', 'xEdr0qwQ', 'BERDIKARI PRIMA MANDIRI', 'GEDUNG CYBER LANTAI 1 APJII JL. KUNINGAN BARAT NO. 8 JAKARTA', 'Rosma Labaikka', 'first'),
(584, 'PRO00561-2018', 'SCH00561-2018', 'TCH00561-2018', 'teknisi', '2018/07/11', 'Aktivasi', '2-233941014315', 'fuivcJaN', 'PT ATI BUSINESS GROUP ', 'IDC Duren Tiga Summer 228', 'Akhsan Ibnu Fajar', 'first'),
(585, 'PRO00562-2018', 'SCH00562-2018', 'TCH00562-2018', 'teknisi', '2018/07/12', 'Survey', '2-220472667986', 'hBhJSpyv', 'PT. BANK UOB INDONESIA KCP CENTRAL PARK', 'KCP Central Park, Central Park Mall, 3rd Floor, Shop Unit No. L3 â€“ 203 A, Jl. Let. Jend. S. Parman Kav. 28, Kel. Tanjung Duren, Kec. Grogol Petamburan, Jakarta Barat 11230', 'Evi Fitria', 'first'),
(586, 'PRO00563-2018', 'SCH00563-2018', 'TCH00563-2018', 'teknisi', '2018/07/12', 'Survey', '2-234601995025', 'DioRPyW4', 'BANK CENTRAL ASIA EPICENTRUM WALK (EPC)', 'EPICENTRUM WALK 2ND FLOOR, UNIT W NO. 336A & 338A JL. HR. RASUNA SAID KAV. C 17 JAKARTA SELATAN 12940', 'Evi Fitria', 'first'),
(587, 'PRO00564-2018', 'SCH00564-2018', 'TCH00564-2018', 'teknisi', '2018/07/12', 'Survey', '2-234602901478', 'ahrmp30L', 'BANK CENTRAL ASIA PASAR KEBAYORAN LAMA (PSK)', 'WISMA 46, PASAR KEBAYORAN LAMA, JL. KEBAYORAN LAMA 174 JAKARTA', 'Evi Fitria', 'first'),
(588, 'PRO00565-2018', 'SCH00565-2018', 'TCH00565-2018', 'teknisi', '2018/07/12', 'Survey', '2-234603026863', 'Rilim3Tf', 'BANK CENTRAL ASIA BATU CEPER (BCP)', 'BATU CEPER, JL. BATU CEPER RAYA 18 A-B, JAKARTA', 'Evi Fitria', 'first'),
(589, 'PRO00566-2018', 'SCH00566-2018', 'TCH00566-2018', 'teknisi', '2018/07/12', 'Survey', '2-234603274312', 'K77BIqBF', '\"BANK CENTRAL ASIA          PASAR TANAH ABANG (PTB', 'KCP BCA WAHID HASYIM TANAH ABANG, JL. KH FACHRUDIN 36 BLOK D/23, JAKARTA', 'Evi Fitria', 'first'),
(590, 'PRO00567-2018', 'SCH00567-2018', 'TCH00567-2018', 'teknisi', '2018/07/12', 'Survey', '2-234607946287', 'T07QJ61Z', 'BANK CENTRAL ASIA TANGERANG (TGR)', 'KCU BCA TANGERANG JL. KISAMAUN NO. 57 TANGERANG', 'Evi Fitria', 'first'),
(591, 'PRO00568-2018', 'SCH00568-2018', 'TCH00568-2018', 'teknisi', '2018/07/12', 'Survey', '2-234608291588', 'fCuDwcrW', 'BANK CENTRAL ASIA PERUM CIBODAS (CIB)', 'PERUM CIBODAS, RUKO DUTAMAS PLAZA BLOK A/23 TANGERANG', 'Evi Fitria', 'first'),
(592, 'PRO00569-2018', 'SCH00569-2018', 'TCH00569-2018', 'teknisi', '2018/07/12', 'Survey', '2-234603589603', 'SDaeJb1E', 'BANK CENTRAL ASIA 	 TANAH ABANG BLOK A (TNA)', 'TANAH ABANG BLOK A, JL. KH FAHRUDIN LOST D1 - G NO. 63 / B1/ F80 - 81, JAKARTA', 'Evi Fitria', 'first'),
(593, 'PRO00570-2018', 'SCH00570-2018', 'TCH00570-2018', 'teknisi', '2018/07/12', 'Aktivasi', '2-234011630956', 'HLwGtn0Q', 'PT. Aneka Tambang', 'UBPN POMALAA JLN JEND AHMAD YANI No. 5 POMALAA KOLAKA SULAWESI', 'Rahmat Hidayatullah', 'first'),
(594, 'PRO00571-2018', 'SCH00571-2018', 'TCH00571-2018', 'teknisi', '2018/07/15', 'TROUBLE SHOOT', '2-234696932289', '3XGI66Ux', 'pengecekan modem di lokasi pelanggan PUTRI YURIS P', 'APARTEMEN GADING MEDITERANIA RESIDENCES GADING BOULEVARD BARAT RAYA CB/25/AD', 'Indosat Ooredoo Corporate Helpdesk', 'first'),
(595, 'PRO00572-2018', 'SCH00572-2018', 'TCH00572-2018', 'teknisi', '2018/07/16', 'Aktivasi', '520/SR/DQM/2018', 'kFGSP4Pw', 'PT. KOMATSU INDONESIA ', '\"CIKARANG INDUSTRIAL ESTATE, JALAN JABABEKA XI BLOK H\r\n16, HARJA MEKAR, CIKARANG UTARA, BEKASI, JAWA BARAT\r\n17530\"', 'Wahyu Hawibowo', 'first'),
(596, 'PRO00573-2018', 'SCH00573-2018', 'TCH00573-2018', 'teknisi', '2018/07/16', 'Aktivasi', '2-233915028236', 'pKhQTr9t', 'TELEMEDIA DINAMIKA SARANA', 'GAS NET APL TOWER LT 39 TJ. DUREN SEL GROGOL PETAMBURAN, JAKBAR', 'Rosma Labaikka', 'first'),
(597, 'PRO00574-2018', 'SCH00574-2018', 'TCH00574-2018', 'teknisi', '2018/07/16', 'Dismantle', '2-233952904623', 'kfDLBl3D', 'PT TIRTA INVESTAMA', 'DEPO RAWA DOMBA, JL. RAWA DOMBA RAYA NO. 62, DUREN SAWIT JAKARTA TIMUR 13440', ' Indah Mulyati', 'first'),
(598, 'PRO00575-2018', 'SCH00575-2018', 'TCH00575-2018', 'teknisi', '2018/07/16', 'Dismantle', '2-233760721872', 'veq8QHhr', 'PT TIRTA INVESTAMA', 'DEPO CIPUTAT, JL. CIPUTAT RAYA NO. 9 PONDOK PINANG, JAKARTA SELATAN 12310', 'Indah Mulyati', 'first'),
(599, 'PRO00576-2018', 'SCH00576-2018', 'TCH00576-2018', 'teknisi', '2018/07/17', 'Aktivasi', '2-234313039647', 'FTrEPDJA', 'INTI SAMUDERA', 'JL RO Ulin Komp. Pondok Kopi B1 Banjarbaru', 'Aprianti Lestari', 'first'),
(600, 'PRO00577-2018', 'SCH00577-2018', 'TCH00577-2018', 'teknisi', '2018/07/18', 'Survey', '2-234781620778', 'oCnSiMwS', 'BANK CENTRAL ASIA PERUM CIBODAS (CIB)', 'PERUM CIBODAS, RUKO DUTAMAS PLAZA BLOK A/23 TANGERANG', 'Evi Fitria', 'first'),
(601, 'PRO00578-2018', 'SCH00578-2018', 'TCH00578-2018', 'teknisi', '2018/07/12', 'Aktivasi', '2-220490901423', 'KFTfZQnS', 'DIREKTORAT JENDERAL SUMBER DAYA DAN PERANGKAT POS ', 'Wisma Mandiri, Jl. Kebon Sirih no 83', 'Fauzan Arfah', 'first'),
(602, 'PRO00579-2018', 'SCH00579-2018', 'TCH00579-2018', 'teknisi', '2018/07/18', 'Test link', '2-233949191164 ', '4urvGiuf', 'SCHNEIDER BATAM', 'Batam', 'Angga Aditya Permana', 'first'),
(603, 'PRO00580-2018', 'SCH00580-2018', 'TCH00580-2018', 'teknisi', '2018/07/18', 'Aktivasi', '2-189891572430', '4xf1IRXn', 'SOSIAL REPUBLIK INDONESIA', '\"PSBG CIUNGWANARA, Jl. SKB NO 3 KARADENAN CIBINONG BOGOR JAWA\r\n\r\nBARAT\"', 'Sri Hartati', 'first'),
(604, 'PRO00581-2018', 'SCH00581-2018', 'TCH00581-2018', 'teknisi', '2018/07/11', 'Survey', '2-220477933615', '1PiCvPOt', 'Bank UOB Pluit', 'Jl. Pluit Kencana Raya No. 76 Jakarta 10240', 'Evi Fitria', 'first'),
(605, 'PRO00582-2018', 'SCH00582-2018', 'TCH00582-2018', 'teknisi', '2018/07/11', 'Survey', '2-220477996880', 'vmmVrZdn', 'Bank UOB Mangga Dua', 'Pusat Grosir Pasar Pagi Mangga Dua Lt. III, Blok BC 011,012,012 A & 014, Jl. Mangga Dua Raya Jakarta 10230', 'Evi Fitria', 'first'),
(606, 'PRO00583-2018', 'SCH00583-2018', 'TCH00583-2018', 'teknisi', '2018/07/11', 'Survey', '2-220478166839', 'evgpZVJ1', 'Bank UOB Jembatan Dua', 'Jl. Jembatan Dua No. 139 A Jakarta 10240', 'Evi Fitria', 'first'),
(607, 'PRO00584-2018', 'SCH00584-2018', 'TCH00584-2018', 'teknisi', '2018/07/11', 'Survey', '2-220472668277', '6fTuVy1y', 'Bank UOB Mangga Besar', 'Jl. Mangga Besar No. 68 â€“ 68 A JAKARTA 10720', 'Evi Fitria', 'first'),
(608, 'PRO00585-2018', 'SCH00585-2018', 'TCH00585-2018', 'teknisi', '2018/07/11', 'Survey', '2-220472465621', 'ciDW9T4k', 'Bank UOB PIK', 'Rukan Exclusive Blok A No.27, Jl. Marina Raya, Kel. Kamal Muara, Kec. Penjaringan Jakarta 14230', 'Evi Fitria', 'first'),
(609, 'PRO00586-2018', 'SCH00586-2018', 'TCH00586-2018', 'teknisi', '2018/07/19', 'Aktivasi', '2-189968110530', 'eXb2C93D', 'SOSIAL REPUBLIK INDONESIA', 'PANTI MELATI, Jl. GEBANGSARI NO 38 BAMBU APUS CIPAYUNG JAKARTA TIMUR', 'Sri Hartati', 'first'),
(610, 'PRO00587-2018', 'SCH00587-2018', 'TCH00587-2018', 'teknisi', '2018/07/20', 'Survey', '2-233924784123', 'wvf9IhUl', 'HSBC SEKURITAS INDONESIA', 'Gedung German Center JL. KAPT . SUBIJANTO BSD CITY, TANGGERANG 15321', 'Debby', 'first'),
(611, 'PRO00588-2018', 'SCH00588-2018', 'TCH00588-2018', 'teknisi', '2018/07/20', 'Survey', '2-233924990532', 'SLlyOmzx', 'HSBC SEKURITAS INDONESIA', 'Gedung German Center JL. KAPT . SUBIJANTO BSD CITY, TANGGERANG 15321', 'Debby', 'first'),
(612, 'PRO00589-2018', 'SCH00589-2018', 'TCH00589-2018', 'teknisi', '2018/07/20', 'Aktivasi', '2-234281773623', '2-234804104703', 'PT. ZURICH TOPAS LIFE', 'Mayapada Tower Ii Lt 5, Jl.Jend.Sudirman Kav.27, Jakarta 12920', 'Debby', 'first'),
(613, 'PRO00590-2018', 'SCH00590-2018', 'TCH00590-2018', 'teknisi', '2018/07/20', 'Survey', '2-234755618200', 'TTKv6pKo', 'PRIMACOM INTERBUANA BANK SHINHAN JAKARTA', '\"Bank Shinhan Indonesia (DC)\r\nCYBER CSF Lt. 2, \r\nJl. Kuningan Barat No.8 Jakarta Selatan \r\nreloc indoor, geser ke depan\"', 'Evi Fitria', 'first'),
(614, 'PRO00591-2018', 'SCH00591-2018', 'TCH00591-2018', 'teknisi', '2018/07/23', 'Aktivasi', 'OFlTfBmq', '2-233866853133', 'BT FOR SCHRODRES INVESTMENT', 'BEJ Building', 'Rahmat Hidayatullah', 'first'),
(615, 'PRO00592-2018', 'SCH00592-2018', 'TCH00592-2018', 'teknisi', '2018/07/23', 'Survey', '2-234749513263', 'AuTTt9SI', 'Bank Muamalat Kebayoran Baru', 'JL. PANGLIMA POLIM RAYA N0.36B  KEB_BARU JAKARTA 1', 'Evi Fitria', 'first'),
(616, 'PRO00593-2018', 'SCH00593-2018', 'TCH00593-2018', 'teknisi', '2018/07/23', 'Aktivasi', '2-234528037392', 'QZOErf1X', 'PT. MELVAR LINTASNUSA', 'GEDUNG CYBER 1 LT 7, IDC JL KUNINGAN BARAT', 'Akhsan Ibnu Fajar', 'first'),
(617, 'PRO00594-2018', 'SCH00594-2018', 'TCH00594-2018', 'teknisi', '2018/07/23', 'Aktivasi', '2-234773412379', 'bcLuLWKH', 'MANDIRI GRIYA ARTHA MAKMUR (OCBC)', 'OCBS NISP JL GUNUNG SAHARI 7 NO.36 GUNUNG SAHARI - JAKARTA PUSAT', 'Rosma Labaikka', 'first'),
(618, 'PRO00595-2018', 'SCH00595-2018', 'TCH00595-2018', 'teknisi', '2018/07/23', 'Relokasi', '2-234823085543', 'bpgTVCnO', 'PT. Jafra Cosmetics', 'Gedung Menara Duta, Ground Floor (Lobby), Jl. H.R. Rasuna Said Kav. B-9, Jakarta 12910, INDONESIA', 'Angga Aditya Permana', 'first');
INSERT INTO `tbl_project_wo` (`id_project`, `kode_project`, `kode_jadwal`, `kode_teknisi`, `level`, `tgl_project`, `project_title`, `wo_id`, `so_id`, `customer`, `lokasi`, `pic`, `status`) VALUES
(619, 'PRO00596-2018', 'SCH00596-2018', 'TCH00596-2018', 'teknisi', '2018/07/23', 'Aktivasi', '2-234793852891', 'WdFeepZb', 'PT. BINA MEDIA TENGGARA ', 'PT. BINA MEDIA TENGGARA JL. PALMERAH BARAT NO. 142-143 JAKARTA', 'Rosma Labaikka', 'first'),
(620, 'PRO00597-2018', 'SCH00597-2018', 'TCH00597-2018', 'teknisi', '2018/07/24', 'Survey', '2-234581517343', '4olLRXv7', 'BANK MANDIRI (PERSERO) TBK PONDOK AREN ', 'Jl. Ceger Raya - Pondok Aren RT.008/02 Kel. Jurang Mangu Kec. Pondok Aren, Tangerang Selatan', 'Evi Fitria', 'first'),
(621, 'PRO00598-2018', 'SCH00598-2018', 'TCH00598-2018', 'teknisi', '2018/07/24', 'Aktivasi', '2-234729780757', '5pveThTO', 'PT BANK HSBC INDONESIA ', 'TALAVERA OFFICE PARK LT.2, JL. LETJEN TB SIMATUPANG NO. 26, JAKARTA', 'Trimah Astuti', 'first'),
(622, 'PRO00599-2018', 'SCH00599-2018', 'TCH00599-2018', 'teknisi', '2018/07/24', 'Dismantle', '2-234001346505', 'wHG8o7x8', 'JO.PT.REKAYASA INDUSTRI-PT.WORLEY PARSONS INDONESI', 'MENARA BATAVIA LT. 12A,  JL. K.H. MAS MANSYUR KAV. 126 JAKARTA 10220', 'Rosma Labaikka', 'first'),
(623, 'PRO00600-2018', 'SCH00600-2018', 'TCH00600-2018', 'teknisi', '2018/07/25', 'Survey', '2-234675928880', 'NdB37gqT', 'PT JAVA UNITED SERVICE (JABABEKA 1)', 'JABABEKA I RUKO KOMERSIAL BLOK B\r\nNO.5 JL. JABABEKA RAYA , JABABEKA I\r\nCIKARANG BEKASI', 'Sri Hartati', 'first'),
(624, 'PRO00601-2018', 'SCH00601-2018', 'TCH00601-2018', 'teknisi', '2018/07/25', 'Survey', '2-234898724714', 'LG6WwMAB', ' TELE GLOBE GLOBAL, PT ', 'Gedung Cyber Kuningan Barat, Rack X APJII lantai 1 JAKARTA 12710', 'Trimah Astuti (Rima)', 'first'),
(625, 'PRO00602-2018', 'SCH00602-2018', 'TCH00602-2018', 'teknisi', '2018/07/26', 'Survey', '2-234925462278', '340eIhck', 'US EMBASSY', 'SHANGRILLA HOTEL JAKARTA, BNI, KOTA, JL.\r\nJEND. SUDIRMAN NO.KAV 1, RT.10/RW.9\r\nJAKARTA', 'Sri Hartati', 'first'),
(626, 'PRO00603-2018', 'SCH00603-2018', 'TCH00603-2018', 'teknisi', '2018/07/25', 'Aktivasi', '2-229965903722', 'ClXIRg5D', 'LIMA MENARA BINTANG', 'PT LIMA MENARA BINTANG, POLDA METRO JAYA, JL. JENDERAL SUDIRMAN SENAYAN KAV 55, JAKARTA 12190', 'Trimah Astuti (Rima)', 'first'),
(627, 'PRO00604-2018', 'SCH00604-2018', 'TCH00604-2018', 'teknisi', '2018/07/27', 'Survey', '2-234781881483', 'v5TpXWvd', 'PT Regus Business Centre Indonesia', 'Tempo Scan Tower Lt. 32,\r\nJl. HR. Rasuna Said Kav. 3-4, Jakarta, 12950', 'Agung Pribadi Yahya', 'first'),
(628, 'PRO00605-2018', 'SCH00605-2018', 'TCH00605-2018', 'teknisi', '2018/07/27', 'Survey', '2-234947563579', 'JQSF3o9a', 'PT BANK DBS INDONESIA IPHONE CIPUTRA WORLD', 'DBS Tower Ciputra World, Jl. Prof. Dr. Satrio Kav 3-5, Jakarta', 'Evi Fitria', 'first'),
(629, 'PRO00606-2018', 'SCH00606-2018', 'TCH00606-2018', 'teknisi', '2018/07/27', 'Survey', '2-234925379011', 'gTyn4dmT', 'PT.PUTRA AGUNG LESTARI', 'TOKO PLANET SPORT S DJAKARTA THEATRE\r\nJL MH THAMRIN NO 1RT 1/RW 5 JAKARTA', 'Sri Hartati', 'first'),
(630, 'PRO00607-2018', 'SCH00607-2018', 'TCH00607-2018', 'teknisi', '2018/07/27', 'Survey', '2-31198691684', 'm5rgOy0d', 'BAKRIE STRATEGIC SOLUTION', 'Gd Cyber 1 Jl Kuningan Barat Lt 7', 'Rosma Labaikka A', 'first'),
(631, 'PRO00608-2018', 'SCH00608-2018', 'TCH00608-2018', 'teknisi', '2018/07/27', 'Survey', '2-234880180033', '3ACJlDGV', 'NOVARTIS INDONESIA, PT', 'Gd AXA Tower Kuningan City Jl. Prof Dr. Satrio Kav. 18 Kuningan - Setia Budi', 'Rosma Labaikka A', 'first'),
(632, 'PRO00609-2018', 'SCH00609-2018', 'TCH00609-2018', 'teknisi', '2018/07/30', 'Survey', '2-234956330638', 'AaNe7Llq', 'ISPL FOR JKT-SNG INTERCONNECTION EQUINIX 80 M ', 'ISPL FOR JKT-SNG INTERCONNECTION EQUINIX 80 M ', 'Rahmat Hidayatullah', 'first'),
(633, 'PRO00610-2018', 'SCH00610-2018', 'TCH00610-2018', 'teknisi', '2018/07/31', 'Survey', '2-234954841230', 'sUxpWXZd', 'PT. INDOSAT TBK - DBS TOWER', 'DBS Tower Lt 34, Ciputra World Jakarta, Jl. Prof. Dr. Satrio Kav 3-5, Jakarta 12940', 'Evi Fitria', 'first'),
(634, 'PRO00611-2018', 'SCH00611-2018', 'TCH00611-2018', 'teknisi', '2018/07/31', 'Survey', '2-234946994240', 'qlXH05H0', 'ARTAJASA PEMBAYARAN ELEKTRONIS PT ', 'Gedung Lintasarta Lt.2 (DC) Jl. TB. Simatupang Kav.10 Jakarta Selatan 12430', 'Evi Fitria', 'first'),
(635, 'PRO00612-2018', 'SCH00612-2018', 'TCH00612-2018', 'teknisi', '2018/08/01', 'Aktivasi', '2-234968535630', 'p9n8SrZl', 'MAP AKTIF ADIPERKASA', 'TOKO PLANET SPORT S DJAKARTA THEATRE JL MH THAMRIN NO 1RT\r\n1/RW 5 JAKARTA', 'Sri Hartati', 'first'),
(636, 'PRO00613-2018', 'SCH00613-2018', 'TCH00613-2018', 'teknisi', '2018/08/01', 'Survey', '2-234931719123', 'JvMUIUnm', 'PT PRIMA WAHANA CARAK', '\"WTC 3 JL JEND SUDIRMAN KAV 29-31 LT 34\r\nJAKARTA\"', 'Sri Hartati', 'first'),
(637, 'PRO00614-2018', 'SCH00614-2018', 'TCH00614-2018', 'teknisi', '2018/08/02', 'Aktivasi', 'sRmdFdw2', '2-235108917408', 'BENDAHARA PENGELUARAN DITJEN. ADMINISTRASI HUKUM U', 'CDC LT. 2, GEDUNG CYBER JL. KUNINGAN BARAT NO.8, MAMPANG\r\nJAKARTA', 'Sri Hartati', 'first'),
(638, 'PRO00615-2018', 'SCH00615-2018', 'TCH00615-2018', 'teknisi', '2018/08/02', 'Aktivasi', '2-178733699779', 'MdPIoc0z', ' CITIBANK NA', 'RACK CITIBANK DCI CIBITUNG Jl. IRIAN 1 BLOK GG 5-1, KAWASAN INDUSTRI MM2100, CIKARANG BARAT 17520', 'Evi Fitria', 'first'),
(639, 'PRO00616-2018', 'SCH00616-2018', 'TCH00616-2018', 'teknisi', '2018/08/06', 'Aktivasi', 'IiAUuzdr', '2-220377486034', 'REACH NETWORK SERVICES INDONESIA PT', 'Jl TB Simatupang kav.10 Jakarta Selatan', 'Akhsan Ibnu Fajar', 'first'),
(640, 'PRO00617-2018', 'SCH00617-2018', 'TCH00617-2018', 'teknisi', '2018/08/06', 'Aktivasi', 'goyqN0J6', '2-235063310551', 'PT. BANK UOB INDONESIA', 'JL MH THAMRIN NO 10KEBON MELATI, TANAH ABANGJAKARTA PUSAT,\r\nDKI JAKARTA, 10230', 'Annisya Fahmi', 'first'),
(641, 'PRO00618-2018', 'SCH00618-2018', 'TCH00618-2018', 'teknisi', '2018/08/06', 'Survey', '2-235085471459', 'ITZqHrtH', 'PT ARARA ABADI', '\"SINAR MAS FORESTRY, GEDUNG DIMO JL.\r\nTIMOR NO.6, RT.9/RW.4, GONDANGDIA\r\nMENTENG, KOTA JAKARTA PUSAT\"', 'Sri Hartati', 'first'),
(642, 'PRO00619-2018', 'SCH00619-2018', 'TCH00619-2018', 'teknisi', '2018/08/06', 'Aktivasi', '2-235066743350', '2-235187337581', 'BANK MANDIRI (PERSERO) TBK LINK H2H SHOPEE', 'Cyber 1 - Bank Mandiri Rack Shopee Gedung Cyber 1 Mampang,Kuningan Barat No.8 Lantai 2 Jakarta 12950', 'Evi Fitria', 'first'),
(643, 'PRO00620-2018', 'SCH00620-2018', 'TCH00620-2018', 'teknisi', '2018/08/07', 'Aktivasi', '2-233583784233', 'VOxE1rzB', 'PT. APLIKANUSA LINTASARTA', 'INDOSAT ANCOL, JL. PARANG TRITIS RAYA JAKARTA UTARA', 'Sri Hartati', 'first'),
(644, 'PRO00621-2018', 'SCH00621-2018', 'TCH00621-2018', 'teknisi', '2018/08/10', 'Aktivasi', '2-234499693161', '6CDohqHy', 'DETH_CIRCLECOM NUSANTARA INDONESIA', 'Jl. Kuningan Barat Raya No.8, RT.1/RW.3', 'Akhsan Ibnu Fajar', 'first'),
(645, 'PRO00622-2018', 'SCH00622-2018', 'TCH00622-2018', 'teknisi', '2018/08/06', 'Survey', '2-235108169802', 'NsMzBkQo', 'KAMADJAJA LOGISTIK - CIMANGGIS', 'PT kamadjaya Logistics1 Cibuntu, Cibitung, Bekasi,  17520', 'Rosma Labaikka A', 'first'),
(646, 'PRO00623-2018', 'SCH00623-2018', 'TCH00623-2018', 'teknisi', '2018/08/10', 'Aktivasi', '2-234023906849', '3W0x0rnQ', 'PT IBM INDONESIA', 'IT BUILDING BRI JALAN RM HARSONO NO. 2 RT. 6 / RW. 7 RAGUNAN,\r\nPASAR MINGGU', 'Sri Hartati', 'first'),
(647, 'PRO00624-2018', 'SCH00624-2018', 'TCH00624-2018', 'teknisi', '2018/08/10', 'Aktivasi', 'gmxHkScq', '2-235108968625', 'BANK MANDIRI (PERSERO) TBK LINK H2H SHOPEE', 'Jl. Ceger Raya - Pondok Aren RT.008/02 Kel. Jurang Mangu Kec. Pondok Aren, Tangerang Selatan', 'Evi Fitria', 'first'),
(648, 'PRO00625-2018', 'SCH00625-2018', 'TCH00625-2018', 'teknisi', '2018/08/14', 'Survey', '2-235130919433', 'cA6JdQqJ', ' BPBD DKI JAKARTA', 'GEDUNG BALAIKOTA BLOK G LT 3 DATA CENTRE DINAS KOMINFO JL MEDAN MERDEKA SELATAN NO 8-9', 'Rosma Labaikka A', 'first'),
(649, 'PRO00626-2018', 'SCH00626-2018', 'TCH00626-2018', 'teknisi', '2018/08/10', 'Survey', '2-234436766683', 'Txw2vmwy', 'MNC KABEL MEDIACOM', 'PLAZA MNC GF DATA CENTER MKM JL. KEBON SIRIH NO. 17-19 10340', 'Trimah Astuti (Rima)', 'first'),
(650, 'PRO00627-2018', 'SCH00627-2018', 'TCH00627-2018', 'teknisi', '2018/08/14', 'Survey', '2-235755026883', 'yXGKTd7x', 'SINAR WIJAYA PLYWOOD INDUSTRIES', 'Wisma Nusantara 15thfloor Jl MH Thamrin No 59,', 'Rosma Labaikka A', 'first'),
(651, 'PRO00628-2018', 'SCH00628-2018', 'TCH00628-2018', 'teknisi', '2018/08/13', 'Aktivasi', 'olwe0a1X', '2-235822342290', 'HSBC SEKURITAS INDONESIA', 'Gedung German Center JL. KAPT . SUBIJANTO BSD CITY, TANGGERANG SERPONG 15321 Indonesia', 'Trimah Astuti (Rima)', 'first'),
(652, 'PRO00629-2018', 'SCH00629-2018', 'TCH00629-2018', 'teknisi', '2018/08/14', 'Survey', '2-235831384641', 'MU1yfUcz', 'PT ASTRA INTERNATIONAL TBK (AHM HEAD OFFICE)', '\"HEAD OFFICE AHM, JL. YOS SUDARSO, JAKARTA\r\nUTARA\"', 'Sri Hartati', 'first'),
(653, 'PRO00630-2018', 'SCH00630-2018', 'TCH00630-2018', 'teknisi', '2018/08/13', 'Aktivasi', '2-235822294809', 'kNIAZcEl', 'HSBC SEKURITAS INDONESIA', 'Gedung German Center JL. KAPT . SUBIJANTO BSD CITY, TANGGERANG SERPONG 15321 Indonesia', 'Trimah Astuti (Rima)', 'first'),
(654, 'PRO00631-2018', 'SCH00631-2018', 'TCH00631-2018', 'teknisi', '2018/08/15', 'Aktivasi', '2-121728442670', 'mzTEyRlU', 'PT. PRIMAVISTA SOLUSI', 'DC Danamon BSD, DC Danamon BSD Sektor 6 Blok Komersial 201 Tangerang 15229 - DC Techno Park, Komp Pergudangan Taman Tekno Blok D No. 8, BSD City, Serpong, Tangerang Selatan 15314', 'Evi Fitria', 'first'),
(655, 'PRO00632-2018', 'SCH00632-2018', 'TCH00632-2018', 'teknisi', '2018/08/14', 'Survey', '2-235852548203', 'QoUP6Psa', 'PT MULTI ADIPRAKARSA MANUNGGAL (KARTUKU CIMB NIAGA', '\"GED. GRIYA CIMB NIAGA LT. 1 JL. WAHID\r\nHASYIM BLOK B4 NO. 3 SEKTOR 7\r\nTANGERANG\"', 'Sri Hartati', 'first'),
(656, 'PRO00633-2018', 'SCH00633-2018', 'TCH00633-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-93161117385', '9VHVUSTH', 'PT TANGARA MITRACOM', 'GEDUNG CYBER RUANG IDC LANTAI 7, JL. KUNINGAN BARAT NO 8, JAKARTA 12710', 'Rahman Ihsan', 'first'),
(657, 'PRO00634-2018', 'SCH00634-2018', 'TCH00634-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-86299429362', 'ThhnOsDG', 'PT NTT INDONESIA', 'NEW ZEALAND EMBASSY, DEPT OF FOREIGN AFFAIRS AND TRADING, SENTRAL SENAYAN 2, JL. ASIA AFRIKA NO. 8, JAKARTA 10270', 'Rahman Ihsan', 'first'),
(658, 'PRO00635-2018', 'SCH00635-2018', 'TCH00635-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-103331421152', 'QLEqSVie', 'BT COMMUNICATIONS INDONESIA', 'ANZ PANIN BANK (DRC), ANZ SQUARE (THAMRIN NINE) LT. 26, JL. M.H. THAMRIN KAV. 10 JAKARTA', 'Rahman Ihsan', 'first'),
(659, 'PRO00636-2018', 'SCH00636-2018', 'TCH00636-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-126717572932', 'JC8DmHKn', 'PT NTT INDONESIA', 'SUCACO BUILDING 2ND FLOOR, JL. KEBON SIRIH RAYA NO.71, KEBON SIRIH,JAKARTA PUSAT PO BOX 4872', 'Rahman Ihsan', 'first'),
(660, 'PRO00637-2018', 'SCH00637-2018', 'TCH00637-2018', 'teknisi', '2018/08/16', 'Aktivasi', '2-235825283093', 'M2eRLHFb', 'PRIMACOM INTERBUANA', '\"Bank Shinhan Indonesia (DC)\r\nCYBER CSF Lt. 2, \r\nJl. Kuningan Barat No.8 Jakarta Selatan \r\nreloc indoor, geser ke depan\"', 'Evi Fitria', 'first'),
(661, 'PRO00638-2018', 'SCH00638-2018', 'TCH00638-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-138615321400', 'xZg9JMHw', 'PT. AT&T  GLOBAL NETWORK SERVICES INDONESIA', 'BANK EKONOMI, GERMAN CENTRE BUILDING 6TH FLOOR CO-LOCATION SIGMA, JL. KAPTEN SUBIANTO DJ BSD, TANGERANG SELATAN 15321', 'Rahman Ihsan', 'first'),
(662, 'PRO00639-2018', 'SCH00639-2018', 'TCH00639-2018', 'teknisi', '2018/08/14', 'Survey', '2-235755148836', 'VVcqFMwR', 'BHLN.DCNS', 'Sentral Senayan 2 Sentral Senayan 2 lantai 7 ', 'Rosma Labaikka A', 'first'),
(663, 'PRO00640-2018', 'SCH00640-2018', 'TCH00640-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-148536206169', 'RLNOlQrx', 'BT COMMUNICATIONS INDONESIA', 'BTCI ASTRAZENECA, JABABEKA PHASE III BLOK B 1A-1B CIKARANG 17834', 'Rahman Ihsan', 'first'),
(664, 'PRO00641-2018', 'SCH00641-2018', 'TCH00641-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-97181924155', 'bR1Mt6ww', 'BANK BTPN', 'KANTOR BTPN JOHAR KARAWANG, JL. RUKO GRAND PLAZA BLOK IV NO. 11-12, JL. RAYA GALUH MAS, KEC. TALUK JAMBE TIMUR, KARAWANG 41361', 'Rahman Ihsan', 'first'),
(665, 'PRO00642-2018', 'SCH00642-2018', 'TCH00642-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-124529374482', 'UKgFziIl', 'BANK BTPN', 'KANTOR BTPN RENGASDENGKLOK, JL. RAYA RENGASDENGKLOK NO. 8, KEL. RENGASDENGKLOK SELATAN, KEC. RENGASDENGKLOK, KARAWANG 41352', 'Rahman Ihsan', 'first'),
(666, 'PRO00643-2018', 'SCH00643-2018', 'TCH00643-2018', 'teknisi', '2018/08/16', 'Aktivasi', 'XorsdF8B', '2-235855526543', 'PT BANK DBS INDONESIA', 'DBS BANK CIPUTRA WORLD LT. 34, JL. PROF DR SATRIO KAV. 3-5, JAKARTA', 'Evi Fitria', 'first'),
(667, 'PRO00644-2018', 'SCH00644-2018', 'TCH00644-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-216799434440', '9JcJ2ErT', 'BANK BTPN', 'KANTOR BTPN PDGEDE Jl. Raya Jati Waringin No.200 A RT.03/RW.02 Kel. Jatiwaringin Kec. Pondok Gede, Bekasi', 'Rahman Ihsan', 'first'),
(668, 'PRO00645-2018', 'SCH00645-2018', 'TCH00645-2018', 'teknisi', '2018/08/15', 'Dismantle', '2-129559887100', 'eKtuc4Rf', 'SINERGI SEJAHTERA ABADI', 'Pusat Grosir Metro Cipulir Jln. Cileduk Raya, Kelurahan Cipulir Kecamatan Kebayoran Lama', 'Rahman Ihsan', 'first'),
(669, 'PRO00646-2018', 'SCH00646-2018', 'TCH00646-2018', 'teknisi', '2018/08/23', 'Aktivasi', '2-236021592664', 'Cimk5mv9', 'PT. MAYAPADA CLINIC PRATAMA', 'Ruko Garden Shopping Arcade Beaufort 8 No. AB AB Jl Tanjung Duren Raya Kav 5-9 lt.3', 'Rosma Labaikka A', 'first'),
(670, 'PRO00647-2018', 'SCH00647-2018', 'TCH00647-2018', 'teknisi', '2018/08/23', 'Survey', '2-234503417621', '928O3tTB', 'PT MAXINDO NETWORK', 'CYBER 1, RAK10, MMR IDC CYBER, LANTAI 7, JL. KUNINGAN BARAT RAYA NO.8 JAKARTA 12710', 'Evi Fitria', 'first'),
(671, 'PRO00648-2018', 'SCH00648-2018', 'TCH00648-2018', 'teknisi', '2018/08/23', 'Survey', '2-235876969073', 'T5hFDRTh', 'PT. ASTRA SEDAYA FINANCE', 'KANTOR ACC CIKARANG, RUKO ROBINSON BLOK B NO. 1 DAN 2 CIKARANG SELATAN, BEKASI', 'Evi Fitria', 'first'),
(672, 'PRO00649-2018', 'SCH00649-2018', 'TCH00649-2018', 'teknisi', '2018/08/25', 'Survey', '2-235636651233', 'QTUMOlAo', 'CEMERLANG ABADI MULIA', 'Jln. KH Ashim Asyahri No. 69, Roxy Kota Jakarta Pusat, DKI Jakarta', 'Aprianti Lestari ', 'first'),
(673, 'PRO00650-2018', 'SCH00650-2018', 'TCH00650-2018', 'teknisi', '2018/08/24', 'Relokasi', 'XHg32UE5', '2-236066482773', 'PT. INDOSAT TBK', 'DBS BANK CIPUTRA WORLD LT. 34, JL. PROF DR SATRIO KAV. 3-5, JAKARTA', 'Evi Fitria', 'first'),
(674, 'PRO00651-2018', 'SCH00651-2018', 'TCH00651-2018', 'teknisi', '2018/08/27', 'Survey', '2-235995677071', 'uL61s55Z', 'PRIMACOM INTERBUANA', 'GD. SIGMA, GERMAN CENTER, BSD TANGERANG', 'Trimah Astuti', 'first'),
(1001, 'PRO00978-2018', 'SCH00978-2018', 'TCH00978-2018', 'teknisi', '2018/09/15', 'SURVEY & MLD', '2-236611242585', 'GpkWJAT6', 'PT ASTRA INTERNATIONAL TBK', 'ASTRA TSO PDC SCY [T005], JL. GAYA MOTOR\r\n\r\nBARAT NO. 8 JAKARTA (1)\r\nNODE MPLS (PE) INDOSAT (2)', 'Sri Hartati', 'first'),
(676, 'PRO00653-2018', 'SCH00653-2018', 'TCH00653-2018', 'teknisi', '2018/08/28', 'Aktivasi', '2-234781234470', 'NmrG8C1w', 'PT Regus Business Centre Indonesia', '(Allianz Tower) H Tower Lt. 18, Jl. HR Rasuna Said, Jakarta, 12940', 'Muhammad Zulfahmi Yahya', 'first'),
(677, 'PRO00654-2018', 'SCH00654-2018', 'TCH00654-2018', 'teknisi', '2018/08/29', 'Aktivasi', '2-235845988187', '2-236205339793', 'NOVARTIS INDONESIA, PT', 'Gd AXA Tower Kuningan City Jl. Prof Dr. Satrio Kav. 18 Kuningan - Setia Budi', 'Rosma Labaikka A', 'first'),
(678, 'PRO00655-2018', 'SCH00655-2018', 'TCH00655-2018', 'teknisi', '2018/08/29', 'Aktivasi', '2-236064831504', 'kxryzCGU', 'PT Solusi Media Semesta', 'IDC Lt.7  -> SMS', 'Rahmat Hidayatullah', 'first'),
(1000, 'PRO00977-2018', 'SCH00977-2018', 'TCH00977-2018', 'teknisi', '2018/09/14', 'Aktivasi', 'mJLlw9M2', '2-236612720594', 'PT PRUDENTIAL LIFE ASSURANCE', 'Prudential Tower Jl Jendral Sudirman Kav \r\n\r\n79 JAKARTA Indonesia (1)\r\nNODE IDIA KPPTI JL MEDAN MERDEKA BARAT NO 21 JAKARTA 10110 (2)', 'Trimah Astuti ', 'first'),
(682, 'PRO00659-2018', 'SCH00659-2018', 'TCH00659-2018', 'teknisi', '2018/08/30', 'Aktivasi', '2-234781234408', 'rgkCxzmB', 'PT Regus Business Centre Indonesia', 'The Vida Lt. 7, Jl. Raya Pejuangan No. 8, Kebon Jeruk, Jakarta, 11530', 'Muhammad Zulfahmi Yahya', 'first'),
(683, 'PRO00660-2018', 'SCH00660-2018', 'TCH00660-2018', 'teknisi', '2018/08/31', 'Aktivasi', 'dtNWOu64', '2-236231393358', 'PRIMACOM INTERBUANA BANK BNI', 'Bank BNI (HQ), Wisma BNI 46 Lt 5 Jl. Jend Sudirman Kav 1, Jakarta 10220', 'Evi Fitria', 'first'),
(684, 'PRO00661-2018', 'SCH00661-2018', 'TCH00661-2018', 'teknisi', '2018/08/15', 'Survey', '2-234377946670', 'oUd7TUWw', ' HYPERNET INDODATA', 'Graha Kirana  Kelurahan Sunter Jaya, Tanjung Priok Kelurahan Sunter Jaya, Tanjung Priok 14350 Jakarta', 'NA', 'first'),
(685, 'PRO00662-2018', 'SCH00662-2018', 'TCH00662-2018', 'teknisi', '2018/08/29', 'Dismantle', 'XUud9lbW', '2-126867349562', 'PT. SUMBER ALFARIA TRIJAYA', 'MALABAR[MBAR] T276, JL. KARET RAYA NO. 2 KEC. CIBODAS KOTA TANGERANG', 'agnes eka lestia', 'first'),
(686, 'PRO00663-2018', 'SCH00663-2018', 'TCH00663-2018', 'teknisi', '2018/08/29', 'Dismantle', 'c0BKHaIa', '2-126918213293', 'PT. SUMBER ALFARIA TRIJAYA', 'SERANG KM. 15/F[SK15] T141, JL.RAYA SERANG KM.15 DS.CIKUPA KEC.CIKUPA KAB.TANGERANG', 'agnes eka lestia', 'first'),
(687, 'PRO00664-2018', 'SCH00664-2018', 'TCH00664-2018', 'teknisi', '2018/08/03', 'Survey', '2-235107821321', '6FGuu05i', 'KAMADJAJA LOGISTIK - CIMANGGIS ', ' KAMADJAJA LOGISTIK - CIMANGGIS', 'Rosma Labaikka A. ', 'first'),
(688, 'PRO00665-2018', 'SCH00665-2018', 'TCH00665-2018', 'teknisi', '2018/08/07', 'Aktivasi', 'gubynPtN', '2-235197665449', ' PT BANK HSBC INDONESIA ', 'CIBIS Business Park Jln. TB Simatupang RT 13/RW 5 Gedung CIBIS Nine Lt 8 JAKARTA Indonesia 12560', 'Trimah Astuti (Rima)', 'first'),
(689, 'PRO00666-2018', 'SCH00666-2018', 'TCH00666-2018', 'teknisi', '2018/08/16', 'DEAKTIVASI SERVICE & DISMANTLE', 'RKmLCthn', '2-149448490182', 'PRICEWATERHOUSECOOPERS INDONESIA ADVISORY', '\"PLAZA 89 12M FLOOR, JL. HR. RASUNA\r\nSAID KAV. X-7 NO. 6, JAKARTA 12940\"', 'Agung Pribadi Yahya', 'first'),
(690, 'PRO00667-2018', 'SCH00667-2018', 'TCH00667-2018', 'teknisi', '2018/07/25', 'Pengetesan Link Schneider', '2-229831856247', 'KmxePrCl', 'Pengetesan Link Schneider', 'Pengetesan Link Schneider', 'Angga AP', 'first'),
(995, 'PRO00972-2018', 'SCH00972-2018', 'TCH00972-2018', 'teknisi', '2018/09/07', 'Dismantle', 'ZIpzSWlL', '2-234878679648', 'PT BANK DBS INDONESIA', 'JL.BOULEVARD BARAT RAYA BLOK XB NO. 12 (1)\r\nNODE MPLS ISAT (2)', 'Trimah Astuti ', 'first'),
(994, 'PRO00971-2018', 'SCH00971-2018', 'TCH00971-2018', 'teknisi', '2018/09/06', 'Dismantle', '2-235040013039', 'JyZFkLHy', 'BANK MANDIRI (PERSERO) TBK', 'GEDUNG WISMA MANDIRI II LT. 7, JL. KEBON SIRIH NO. 83 JAKARTA 10340 (1)\r\nKPPTI NODE IDIA (2)', 'Trimah Astuti ', 'first'),
(991, 'PRO00968-2018', 'SCH00968-2018', 'TCH00968-2018', 'teknisi', '2018/09/05', 'Dismantle', 'a41JzASy', '2-233950082473', 'BANK CENTRAL ASIA', 'KCP BCA SURYOPRANOTO ITC ROXY MAS II, ITC ROXY MAS LT. 4 BLOK E NO. 26-38, JL. KH HASYIM ASHARI NO. 125, JAKARTA (1)\r\nNODE MPLS (PE) INDOSAT (2)', 'Trimah Astuti ', 'first'),
(990, 'PRO00967-2018', 'SCH00967-2018', 'TCH00967-2018', 'teknisi', '2018/09/05', 'Dismantle', 'IDv9Uhrg', '2-234483327572', 'PRIMAVISTA UNTUK BII', 'BII THAMRIN, PLAZA BII TOWER I LT. 6, JL. MH. THAMRIN NO. 51, JAKARTA (1)\r\nKPPTI LT. 1 RUANG IDC (2)', 'Trimah Astuti ', 'first'),
(697, 'PRO00674-2018', 'SCH00674-2018', 'TCH00674-2018', 'teknisi', '2018/09/04', 'Aktivasi', '2-234780781116', '4S0dor4f', 'PT Regus Grand Indonesia(Menara BCA Lt. 50)', '\"Menara BCA Lt. 50\r\n\r\n50/F, Menara BCA Grand Indonesia, Lt.57 JI.MH.\r\nThamrin No.1, Jakarta, 10310\"', 'Agung Pribadi Yahya', 'first'),
(989, 'PRO00966-2018', 'SCH00966-2018', 'TCH00966-2018', 'teknisi', '2018/09/04', 'Dismantle', 'DQfn8xMW', '2-233739723998', 'BANK MANDIRI (PERSERO) TBK', 'DRC BANK MANDIRI, CSM CIKARANG, JL. RAYA CIBARUSAH NO. 1 KM. 32, DESA PASIR KONCI KECAMATAN LEMAH ABANG CIKARANG BARAT BEKASI 17550 (1)\r\nKPPTI NODE IM2 (2)', 'Trimah Astuti ', 'first'),
(988, 'PRO00965-2018', 'SCH00965-2018', 'TCH00965-2018', 'teknisi', '2018/09/04', 'Survey', 'QNuLx6Sd', '2-236342094887', 'PT. PRIMAVISTA SOLUSI CYBER', 'Gd. DATA CENTER CYBER CSF FLOOR 2 (1)\r\nKOMPLEK PERGUDANGAN TAMAN TEKNO BLOK D NO. 8, BSD CITY, TANGERANG SELATAN (2)', 'Evi Fitria', 'first'),
(987, 'PRO00964-2018', 'SCH00964-2018', 'TCH00964-2018', 'teknisi', '2018/09/04', 'Survey', '2k33Dwt1', '2-234451236828', 'PT. NAP INFO LINTAS NUSA (BAYER BUSINESS SERVICE)', 'BAYER BUSINESS SERVICE, JL. RAYA BOGOR KM.32, RT.3/RW.7, PEKAYON, PASARREBO, KOTA DEPOK, JAWA BARAT 13710 (1)\r\nPLAZA KUNINGAN, ANNEX, GROUND FLOOR JL. HR RASUNA SAID KAV.C 11- C14, JAKARTA 12940 (2)', 'Adya Pramesthi', 'first'),
(986, 'PRO00963-2018', 'SCH00963-2018', 'TCH00963-2018', 'teknisi', '2018/09/04', 'Dismantle', 'oi8zf5A3', '2-138615321400', 'SWIFT BANK EKONOMI (AT&T GLOBAL NETWORK SERVICES I', 'BANK EKONOMI, GERMAN CENTRE BUILDING 6TH FLOOR CO-LOCATION SIGMA, JL. KAPTEN SUBIANTO DJ BSD, TANGERANG SELATAN\r\n15321 (1)\r\nKPPTI NODE AT&T (2)', 'Indah Wahyu Ningrum', 'first'),
(985, 'PRO00962-2018', 'SCH00962-2018', 'TCH00962-2018', 'teknisi', '2018/09/04', 'Survey', '2-236339832232', 'a0sr3JiR', 'BANK MANDIRI (PERSERO) TBK', 'DCI CIBITUNG - LANTAI 2 RACK INFINITUM (H2H MANDIRI) JL HALMAHERA CIKARANG BARAT BEKASI 17530 (1)\r\nNODE MPLS (PE) INDOSAT (2)', 'Evi Fitria', 'first'),
(998, 'PRO00975-2018', 'SCH00975-2018', 'TCH00975-2018', 'teknisi', '2018/09/13', 'Aktivasi', '2-236568916870', 'FEFdKpdp', 'DEUTSCHE BANK TELKOM SIGMA SENTUL', 'Telkom Sigma Sentul (1)\r\nArcadia Building (2)', 'Evi Fitria', 'first'),
(984, 'PRO00961-2018', 'SCH00961-2018', 'TCH00961-2018', 'teknisi', '2018/09/04', 'Dismantle', '8MISNImg', '2-148536206169', 'ASTRA ZENECA (BT GLOBAL SERVICES)', 'BTCI ASTRAZENECA, JABABEKA PHASE III BLOK B 1A-1B CIKARANG 17834 (1)\r\nKPPTI NODE BT (2)', 'Indah Wahyu Ningrum', 'first'),
(707, 'PRO00684-2018', 'SCH00684-2018', 'TCH00684-2018', 'teknisi', '2018/09/07', 'Survey', '2-236230818576', 'UyAOwplQ', 'PT NETTOCYBER INDONESIA', 'PT. NETTOCYBER INDONESIA The Manhatan Square Mid Tower 2nd Floor Jl. Tb Simatupang No.1s Jakarta 12430', 'Trimah Astuti', 'first'),
(999, 'PRO00976-2018', 'SCH00976-2018', 'TCH00976-2018', 'teknisi', '2018/09/14', 'Survey', '2-236405520902', 'SeXzLgy2', 'SOLUSI AKSESINDO PRATAMA', 'UNION GROUP SENAYAN NATIONAL GOLF CLUB JALAN ASIA AFRIKA PINTU IX, JAKARTA SELATAN (1)\r\nNODE IDIA INDOSAT (2)', 'Sri Hartati', 'first'),
(982, 'PRO00959-2018', 'SCH00959-2018', 'TCH00959-2018', 'teknisi', '2018/08/29', 'Aktivasi', 'f7R7OdN4', '2-235821670084', 'PUSTAKA BOGOR', 'PUSTAKA BOGOR, JL. IR HJ JUANDA NO 20, BOGOR 16122 (1)\r\nPOP NARASOMA, JL GAGALUR 1, BOGOR, UTARA 16153 (2)', 'Adya Pramesthi', 'first'),
(996, 'PRO00973-2018', 'SCH00973-2018', 'TCH00973-2018', 'teknisi', '2018/05/09', 'Dismantle', '1VlTTLsF', '2-220065585503', 'PT. HEINZ ABC INDONESIA', 'Jalan Jendral Sudirman KAV 32, INTILAND TOWER lantaii 3A', 'Nur Aminah', 'first'),
(981, 'PRO00958-2018', 'SCH00958-2018', 'TCH00958-2018', 'teknisi', '2018/08/29', 'Dismantle', '2-179097687225', '2fIhUocd', 'EUROKARS MOTOR INDONESIA', 'Porsche Center Jakarta Jl. Sultan Iskandar Muda No. 51 RT. 002 RW. 003 KEBAYORAN LAMA, JAKARTA SELATAN (1)\r\nITCC - Balairung DRC JATILUHUR PURWAKARTA (2)', 'Indah Mulyati', 'first'),
(997, 'PRO00974-2018', 'SCH00974-2018', 'TCH00974-2018', 'teknisi', '2018/09/10', 'Survey', '2-234977283355', 'My5mqiIL', 'PT NTT INDONESIA', 'PANIN DAI-ICHI LIFE CENTER, 7TH FLOOR, JL. LETJEND S. PARMAN KAV. 91, JAKARTA BARAT, JAKARTA 11420 (1)\r\nCYBER CSF, JL KUNINGAN BARAT NO 8, JAKARTA 12710 (2)', 'Adya Pramesthi', 'first'),
(978, 'PRO00955-2018', 'SCH00955-2018', 'TCH00955-2018', 'teknisi', '2018/09/03', 'Dismantle', 'RxOQAJ3p', '2-234031291988', 'BANK RAKYAT INDONESIA TBK.PT', 'TERAS PARABAKTI Kp. Cimayang, RT 04/02 Cimayang. Kec. Cimayang Bogor 16810 (1)\r\nNODE INDOSAT KPPTI 10110 (2)', 'Trimah Astuti', 'first'),
(979, 'PRO00956-2018', 'SCH00956-2018', 'TCH00956-2018', 'teknisi', '2018/08/29', 'Dismantle', '2-187193276819', 'RML0WUaX', 'GRAHA LAYAR PRIMA MALL OF INDONESIA', 'MALL OF INDONESIA, Jln. Boulevard Barat No.1 Kelapa Gading JAKARTA (1)\r\nKPPTI (2)', 'Indah Mulyati', 'first'),
(977, 'PRO00954-2018', 'SCH00954-2018', 'TCH00954-2018', 'teknisi', '2018/08/28', 'Aktivasi', '2-234524862458', '9WR1f8hc', 'PT IBM INDONESIA', 'DC BNI SUDIRMAN LANTAI 5, JL. JENDRAL SUDRIMAN KAV. 1, JAKARTA PUSAT, DKI JAKARTA, 10270, INDONESIA (1)\r\nNODE MPLS KPPTI, JL.MEDAN MERDEKA BARAT NO 21, JAKARTA, 10110, INDONESIA (2)', 'Annisya Fahmi Rizqi', 'first'),
(717, 'PRO00694-2018', 'SCH00694-2018', 'TCH00694-2018', 'teknisi', '2018/09/17', 'Aktivasi', '2-236416893816', 'gle7pW9L', 'PT SURYA CITRA TELEVISI', 'JCC Plenary Hall Senayan Jakarta 10270 Indonesia', 'Trimah Astuti', 'first'),
(718, 'PRO00695-2018', 'SCH00695-2018', 'TCH00695-2018', 'teknisi', '2018/09/17', 'Aktivasi', '2-236596861309', '6sAcrp7o', 'BT-NEW BALANCE FOR LOUIS DREYFUS COMPANY', '\"Wisma 46 Tower, Jl. Jend. Sudirman Kav.1 Jakarta 10220\r\nTgl Aktif 22-Jan-17\"', 'Rahmat Hidayatullah', 'first'),
(719, 'PRO00696-2018', 'SCH00696-2018', 'TCH00696-2018', 'teknisi', '2018/09/17', 'Aktivasi', 'KdFBsrla', '2-236190209180', 'GREAT GIANT PINEAPPLE', '\"Jl Kuningan Barat No 8 Mampang Prapatan, Kuningan Barat, Jaksel 12710\r\nCSF Lt 3A Gunung Sewu Cage\"', 'Rosma Labaikka A', 'first'),
(720, 'PRO00697-2018', 'SCH00697-2018', 'TCH00697-2018', 'teknisi', '2018/09/18', 'Aktivasi', 'iTEaJbAE', '2-234773412379', 'MANDIRI GRIYA ARTHA MAKMUR (OCBC)', 'OCBS NISP JL GUNUNG SAHARI 7 NO.36 GUNUNG SAHARI - JAKARTA PUSAT', 'Rosma Labaikka A', 'first'),
(721, 'PRO00698-2018', 'SCH00698-2018', 'TCH00698-2018', 'teknisi', '2018/09/17', 'Aktivasi', '5cMFh6ne', '2-236612286067', 'ARTMEDIA CITRA TELEMATIKA INDONESIA (Cyber)', 'CYBER 1 JL. KUNINGAN BARAT NO. 8 MAMPANG PRAPATAN JAKARTA', 'NA', 'first'),
(722, 'PRO00699-2018', 'SCH00699-2018', 'TCH00699-2018', 'teknisi', '2018/09/17', 'Aktivasi', 'a1tVBNDD', '2-236240978164', 'IPLC STARHUB LTD KPPTI - GSW', '\"KPPTI NODE MPLS GALERI, MEDAN\r\nMERDEKA BARAT NO 21, JAKARTA PUSAT\r\n10110\"', 'Adya Pramesthi', 'first'),
(723, 'PRO00700-2018', 'SCH00700-2018', 'TCH00700-2018', 'teknisi', '2018/09/18', 'Survey', '2-236686954314', 'E4uyz3F0', 'PT ASIA OUTSOURCING SERVICE', '\"GEDUNG SOUTH QUARTER TOWER B LT 7, JLN\r\nRA KARTINI KAV 8 CILANDAK, JAKARTA\"', 'Sri Hartati', 'first'),
(724, 'PRO00701-2018', 'SCH00701-2018', 'TCH00701-2018', 'teknisi', '2018/09/18', 'Survey', '2-236686418853', 'uD12FUfU', 'PT ASIA OUTSOURCING SERVICE', '\"DCI DATA CENTER PT DCI INDONESIA, MM2100\r\nINDUSTRIAL TOWN JL. IRIAN 1 BLOK GG5-1,\r\nCIKARANG BARAT, INDONESIA\"', 'Sri Hartati', 'first'),
(725, 'PRO00702-2018', 'SCH00702-2018', 'TCH00702-2018', 'teknisi', '2018/09/18', 'Survey', '2-236517432162', 'MIy1KI63', ' BANK SYARIAH MANDIRI', 'BSM KCP Rasuna Said, Gedung Plaza Kuningan Menara Selatan Jl. HR Rasuna Said Kav. C11-14, Karet Kuningan, Setiabudi, Jakarta Selatan 12940', 'Evi Fitria', 'first'),
(726, 'PRO00703-2018', 'SCH00703-2018', 'TCH00703-2018', 'teknisi', '2018/09/18', 'Survey', '2-236239272880', 'cBOQzA3S', 'PT UNILEVER INDONESIA', '\"CIKARANG FOOD FACTORY (UNILEVER\r\nINDONESIA) AREA GEDUNG WALLS ICE CREAM\r\nKAWIN JABABEKA, JL. JABABEKA IX BLOK D 1-29\r\nBEKASI\"', 'Sri Hartati', 'first'),
(727, 'PRO00704-2018', 'SCH00704-2018', 'TCH00704-2018', 'teknisi', '2018/09/18', 'Aktivasi', 'C5bxH1Lc', '2-236697557524', 'STANDARD CHARTERED BANK', 'SCB Gajah Mada Jl. Gajahmada no. 157 â€“ 157A Jakarta 11130 - Menara Standard Chartered Bank Jl. Prof. Dr. Satrio No. 167 Jakarta 12930', 'Evi Fitria', 'first'),
(728, 'PRO00705-2018', 'SCH00705-2018', 'TCH00705-2018', 'teknisi', '2018/09/18', 'Survey', '2-235994050298', 'U2x8fRhM', 'VISIONET DATA INTERNASIONAL', 'GEDUNG UPH JL.MH. THAMRIN BOULEVARD\r\nNO. 05 KARAWACI TANGERANG', 'Sri Hartati', 'first'),
(729, 'PRO00706-2018', 'SCH00706-2018', 'TCH00706-2018', 'teknisi', '2018/09/19', 'Aktivasi', '2-235638213528', 'XNJpfm1P', 'CEMERLANG ABADI MULIA', 'JL. RAYA NAROGONG KM. 7 NO.33\r\nBOJONG MENTENG RAWALUMBU BEKASI', 'Aprianti Lestari', 'first'),
(730, 'PRO00707-2018', 'SCH00707-2018', 'TCH00707-2018', 'teknisi', '2018/09/19', 'Survey', '2-236686472278', 'bV6nNPsd', 'BANK MANDIRI (PERSERO) TBK', 'Bank Mandiri Gedung CBD Pluit Blok A No. 6, Jl. Raya Pluit Selatan Jakarta Utara 14450', 'Evi Fitria', 'first'),
(731, 'PRO00708-2018', 'SCH00708-2018', 'TCH00708-2018', 'teknisi', '2018/09/19', 'Survey', '2-236564872317', 'OiJFw1nP', 'ARUPA CLOUD NUSANTARA', 'ARUPA, BANK NEGARA INDONESIA JL. JEND SUDIRMAN KAV 1 JAKARTA 10220 - IDC DUREN TIGA JL. DUREN TIGA RAYA NO. 7H RT 09/RW 05 JAKARTA 12760', 'Evi Fitria', 'first'),
(733, 'PRO00710-2018', 'SCH00710-2018', 'TCH00710-2018', 'teknisi', '2018/09/20', 'Survey', '2-236722935183', 'vfSgA3hT', 'BANK BTPN', 'KK Cijantung, Jl. H. Hasan No.66B, RT.02/RW.03, Kalisari, Pasar Rebo, Jakarta Timur', 'Evi Fitria', 'first'),
(734, 'PRO00711-2018', 'SCH00711-2018', 'TCH00711-2018', 'teknisi', '2018/09/20', 'Aktivasi', 'nxXWROcr', '2-236722425912', 'UNGARAN SARI GARMENT', 'AXA TOWER JLN PROF. DR SATRIO KAV\r\n18 JAKARTA', 'NA', 'first'),
(735, 'PRO00712-2018', 'SCH00712-2018', 'TCH00712-2018', 'teknisi', '2018/09/20', 'Aktivasi', 'hi8wh44a', '2-236722486490', 'UNGARAN SARI GARMENT', 'AXA TOWER JLN PROF. DR SATRIO KAV\r\n18 JAKARTA', 'NA', 'first'),
(736, 'PRO00713-2018', 'SCH00713-2018', 'TCH00713-2018', 'teknisi', '2018/09/21', 'Dismantle', '4Qf401Dl', '2-236218986462', 'BANK MAYBANK INDONESIA TBK', 'KCP OFFICE 8, GEDUNG OFFICE 8 LANTAI DASAR JL. SENOPATI RAYA JAKARTA', 'Trimah Astuti', 'first'),
(737, 'PRO00714-2018', 'SCH00714-2018', 'TCH00714-2018', 'teknisi', '2018/09/21', 'Dismantle', 'totm86AS', '2-235100277619', 'BANK BUKOPIN TBK', 'KCU BANK BUKOPIN MARGONDA DEPOK  Margonda Raya No. 9 -10', 'Trimah Astuti', 'first'),
(738, 'PRO00715-2018', 'SCH00715-2018', 'TCH00715-2018', 'teknisi', '2018/09/21', 'Survey', '2-235187026820', 'IB3ZVD7S', 'IMS Health Indonesia', 'Jalan Jendral Sudirman Kav. 7-8', 'Akhsan Ibnu Fajar', 'first'),
(739, 'PRO00716-2018', 'SCH00716-2018', 'TCH00716-2018', 'teknisi', '2018/09/21', 'Dismantle', 'HIfAkq7p', '2-236020580920', 'BANK BTPN', 'BTPN KC KEBAYORAN BARU Jl. Petogogan II No.6-8 Blok A Jakarta Selatan', 'Trimah Astuti', 'first'),
(740, 'PRO00717-2018', 'SCH00717-2018', 'TCH00717-2018', 'teknisi', '2018/09/21', 'Dismantle', '5pbN8cqh', '2-236019995118', 'BANK BTPN', 'ANTOR BTPN KK PONDOK GEDE Jl. Raya Jati Makmur No.3 RT 004 RW 011, Kel. Jatimakmur, Kec. Pondok Gede - Bekasi', 'Trimah Astuti', 'first'),
(741, 'PRO00718-2018', 'SCH00718-2018', 'TCH00718-2018', 'teknisi', '2018/09/24', 'Survey', '2-236612355017', 'TIby6aQL', 'AT&T for Levi Strauss', 'Jl. Sultan Iskandar Muda, kav-V Pondok\r\nIndah Office Tower 3, 16th Floor', 'Akhsan Ibnu Fajar', 'first'),
(742, 'PRO00719-2018', 'SCH00719-2018', 'TCH00719-2018', 'teknisi', '2018/09/24', 'Aktivasi', '2-237701098309', '0fTzN7CH', ' PT. E-MEDIA DIGITAL VISITAMA', 'INDOSAT DAAN MOGOT GD. A JL. DAAN MOGOT KM 11 JAKARTA', 'Sri Hartati', 'first'),
(743, 'PRO00720-2018', 'SCH00720-2018', 'TCH00720-2018', 'teknisi', '2018/09/24', 'Survey', '2-236619781877', 'aFAiUSFP', 'BANK MANDIRI (PERSERO) TBK', 'JALAN MANGGA DUA RAYA BLOK F NO.3-5 ANCOL PADEMANGAN KOTA JAKARTA UTARA DAERAH KHUSUS IBUKOTA JAKARTA 14430', 'Evi Fitria', 'first'),
(744, 'PRO00721-2018', 'SCH00721-2018', 'TCH00721-2018', 'teknisi', '2018/09/24', 'Survey', '2-236619620323', 'r8JuzNQ5', 'BANK MANDIRI (PERSERO) TBK', 'JALAN MANGGA DUA RAYA BLOK F NO.3-5 ANCOL PADEMANGAN KOTA JAKARTA UTARA DAERAH KHUSUS IBUKOTA JAKARTA 14431', 'Evi Fitria', 'first'),
(745, 'PRO00722-2018', 'SCH00722-2018', 'TCH00722-2018', 'teknisi', '2018/09/24', 'Survey', '2-236620523764', '4o5zHh10', 'BANK MANDIRI (PERSERO) TBK', 'JALAN MANGGA DUA RAYA BLOK F NO.3-5 ANCOL PADEMANGAN KOTA JAKARTA UTARA DAERAH KHUSUS IBUKOTA JAKARTA 14432', 'Evi Fitria', 'first'),
(746, 'PRO00723-2018', 'SCH00723-2018', 'TCH00723-2018', 'teknisi', '2018/09/24', 'Survey', '2-236571305369', 'O5Eb6hzq', 'PRIMA PESONA PRAKARSA (GERAI JATIWARINGIN PONDOK G', 'GERAI JATIWARINGIN PONDOK GEDE, JL.RAYA\r\nJATIWARINGIN NO 93 PONDOK GEDE', 'Sri Hartati', 'first'),
(747, 'PRO00724-2018', 'SCH00724-2018', 'TCH00724-2018', 'teknisi', '2018/09/25', 'Survey', '2-242702504296', 'bu64sMy4', 'BANK MANDIRI (PERSERO) TBK PSB H2H PT.AIQQON TRIAR', 'Cyber 2 Tower Lt.2 , Jl.HR Rasuna Said XS No.13, RT.7/RW.2 Kuningan,Kuningan Timur, Jakarta Selatan', ' Evi Fitria ', 'first'),
(748, 'PRO00725-2018', 'SCH00725-2018', 'TCH00725-2018', 'teknisi', '2018/09/26', 'Aktivasi', '2-242710950786', '9Zb93kvo', 'INDONESIA INFRASTRUCTURE FINANCE', 'Prosperity Tower District 8 Lt. 53 SCBD Lot 28 Jl. Jend. Sudirman Kav. 52-53 JAKARTA 12190', 'Trimah Astuti', 'first'),
(749, 'PRO00726-2018', 'SCH00726-2018', 'TCH00726-2018', 'teknisi', '2018/09/24', 'Survey', '2-236589765568', 'FnNS9dTV', 'AT&T for Levi Strauss', 'PT Bank Nationalnobu, Jl. MH Thamrin\r\nNo.2 Boulevard 110', '\"Akhsan Ibnu Fajar ', 'first'),
(750, 'PRO00727-2018', 'SCH00727-2018', 'TCH00727-2018', 'teknisi', '2018/09/26', 'Aktivasi', '2-242740630888', 'yAu4XlQA', 'INDOSAT-TELKOM DWDM 10 GBPS', 'APJII', 'Rahmat Hidayatullah ', 'first'),
(751, 'PRO00728-2018', 'SCH00728-2018', 'TCH00728-2018', 'teknisi', '2018/09/28', 'Aktivasi', '2-242758496747', '25eGaXmD', 'PT ASIA OUTSOURCING SERVICE', 'GEDUNG SOUTH QUARTER TOWER B LT 7, JLN RA KARTINI KAV 8\r\nCILANDAK, JAKARTA', 'Sri Hartati', 'first'),
(752, 'PRO00729-2018', 'SCH00729-2018', 'TCH00729-2018', 'teknisi', '2018/09/28', 'Aktivasi', '2-242758461101', 'PB50HOHA', 'PT ASIA OUTSOURCING SERVICE', 'DCI DATA CENTER PT DCI INDONESIA, MM2100 INDUSTRIAL TOWN JL.IRIAN 1 BLOK GG5-1, CIKARANG BARAT, INDONESIA', 'Sri Hartati', 'first'),
(753, 'PRO00730-2018', 'SCH00730-2018', 'TCH00730-2018', 'teknisi', '2018/09/28', 'Survey', '2-242737339371', 'qnViTWzB', 'PT. SATRIA ANTARAN PRIMA', 'JL BINTARA JAYA RAYA NO 3', 'Aprianti Lestari ', 'first'),
(754, 'PRO00731-2018', 'SCH00731-2018', 'TCH00731-2018', 'teknisi', '2018/09/28', 'Survey', '2-237551229140', '6sf83PfT', 'AT&T for Hyundai Ubiquitous & Information Technolo', 'JL ABDULL MUIS NO 50 Pin- 10160, Jakarta, Indonesia, Room- HMM router, Floor-3, Buildingwisma BSG Building 50', 'Akhsan Ibnu Fajar ', 'first'),
(755, 'PRO00732-2018', 'SCH00732-2018', 'TCH00732-2018', 'teknisi', '2018/09/28', 'Aktivasi', '2-236742789210', '8OeFd2Ef', 'UNIVERSAL SATELIT INDONESIA', 'WISMA DGE LT.3 JL RAWA GELAM III, NO .8 KAWASAN INDUSTRI PULO GADUNG JAKARTA', 'Sri Hartati', 'first'),
(756, 'PRO00733-2018', 'SCH00733-2018', 'TCH00733-2018', 'teknisi', '2018/09/28', 'Survey', '2-242773504688', '33hzRi4e', 'ENERGI UNGGUL PERSADA', 'JL RAYA PEJUANG,MEDAN SATRIA,BEKASI,JABAR\r\n17131', 'Aprianti Lestari ', 'first'),
(757, 'PRO00734-2018', 'SCH00734-2018', 'TCH00734-2018', 'teknisi', '2018/09/28', 'Survey', '2-236744104717', 'plQG6DZf', 'SARANA TRANSAKSI DIGITAL', 'RUKO KOMPLEK JENDERAL AHMAD YANI KAV.\r\n68, BLOK A CEMPAKA PUTIH JAKARTA PUSAT', 'Sri Hartati ', 'first'),
(758, 'PRO00735-2018', 'SCH00735-2018', 'TCH00735-2018', 'teknisi', '2018/09/28', 'Dismantle', '2-167904490792', 'A7pmrCQo', 'BT COMMUNICATIONS INDONESIA', 'NYCOMED APS, JL. P. DIPONEGORO 38 KM TAMBUN BEKASI', 'agnes eka lestia', 'first'),
(759, 'PRO00736-2018', 'SCH00736-2018', 'TCH00736-2018', 'teknisi', '2018/09/28', 'Dismantle', '2-167904728866', 'Ce9rFJVU', 'BT COMMUNICATIONS INDONESIA', 'NYCOMED APS, JL. P. DIPONEGORO 38 KM TAMBUN BEKASI', 'agnes eka lestia', 'first'),
(760, 'PRO00737-2018', 'SCH00737-2018', 'TCH00737-2018', 'teknisi', '2018/09/28', 'Dismantle', '2-170966779142', 'ZHv9R7eX', 'BT COMMUNICATIONS INDONESIA', 'TAKEDA A/S, JL DIPONEGORO 38 - KM 38 TAMBUN, BEKASI', 'agnes eka lestia', 'first'),
(761, 'PRO00738-2018', 'SCH00738-2018', 'TCH00738-2018', 'teknisi', '2018/09/28', 'Dismantle', '2-219961389904', 'c5G4sIBn', 'HANASTA DAKARA (CYBER WORLD INDONESIA)', 'PT Samick, Jl. Perkebunan, Desa Cileungsi Kidul, Cileungsi, Jawa Barat 16820, Indonesia', 'agnes eka lestia', 'first'),
(762, 'PRO00739-2018', 'SCH00739-2018', 'TCH00739-2018', 'teknisi', '2018/09/28', 'Survey', '2-127022301398', 'JqiJPWqH', 'GLOBAL SMARTWEB ASIA', 'GLOBAL SMARTWEB, Jl. PERSATUAN GURU NO.25, JAKARTA', 'agnes eka lestia', 'first'),
(763, 'PRO00740-2018', 'SCH00740-2018', 'TCH00740-2018', 'teknisi', '2018/09/28', 'Aktivasi', 'osoop0ST', '2-236571305369', 'PRIMA PESONA PRAKARSA (GERAI JATIWARINGIN PONDOK G', 'GERAI JATIWARINGIN PONDOK GEDE, JL.RAYA\r\nJATIWARINGIN NO 93 PONDOK GEDE', 'Sri Hartati', 'first'),
(764, 'PRO00741-2018', 'SCH00741-2018', 'TCH00741-2018', 'teknisi', '2018/09/28', 'SURVEY & AKTIVASI', '2-236413820033', '2-239003302939', ' ARTHA TELEKOMINDO', 'PT I LIKE GYM, LIVING WORLD ALAM SUTERA, Jl. Alam Sutera Boulevard Kav.21, 2nd floor, Pakulonan, Serpong Utara 15325', 'Trimah Astuti ', 'first'),
(765, 'PRO00742-2018', 'SCH00742-2018', 'TCH00742-2018', 'teknisi', '2018/09/28', 'AKTIVASI a.n UPGRADE', '2-242753059043', 'qoZEGMV4', 'BADAN NASIONAL PENGELOLA PERBATASAN', 'BADAN NASIONAL PENGELOLA PERBATASAN JL. KEBON SIRIH NO.31A JAKARTA', 'Sri Hartati', 'first'),
(766, 'PRO00743-2018', 'SCH00743-2018', 'TCH00743-2018', 'teknisi', '2018/09/27', 'Manageable Modem', '2-216177959615', 'iVTK6HhN', 'PT. AEON FANTASY INDONESIA', 'Jl jend sudirman kav 9, Ratu plaza lantai 26. JAKARTA', 'Firdaus Ibrahim Setyo Wiedhi', 'first'),
(767, 'PRO00744-2018', 'SCH00744-2018', 'TCH00744-2018', 'teknisi', '2018/09/27', 'Pengetesan', '2-213462383374', 'UR4AlXon', 'PT. TRANSINDONESIA NETWORK', 'Cyber MSC lt. 3 to KPPTI AN1', 'Akhsan Ibnu Fajar', 'first'),
(976, 'PRO00953-2018', 'SCH00953-2018', 'TCH00953-2018', 'teknisi', '2018/09/03', 'Survey', '2-235993258062', 'fhAoso8G', 'OPHIR HOLDINGS & SERVICES (UK) LTD', 'BT GLOBAL SOLUTIONS (OPHIR HOLDINGS & SERVICES (UK) LTD)\r\nJln Jendral Sudirman Kav 9 Ratu Plaza Office Tower,Jakarta 10270 (1)\r\nNODE BT JL. MEDAN MERDEKA BARAT NO 21 (2)', 'Agung Pribadi Yahya', 'first'),
(771, 'PRO00748-2018', 'SCH00748-2018', 'TCH00748-2018', 'teknisi', '2018/10/01', 'Aktivasi', 'xIWSmpRD', '2-121728442670', 'PT. PRIMAVISTA SOLUSI DANAMON BSD - DC TEKNO', 'DC DANAMON BSD, DC DANAMON BSD SEKTOR 6 BLOK KOMERSIAL 201 TANGERANG 15229', 'Evi Fitria', 'first'),
(770, 'PRO00747-2018', 'SCH00747-2018', 'TCH00747-2018', 'teknisi', '2018/10/01', 'RFC test', 'lVsMB4LV', '2-235056671026', 'TATA FOR BOEING 10M GMF AERO ASIA', 'KPPTI IDC baru Switch TATA to Boeing Building', 'Rizqi Aditama', 'first'),
(772, 'PRO00749-2018', 'SCH00749-2018', 'TCH00749-2018', 'teknisi', '2018/10/01', 'Aktivasi', '2-235878751476', 'xuddFcl6', 'ACT IDIA INS/SPACES ', '\"PT INS WTC3 Centre\r\nRegus Spaces WTC3. 20th Floor\r\nJl. Jend. Sudirman Kav. 29-31, South Jakarta 12920\"', 'Rahmat Hidayatullah', 'first'),
(773, 'PRO00750-2018', 'SCH00750-2018', 'TCH00750-2018', 'admin', '2018/10/02', 'Aktivasi', 'rh00azKH', '2-235123726230', 'PT. UNILEVER INDONESIA TBK', 'PT LINFOX LOGISTICS INDONESIA, JL. JABABEKA VI BLOK L1-2, KAWASAN INDUSTRI JABABEKA CIKARANG, BEKASI', 'Sri Hartati', 'first'),
(774, 'PRO00751-2018', 'SCH00751-2018', 'TCH00751-2018', 'teknisi', '2018/10/02', 'Aktivasi', '2-236587401884', 'AAdmpl75', 'BT FOR LOUIS DREYFUS ', 'Wisma 46 Tower, Jl. Jend. Sudirman Kav.1 Jakarta 10220', 'Rahmat Hidayatullah', 'first'),
(775, 'PRO00752-2018', 'SCH00752-2018', 'TCH00752-2018', 'teknisi', '2018/10/02', 'Aktivasi', '2-242773311964', 'vTHaoecp', 'PT SURYA CITRA TELEVISI ', 'LPPTVRI JAKARTA (IBC) Jl.Gerbang Pemuda,Senayan 10270 Jakarta', 'Trimah Astuti (Rima)', 'first'),
(776, 'PRO00753-2018', 'SCH00753-2018', 'TCH00753-2018', 'teknisi', '2018/10/01', 'Aktivasi', 'SXQ5Oz0a', '2-242786886371', 'BHLN.DCNS', 'Sentral Senayan 2 Sentral Senayan 2 lantai 7 ', 'Rosma Labaikka A', 'first'),
(777, 'PRO00754-2018', 'SCH00754-2018', 'TCH00754-2018', 'teknisi', '2018/10/02', 'Aktivasi', '2-242870108369', 'PvMLzcFw', 'PT TELEKOMUNIKASI INDONESIA TBK', 'TVRI, JL. GERBANG PEMUDA, TANAH ABANG JAKARTA', 'Sri Hartati', 'first'),
(778, 'PRO00755-2018', 'SCH00755-2018', 'TCH00755-2018', 'teknisi', '2018/10/02', 'Aktivasi', '2-242869635563', 'Vzw3hP46', 'PT TELEKOMUNIKASI INDONESIA TBK', 'TVRI, JL. GERBANG PEMUDA, TANAH ABANG JAKARTA', 'Sri Hartati', 'first'),
(779, 'PRO00756-2018', 'SCH00756-2018', 'TCH00756-2018', 'teknisi', '2018/10/03', 'Survey', '2-242866601193', 'NRpBadr2', 'BANK BTPN ', 'H3I PLAZA KUNINGAN HCPT PLAZA KUNINGAN LANTAI 2, JL. RASUNA SAID, JAKARTA 12920 - TELKOM SIGMA SENTUL (DRC BTPN) KAWASAN TELKOM SIGMA SENTUL BOGOR 16810', 'Evi Fitria ', 'first'),
(780, 'PRO00757-2018', 'SCH00757-2018', 'TCH00757-2018', 'teknisi', '2018/10/03', 'Aktivasi', 'c6vIKIv2', ' 2-129494579926', 'REACH TELSTRA FOR VISA INTERNATIONAL', '\"Jl. Jend. Sudirman No. 28, Wisma GKBI\r\nLt. 17 S-1701\"', 'Rizqi Aditama', 'first'),
(781, 'PRO00758-2018', 'SCH00758-2018', 'TCH00758-2018', 'teknisi', '2018/10/03', 'Survey', '2-242866860667', 'oVI9LiCO', 'BANK BTPN ', 'H3I JKT MM MENARA MULIA BUILDING LT. BASEMENT, JL. JEND. GATOT SUBROTO KAV. 9-11, JAKARTA SELATAN 12930 - GEDUNG MENARA BTPN JL. DR. IDE ANAK AGUNG GDE AGUNG KAV. 5.5 - 5.6 JAKARTA SELATAN 12950', 'Evi Fitria ', 'first'),
(782, 'PRO00759-2018', 'SCH00759-2018', 'TCH00759-2018', 'teknisi', '2018/10/04', 'Aktivasi', '2-242688594516', 'TLOPJoPV', 'STANDARD CHARTERED BAN', 'SCB Gajah Mada Jl. Gajahmada no. 157 â€“ 157A Jakarta 11130 - KPPTI Node Iphone', 'Evi Fitria', 'first'),
(783, 'PRO00760-2018', 'SCH00760-2018', 'TCH00760-2018', 'teknisi', '2018/10/05', 'Survey', '2-236712059073', 'QuxRkdlx', 'PT. ELECTRONIC DATAINTERCHANGE INDONESIA', '\"DC NTTI, CYBER 3, LANTAI 1, RACK 1 JL.\r\nWIJAYAKARTA IV NO.217, RT.1/RW.3,\r\nKUNINGAN BAR., MAMPANG PRPT., KOTA\r\nJAKARTA SELATAN\"', 'Sri Hartati', 'first'),
(784, 'PRO00761-2018', 'SCH00761-2018', 'TCH00761-2018', 'teknisi', '2018/10/05', 'Survey', '2-242729239965', 'fvMZpbf0', 'LINTAS TEKNOLOGI DIGITAL', 'Citra Multi Services Gd. NDC Moratel Jl. Jatinegara Barat No 44 Bidara Cina Jatinegara Jakarta 13320', 'Trimah Astuti (Rima)', 'first'),
(785, 'PRO00762-2018', 'SCH00762-2018', 'TCH00762-2018', 'teknisi', '2018/10/08', 'Aktivasi', '2-242843280550', '81WzrTIM', 'AT&T (Tech Data Corporation)', 'TECH DATA CORPORATION JL. Abdul\r\nMuis No. 40, Fl 6, Server Room', 'Akhsan Ibnu Fajar', 'first'),
(786, 'PRO00763-2018', 'SCH00763-2018', 'TCH00763-2018', 'teknisi', '2018/10/09', 'Survey', '2-243020008703', 'h6mHgBXr', 'BANK CENTRAL ASIA ', '\"TANGERANG CITY MALL JL JENDERAL\r\nSUDIRMAN NO. 1 TANGERANG 15117\"', 'Evi Fitria', 'first'),
(787, 'PRO00764-2018', 'SCH00764-2018', 'TCH00764-2018', 'teknisi', '2018/10/09', 'Survey', '2-243034469675', 'QVs60VTI', 'KBR ENGINEERS INDONESIA, PT ', 'World Trande Centre Tower 2 (WTC 2) 18th FI Jl. Jend. Sudirman Kav. 29 JAKARTA 12920', 'Trimah Astuti (Rima)', 'first'),
(788, 'PRO00765-2018', 'SCH00765-2018', 'TCH00765-2018', 'teknisi', '2018/10/11', 'Aktivasi', 'n049Ta3c', '2-243061420752', 'PT. TUPPERWARE INDONESIA', '\"GEDUNG SOUTH QUARTER TOWER A LT. 12 JL. RA. KARTINI KAV. 8,\r\nCILANDAK BARAT, JAKARTA-SELATAN\"', 'Sri Hartati', 'first'),
(789, 'PRO00766-2018', 'SCH00766-2018', 'TCH00766-2018', 'teknisi', '2018/10/11', 'Dismantle', 'h1Ck3SM9', '2-214206664028', 'INDOSAT SINGAPORE PTE LTD', 'Bina Sentra 3rd Fl #307, Bidakara, Jl Jend. Gatot Subroto kav. 71-73 Jakarta Selatan', 'Sri Hartati\"agnes eka lestia \"', 'first'),
(790, 'PRO00767-2018', 'SCH00767-2018', 'TCH00767-2018', 'teknisi', '2018/10/11', 'Dismantle', 'k6ZCKe82', '2-167752216908', 'PT. SUMBER ALFARIA TRIJAYA', 'PONDOK JAGUNG TIMUR AB53, JL.PONDOK JAGUNG 1 RT.001/02 K KEL. PONDOK JAGUNG TIMUR, KEC.SERPONG UTARA TANGERANG SELATAN', 'agnes eka lestia', 'first'),
(791, 'PRO00768-2018', 'SCH00768-2018', 'TCH00768-2018', 'teknisi', '2018/10/10', 'Dismantle', 'WPss9TmP', '2-216805421544', 'BANK OF CHINA', 'THE EAST TOWER LT. 1, JL. LINGKAR MEGA KUNINGAN KAV E3.2 NO. 1 JAKARTA', 'Agnes Eka Lestia', 'first'),
(792, 'PRO00769-2018', 'SCH00769-2018', 'TCH00769-2018', 'teknisi', '2018/10/10', 'Dismantle', 'fJtxKEy5', '2-178570855064', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'PT. Monagro Kimia Kawasan Industri Manis, Jl. Manis Raya IV No: 11 Jatake Jatiuwung â€“ Tangerang', 'Agnes Eka Lestia', 'first'),
(793, 'PRO00770-2018', 'SCH00770-2018', 'TCH00770-2018', 'teknisi', '2018/10/10', 'Dismantle', '3Oxlyspw', '2-220491948092', 'PT. BANK WOORI SAUDARA INDONESIA', 'PT. LG CNS INDONESIA, WOORI BANK INDONESIA, CIKARANG COMMERCIAL CENTER BLOK A1-A2,JL. CIKARANG CI', 'Agnes Eka Lestia', 'first'),
(794, 'PRO00771-2018', 'SCH00771-2018', 'TCH00771-2018', 'teknisi', '2018/10/10', 'Dismantle', 'kSS8CGWu', '2-220386854232', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'SWIFT BANK PERDANIA, CYBER 3 LANTAI 2, JL. KUNINGAN BARAT NO. 8 JAKARTA 12710', 'Agnes Eka Lestia', 'first'),
(795, 'PRO00772-2018', 'SCH00772-2018', 'TCH00772-2018', 'teknisi', '2018/10/10', 'Dismantle', 'eOqoBbmH', '2-220213548080', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'LVMH MOET HENNESSY LOUIS VUITTON, WISMA METROPOLITAN 17 TH FLOOR, JL. JEND SUDIRMAN KAV 29-31 JAKARTA, 12920', 'Agnes Eka Lestia', 'first'),
(796, 'PRO00773-2018', 'SCH00773-2018', 'TCH00773-2018', 'teknisi', '2018/10/15', 'Dismantle', 'UF7DerTJ', '2-236313879326', 'NET MEDIATAMA', 'GD. THE EAST LT.29, JL. DR. IDE ANAK AGUNG GDE AGUNG KAV. E.3.2 NO. 1 KUNINGAN TIMUR, SETIABUDI JAKARTA', 'Trimah Astuti (Rima)', 'first'),
(797, 'PRO00774-2018', 'SCH00774-2018', 'TCH00774-2018', 'teknisi', '2018/10/12', 'Aktivasi', 'lW0LAw7G', '2-216073654448', ' BANK BTPN ', 'Gedung NTTI Cyber 3 Mampang prapatan, Jakarta  12710 - Menara BTPN Jln. Ide Anak Agung Gde Agung Kav. 5.5-5.6, Jakarta Selatan 12950', 'Dody Nugroho', 'first'),
(798, 'PRO00775-2018', 'SCH00775-2018', 'TCH00775-2018', 'teknisi', '2018/10/12', 'Aktivasi', 'hmqRnpac', '2-216073879771', ' BANK BTPN ', 'Lintasarta BSD Taman Tekno Komplek Pergudangan Taman Tekno Blok D No 8 BSD Setu Kota Tanggerang Selatan Serpong 15314', 'Dody Nugroho', 'first'),
(799, 'PRO00776-2018', 'SCH00776-2018', 'TCH00776-2018', 'teknisi', '2018/10/15', 'Aktivasi', '2-243061253898', 'Xi2dAyyV', 'GLOBAL DIGITAL NIAGA', 'The Energy Building Lot 11A Lt. 3', 'Trimah Astuti (Rima)', 'first'),
(800, 'PRO00777-2018', 'SCH00777-2018', 'TCH00777-2018', 'teknisi', '2018/10/15', 'Aktivasi', 'hM0k2qXp', '2-242944129504', 'BANK SYARIAH MANDIRI', 'BSM KCP Rasuna Said, Gedung Plaza Kuningan Menara Selatan Jl. HR Rasuna Said Kav. C11-14, Karet Kuningan, Setiabudi, Jakarta Selatan 12940', 'Evi Fitria', 'first'),
(801, 'PRO00778-2018', 'SCH00778-2018', 'TCH00778-2018', 'teknisi', '2018/10/15', 'Survey', '2-243085957039', 'DshAcGAq', 'BANK MAYBANK INDONESIA TBK', 'GERMAN CENTER BUILDING LT 3 JL.KAP. SUBIJANTO DJ BSD BANTEN TANGERANG', 'Evi Fitria', 'first'),
(802, 'PRO00779-2018', 'SCH00779-2018', 'TCH00779-2018', 'teknisi', '2018/10/15', 'Survey', '2-243161736917', 'GQcva0uu', ' APLIKASI KARYA ANAK BANGSA', 'Jl. Panglima Polim Raya Blok M3 No. 11 J & 11 K, Melawai, Jaksel 12150 (patokan samping raja golf)', 'Evi Fitria', 'first'),
(805, 'PRO00782-2018', 'SCH00782-2018', 'TCH00782-2018', 'teknisi', '2018/10/08', 'Dismantle', 'UqTX9N0m', '2-235993695850', 'PT CETTASIN INDONESIA', 'JL. CIKATOMAS NO. 7 KEBAYORAN BARU, JAKARTA SELATAN', 'Rosma Labaikka A', 'first'),
(804, 'PRO00781-2018', 'SCH00781-2018', 'TCH00781-2018', 'teknisi', '2018/10/15', 'Survey', '2-243086173347', 'crbw9Xtd', 'BANK MAYBANK INDONESIA TBK', 'DRC BII GERMAN CENTER LT. 3,\r\nJL. KAPTEN SUBIJANTO BSD BANTEN TANGERANG', 'Evi Fitria', 'first'),
(806, 'PRO00783-2018', 'SCH00783-2018', 'TCH00783-2018', 'teknisi', '2018/10/09', 'Dismantle', 'U6wxLScK', '2-236058358488', 'BANK BTPN ', 'BTPN RFB BNI 46 Komplek Jl. Jend. Sudirman Kav.1 Jakarta, Wisma 46 Lt.2 Unit 201 Kota BNI', 'Trimah Astuti', 'first'),
(807, 'PRO00784-2018', 'SCH00784-2018', 'TCH00784-2018', 'teknisi', '2018/10/09', 'Dismantle', 'ZlLWr8r2', '2-236058339850', 'BANK BTPN ', 'BTPN LEUWILIANG Jl.  Raya Leuwiliang, Kp. Sawah  RT004/RW002 Kel.Leuwiliang, Kec Leuwiliang', 'Trimah Astuti', 'first'),
(808, 'PRO00785-2018', 'SCH00785-2018', 'TCH00785-2018', 'teknisi', '2018/10/09', 'Dismantle', 'KZT5IuTq', '2-236081111168', 'BANK BTPN ', 'BTPN RF BANDENGAN SELATAN Jl. Bandengan Selatan. Komp. Puri Delta Mas Blok J No. 6', 'Trimah Astuti', 'first'),
(809, 'PRO00786-2018', 'SCH00786-2018', 'TCH00786-2018', 'teknisi', '2018/10/17', 'Aktivasi', '4GnUaZAf', ' 2-235187742009', 'WAN NETWORK', '\"Jalan Casablanca No.88, Menteng Dalam,\r\nTebet, Kota Jakarta Selatan, 12870, Gerai\r\nMall Kota Kasablanka\"', 'Rizqi Aditama', 'first'),
(810, 'PRO00787-2018', 'SCH00787-2018', 'TCH00787-2018', 'teknisi', '2018/10/16', 'Survey', '2-242877638481', 'zWvVwH3B', ' PT SNC LAVALIN TPS', 'MENARA KUNINGAN JL HR RASUNA SAID', 'Rosma Labaikka A', 'first'),
(811, 'PRO00788-2018', 'SCH00788-2018', 'TCH00788-2018', 'teknisi', '2018/10/18', 'Survey', ' 2-243208085506', 'lOfrn3Xa', ' BANK CENTRAL ASIA ', '\"Epicentrum Walk\r\nJl. HR. Rasuna Said Kuningan, Jakarta\"', 'Evi Fitria', 'first'),
(812, 'PRO00789-2018', 'SCH00789-2018', 'TCH00789-2018', 'teknisi', '2018/10/18', 'Upgrade', ' 2-242727886315', '5gWTm26v', 'BANK DANAMON ', 'BANK DANAMON  JL KEBON SIRIH NO. 15 JAKARTA  10340', 'Evi Fitria', 'first'),
(813, 'PRO00790-2018', 'SCH00790-2018', 'TCH00790-2018', 'teknisi', '2018/10/18', 'Dismantle', 'PPaFKIBw', '2-53056497222', 'PT. TELEFAST INDONESIA (GERAI PEJATEN)', '\"PEJATEN VILLAGE MALL, LG FLOOR - 11A, JL WARUNG JATI BARAT NO 39,\r\nJATI PADANG, PASAR MINGGU\"', 'Sri Hartati', 'first'),
(814, 'PRO00791-2018', 'SCH00791-2018', 'TCH00791-2018', 'teknisi', '2018/10/18', 'Aktivasi', 'Sqn3wuqP', '2-243207258293', 'BANK DANAMON ', 'BANK DANAMON CIAWI KAMPUS DANAMON CIAWI RANCAMAYA 16139', 'Evi Fitria', 'first');
INSERT INTO `tbl_project_wo` (`id_project`, `kode_project`, `kode_jadwal`, `kode_teknisi`, `level`, `tgl_project`, `project_title`, `wo_id`, `so_id`, `customer`, `lokasi`, `pic`, `status`) VALUES
(815, 'PRO00792-2018', 'SCH00792-2018', 'TCH00792-2018', 'teknisi', '2018/10/15', 'Aktivasi', '3sNqowm6', '2-234793876472', 'PT. UNILEVER INDONESIA TBK', '\"INDONESIA CIKARANG FACTORY, JL. JABABEKA IX BLOK D 1-29. CIKARANG,\r\nBEKASI\"', 'Sri Hartati', 'first'),
(816, 'PRO00793-2018', 'SCH00793-2018', 'TCH00793-2018', 'teknisi', '2018/10/19', 'Relokasi', 'RTZod6LQ', '2-235219586627', 'Bank Muamalat Indonesia Tbk ', 'JL. PANGLIMA POLIM RAYA NO. 105, 106 EF KEBAYORAN BARU, JAKARTA SELATAN', 'Evi Fitria', 'first'),
(817, 'PRO00794-2018', 'SCH00794-2018', 'TCH00794-2018', 'teknisi', '2018/10/19', 'Relokasi', 'hMTTHStz', '2-243207700823', 'PT. PRIMAVISTA SOLUSI  ', 'KOMPLEK PERGUDANGAN TAMAN TEKNO BLOK D NO. 8, BSD CITY, TANGERANG SELATAN', 'Evi Fitria', 'first'),
(818, 'PRO00795-2018', 'SCH00795-2018', 'TCH00795-2018', 'teknisi', '2018/10/19', 'Survey', '2-243253250694', 'yT5vhTae', 'PT AKTIF TENGAH MALAM', 'WTC 3', 'Antony Christovel Sitorus', 'first'),
(819, 'PRO00796-2018', 'SCH00796-2018', 'TCH00796-2018', 'teknisi', '2018/10/15', 'Aktivasi', '2-234600559538', 'XO44rhAy', 'KEMENTERIAN PARIWISATA', 'GEDUNG SAPTA PESONA, JL.MEDAN MERDEKA BARAT NO 17,\r\nJAKARTA, 10110, INDONESIA', 'Annisya Fahmi Rizqi', 'first'),
(820, 'PRO00797-2018', 'SCH00797-2018', 'TCH00797-2018', 'teknisi', '2018/10/15', 'Survey', '2-243077303389', '7onoZ2oK', 'PT.NAP INFO LINTAS NUSA', 'ENERGY BUILDING SCBD, Jl. Jend. Sudirman No.Kav 52-53, RT.5/RW.3, Senayan, Kby. Baru, Kota Jakarta Selatan 12190', 'Trimah Astuti (Rima)', 'first'),
(821, 'PRO00798-2018', 'SCH00798-2018', 'TCH00798-2018', 'admin', '2018/10/16', 'Aktivasi', 'GE3VtdvC', '2-243165399716', ' MANDIRI GRIYA ARTHA MAKMUR', 'Jl. Raden Saleh I No.3A Jakarta Pusat', 'Rosma Labaikka A', 'first'),
(822, 'PRO00799-2018', 'SCH00799-2018', 'TCH00799-2018', 'teknisi', '2018/10/22', 'Survey', '2-243263648747', 'lxDrBq5Z', ' BANK CENTRAL ASIA ', '\"Sekolah Notre Dame\r\nJl. Puri Kembang Barat Raya Blok M, Puri Kembangan, Jakarta 11610\"', 'Evi Fitria', 'first'),
(823, 'PRO00800-2018', 'SCH00800-2018', 'TCH00800-2018', 'teknisi', '2018/10/09', 'Survey', '2-236519630279', 'SgCMf8PM', 'PT NEC INDONESIA', 'RACK NEC (YAMAHA PROJECT), KOMPLEK\r\nPERGUDANGAN TAMAN TEKNO BLOK D NO.8,\r\nBSD SERPONG', 'Sri Hartati', 'first'),
(824, 'PRO00801-2018', 'SCH00801-2018', 'TCH00801-2018', 'teknisi', '2018/10/10', 'Aktivasi', '2-236613030706', 'vNRxZoH9', 'AKT BEARER NNI - AT&T', 'JL. MEDEAN MERDEKA BARAT NO. 21', 'Akhsan Ibnu Fajar', 'first'),
(825, 'PRO00802-2018', 'SCH00802-2018', 'TCH00802-2018', 'teknisi', '2018/10/24', 'AKTIVASI a.n UPGRADE', 'ub7clfcb', '2-243370644927', 'PT NEC INDONESIA (FOR YAMAHA)', 'RACK NEC (YAMAHA PROJECT) KOMPLEK PERGUDANGAN TAMAN TEKNO\r\nBLOK D NO.8, BSD SERPONG', 'Sri Hartati', 'first'),
(826, 'PRO00803-2018', 'SCH00803-2018', 'TCH00803-2018', 'teknisi', '2018/10/25', 'Aktivasi', 'gWVCW39y', '2-243354197827', 'BANK BTPN ', 'H3I JKT MM MENARA MULIA BUILDING LT. BASEMENT, JL. JEND. GATOT SUBROTO KAV. 9-11, JAKARTA SELATAN 12930 - GEDUNG MENARA BTPN JL. DR. IDE ANAK AGUNG GDE AGUNG KAV. 5.5 - 5.6 JAKARTA SELATAN 12950', 'Evi Fitria', 'first'),
(827, 'PRO00804-2018', 'SCH00804-2018', 'TCH00804-2018', 'teknisi', '2018/10/19', 'Survey', '2-243189421351', 'UaSVUo8z', 'QUATTRO MEDIA CONTINDO', 'Plaza Timor Lt. 6 Jl Timor No. 2 Menteng', 'Rosma Labaikka A', 'first'),
(828, 'PRO00805-2018', 'SCH00805-2018', 'TCH00805-2018', 'teknisi', '2018/10/25', 'Survey', '2-243239966662', 'qWs4bK0o', 'PT KLIK INDOMARET SUKSES', '\"CYBER 2, 2ND FLOOR JL. HR RASUNA SAHID\r\nJAKARTA\"', 'Sri Hartati', 'first'),
(829, 'PRO00806-2018', 'SCH00806-2018', 'TCH00806-2018', 'teknisi', '2018/10/24', 'Survey', '2-243215765054', 'MmTVuXv0', 'PT ASTRA INTERNATIONAL TBK', 'ASTRA TSO MUARA KARANG, JL MUARA KARANG RAYA BLOK Z5 TIMUR N.17-18 JKT', 'Sri Hartati', 'first'),
(830, 'PRO00807-2018', 'SCH00807-2018', 'TCH00807-2018', 'teknisi', '2018/10/24', 'Survey', '2-243216109512', 'RTdTsdZC', 'PT ASTRA INTERNATIONAL TBK', 'ASTRA TSO GLODOK_KOMP GLODOK PLAZA BLOK H 25-26 JAKARTA', 'Sri Hartati', 'first'),
(831, 'PRO00808-2018', 'SCH00808-2018', 'TCH00808-2018', 'teknisi', '2018/10/22', 'Survey', '2-243057893011', '3DwTfDzE', 'PERTAMINA GEOTHERMAL ENERGY PT', 'GED PUSAT PT.PERTAMINA (PERSERO) JL.MEDAN MERDEKA TIMUR NO 1A', 'Rosma Labaikka A', 'first'),
(832, 'PRO00809-2018', 'SCH00809-2018', 'TCH00809-2018', 'teknisi', '2018/10/24', 'Survey', '2-243216109970', 'RNePfppt', 'PT ASTRA INTERNATIONAL TBK', 'ASTRA TSO TAMAN ANGGREK/SLIPI_T059, JL LETJEN S PARMAN K N4 SLIPI JAKARTA', 'Sri Hartati', 'first'),
(833, 'PRO00810-2018', 'SCH00810-2018', 'TCH00810-2018', 'teknisi', '2018/10/24', 'Survey', '2-243216113300', 'ouMxmd5X', 'PT ASTRA INTERNATIONAL TBK', 'ASTRA TSO JUANDA_T151, JL IR H JUANDA NO.22 JAKARTA', 'Sri Hartati', 'first'),
(834, 'PRO00811-2018', 'SCH00811-2018', 'TCH00811-2018', 'teknisi', '2018/10/24', 'Survey', '2-243216113758', '6xw0MDqo', 'PT ASTRA INTERNATIONAL TBK', 'ASTRA TSO ANGKASA_T154, JL ANGKASA RAYA I BLPK- B16 JAKARTA', 'Sri Hartati', 'first'),
(835, 'PRO00812-2018', 'SCH00812-2018', 'TCH00812-2018', 'teknisi', '2018/10/17', 'Aktivasi', '2-242943555764', 'P0sPAlt2', 'PT ASTRA HONDA MOTOR', 'HEAD OFFICE AHM JL. YOS SUDARSO , JAKARTA UTARA', 'Sri Hartati', 'first'),
(836, 'PRO00813-2018', 'SCH00813-2018', 'TCH00813-2018', 'teknisi', '2018/10/29', 'Aktivasi', 'dp6nPIQX', '2-243261170991', 'LINTAS TEKNOLOGI DIGITAL', 'NDC Jakarta Jl. Jatinegara Barat No.44 Jakarta Timur JAKARTA 13320', 'Trimah Astuti (Rima)', 'first'),
(837, 'PRO00814-2018', 'SCH00814-2018', 'TCH00814-2018', 'teknisi', '2018/10/30', 'Aktivasi', '2-242923508937', 'sEkDo0e2', 'SINGTEL EQUINIX <> CSF', '\"SG1-EQUINIX , SINGAPORE, 20 AYER\r\nRAJAH CRESCENT\"', 'Rahmat Hidayatullah', 'first'),
(838, 'PRO00815-2018', 'SCH00815-2018', 'TCH00815-2018', 'teknisi', '2018/10/29', 'Survey', '2-243320761317', '6FFXGTWS', 'AT&T (KELLOG BROWN & ROOT)', 'Jl. medan Merdeka Barat no 21 KPPTI 5th Floor, IDC', 'Rizqi Aditama ', 'first'),
(839, 'PRO00816-2018', 'SCH00816-2018', 'TCH00816-2018', 'teknisi', '2018/10/30', 'Upgrade', '2-236433847617', 'QSWklGSw', 'STARHUB FOR IPC 500M 1Y', 'AYER RAJAH CRESCENT', 'Rizqi Aditama', 'first'),
(840, 'PRO00817-2018', 'SCH00817-2018', 'TCH00817-2018', 'teknisi', '2018/10/29', 'Survey', '2-243424889375', 'JelSeb3x', ' PT BANK NEGARA INDONESIA ( PERSERO) TBK ', 'H2H BNI TPK KOJA JALAN DIGUL NO. 1.\r\nTANJUNG PRIOK. JAKARTA UTARA\r\n14210', 'Evi Fitria', 'first'),
(841, 'PRO00818-2018', 'SCH00818-2018', 'TCH00818-2018', 'teknisi', '2018/10/30', 'Aktivasi', 'PfubpuVU', '2-243429101092', 'BANK BTPN ', 'H3I PLAZA KUNINGAN HCPT PLAZA KUNINGAN LANTAI 2, JL. RASUNA SAID, JAKARTA 12920 - TELKOM SIGMA SENTUL (DRC BTPN) KAWASAN TELKOM SIGMA SENTUL BOGOR 16810', 'Evi Fitria', 'first'),
(842, 'PRO00819-2018', 'SCH00819-2018', 'TCH00819-2018', 'teknisi', '2018/10/30', 'Survey', '2-243353167727', '0f3xr0mL', 'PT BANK HSBC INDONESIA', 'HSBC Gedung WTC 1 Lt. 5 Jl. Jend Sudirman kav 29-31 JAKARTA 12920', 'Trimah Astuti', 'first'),
(843, 'PRO00820-2018', 'SCH00820-2018', 'TCH00820-2018', 'teknisi', '2018/10/30', 'Survey', '2-243353355909', 'tCoo5BKo', 'PT BANK HSBC INDONESIA', 'Rak HSBC German Center Lt. 5 wing timur Jl. Kapten Subijanto BSD SERPONG 15321', 'Trimah Astuti', 'first'),
(844, 'PRO00821-2018', 'SCH00821-2018', 'TCH00821-2018', 'teknisi', '2018/10/31', 'Survey', '2-243367543674', 'v1hixK3z', 'PT. CIRCLECOM NUSANTARA INDONESIA', '\"Cyber 1 MMR SMS Lantai 3 Jl Kuningan\r\nBarat Raya Jakarta 12710\"', 'Trimah Astuti', 'first'),
(845, 'PRO00822-2018', 'SCH00822-2018', 'TCH00822-2018', 'teknisi', '2018/10/31', 'Survey', '2-243497074336', 'RrT3SREG', 'VISIONET INTERNASIONAL', 'GEDUNG LIPPO KUNINGAN Jl. HR Rasuna Said kav. B12 JAKARTA 12920', 'Trimah Astuti', 'first'),
(846, 'PRO00823-2018', 'SCH00823-2018', 'TCH00823-2018', 'teknisi', '2018/10/29', 'Aktivasi', '2- 232901243671', 'sJDTN1ru', 'LIMA MENARA BINTANG', 'PT LIMA MENARA BINTANG, POLDA METRO JAYA, JL. JENDERAL SUDIRMAN SENAYAN KAV 55, JAKARTA 12190', 'Rizki Maulana Iskanda', 'first'),
(847, 'PRO00824-2018', 'SCH00824-2018', 'TCH00824-2018', 'teknisi', '2018/10/30', 'Dismantle', 'rgvn496q', '2-222830969719', 'NTT COMMUNICATION CORPORATION', 'WISMA EKA JIWA, RUKO 1 LT. 2, JL. MANGGA DUA RAYA JAKARTA', 'Pendi Setiawan', 'first'),
(848, 'PRO00825-2018', 'SCH00825-2018', 'TCH00825-2018', 'teknisi', '2018/10/31', 'Survey', '2-243360488035', 'ATc7JTyf', 'VNT NETWORKS', '\"JL. TEUKU UMAR NO.39, DARAT SEKIP,\r\nPONTIANAK KOTA, DARAT SEKIP, PONTIANAK\r\nKOTA, KOTA PONTIANAK, KALIMANTAN BARAT\r\n78117\"', 'Aprianti Lestari', 'first'),
(849, 'PRO00826-2018', 'SCH00826-2018', 'TCH00826-2018', 'teknisi', '2018/10/31', 'Aktivasi', '2-244966487052', 'TOgVsrrK', 'BANK CENTRAL ASIA', 'Sekolah Notre Dame\r\nJl. Puri Kembang Barat Raya Blok M, Puri Kembangan, Jakarta 11610', 'Evi Fitria', 'first'),
(850, 'PRO00827-2018', 'SCH00827-2018', 'TCH00827-2018', 'teknisi', '2018/10/31', 'Survey', '2-243428862873', 'LWFm59z7', 'PT MATAHARI DEPARTMENT STORE', '\"MENARA MATAHARI JL. BOULEVARD PALEM\r\nRAYA NO. 7 LIPPO KARAWACI TANGERANG\"', 'Sri Hartati', 'first'),
(851, 'PRO00828-2018', 'SCH00828-2018', 'TCH00828-2018', 'teknisi', '2018/10/22', 'Dismantle', '7e7GN7PW', '2-234032336237', 'PT NUTRICIA', 'PT SUGIZINDO, JL. PAHLAWAN KM. 1.6, DESA KARANG ASEM BARAT KEC. CITEREUP BOGOR 16810', 'Pendi Setiawan', 'first'),
(852, 'PRO00829-2018', 'SCH00829-2018', 'TCH00829-2018', 'teknisi', '2018/10/22', 'Dismantle', 'IeGsBX3X', '2-234181237110', 'PT TIRTA INVESTAMA', 'PABRIK CITEREUP, JL. MERCEDES BENZ, DESA CICADAS KEC. GUNUNG PUTRI BOGOR JAWA BARAT', 'Pendi Setiawan', 'first'),
(853, 'PRO00830-2018', 'SCH00830-2018', 'TCH00830-2018', 'teknisi', '2018/10/22', 'Dismantle', 'nCXyTChT', '2-234304857414', 'PT TIRTA INVESTAMA', 'GEDUNG CYBER 2 LT. 12, JL. HR. RASUNA SAID BLOK X-5 NO. 13, JAKARTA', 'Pendi Setiawan', 'first'),
(854, 'PRO00831-2018', 'SCH00831-2018', 'TCH00831-2018', 'teknisi', '2018/10/29', 'Dismantle', 'E2mC11IR', '2-236081609103', 'BANK BTPN ', 'BTPN KCP Cibinong Jl. KSR Dadi Kusmayadi No.4A-5A  Jl. Cipayung Cibinong', 'Trimah Astuti (Rima)', 'first'),
(855, 'PRO00832-2018', 'SCH00832-2018', 'TCH00832-2018', 'teknisi', '2018/10/22', 'Dismantle', 'WpMCnotB', '2-234355840487', 'PT TIRTA INVESTAMA', 'CYBER 2 BUILDING LT. 12, JL. HR. RASUNA SAID BLOK X-5 NO. 13 JAKARTA', 'Pendi Setiawan', 'first'),
(856, 'PRO00833-2018', 'SCH00833-2018', 'TCH00833-2018', 'teknisi', '2018/10/29', 'Dismantle', '7cy0HwWz', '2-236160125040', 'BANK BTPN ', 'KCP CIJANTUNG Jl.  Raya Bogor KM 27, RT 003/07 No. 22, Kelurahan Pekayon, Kecamatan Pasar Rebo', 'Trimah Astuti (Rima)', 'first'),
(857, 'PRO00834-2018', 'SCH00834-2018', 'TCH00834-2018', 'teknisi', '2018/10/29', 'Dismantle', '8x08U2k8', '2-236081640047', 'BANK BTPN ', 'BTPN KC CILEUNGSI Ruko Cibeureum No1 Jl Raya Narogong Km. 22,5 Kp. Cibeureum, RT 1/RW5 Cileungsi Bogor', 'Trimah Astuti (Rima)', 'first'),
(858, 'PRO00835-2018', 'SCH00835-2018', 'TCH00835-2018', 'teknisi', '2018/10/29', 'Dismantle', '81ouh6FI', '2-236160037444', 'BANK BTPN ', 'KANTOR BTPN KK CILEGON Jl. Raya Anyer No.8 Cilegon', 'Trimah Astuti (Rima)', 'first'),
(859, 'PRO00836-2018', 'SCH00836-2018', 'TCH00836-2018', 'teknisi', '2018/10/29', 'Dismantle', 'iVzxDX0f', '2-236368133109', 'BANK BTPN ', 'KANTOR BTPN KK BSD Ruko Toll Boulevard B. 07, Jl. Raya Serpong BSD, Kel. Rawa Buntu, Kec. Serpong, Tangerang Selatan, Banten', 'Trimah Astuti (Rima)', 'first'),
(860, 'PRO00837-2018', 'SCH00837-2018', 'TCH00837-2018', 'teknisi', '2018/10/29', 'Dismantle', '0hemJzzr', '2-236160762684', 'BANK BTPN ', 'BTPN KC GUNUNG SAHARI Jl. Gunung Sahari Raya No 87', 'Trimah Astuti (Rima)', 'first'),
(861, 'PRO00838-2018', 'SCH00838-2018', 'TCH00838-2018', 'teknisi', '2018/10/15', 'Dismantle', 'xhtqqlGu', '2-242680204664', 'BANK BUKOPIN TBK', 'KCP BANK BUKOPIN MT HARYONO Jl MT Haryono Kav 50-51 Jakarta', 'Trimah Astuti (Rima)', 'first'),
(862, 'PRO00839-2018', 'SCH00839-2018', 'TCH00839-2018', 'teknisi', '2018/10/15', 'Survey', '2-243086104211', 'ZxdcWtvC', 'BANK MAYBANK INDONESIA TBK', '\"DRC BII GERMAN CENTER LT. 3,\r\nJL. KAPTEN SUBIJANTO DJ BSD BANTEN TANGERANG\"', 'Evi Fitria', 'first'),
(863, 'PRO00840-2018', 'SCH00840-2018', 'TCH00840-2018', 'teknisi', '2018/10/08', ' Improvement', '804/SR/DQM/2018', 'A7wpbtrw', 'PT. BLUE BIRD TAXI', 'Kantor Pusat Blue Bird Group\r\nJalan Mampang Prapatan No. 60, Mampang Prapatan\r\nJAKSEL 12790.', 'Wahyu Hawibowo', 'first'),
(864, 'PRO00841-2018', 'SCH00841-2018', 'TCH00841-2018', 'teknisi', '2018/10/09', ' Improvement', '2-242943663078', '6vNGeKg0', 'BANK CENTRAL ASIA EVENT THE RITZ-CARLTON JAKARTA', 'The Ritz-Carlton Jakarta, Pacific Place\r\nScbd, Sudirman Central Business District, Jl. Jend. Sudirman No.Kav 52-53, Jakarta 12190', 'Evi Fitria', 'first'),
(865, 'PRO00842-2018', 'SCH00842-2018', 'TCH00842-2018', 'teknisi', '2018/10/15', 'RECONFIG ', '2-243039380889', 'Te1Tn7K9', 'BANK DANAMON ', 'BANK DANAMON FALATEHAN, JL FALATEHAN RAYA 7 MELAWAI, KEBAYORAN BARU JAKSEL 10230', 'Evi Fitria', 'first'),
(866, 'PRO00843-2018', 'SCH00843-2018', 'TCH00843-2018', 'teknisi', '2018/10/19', 'Manageable ', '845/SR/DQM/2018', 'qaGV2ZlM', 'Maybank', 'Cyber 3. MMR, Switch Maybank DC-E07', 'Firdaus Ibrahim Setyo Wiedhi', 'first'),
(867, 'PRO00844-2018', 'SCH00844-2018', 'TCH00844-2018', 'teknisi', '2018/10/19', '829/SR/DQM/2018', '2-32107615085', 'DXnwMPtg', ' MPLS MANRI 144 TPK 2M1422', ' AREA JAKARTA TANJUNG PRIOK, JL. ENGGANO NO. 42 JAKARTA UTARA 14310', 'Firdaus Ibrahim Setyo Wiedhi', 'first'),
(868, 'PRO00845-2018', 'SCH00845-2018', 'TCH00845-2018', 'teknisi', '2018/11/01', 'Aktivasi', '2sQTGtue', '2-243402323735', 'ARTHA TELEKOMINDO', 'LIVING WORLD ALAM SUTERA Jl. Alam Sutera Boulevard Kav. 21, Serpong 15325', 'Trimah Astuti (Rima)', 'first'),
(869, 'PRO00846-2018', 'SCH00846-2018', 'TCH00846-2018', 'teknisi', '2018/11/05', 'SURVEY & AKTIVASI', 'x3Xd1Pzf', '2-247221440509', 'BALI TOWERINDO SENTRA, TBK', 'PT BALI TOWERINDO SENTRA, PROMINENCE TOWER, ALAM SUTRA TANGERANG 15143', 'Trimah Astuti', 'first'),
(870, 'PRO00847-2018', 'SCH00847-2018', 'TCH00847-2018', 'teknisi', '2018/11/05', 'Aktivasi', '1rBUfR7E', '2-245536312470', 'PT.MEISSA BERKAH TEKNOLOGI', 'CYBER 1 LANTAI 8 ( INDONET ) RACK MB 53 A JAKARTA', 'Sri Hartati', 'first'),
(871, 'PRO00848-2018', 'SCH00848-2018', 'TCH00848-2018', 'teknisi', '2018/11/05', 'SURVEY & AKTIVASI', '2-247593609094', 'Ipn84FL7', 'BENDAHARA PENGELUARAN PUSINTEK', '\"KEMENKEU PUSINTEK LAPANGAN BANTENG\r\nGEDUNG SYAFRUDIN PRAWIRANEGARA, JALAN\r\nLAPANGAN BANTENG TIMUR NO.2-4 JAKARTA\"', 'Sri Hartati', 'first'),
(872, 'PRO00849-2018', 'SCH00849-2018', 'TCH00849-2018', 'teknisi', '2018/11/05', 'Survey', '2-243502174124', '4kPXNfn2', 'REACH NETWORK SERVICES INDONESIA', '\"WISMA GKBI LT. 17 SUITE 1701, JL. JEND.\r\nSUDIRMAN NO. 28 JAKARTA 10210\"', 'Rizqi Aditama', 'first'),
(873, 'PRO00850-2018', 'SCH00850-2018', 'TCH00850-2018', 'teknisi', '2018/11/05', 'Survey', '2-246801269483', 'PMZKTCKQ', 'INTIREKA KARSA PAMURTYA', '\"GOLDEN RAMA TOURS & TRAVEL, JL. TANAH\r\nABANG II NO. 73-75 PETOJO SELATAN JAKARTA\r\nPUSAT\"', 'Sri Hartati', 'first'),
(874, 'PRO00851-2018', 'SCH00851-2018', 'TCH00851-2018', 'teknisi', '2018/11/05', 'Aktivasi', '7ztM5dNh', '2-243353663820', 'MEDIA SARANA AKSES', '\"CYBER BUILDING JL. KUNINGAN BARAT NO. 8\r\nJAKARTA\"', 'Nur Aminah', 'first'),
(875, 'PRO00852-2018', 'SCH00852-2018', 'TCH00852-2018', 'teknisi', '2018/11/06', 'Survey', '2-236296062252', '5KOeR4LA', 'SINGTEL FOR ARTAJASA', 'DC LA TB SIMATUPANG LT.2', 'Rahmat Hidayatullah', 'first'),
(876, 'PRO00853-2018', 'SCH00853-2018', 'TCH00853-2018', 'teknisi', '2018/11/06', 'Survey', '2-243695543409', 'X3vyz5W3', 'CTHK SOHO CAPITAL', '\"South Tanjung Duren, Kebon Jeruk, Jakarta\r\nBarat, SOHO Capital.\"', 'Rizqi Aditama', 'first'),
(877, 'PRO00854-2018', 'SCH00854-2018', 'TCH00854-2018', 'teknisi', '2018/11/07', 'Aktivasi', '2-247663936285', 'TwEWsUlc', 'PT. CIRCLECOM NUSANTARA INDONESIA', '\"Cyber 1 MMR SMS Lantai 3 Jl Kuningan\r\nBarat Raya Jakarta 12710\"', 'Trimah Astuti (Rima)', 'first'),
(878, 'PRO00855-2018', 'SCH00855-2018', 'TCH00855-2018', 'teknisi', '2018/11/02', 'Dismantle', 'erpZSKMH', '2-236152152739', ' INOVASI JARINGAN NUSANTARA', 'PT. ANEKA DJAKARTA IRON STEEL, JL. ANCOL BARAT VII NO.5-6 ANCOL PADEMANGAN JAKARTA', 'Trimah Astuti (Rima)', 'first'),
(879, 'PRO00856-2018', 'SCH00856-2018', 'TCH00856-2018', 'teknisi', '2018/11/02', 'Dismantle', 'pTq612FR', '2-234879099810', 'PT BANK DBS INDONESIA', 'KOMPLEKS GLODOK PLAZA BLOK F NO. 25 & 26, JL. PINANGSIA RAYA JAKARTA BARAT', 'Trimah Astuti (Rima)', 'first'),
(880, 'PRO00857-2018', 'SCH00857-2018', 'TCH00857-2018', 'teknisi', '2018/11/08', 'Survey', '2-249435192698', 'KDhsy05L', ' PT REUTERS SERVICES INDONESIA', 'REUTERS SERVICE INDONESIA Sampoerna Startegic Building, 29 floor Jend Sudirman Jakarta 10220', 'Trimah Astuti (Rima)', 'first'),
(881, 'PRO00858-2018', 'SCH00858-2018', 'TCH00858-2018', 'teknisi', '2018/11/06', 'Dismantle', 'uddiTgT9', '2-235040013039', 'BANK MANDIRI (PERSERO) TBK', 'GEDUNG WISMA MANDIRI II LT. 7, JL. KEBON SIRIH NO. 83 JAKARTA 10340', 'Trimah Astuti (Rima)', 'first'),
(882, 'PRO00859-2018', 'SCH00859-2018', 'TCH00859-2018', 'teknisi', '2018/11/08', 'Survey', '2-249502688919', 'BQtZBCJa', 'AT&T for IDEMIA FRANCE SAS', 'Jl. Jendral Sudirman Kav-48A, IT Room IDEMIA FRANCE SAS, AIA Central Fl 38', 'Rizqi Aditama', 'first'),
(883, 'PRO00860-2018', 'SCH00860-2018', 'TCH00860-2018', 'teknisi', '2018/11/09', 'Survey', '2-250674827372', 'p3lB2QXg', 'BANK MANDIRI (PERSERO) TBK', 'Gedung Cyber 1 lt 2 Rack PT ISS Parking Mgt Jl Kuningan Barat Raya No 8 Jakarta 12710', 'Evi Fitria', 'first'),
(884, 'PRO00861-2018', 'SCH00861-2018', 'TCH00861-2018', 'teknisi', '2018/11/12', 'Aktivasi', 'rTngi3tO', '2-247593609094', 'BENDAHARA PENGELUARAN PUSINTEK', '\"KEMENKEU PUSINTEK LAPANGAN BANTENG\r\nGEDUNG SYAFRUDIN PRAWIRANEGARA, JALAN\r\nLAPANGAN BANTENG TIMUR NO.2-4 JAKARTA\"', 'Sri Hartati', 'first'),
(885, 'PRO00862-2018', 'SCH00862-2018', 'TCH00862-2018', 'teknisi', '2018/11/08', 'Survey', '2-250419446373', 'zrTF5upa', 'ATT for ARNOTS 10 MBPS-lld', '\"JL. KH. WAHAB AFFAN NO. 08 KM 28,\r\nPONDOK UNGU, BEKASI, 17132\"', 'Akhsan Ibnu Fajar ', 'first'),
(886, 'PRO00863-2018', 'SCH00863-2018', 'TCH00863-2018', 'teknisi', '2018/11/12', 'Survey', '2-243078425004', 'kCdv2T8A', 'PT SANATEL SERPONG', 'PT SANATEL JL. PUSPA NIAGA BLOK 402 D.1 SEKTOR KOMERSIAL SERPONG 15321', 'Evi Fitria', 'first'),
(887, 'PRO00864-2018', 'SCH00864-2018', 'TCH00864-2018', 'teknisi', '2018/11/12', 'Dismantle', '9IsTOldA', '2-243260448702', 'PT. PRIMA PESONA PRAKARSA', '\"GERAI ITC ROXY ERAFONE SONY CENTRE ITC ROXY MAS LANTAI 3 NO 6 & 7\r\nJAKARTA\"', 'Sri Hartati ', 'first'),
(888, 'PRO00865-2018', 'SCH00865-2018', 'TCH00865-2018', 'teknisi', '2018/11/12', 'Aktivasi', '2-242782187479', 'Z26B8Oew', 'TATA FOR BUMI ARMADA THE BOEING COMPANY 5M', '\"GROUND FLOORJALAN M-1SOEKARNO HATTA\r\nINTERNATIONAL AIRPORT, CENGKARENGJAKARTA 19100\r\nINDONESIA\"', 'Akhsan Ibnu Fajar ', 'first'),
(889, 'PRO00866-2018', 'SCH00866-2018', 'TCH00866-2018', 'teknisi', '2018/11/14', 'SURVEY & AKTIVASI', 'MnIOVi8K', '2-255447214231', 'MEDIATAMA ANUGRAH CITRA', 'SCTV Tower Jalan Asia Afrika Lot 19 Senayan City', 'Trimah Astuti (Rima)', 'first'),
(890, 'PRO00867-2018', 'SCH00867-2018', 'TCH00867-2018', 'teknisi', '2018/11/14', 'Dismantle', 'nMy800aC', '2-235873138112', 'VIVA MEDIA BARU PULOGADUNG', 'PT VIVA MEDIA BARU, RANG MRC LAT 2 JL. RAWA TERATE II  NO 2 KW INDUSTRI PULOGADUNG JAKARTA', 'Trimah Astuti (Rima)', 'first'),
(891, 'PRO00868-2018', 'SCH00868-2018', 'TCH00868-2018', 'teknisi', '2018/11/15', 'SURVEY & AKTIVASI', '2-243211557785', '2-249611462886', 'LINK NET, TBK', '\"KPPTI (NODE LINKNET) JL. Medan Merdeka\r\nBarat no.21 Jakarta Pusat\"', 'Trimah Astuti (Rima)', 'first'),
(892, 'PRO00869-2018', 'SCH00869-2018', 'TCH00869-2018', 'teknisi', '2018/11/15', 'Survey', '2-243353921374', '5ORORUQz', 'SURYA SUKSES INDONESIA', '\"CYBER 1 LANTAI 3 JL KUNINGAN BARAT\r\nNO 8 JAKARTA\"', 'Aprianti Lestari ', 'first'),
(893, 'PRO00870-2018', 'SCH00870-2018', 'TCH00870-2018', 'teknisi', '2018/11/15', 'Survey', '2-255465902966', 'Ne3fKHya', 'PT. PANASONIC GOBEL ECO SOLUTIONS MANUFA', '\"PT PANASONIC DI KAWASAN INDUSTRI MENARA\r\nPERMAI, JL RAYA NAROGONG KM 23.8\r\nCILEUNGSI\"', 'Sri Hartati', 'first'),
(894, 'PRO00871-2018', 'SCH00871-2018', 'TCH00871-2018', 'teknisi', '2018/11/15', 'Aktivasi', '2-251550014148', 'nUDCuQsT', 'VNT NETWORKS', 'IDC DUREN TIGA JAKARTA SELATAN', 'Aprianti Lestari ', 'first'),
(895, 'PRO00872-2018', 'SCH00872-2018', 'TCH00872-2018', 'teknisi', '2018/11/16', 'Survey', '2-254211959741', '0hRTMbol', 'PT TANGARA MITRACOM', 'APJII LT 1 Jl. Kuningan Barat Raya No.8, RT.1/RW.3, Kuningan Barat, Mampang Prapatan Jakarta Selatan 12710', 'Trimah Astuti (Rima)', 'first'),
(896, 'PRO00873-2018', 'SCH00873-2018', 'TCH00873-2018', 'teknisi', '2018/11/16', 'Aktivasi', '2-236623370924', 'dOWKkKAl', 'BANK PERMATA', 'Pusat Grosir Tanah Abang Blok A Lantai Basement 2 (B2) Los F No. 065-066 Jl. H. Fachrudin Tanah Abang Jakarta Pusat Kota Jakarta Pusat 10250', 'Evi Fitria', 'first'),
(897, 'PRO00874-2018', 'SCH00874-2018', 'TCH00874-2018', 'teknisi', '2018/11/16', 'Aktivasi', '2-236686955715', 'FZ1GzglO', 'BANK PERMATA', 'Permata Bank Jalan Kelapa Gading Boulevard Blok H 4 No. 7 Kota Jakarta Utara 14240', 'Evi Fitria', 'first'),
(898, 'PRO00875-2018', 'SCH00875-2018', 'TCH00875-2018', 'teknisi', '2018/11/16', 'Aktivasi', '2-236686958083', 'o4qnFuxp', 'BANK PERMATA', 'Permata Bank Lotte Shopping Avenue Level 2, Ciputra World Building Jalan Dr. Satrio Kav 3 & 5 Setiabudi, .  Kota Jakarta Selatan 12940', 'Evi Fitria', 'first'),
(899, 'PRO00876-2018', 'SCH00876-2018', 'TCH00876-2018', 'teknisi', '2018/11/16', 'Aktivasi', '2-236686958539', '5naEBnkR', 'BANK PERMATA', 'Permata Bank Perumahan Griya Kenari Mas, Blok B.1 No.18-19, Kelurahan Cileungsi Kidul, Kecamatan Cileungsi, Bogor,  Jawa Barat 16820.  Kab. Bogor 16820', 'Evi Fitria', 'first'),
(900, 'PRO00877-2018', 'SCH00877-2018', 'TCH00877-2018', 'teknisi', '2018/11/16', 'Aktivasi', '2-236686958995', 'wXQTAv45', 'BANK PERMATA', '\"	\r\nPermata Bank Jalan Paradise 23 Blok J-1 Kav No. 5.  Kota Jakarta Utara 14340\"', 'Evi Fitria', 'first'),
(901, 'PRO00878-2018', 'SCH00878-2018', 'TCH00878-2018', 'teknisi', '2018/11/16', 'Aktivasi', '2-236686959451', 'XCCZe9G0', 'BANK PERMATA', 'Permata Bank Mid Plaza II Lt Dasar, Jl. Jend. Sudirman Kav. 10-11.  Kota Jakarta Pusat 10220', 'Evi Fitria', 'first'),
(902, 'PRO00879-2018', 'SCH00879-2018', 'TCH00879-2018', 'teknisi', '2018/11/16', 'Dismantle', 'MmQbwmzK', '2-236160684238', 'BANK RABOBANK INTERNATIONAL INDONESIA', '\"PERTOKOAN GLODOK MAKMUR,\r\nBLOK A/38,\r\nJAKARTA 11180\"', 'Trimah Astuti (Rima)', 'first'),
(903, 'PRO00880-2018', 'SCH00880-2018', 'TCH00880-2018', 'teknisi', '2018/11/16', 'Dismantle', 'J48UuRiv', '2-235220481964', 'TRANS NEWS CORPORA', 'GEDUNG BANK MEGA (KAWASAN TRANS TV), Jl. Kapten P. Tendean Kav. 12-14A, Mampang Prapatan Jakarta', 'Trimah Astuti (Rima)', 'first'),
(904, 'PRO00881-2018', 'SCH00881-2018', 'TCH00881-2018', 'teknisi', '2018/11/16', 'Dismantle', 'HPFZaCle', '2-167490165172', 'PT. AT&T GLOBAL NETWORK SERVICES INDONESIA', 'ACTAVIS INDONESIA, JL RAYA BOGOR KM 28, CIBUBUR, JAKARTA TIMUR, 13710', 'Agnes Eka Lestia', 'first'),
(905, 'PRO00882-2018', 'SCH00882-2018', 'TCH00882-2018', 'teknisi', '2018/11/16', 'Survey', '2-257348169546', 'yNKG0T3g', 'BHUMI RANTAU ENERGI', 'WISMA PONDOK INDAH 3 LT 7 Jl. Sultan Iskandar Muda Kav V â€“ TA JAKARTA 12310', 'Trimah Astuti (Rima)', 'first'),
(906, 'PRO00883-2018', 'SCH00883-2018', 'TCH00883-2018', 'teknisi', '2018/11/16', 'Survey', '2-257320587431', 'VirXbUvk', 'BHUMI RANTAU ENERGI', 'WISMA PONDOK INDAH 3 LT 7 Jl. Sultan Iskandar Muda Kav V â€“ TA JAKARTA 12311', 'Trimah Astuti (Rima)', 'first'),
(907, 'PRO00884-2018', 'SCH00884-2018', 'TCH00884-2018', 'teknisi', '2018/11/19', 'Aktivasi', 'BxZqI0J8', '2-247063639746', 'KBR ENGINEERS INDONESIA, PT', 'World Trande Centre Tower 2 (WTC 2) 18th FI Jl. Jend. Sudirman Kav. 29 JAKARTA 12920', 'Trimah Astuti (Rima)', 'first'),
(908, 'PRO00885-2018', 'SCH00885-2018', 'TCH00885-2018', 'teknisi', '2018/11/19', 'Survey', '2-247671542573', 'JW90yOvW', 'KBR ENGINEERS INDONESIA, PT', 'World Trande Centre Tower 2 (WTC 2) 18th FI Jl. Jend. Sudirman Kav. 29 JAKARTA 12921', 'Trimah Astuti (Rima)', 'first'),
(909, 'PRO00886-2018', 'SCH00886-2018', 'TCH00886-2018', 'teknisi', '2018/11/19', 'Aktivasi', '2-243236647207', 'oxhr9XDp', 'PT KBR INDONESIA (WTC2 - KPPTI)', 'PT. KBR INDONESIA, WTC 2 SUDIRMAN LT.18', 'Ilham Akbar Maulana', 'first'),
(910, 'PRO00887-2018', 'SCH00887-2018', 'TCH00887-2018', 'teknisi', '2018/11/20', 'Dismantle', 'cqyWa32m', '2-242868680790', 'BANK MUAMALAT INDONESIA TBK', 'GRAHA 701 JL. DANAU TOBA BLOK G.11 NO. 151, BENDUNGAN HILIR, JAKARTA PUSAT', 'Trimah Astuti (Rima)', 'first'),
(911, 'PRO00888-2018', 'SCH00888-2018', 'TCH00888-2018', 'teknisi', '2018/11/20', 'Dismantle', 'hp7HgZyU', '2-242926799264', 'BANK MUAMALAT INDONESIA TBK', 'BMI KCU JKT PANGLIMA POLIM Jl. Panglima Polim Raya No. 105,106 EF', 'Trimah Astuti (Rima)', 'first'),
(912, 'PRO00889-2018', 'SCH00889-2018', 'TCH00889-2018', 'teknisi', '2018/11/20', 'Dismantle', 'zTu17DG0', '2-235827417005', 'BNI LIFE INSURANCE', 'Graha Telesindo Media Taman Palem Lestari Blok B17 no 27-28 Cengkareng Jakarta', 'Trimah Astuti (Rima)', 'first'),
(913, 'PRO00890-2018', 'SCH00890-2018', 'TCH00890-2018', 'teknisi', '2018/11/19', 'Dismantle', 'i2kr5mqp', '2-234758588861', 'BANK CENTRAL ASIA (BCA)', 'KCP SBD - Setiabudi KCP SBD - Setiabudi', 'Trimah Astuti (Rima)', 'first'),
(914, 'PRO00891-2018', 'SCH00891-2018', 'TCH00891-2018', 'teknisi', '2018/11/21', 'Survey', '2-235127357620', 'kCeNCIg1', 'PT JAKARTA LAND', '\"WTC 3 JL. JEND SUDIRMAN KAV.29-31\r\n\r\nJAKARTA PUSAT\"', 'Sri Hartati', 'first'),
(915, 'PRO00892-2018', 'SCH00892-2018', 'TCH00892-2018', 'teknisi', '2018/11/20', 'Dismantle', '1fT95tR1', '2-247814783423', 'BANK SYARIAH MANDIRI', 'DATA CENTER BSM REMPOA JL. PAHLAWAN KOMPLEKS PERUMAHAN MANDIRI REMPOA', 'Trimah Astuti (Rima)', 'first'),
(916, 'PRO00893-2018', 'SCH00893-2018', 'TCH00893-2018', 'teknisi', '2018/11/20', 'Dismantle', 'Sla0ttfa', '2-243008272269', 'BANK SYARIAH MANDIRI', 'KCP GADING ORCHARD, JALAN KELAPA HIBRIDA RAYA BLOK PF NO 18, JAKARTA UTARA', 'Trimah Astuti (Rima)', 'first'),
(917, 'PRO00894-2018', 'SCH00894-2018', 'TCH00894-2018', 'teknisi', '2018/11/20', 'Dismantle', 'au4kpr29', '2-245464276638', 'BANK RABOBANK INTERNASIONAL INDONESIA PT', 'RSIA HERMINA DAAN MOGOT, JL. KINTAMANI RAYA NO. 2, DAAN MOGOT, JAKARTA 11840', 'Trimah Astuti (Rima)', 'first'),
(918, 'PRO00895-2018', 'SCH00895-2018', 'TCH00895-2018', 'teknisi', '2018/11/20', 'Dismantle', 'rVh5E9vH', '2-245466093911', 'BANK RABOBANK INTERNASIONAL INDONESIA PT', 'RSIA HERMINA DEPOK, JL. RAYA SILIWANGI NO. 50, PANCORAN MAS, DEPOK 16436', 'Trimah Astuti (Rima)', 'first'),
(919, 'PRO00896-2018', 'SCH00896-2018', 'TCH00896-2018', 'teknisi', '2018/11/21', 'Survey', '4R91EWBC', '2-247708578816', 'CAHAYA LEMMON ABADI', 'JL JENDRAL SUDIRMAN, JAKARTA', 'Rahmat Hidayatullah', 'first'),
(920, 'PRO00897-2018', 'SCH00897-2018', 'TCH00897-2018', 'teknisi', '2018/11/21', 'Relokasi', ' SR# 911/SR/DQM/2018', 'rlzZiT4A', 'ISPL -- IETH TYCOM EQX-ETR 180002/ISPL', 'APJII LT 1 Jl. Kuningan Barat Raya No.8, RT.1/RW.3, Kuningan Barat, Mampang Prapatan Jakarta Selatan 12710', 'Adhie Nugroho', 'first'),
(921, 'PRO00898-2018', 'SCH00898-2018', 'TCH00898-2018', 'teknisi', '2018/11/21', 'Survey', '2-235220498238', 'rlzG7b5x', 'DEUTSCHE BANK', '\"DEUTSCHE BANK BUILDING\r\nJLN. IMAM BONJOL NO. 80, JAKARTA10310\"', 'Dody Nugroho', 'first'),
(922, 'PRO00899-2018', 'SCH00899-2018', 'TCH00899-2018', 'teknisi', '2018/11/21', 'Dismantle', '8Oqsws6g', '2-234929604972', 'AL AZHAR INDONESIA', 'KAMPUS UNIVERSITAS ALAZHAR, RUANG PKSI LANTAI 4, JL. SISINGAMANGARAJA KEBAYORAN BARU', 'Trimah Astuti (Rima)', 'first'),
(923, 'PRO00900-2018', 'SCH00900-2018', 'TCH00900-2018', 'teknisi', '2018/11/23', 'Survey', '2-248496086126', 'xxDfOJgI', 'ESTIKO RAMANDA', 'Cyber 1 APJII Jl. Kuningan Barat No. 8 Jakarta 12710', 'Trimah Astuti (Rima)', 'first'),
(924, 'PRO00901-2018', 'SCH00901-2018', 'TCH00901-2018', 'teknisi', '2018/11/26', 'Survey', '2-243403813811', '7gXBrSG2', 'PT TELEKOMUNIKASI INDONESIA TBK', '\"DC CIPUTAT JL.CIPUTAT RAYA NO.9\r\nPONDOK PINANG JAKARTA\"', 'Sri Hartati', 'first'),
(925, 'PRO00902-2018', 'SCH00902-2018', 'TCH00902-2018', 'teknisi', '2018/11/26', 'Aktivasi', 'odtyuSyW', '2-257385991722', 'PT. DENSO INDONESIA', 'JL.KALIMANTAN BLOK E 1-2, KAWASAN MM2100 CIBITUNG, 17530', 'Sri Hartati', 'first'),
(926, 'PRO00903-2018', 'SCH00903-2018', 'TCH00903-2018', 'teknisi', '2018/11/26', 'Survey', '2-257852733043', 'INgWIaXP', 'AKADEMI PIMPINAN PERUSAHAAN (APP) JAKARTA (BEND. J', '\"APP BUILDING JL TIMBUL NO 34 CIPEDAK\r\nJAKARTA\"', 'Sri Hartati', 'first'),
(927, 'PRO00904-2018', 'SCH00904-2018', 'TCH00904-2018', 'teknisi', '2018/11/26', 'Aktivasi', '3c3TTgbE', '2-236269984824', 'PT JAKARTA LAND', 'WTC 3 JL. JEND SUDIRMAN KAV.29-31 JAKARTA PUSAT', 'Sri Hartati', 'first'),
(928, 'PRO00905-2018', 'SCH00905-2018', 'TCH00905-2018', 'teknisi', '2018/11/26', 'Aktivasi', 'Msyp6baT', '2-257858453593', 'ENERGI UNGGUL PERSADA', '\"JL RAYA PEJUANG,MEDAN SATRIA,BEKASI,JABAR\r\n17131\"', 'Aprianti Lestari', 'first'),
(929, 'PRO00906-2018', 'SCH00906-2018', 'TCH00906-2018', 'teknisi', '2018/11/26', 'Survey', '2-257698650305', 'HTar1NSq', 'Indosat Mega Media for PT Sarana Transaksi Digital', '\"PT. Sarana Transaksi Digital\r\nJl Cempaka Putih Raya RT 2 RW 7 Cempaka Putih Timur KEB\r\nON KELAPA, GAMBIR 10510, KODYA JAKARTA PUSAT, DKI JAKARTA\"', 'Muhammad Zulfahmi Yahya', 'first'),
(930, 'PRO00907-2018', 'SCH00907-2018', 'TCH00907-2018', 'teknisi', '2018/11/26', 'Survey', '2-257276544015', 'fb16EuPn', 'STARPACK INDAH MAJU', '\"KAWASAN INDUSTRI JL PULOGADUNG\r\nNO.6B\"', 'Aprianti Lestari', 'first'),
(931, 'PRO00908-2018', 'SCH00908-2018', 'TCH00908-2018', 'teknisi', '2018/11/27', 'Survey', '2qK3pahh', '2-257787725614', 'BANK RAKYAT INDONESIA TBK.PT ', 'Shopee CDC Cyber1 Lantai 2 Jl. Kuningan Barat No.8, RT.1/RW.3 Kuningan Barat, Mampang Prapatan, Kota Jakarta Selatan 12710', 'Evi Fitria', 'first'),
(932, 'PRO00909-2018', 'SCH00909-2018', 'TCH00909-2018', 'teknisi', '2018/11/27', 'Survey', '2-257630246144', 'Ex7GzmIb', 'PERTAMINA EP', '\"MENARA STANDARD CHARTERED,\r\n21ST-29TH FLOOR, JL PROF DR SATRIO\r\nNO 164, KUNINGAN, JAKARTA SELATAN,\r\nDKI JAKARTA, 12950\"', 'Annisya Fahmi Rizqi', 'first'),
(933, 'PRO00910-2018', 'SCH00910-2018', 'TCH00910-2018', 'teknisi', '2018/11/27', 'Survey', '2-257850630800', 'CzWNTS62', 'PRIMA HONEYCOMB INTERNATIONAL', '\"DIAMOND GOLF DDG 107 PANTAI INDAH\r\nKAPUK\"', 'Aprianti Lestari ', 'first'),
(934, 'PRO00911-2018', 'SCH00911-2018', 'TCH00911-2018', 'teknisi', '2018/11/27', 'Aktivasi', '5tIgsLdQ', '2-257764180776', 'MEDIATAMA ANUGRAH CITRA', 'Ged. Cyber 1 Jl. Kuningan Barat No. 8 Mampang Prapatan Jakarta Selatan 12710', 'Trimah Astuti (Rima)', 'first'),
(935, 'PRO00912-2018', 'SCH00912-2018', 'TCH00912-2018', 'teknisi', '2018/11/27', 'Survey', '2-257857347863', 'er173L9M', 'PT CONTAINER MARITIME ACTIVITIES', '\"PT. CMA â€“ CGM, JL. MEDAN BLOK C III\r\nKAWASAN MARUNDA JAKARTA\"', 'Sri Hartati', 'first'),
(936, 'PRO00913-2018', 'SCH00913-2018', 'TCH00913-2018', 'teknisi', '2018/11/27', 'DEAKTIVASI & DISMANTLE ', '2-240205149180', 'hctJBmSb', ' DIREKTORAT JENDERAL ADMINISTRASI HUKUM UMUM, KEME', '\"GEDUNG SENTRA MULIA LANTAI 3, DIREKTORAT JENDERAL ADMINISTRASI\r\nHUKUM UMUM KEMENKUMHAM, JL. HR. RASUNA SAID KAV X-6/8, JAKARTA\"', 'Sri Hartati', 'first'),
(937, 'PRO00914-2018', 'SCH00914-2018', 'TCH00914-2018', 'teknisi', '2018/11/27', 'DEAKTIVASI & DISMANTLE ', 'UZ4Ifnvz', '2-243830846288', 'DIGITAL MAKMUR SEJAHTERA', 'JALAN KUNINGAN BARAT NO 8, CYBER 1 LANTAI 3', 'Rosma Labaikka A', 'first'),
(938, 'PRO00915-2018', 'SCH00915-2018', 'TCH00915-2018', 'teknisi', '2018/11/28', 'Aktivasi', 'eZEsArFC', '2-257317858922', 'BANK MANDIRI (PERSERO) TBK', 'Gedung Cyber 1 lt 2 Rack PT ISS Parking Mgt Jl Kuningan Barat Raya No 8 Jakarta 12710', 'Evi Fitria', 'first'),
(939, 'PRO00916-2018', 'SCH00916-2018', 'TCH00916-2018', 'teknisi', '2018/11/28', 'Aktivasi', '2-219492606885', 'p5QWT8bf', 'AT&T an. MASTERCARD', 'Jalan Jend Sudirman Kav. 1, JAKARTA', 'Rizqi Aditama', 'first'),
(940, 'PRO00917-2018', 'SCH00917-2018', 'TCH00917-2018', 'teknisi', '2018/11/29', 'Survey', '2-257899786840', 'Loc2sBSs', 'PRIMACOM INTERBUANA', '\"BANK BRIIT BUILDING RAGUNAN, JL.\r\nRM. HARSONO NO. 2, RAGUNAN PASAR\r\nMINGGU, JAKARTA SELATAN\"', 'Evi Fitria', 'first'),
(941, 'PRO00918-2018', 'SCH00918-2018', 'TCH00918-2018', 'teknisi', '2018/11/28', 'TROUBLE SHOOT', '2-257858491064', 'PcQ1FRn0', 'KANTOR NOTARIS MALA MUKTI, SH ', 'Kuningan City', 'Indosat Corporate Helpdesk', 'first'),
(942, 'PRO00919-2018', 'SCH00919-2018', 'TCH00919-2018', 'teknisi', '2018/11/29', 'Survey', '2-257742283247', 'bBmITqLf', 'CEMERLANG ABADI MULIA', '\"JL. RAYA KOSAMBI NO.13A DESA MEKAR\r\nJAYA RT.03.RW.02 KEC PURWASARI KAB.\r\nKARAWANG\"', 'Aprianti Lestari', 'first'),
(943, 'PRO00920-2018', 'SCH00920-2018', 'TCH00920-2018', 'teknisi', '2018/11/30', 'Survey', '2-257851954026', '5VPEMv1h', 'AT&T FOR BSH HAUSGERAETE', 'APL Tower , Lt.20 Jl.Letjen S.parman', 'Rizqi Aditama', 'first'),
(944, 'PRO00921-2018', 'SCH00921-2018', 'TCH00921-2018', 'teknisi', '2018/11/30', 'Dismantle', 'BQdXlVXC', '2-251361985545', 'PT BANK QNB INDONESIA', 'KC JABABEKA, KOMP. RUKO CAPITOL BUSSINESS PARK BLOK 2A, BEKASI', 'Trimah Astuti (Rima)', 'first'),
(945, 'PRO00922-2018', 'SCH00922-2018', 'TCH00922-2018', 'teknisi', '2018/11/30', 'Dismantle', 'DC8UAmSa', '2-257637792486', 'PT BANK QNB INDONESIA', 'BANK QNB MENARA JAMSOSTEK I LT. 23, JL. JEND GATOT SUBROTO KAV 38 JAKARTA', 'Trimah Astuti (Rima)', 'first'),
(946, 'PRO00923-2018', 'SCH00923-2018', 'TCH00923-2018', 'teknisi', '2018/12/03', 'Survey', '2-257954425882', 'daSNydhR', 'CAPROCK COMMUNICATION INDONESIA, PT', 'KAWASAN  INDUSTRI MM2100 BLOK GG 5-1 DESA DANAU INDAH 17520', 'Trimah Astuti (Rima)', 'first'),
(947, 'PRO00924-2018', 'SCH00924-2018', 'TCH00924-2018', 'teknisi', '2018/12/03', 'Dismantle', '2uGZIkeu', '2-249646298096', 'BANK MUAMALAT INDONESIA TBK', 'KCP  BOGOR - Cibinong Jl. Centra Ruko Cibinong Blok A-15, Jl.Mayor  Oking No.63 Crimekar Cibinong', 'Trimah Astuti (Rima)', 'first'),
(948, 'PRO00925-2018', 'SCH00925-2018', 'TCH00925-2018', 'teknisi', '2018/12/03', 'Dismantle', 'XyTA5Obi', '2-248523837698', 'MANDIRI AXA GENERAL INSURANCE', 'PT. VALDO INTERNASIONAL, JL. RADEN SALEH I/3A', 'Trimah Astuti (Rima)', 'first'),
(949, 'PRO00926-2018', 'SCH00926-2018', 'TCH00926-2018', 'teknisi', '2018/12/03', 'Dismantle', 'PF9iNw5F', '2-243353429447', 'CENTRIN ONLINE PRIMA', 'CYBER BUILDING LT. BASEMENT, NODE CENTRIN, JL. KUNINGAN BARAT, JAKARTA 12710', 'Trimah Astuti (Rima)', 'first'),
(950, 'PRO00927-2018', 'SCH00927-2018', 'TCH00927-2018', 'teknisi', '2018/12/04', 'Aktivasi', '2-242903916973', '8SXJnWko', 'REACH NETWORK SERVICES INDONESIA', 'Wisma GKBI 17rh Floor S-1701 Jl. Jend. Sudirman No. 28, Jakarta 10210', 'Rizqi Aditama', 'first'),
(951, 'PRO00928-2018', 'SCH00928-2018', 'TCH00928-2018', 'teknisi', '2018/12/04', 'Dismantle', 'KaWKXtSa', '2-242898957230', 'BANK CENTRAL ASIA', 'Mall Ciputra Jl. Arteri S. Parman, Grogol, Jakarta Barat', 'Trimah Astuti (Rima)', 'first'),
(952, 'PRO00929-2018', 'SCH00929-2018', 'TCH00929-2018', 'teknisi', '2018/12/04', 'Survey', '2-257944821822', 'xiN4V3zA', 'PRIMACOM INTERBUANA', 'PT. CBN Nusantara\r\nCyber 2 Tower, 2nd floor\r\nJl. H.R. Rasuna Said Blok X5 No. 13\r\nJakarta Selatan - 12950\r\nIndonesia', 'Evi Fitria', 'first'),
(953, 'PRO00930-2018', 'SCH00930-2018', 'TCH00930-2018', 'teknisi', '2018/12/04', 'Survey', '2-257796920927', 'V8wV5Lff', 'Berca Hardayaperkasa PT', 'Jl. Siliwangi No 76, Bogor', 'Annisya Fahmi Rizqi', 'first'),
(954, 'PRO00931-2018', 'SCH00931-2018', 'TCH00931-2018', 'teknisi', '2018/12/04', 'Survey', '2-257707634113', 'wOm64kiu', 'ARTHA TELEKOMINDO', 'MALL ALAM SUTERA JL. JALUR SUTERA BARAT KAV 16 PINANG ALAM SUTERA TANGERANG 15143', 'Trimah Astuti (Rima)', 'first'),
(955, 'PRO00932-2018', 'SCH00932-2018', 'TCH00932-2018', 'teknisi', '2018/12/04', 'Survey', '2-257707177665', 'V2VSWuh7', 'ARTHA TELEKOMINDO', 'MALL ALAM SUTERA JL. JALUR SUTERA BARAT KAV 16 PINANG ALAM SUTERA TANGERANG 15143', 'Trimah Astuti (Rima)', 'first'),
(956, 'PRO00933-2018', 'SCH00933-2018', 'TCH00933-2018', 'teknisi', '2018/12/04', 'Survey', '2-248725047641', 'wMxJTWEr', ' PT BERCA HARDAYA PERKASA', 'CDC Data center, Cyber 1 Jl. Kuningan Barat No.8, RT.1/RW.3, Kuningan Barat , Mampang Prapatan, Kota Jakarta Selatan 12710', 'Trimah Astuti (Rima)', 'first'),
(957, 'PRO00934-2018', 'SCH00934-2018', 'TCH00934-2018', 'teknisi', '2018/12/04', 'Survey', '2-257908080488', 'G435CxTp', ' PT BERCA HARDAYA PERKASA', 'CDC Data center, Cyber 1 Jl. Kuningan Barat No.8, RT.1/RW.3, Kuningan Barat , Mampang Prapatan, Kota Jakarta Selatan 12710', 'Trimah Astuti (Rima)', 'first'),
(958, 'PRO00935-2018', 'SCH00935-2018', 'TCH00935-2018', 'teknisi', '2018/12/04', 'Survey', '2-248730325305', 'OqoMVTmn', ' PT BERCA HARDAYA PERKASA', 'CDC Data center, Cyber 1 Jl. Kuningan Barat No.8, RT.1/RW.3, Kuningan Barat , Mampang Prapatan, Kota Jakarta Selatan 12710', 'Trimah Astuti (Rima)', 'first'),
(959, 'PRO00936-2018', 'SCH00936-2018', 'TCH00936-2018', 'teknisi', '2018/12/04', 'Survey', '2-257908220708', 'DbQy7pdF', ' PT BERCA HARDAYA PERKASA', 'CDC Data center, Cyber 1 Jl. Kuningan Barat No.8, RT.1/RW.3, Kuningan Barat , Mampang Prapatan, Kota Jakarta Selatan 12710', 'Trimah Astuti (Rima)', 'first'),
(960, 'PRO00937-2018', 'SCH00937-2018', 'TCH00937-2018', 'teknisi', '2018/12/04', 'Survey', '2-248730443595', 'lIktaVRT', ' PT BERCA HARDAYA PERKASA', 'CDC Data center, Cyber 1 Jl. Kuningan Barat No.8, RT.1/RW.3, Kuningan Barat , Mampang Prapatan, Kota Jakarta Selatan 12710', 'Trimah Astuti (Rima)', 'first'),
(961, 'PRO00938-2018', 'SCH00938-2018', 'TCH00938-2018', 'teknisi', '2018/12/05', 'Aktivasi', '2-248633917142', 'TrPxthLz', 'BAKER HUGHES INDONESIA', 'PT BAKER HUGHES INDONESIA SOUTH QUORTER BUILDING JL. RA.\r\nKARTINI KAV. 8, CILANDAK BARAT, JAKARTA SELATAN', 'Sri Hartati', 'first'),
(962, 'PRO00939-2018', 'SCH00939-2018', 'TCH00939-2018', 'teknisi', '2018/12/05', 'Survey', '2-257749614528', '3vdwQyDw', 'AT&T FOR SWIFT MEGA TWR', 'Jl. Kapten Tendean 12-14 Mega Tower Fl-8,  Room-Server', 'Rizqi Aditama', 'first'),
(963, 'PRO00940-2018', 'SCH00940-2018', 'TCH00940-2018', 'teknisi', '2018/12/06', 'DEAKTIVASI & DISMANTLE ', 'Pd9fPGPC', '2-236205915982', 'PT TIRTA INVESTAMA', 'GD. CYBER 2 LT. 12, JL. H.R. RASUNA SAID BLOK X-5 NO. 13 JAKARTA 12950', 'Sri Hartati', 'first'),
(964, 'PRO00941-2018', 'SCH00941-2018', 'TCH00941-2018', 'teknisi', '2018/12/06', 'Aktivasi', 'ycMGZKx3', '2-257392407236', 'PT. DENSO INDONESIA', 'PT DENSO INDONESIA, JL.GAYA MOTOR I NO.6, SUNTER II KEL.SUNGAI BAMBU, 14330', 'Sri Hartati', 'first'),
(965, 'PRO00942-2018', 'SCH00942-2018', 'TCH00942-2018', 'admin', '2018/12/06', 'DEAKTIVASI & DISMANTLE ', 'Sd7bipZi', '2-235904047817', 'CENTRAL PROTEINA PRIMA', 'KPPTI NODE IDIA JL. MEDAN MERDEKA BARAT NO 21', 'Sri Hartati', 'first'),
(966, 'PRO00943-2018', 'SCH00943-2018', 'TCH00943-2018', 'teknisi', '2018/12/06', 'Survey', '2-259560887718', 'Zp1cgVzp', 'PT.NAP INFO LINTAS NUSA', 'Energy Building SCBD, Jl. Jend. Sudirman No.Kav 52-53, RT.5/RW.3, Senayan, Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12190', 'Trimah Astuti (Rima)', 'first'),
(967, 'PRO00944-2018', 'SCH00944-2018', 'TCH00944-2018', 'teknisi', '2018/12/07', 'Survey', '2-259537642447', 'b1UvCZIn', 'PRIMACOM INTERBUANA', 'BANK ARTHA GRAHA (DRC) JL PASIR\r\nPUTIH RAYA NO. 28 , ANCOL,\r\nPADEMANGAN JAKARTA UTARA 14430', ' Evi Fitria ', 'first'),
(968, 'PRO00945-2018', 'SCH00945-2018', 'TCH00945-2018', 'teknisi', '2018/12/07', 'Dismantle', 'LIPhC76U', '2-235130252961', 'PT. LAXO GLOBAL AKSES', 'CYber 2 Building Lt2, JL. Rasuna Said Jakarta Selatan', 'Aprianti Lestari ', 'first'),
(969, 'PRO00946-2018', 'SCH00946-2018', 'TCH00946-2018', 'teknisi', '2018/12/07', 'Dismantle', 'rTpq9bwN', '2-243060202762', 'PT ASTRA INTERNATIONAL TBK', 'GEDUNG WISMA KEIAI LT. 20, JL. JEND. SUDIRMAN KAV. 3 OFFICE, JAKARTA', 'Sri Hartati', 'first'),
(970, 'PRO00947-2018', 'SCH00947-2018', 'TCH00947-2018', 'teknisi', '2018/12/07', 'Dismantle', 'rbGJldTK', '2-237825161610', 'GRAHA COM', 'BLOK M JAKARTA SELATAN LT. 8, JL. BULUNGAN NO.76, KERAMAT PELA\r\nKEBAYORAN BARU', 'Sri Hartati', 'first'),
(971, 'PRO00948-2018', 'SCH00948-2018', 'TCH00948-2018', 'teknisi', '2018/12/10', 'Dismantle', 'pFNsaLH2', '2-249653583253', 'BANK MUAMALAT INDONESIA TBK', 'KK KCP CENGKARENG - DAAN MOGOT, JL. DAAN MOGOT NO. 32 E, KEL. SUKARASA, KEC. TANGERANG KOTA TANGERANG', 'Trimah Astuti (Rima)', 'first'),
(972, 'PRO00949-2018', 'SCH00949-2018', 'TCH00949-2018', 'teknisi', '2018/12/04', 'Standby', 'SR#1034/SR/DQM/2018', 'SNokw4vb', 'Maybank German Center ', 'German Center (Jalan Arteri Golf, Pakulonan Barat, Serpong Utara, Lengkong Gudang, Serpong, Kota Tangerang Selatan, Banten)', 'Â Â Nugraha Dwika Julianto', 'first'),
(973, 'PRO00950-2018', 'SCH00950-2018', 'TCH00950-2018', 'teknisi', '2018/12/10', 'Survey', '2-243086320093', 'nVAMZi0d', 'BANK DBS INDONESIA, PT', 'CAPITAL PLACE Lt 12 Jl Jend. Gatot Subroto Kav 18, Kuningan Barat, Jaksel 12710', 'Trimah Astuti (Rima)', 'first'),
(974, 'PRO00951-2018', 'SCH00951-2018', 'TCH00951-2018', 'teknisi', '2018/12/10', 'Survey', '2-243086653206', 'w4JJA6UD', 'BANK DBS INDONESIA, PT', 'CAPITAL PLACE Lt 12 Jl Jend. Gatot Subroto Kav 18, Kuningan Barat, Jaksel 12710', 'Trimah Astuti (Rima)', 'first'),
(975, 'PRO00952-2018', 'SCH00952-2018', 'TCH00952-2018', 'teknisi', '2018/12/10', 'Survey', '2-242865723091', 'GQZdgU3w', 'BANK DBS INDONESIA, PT', 'Capital Place Lt 17 Jl. Jend. Gatot Subroto Kav 18, Jakarta 12710', 'Trimah Astuti (Rima)', 'first'),
(1002, 'PRO00979-2018', 'SCH00979-2018', 'TCH00979-2018', 'teknisi', '2018/09/03', 'Aktivasi', 'qD3Fnw0E', '2-236021868642', 'BANK BTPN MENARA BTPN - TELKOM SIGMA SENTUL', 'Gedung Menara BTPN, Jl. Dr. Ide Anak Agung Gde Agung Kav. 5.5 - 5.6, Jakarta Selatan 12950 - Telkom Sigma Sentul (DRC BTPN), Kawasan Telkom Sigma Sentul, Bogor 16810', 'Evi Fitria', 'first'),
(1003, 'PRO00980-2018', 'SCH00980-2018', 'TCH00980-2018', 'teknisi', '2018/05/08', 'Dismantle', '2AwpQvmJ', '2-220171204152', 'PT. HEINZ ABC INDONESIA', 'Kecamatan Klari Karawang Timur, Pabrik Heinze ABC Desa Walahar', 'Nur Aminah', 'first'),
(1004, 'PRO00981-2018', 'SCH00981-2018', 'TCH00981-2018', 'teknisi', '2018/09/07', 'Survey', '2-236417725167', 'vZhTTVW2', 'BANK SYARIAH MANDIRI', 'BSM Jl. S. Hasanudin No. 57, Jakarta Selatan 12450', 'Evi Fitria', 'first'),
(1005, 'PRO00982-2018', 'SCH00982-2018', 'TCH00982-2018', 'teknisi', '2018/09/13', 'Survey', '2-236565423168', 'nJpai7Dz', 'APLIKASI KARYA ANAK BANGSA ', 'Gojek Condet, Jl Condet Raya 88 RT 001/RW03, Kec Kramatjati, Jakarta Timur 13760', 'Trimah Astuti ', 'first'),
(1006, 'PRO00983-2018', 'SCH00983-2018', 'TCH00983-2018', 'teknisi', '2018/09/13', 'Aktivasi', '2-236012428942', 'bPJLdFUk', 'PERTAMINA RETAIL - SPBU Coco Kemang', 'SPBU Coco Kemang\r\nJl. Kemang Selatang Raya No.105A, Kel. Bangka, Kec. Mampang Prapatan', 'Rosma Labaikka A.', 'first'),
(1007, 'PRO00984-2018', 'SCH00984-2018', 'TCH00984-2018', 'teknisi', '2018/09/14', 'Survey', '2-236390976751', 'zZkPAFXo', 'BANK DANAMON SERPONG', '\"BANK DANAMON SERPONG, JL. PAHLAWAN SERIBU KAV. 201 SEKTOR 6 BUMI SERPONG DAMAI TANGERANG 15111\r\n\r\n\"', 'Evi Fitria', 'first'),
(1008, 'PRO00985-2018', 'SCH00985-2018', 'TCH00985-2018', 'teknisi', '2018/09/14', 'Survey', '2-236391119387', 'UNAGhgmN', 'BANK DANAMON KEBON SIRIH', 'BANK DANAMON  JL KEBON SIRIH NO. 15 JAKARTA  10340', 'Evi Fitria', 'first'),
(1009, 'PRO00986-2018', 'SCH00986-2018', 'TCH00986-2018', 'teknisi', '2018/09/10', 'Survey', '2-234823189261', 'ObyrHK35', 'GLOBAL DIGITAL NIAGA', 'The Energy Building Lot 11A Lt. 3', 'Trimah Astuti', 'first'),
(1015, 'PRO00989-2018', 'SCH00989-2018', 'TCH00989-2018', 'teknisi', '2018/12/12', 'DEAKTIVASI & DISMANTLE ', 'wBcfQirK', 'NMeAgkfe', 'ari', 'aa', 'Nur Aminah', 'first'),
(1014, 'PRO00988-2018', 'SCH00988-2018', 'TCH00988-2018', 'teknisi', '2018/08/27', 'Survey', '2-236066002918', 'yohzLStF', 'PT. ARISTI JASADATA', 'PT.CBA CHEMICAL INDUSTRY GRHA CBA JL.CBD, PARAMOUNT SERPONG KAV. 6 GADING SERPONG, TANGERANG 15811 BANTEN (1)\r\nGRAHA ANABATIC GRAHA ANABATIC JL.SCIENTIA BOULEVARD KAV U2 SUMMARECON SERPONG TANGERA (2)', 'NA', 'first'),
(1016, 'PRO00990-2018', 'SCH00990-2018', 'TCH00990-2018', 'teknisi', '2018/09/17', 'Aktivasi', '2-234781987535', 'bHBhAI95', 'PT Regus Business Centre Indonesia (DBS Bank Tower', 'DBS Bank Tower Lt. 28, Ciputra World One, \r\nJl. Prof. Dr. Satrio Kav. 3-5, Jakarta, 12940 (1)\r\nGedung KPPTI , Jl. MEDAN MERDEKA BARAT NO 21 (2)', 'Agung Pribadi Yahya ', 'first'),
(1017, 'PRO00991-2018', 'SCH00991-2018', 'TCH00991-2018', 'teknisi', '2018/12/10', 'Aktivasi', 'rwpnBy19', '2-258861569539', 'TRADA TELECOM INDONESIA', 'Gedung Cyber lantai 8 Jl. Kuningan Barat No.8 Jakarta Selatan', 'Rosma Labaikka A.', 'first'),
(1018, 'PRO00992-2018', 'SCH00992-2018', 'TCH00992-2018', 'teknisi', '2018/12/10', 'DEAKTIVASI & DISMANTLE ', '2-258745642938', 'ctIgldwb', 'KOMITE PERCEPATAN PENYEDIAAN INFRASTRUKTUR PRIORIT', 'Menara Merdeka, Jalan Budi Kemuliaan I Nomor 2, Lantai 8, Jakarta', 'Sri Hartati', 'first'),
(1019, 'PRO00993-2018', 'SCH00993-2018', 'TCH00993-2018', 'teknisi', '2018/12/11', 'Dismantle', 'PACATb3b', '2-257348879187', 'MANDIRI AXA GENERAL INSURANCE', 'RUANG COLO JATIS MOBILE/SPACE 06, IDC INDONESIA GEDUNG CYBER 1 LT. 7, JL. KUNGINGAN BARAT JAKARTA SELATAN', 'Trimah Astuti ', 'first'),
(1020, 'PRO00994-2018', 'SCH00994-2018', 'TCH00994-2018', 'teknisi', '2018/12/11', 'Aktivasi', 'A42eEqAt', '2-257883059610', 'BANK BTPN', 'BTPN SENTUL', 'Annisya Fahmi Rizqi ', 'first'),
(1021, 'PRO00995-2018', 'SCH00995-2018', 'TCH00995-2018', 'teknisi', '2018/12/12', 'Aktivasi', 'D8Tbtt0S', '2-236568916870', 'DEUTSCHE BANK', 'Telkom Sigma Sentul', 'Evi Fitria', 'first'),
(1022, 'PRO00996-2018', 'SCH00996-2018', 'TCH00996-2018', 'teknisi', '2018/12/13', 'Aktivasi', 'OzrCgJH4', '2-236737408364', 'VF ASIA LIMITED (INDONESIA LIASON OFFICE)', 'Gedung Cyber Lantai 8 Jl. Kuningan Barat No.8 Jakarta Selatan', 'Rosma Labaikka A. ', 'first'),
(1023, 'PRO00997-2018', 'SCH00997-2018', 'TCH00997-2018', 'teknisi', '2018/12/14', 'Dismantle', 'qoEoA713', '2-258010438338', 'PT BANK HSBC INDONESIA', 'KANTOR CABANG PEMBANTU JAKARTA PASAR PAGI LAMA, JL. PASAR PAGI LAMA NO. 86, KEL. ROA MALAKA, KEC. TAMBORA, JAKARTA BARAT', 'Evi Fitria', 'first'),
(1024, 'PRO00998-2018', 'SCH00998-2018', 'TCH00998-2018', 'teknisi', '2018/12/14', 'Survey', '2-262292217050', '43Tb0nrF', 'PT BANK ANZ INDONESIA', 'ANZ - WTC 3 Jl Jend Sudirman Kav 29, Jakarta 12920', 'Evi Fitria', 'first'),
(1025, 'PRO00999-2018', 'SCH00999-2018', 'TCH00999-2018', 'teknisi', '2018/12/14', 'Survey', '2-262335785270', 'mqN6T9zF', 'PT BANK ANZ INDONESIA', 'ANZ - WTC 3 Jl Jend Sudirman Kav 29, Jakarta 12921', 'Evi Fitria', 'first'),
(1026, 'PRO01000-2018', 'SCH01000-2018', 'TCH01000-2018', 'teknisi', '2018/12/13', 'Survey', '2-235211658792', 'WhyuazVz', 'DEUTSCHE BANK', 'RACK DEUTSCHE BANK DCI CIBITUNG Jl. IRIAN 1 BLOK GG 5-1, KAWASAN INDUSTRI MM2100, CIKARANG BARAT 17520 - RACK DEUTSCHE BANK DC TELKOM SIGMA SENTUL, KAWASAN TELKOM SIGMA SENTUL BOGOR 16810', 'Evi Fitria', 'first'),
(1027, 'PRO01001-2018', 'SCH01001-2018', 'TCH01001-2018', 'teknisi', '2018/12/14', 'SURVEY & AKTIVASI', '2-263382323146', 'MuS5rliz', 'ADI INTI MANDIRI SOLUSI', ' IDC Duren 3, Jakarta', 'Evi Fitria', 'first'),
(1028, 'PRO01002-2018', 'SCH01002-2018', 'TCH01002-2018', 'teknisi', '2018/12/17', 'Aktivasi', '2-236242607778', 'Fc1V8JDU', 'VF ASIA LIMITED', 'VF ASIA LIMITED Jl. Boulevard Raya, Rt.3/Rw.17 East Kelapa Gading, Kelapa Gading, North Jakarta City, Jakarta', 'Chairul Fadillah', 'first'),
(1029, 'PRO01003-2018', 'SCH01003-2018', 'TCH01003-2018', 'teknisi', '2018/02/07', 'Aktivasi', '2-170179979411-18.12.18.16.30', 'KnlS1A1t', 'SOSIAL REPUBLIK INDONESIA', 'KEMENSOS BUILDING, PANTI MELATI, Jl. GEBANGSARI NO 38 BAMBU APUS CIPAYUNG JAKARTA TIMUR, DKI JAKARTA, 13890, Indonesia', 'Annisya Fahmi', ''),
(1030, 'PRO01004-2018', 'SCH01004-2018', 'TCH01004-2018', 'teknisi', '2018/02/14', 'Aktivasi', '2-170110051863-18.12.18.19.55', '9sW1e2hy', 'INDONESIA COMNETS PLUS PT_BINTARO', '\"GD. WISMA MULIA LT 50-51, JL. JEND\r\nGATOT SUBROTO NO 42 KUNINGAN\r\nBARAT MAMPANG, DKI JAKARTA 12710\"', 'Hesti Setiowati', ''),
(1031, 'PRO01005-2018', 'SCH01005-2018', 'TCH01005-2018', 'teknisi', '2018/02/23', 'PT PRUDENTIAL LIFE ASSURANCE', '2-163657143932-18.12.18.23.37', '3KVP2Plm', 'PT Prudential', 'Jl. Jend Sudirman kav 79 (Prudential tower)', 'Dendy Hartanto', ''),
(1032, 'PRO01006-2018', 'SCH01006-2018', 'TCH01006-2018', 'teknisi', '2018/05/02', 'Aktivasi', '2-216173857008-18.12.18.31.07', 'RUS39JOl', 'PT. AIA FINANCIAL', 'Telkom Sigma Sentul City, Sentul City, Jalan Ir H Juanda, Cijayanti, Babakan, Bogor 16810', 'Debby', ''),
(1033, 'PRO01007-2018', 'SCH01007-2018', 'TCH01007-2018', 'teknisi', '2018/05/03', 'Aktivasi', '2-219185782571-18.12.18.32.47', 'C3aw62iN', 'PATRA TELEKOMUNIKASI INDONESIA', 'JL. PRINGGONDANI II NO. 33, ALTERNATIF\r\nCIBUBUR, DEPOK 16954', 'Adya Pramesthi', ''),
(1036, 'PRO01010-2018', 'SCH01010-2018', 'TCH01010-2018', 'teknisi', '2018/02/23', 'Dismantle', '4GeUKNGo-18.12.18.52.43', '2-172221704696', 'CITIBANK NA', 'CITIBANK TOWER - CITIBANK KLP GADING, JL.BOULEVARD BARAT RAYA BLOK LC6 NO.1-3', 'Debby ', '');
INSERT INTO `tbl_project_wo` (`id_project`, `kode_project`, `kode_jadwal`, `kode_teknisi`, `level`, `tgl_project`, `project_title`, `wo_id`, `so_id`, `customer`, `lokasi`, `pic`, `status`) VALUES
(1035, 'PRO01009-2018', 'SCH01009-2018', 'TCH01009-2018', 'teknisi', '2018/03/19', 'Aktivasi', 'v0WNQw2U-18.12.18.46.18', '2-216125313392', 'SOSIAL REPUBLIK INDONESIA', '\"JL. SALEMBA RAYA 28, KENARI â€“ SENEN,\r\nJAKARTA PUSAT, DKI JAKARTA, 10430\"', 'Annisya Fahmi', ''),
(1037, 'PRO01011-2018', 'SCH01011-2018', 'TCH01011-2018', 'teknisi', '2018/05/17', 'Aktivasi', '2-220250714708-18.12.18.55.56', 'aJdMfoJv', 'BANK SHINHAN INDONESIA', 'RUKO TIME SQUARE JL ALTERNATIF CIBUBUR JATI KARYA JATI SAMPURNA BEKASI 17435', ' Evi Fitria ', ''),
(1038, 'PRO01012-2018', 'SCH01012-2018', 'TCH01012-2018', 'teknisi', '2018/05/18', 'Aktivasi', '2-220239212389-18.12.18.57.42', 'kI3Qo6dd', 'PT. HOME CREDIT INDONESIA ', 'DC Finexus, Jl. Ir. H. Juanda 3 No.22, RT.2/RW.2, Kb. Klp., Gambir, Jakarta 10120', 'Debby', ''),
(1039, 'PRO01013-2018', 'SCH01013-2018', 'TCH01013-2018', 'teknisi', '2018/01/27', 'Dismantle', 'QdCEv5mM-18.12.18.59.46', '2-97181965492', 'BANK BTPN', 'KANTOR BTPN PANDEGLANG, JL. RAYA SERANG KM. 1, CURUG SAWER RT 001/009, KEL PANDEGLANG, KEC. PANDEGLANG, PANDEGLANG 42211', 'Debby', ''),
(1040, 'PRO01014-2018', 'SCH01014-2018', 'TCH01014-2018', 'teknisi', '2018/04/19', 'Aktivasi', '2-148275659506-18.12.18.02.26', 'o9edwZye', 'BANK PERMATA', 'DRC Bank Permata, Jl.  Hayam Wuruk No 84, Maphar, Jakarta 11160', 'Evi Fitria', ''),
(1041, 'PRO01015-2018', 'SCH01015-2018', 'TCH01015-2018', 'teknisi', '2018/06/04', 'Aktivasi', '2-228991187461-18.12.18.04.41', 'HeOEUJ7L', 'LIMA MENARA BINTANG', 'IDC DUREN TIGA (RACK 5MB), JL. DUREN TIGA RAYA LT. 2 BLOK H NO.7 DUREN TIGA PT. ADI INTI MANDIRI SOLUSI, MMR LT.3, JAKARTA 12760', 'Debby', ''),
(1042, 'PRO01016-2018', 'SCH01016-2018', 'TCH01016-2018', 'teknisi', '2018/07/02', 'Aktivasi', '2-215977641193-18.12.18.07.17', 'dzPwEPyu', 'PT BANK HSBC INDONESIA ', 'HSBC WTC 1 Lt. 5 Jln. Jend. Sudirman Kav. 29, Jakarta 12920', 'Evi Fitria', ''),
(1043, 'PRO01017-2018', 'SCH01017-2018', 'TCH01017-2018', 'teknisi', '2018/07/03', 'Aktivasi', '2-184241140203-18.12.18.09.39', 'BcuLImNy', 'JOB PERTAMINA-JADESTONE ENERGY(OGAN KOMERING)LTD', 'Arkadia Office Tower F Lantai 4, Jl. Letjend Term. Simatupang No.kav 88, RT.1/RW.1, Jakarta 12520', 'Debby', ''),
(1044, 'PRO01018-2018', 'SCH01018-2018', 'TCH01018-2018', 'teknisi', '2018/07/05', 'Aktivasi', '2-220058117963-18.12.18.11.06', 'BXMFQ2Bn', 'CHEVRON PACIFIC INDONESIA', '\"Chevron Sentral Senayan 1, Jl. Asia Afrika\r\nNo. 8 Jakarta 10270\"', 'Agung Pribadi Yahya', ''),
(1045, 'PRO01019-2018', 'SCH01019-2018', 'TCH01019-2018', 'teknisi', '2018/07/05', 'Aktivasi', '2-220082753083-18.12.18.12.32', 'BAfRehbr', 'BANK MAYBANK INDONESIA TBK ', 'Garden Shopping Arcade Beaufort Nomor 8C, Central Park, Grogol Petamburan Jakarta Barat', 'Debby', ''),
(1046, 'PRO01020-2018', 'SCH01020-2018', 'TCH01020-2018', 'teknisi', '2018/05/07', 'Aktivasi', '2-220088673495-18.12.18.13.53', '7dzBASMU', 'PT.KARYAPUTRASURYAGEMILANG', ' KPSG Menara Sunlife Jalan Dr Ide Anak Agung Gde Agung Blok 6.3, Kawasan Mega Kuningan, RT.5/RW.2', 'Rahmat Hidayatullah', ''),
(1047, 'PRO01021-2018', 'SCH01021-2018', 'TCH01021-2018', 'teknisi', '2018/07/09', 'Aktivasi', '2-234290413062-18.12.18.15.23', 'Q0yCC9pT', 'BERDIKARI PRIMA MANDIRI', 'GEDUNG CYBER LANTAI 1 APJII JL. KUNINGAN BARAT NO. 8 JAKARTA', 'Nur Aminah', ''),
(1048, 'PRO01022-2018', 'SCH01022-2018', 'TCH01022-2018', 'teknisi', '2018/07/10', 'Aktivasi', '2-233909907302-18.12.18.17.25', 'eT9Fx3a1', 'PT. UNILEVER INDONESIA TBK (UNILEVER WISMA ALDIRON', 'UNILEVER WISMA ALDIRON DIRGANTARA\r\nJL. GATOT SUBROTO KAV. 72. PANCORAN\r\nJAKARTA', 'Sri Hartati', ''),
(1049, 'PRO01023-2018', 'SCH01023-2018', 'TCH01023-2018', 'teknisi', '2018/07/11', 'Aktivasi', '2-216049921197-18.12.18.18.36', 'pqTFOLdJ', 'AT&T ', 'JL. Mampang Prapatan Raya No. 139 , Graha Mobisel Building ,4th Floor, PT Monier Room Server, Jakarta- 12790 ', 'Tri Purnomo', ''),
(1070, 'PRO01044-2018', 'SCH01044-2018', 'TCH01044-2018', 'teknisi', '2018/07/23', 'Survey', '2-234749513263-18.12.18.02.05', 'AuTTt9SI', 'Bank Muamalat Kebayoran Baru', 'JL. PANGLIMA POLIM RAYA N0.36B  KEB_BARU JAKARTA 1', 'Evi Fitria', ''),
(1071, 'PRO01045-2018', 'SCH01045-2018', 'TCH01045-2018', 'teknisi', '2018/07/24', 'TS', '2-234822294355', '35VtXBx5', 'GUNAWAN WIBISONO 02130056277 ', 'GUNAWAN WIBISONO 02130056277 ', 'M.Sauqie', 'first'),
(1051, 'PRO01025-2018', 'SCH01025-2018', 'TCH01025-2018', 'teknisi', '2018/04/08', 'Survey', '2-215907658171-18.12.18.24.28', 'CtyBDnqJ', 'SUN LIFE FINANCIAL INDONESIA, PT', 'The Plaza IBM, Jl. MH. Thamrin No. 28 - 30, The Plaza Complex, Gondangdia, Menteng, RT.9/RW.5, RT.9/RW.5, Gondangdia, Menteng, Jakarta Pusat 10350', 'Debby', ''),
(1053, 'PRO01027-2018', 'SCH01027-2018', 'TCH01027-2018', 'teknisi', '2018/03/07', 'Aktivasi', '2-172326401964-18.12.18.27.26', '9BVVXnyc', 'HKT GLOBAL (SINGAPORE) PTE.LTD - PCCW', '\"Jl Jend. Sudirman Kav 52-53, Jakarta\r\nEnergy Building, 15 Fl Sudirman Central Business District\"', 'Tri Purnomo', ''),
(1054, 'PRO01028-2018', 'SCH01028-2018', 'TCH01028-2018', 'teknisi', '2018/03/15', 'Aktivasi', '2-213324528449-18.12.18.30.28', 'Ogua34nC', 'QUANTUM TERA NETWORK', '\"CINERE RESORT APARTMENT, JALAN\r\nRAYA GANDUL, GANDUL, CINERE,\r\nGANDUL, CINERE, KOTA DEPOK 16512\"', 'Adya Pramesthi', ''),
(1055, 'PRO01029-2018', 'SCH01029-2018', 'TCH01029-2018', 'teknisi', '2018/07/26', 'Aktivasi', '2-234602901478-18.12.18.31.39', 'ahrmp30L', 'BANK CENTRAL ASIA PASAR KEBAYORAN LAMA (PSK)', 'WISMA 46, PASAR KEBAYORAN LAMA, JL. KEBAYORAN LAMA 174 JAKARTA', 'Evi Fitria', ''),
(1056, 'PRO01030-2018', 'SCH01030-2018', 'TCH01030-2018', 'teknisi', '2018/04/16', 'Aktivasi', '2-152516615365-18.12.18.33.45', 'bU8roGCl', 'SUPRA BOGA LESTARI - GRAND WISATA', 'SUPRA BOGA LESTARI - GRAND WISATA', 'Andri Setyawan', ''),
(1057, 'PRO01031-2018', 'SCH01031-2018', 'TCH01031-2018', 'teknisi', '2018/07/26', 'Aktivasi', '2-234603026863-18.12.18.34.20', 'Rilim3Tf', 'BANK CENTRAL ASIA BATU CEPER (BCP)', 'BATU CEPER, JL. BATU CEPER RAYA 18 A-B, JAKARTA', 'Evi Fitria', ''),
(1058, 'PRO01032-2018', 'SCH01032-2018', 'TCH01032-2018', 'teknisi', '2018/07/26', 'Aktivasi', '2-234603274312-18.12.18.35.18', 'K77BIqBF', '\"BANK CENTRAL ASIA          PASAR TANAH ABANG (PTB', 'KCP BCA WAHID HASYIM TANAH ABANG, JL. KH FACHRUDIN 36 BLOK D/23, JAKARTA', 'Evi Fitria', ''),
(1059, 'PRO01033-2018', 'SCH01033-2018', 'TCH01033-2018', 'teknisi', '2018/04/19', 'Aktivasi', 'URDo7lqq-18.12.18.35.46', '2-216093208856', 'PT. ZURICH TOPAS LIFE ', 'Mayapada Tower 2, Jl. Jend Sudirman Kav.27 Jakarta 12920 - Taman Tekno, Komplek Pergudangan Taman Tekno Blok D No 8,  BSD City, Tangerang Selatan, Serpong 15314', 'Evi Fitria ', ''),
(1060, 'PRO01034-2018', 'SCH01034-2018', 'TCH01034-2018', 'teknisi', '2018/07/26', 'Aktivasi', '2-234603589603-18.12.18.36.01', 'SDaeJb1E', 'BANK CENTRAL ASIA 	 TANAH ABANG BLOK A (TNA)', 'TANAH ABANG BLOK A, JL. KH FAHRUDIN LOST D1 - G NO. 63 / B1/ F80 - 81, JAKARTA', 'Evi Fitria', ''),
(1061, 'PRO01035-2018', 'SCH01035-2018', 'TCH01035-2018', 'teknisi', '2018/07/26', 'Aktivasi', '2-234607946287-18.12.18.37.34', 'T07QJ61Z', 'BANK CENTRAL ASIA TANGERANG (TGR)', 'KCU BCA TANGERANG JL. KISAMAUN NO. 57 TANGERANG', 'Evi Fitria', ''),
(1062, 'PRO01036-2018', 'SCH01036-2018', 'TCH01036-2018', 'teknisi', '2018/04/23', 'Aktivasi', '2-215977388647-18.12.18.37.57', 'ScZP09sR', 'TATA - NAP INFO', ' Cyber 1', 'Tri Purnomo', ''),
(1063, 'PRO01037-2018', 'SCH01037-2018', 'TCH01037-2018', 'teknisi', '2018/07/26', 'Aktivasi', '2-234608291588-18.12.18.38.29', 'fCuDwcrW', 'BANK CENTRAL ASIA PERUM CIBODAS (CIB)', 'PERUM CIBODAS, RUKO DUTAMAS PLAZA BLOK A/23 TANGERANG', 'Evi Fitria', ''),
(1064, 'PRO01038-2018', 'SCH01038-2018', 'TCH01038-2018', 'teknisi', '2018/07/27', 'Aktivasi', '2-234898724714-18.12.18.39.25', 'LG6WwMAB', ' TELE GLOBE GLOBAL, PT ', 'Gedung Cyber Kuningan Barat, Rack X APJII lantai 1 JAKARTA 12710', 'Trimah Astuti (Rima)', ''),
(1065, 'PRO01039-2018', 'SCH01039-2018', 'TCH01039-2018', 'teknisi', '2018/07/20', 'Survey', '2-234528037392-18.12.18.43.38', 'QZOErf1X', 'PT. MELVAR LINTASNUSA', 'GEDUNG CYBER 1 LT 7, IDC JL KUNINGAN BARAT', 'Akhsan Ibnu Fajar', ''),
(1066, 'PRO01040-2018', 'SCH01040-2018', 'TCH01040-2018', 'teknisi', '2018/04/19', 'Aktivasi', '2-148275201600-18.12.18.44.09', 'SiBKhzwt', 'BANK PERMATA', 'DRC Bank Permata, Jl. Mh Thamrin Blok B1 No.1 Bintaro Sektor 7 Pondok Aren, Tangerang, 15224', 'Evi Fitria', ''),
(1067, 'PRO01041-2018', 'SCH01041-2018', 'TCH01041-2018', 'teknisi', '2018/06/06', 'Aktivasi', '2-233594255574-18.12.18.46.15', 'lP4WJ7RT', 'INDONESIA INFRASTRUCTURE FINANCE ', 'THE ENERGY BUILDING LT.3, JL. JEND SUDIRMAN KAV.52-53 JAKARTA 10110', 'Debby ', ''),
(1068, 'PRO01042-2018', 'SCH01042-2018', 'TCH01042-2018', 'teknisi', '2018/06/26', 'Aktivasi', '2-152516615821-18.12.18.47.31', 'HmUe6U7T', 'PT. SUPRA BOGA LESTARI TBK (FARMERS MARKET BINTARO', 'FARMERS MARKET BINTARO EXCHANGE LG FLOOR JL. LINGKAR LUAR BINTARO JAYA SEKTOR 7', 'Sri Hartati', ''),
(1069, 'PRO01043-2018', 'SCH01043-2018', 'TCH01043-2018', 'teknisi', '2018/07/10', 'Aktivasi', '540/SR/DQM/2018', 'LIu3g71M', 'Pergantian Konektor Port 14 (Djakarta Raya Semesta', 'CDC Cyber', 'Very Aandinata', 'first'),
(1072, 'PRO01046-2018', 'SCH01046-2018', 'TCH01046-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530823866-18.12.18.13.01', 'zvGDnM4c', 'TIN u/ AT&T', 'AT&T (TIN) 200M 3 Cyber KPPTI', 'Tri Purnomo', ''),
(1073, 'PRO01047-2018', 'SCH01047-2018', 'TCH01047-2018', 'teknisi', '2018/12/14', 'Survey', '2-259169863857', 'J9G0Ldd1', 'MEGA AKSES PERSADA', 'MEGA AKSES PERSADA', 'Achmad Fadhillah', 'first'),
(1074, 'PRO01048-2018', 'SCH01048-2018', 'TCH01048-2018', 'teknisi', '2018/08/20', 'Aktivasi', '2-219943833760-18.12.18.15.38', '6GFG9dC5', ' AT&Tu/ KONE MNC', '\"Media MNC Tower Floor 9th, Jalan Kebon Sirih Kav. 17-19,Park Hyatt Tower,Data Centre Room,9th Floor,Jakarta-\r\n10340, Indonesia\"', 'Tri Purnomo ', ''),
(1075, 'PRO01049-2018', 'SCH01049-2018', 'TCH01049-2018', 'teknisi', '2018/12/14', 'Survey', '2-259130498664', 'hPnI1Egv', 'MEGA AKSES PERSADA', 'MEGA AKSES PERSADA', 'Achmad Fadhillah', 'first'),
(1076, 'PRO01050-2018', 'SCH01050-2018', 'TCH01050-2018', 'teknisi', '2018/12/14', 'Survey', '2-257920586108', 'iR1mFyNS', 'CIPTAKOM MEDIA NUSA', 'CIPTAKOM MEDIA NUSA', 'Achmad Fadhillah', 'first'),
(1077, 'PRO01051-2018', 'SCH01051-2018', 'TCH01051-2018', 'teknisi', '2018/12/14', 'Survey', '2-259130499126', 'RIKIduzw', 'MEGA AKSES PERSADA', 'MEGA AKSES PERSADA', 'Achmad Fadhillah', 'first'),
(1078, 'PRO01052-2018', 'SCH01052-2018', 'TCH01052-2018', 'teknisi', '2018/12/14', 'Aktivasi', '2-257772223480', 'T3MWVl5x', 'INDOSAT SINGAPORE PTE LTD', 'ISPL CHINA LIFE IEPL 50M PLAZA OFFICE TOWER (BIZNET)', 'Rahmat Hidayatullah', 'first'),
(1079, 'PRO01053-2018', 'SCH01053-2018', 'TCH01053-2018', 'teknisi', '2018/12/14', 'Survey', '2-263419236630', 'QZudun6I', 'PT DENSO TEN MANUFACTURING INDONESIA', 'Kawasan, Industri Menara Permai, Jl. Raya\r\nNarogong Km 23.85, Cileungsi, Bogor ,\r\nIndonesia', 'Dina Karunia Ramadhan', 'first'),
(1080, 'PRO01054-2018', 'SCH01054-2018', 'TCH01054-2018', 'teknisi', '2018/12/17', 'Survey', '2-262976742167', 'VXhlsLJr', 'BANK CENTRAL ASIA', 'BCA KCP BUSINESS PARK RUKAN\r\nBUSINESS PARK BLOK B-1 & B-2 JL.\r\nMERUYA ILIR NO. 88, JAKARTA 11620', 'Evi Fitria', 'first'),
(1081, 'PRO01055-2018', 'SCH01055-2018', 'TCH01055-2018', 'teknisi', '2018/12/18', 'Survey', '2-257929538976', 'CMsG1yhB', 'TATA FOR CREDIT AGRICOLE', 'JL. MEDAN MERDEKA BARAT No. 21', 'Akhsan Ibnu Fajar', 'first'),
(1082, 'PRO01056-2018', 'SCH01056-2018', 'TCH01056-2018', 'teknisi', '2018/08/28', 'Aktivasi', '2-234781234470-18.12.18.30.41', 'NmrG8C1w', 'PT Regus Business Centre Indonesia', '(Allianz Tower) H Tower Lt. 18, Jl. HR Rasuna Said, Jakarta, 12940', 'Muhammad Zulfahmi Yahya', ''),
(1083, 'PRO01057-2018', 'SCH01057-2018', 'TCH01057-2018', 'teknisi', '2018/09/10', 'Aktivasi', '2-234781881483-18.12.18.31.44', 'v5TpXWvd', 'PT Regus Business Centre Indonesia', 'Tempo Scan Tower Lt. 32,\r\nJl. HR. Rasuna Said Kav. 3-4, Jakarta, 12950', 'Agung Pribadi Yahya', ''),
(1084, 'PRO01058-2018', 'SCH01058-2018', 'TCH01058-2018', 'teknisi', '2018/09/18', 'Aktivasi', '2-233910166411-18.12.18.33.15', 'oFApVmKh', 'PT. UNILEVER INDONESIA TBK', '\"UNILEVER INDONESIA WEST JAVA ZARA\r\nCIKARANG, JL.JABABEKA V BLOK U NO. 14-\r\n16, CIKARANG, BEKASI\"', 'Sri Hartati', ''),
(1085, 'PRO01059-2018', 'SCH01059-2018', 'TCH01059-2018', 'teknisi', '2018/08/14', 'Survey', '2-235755148836-18.12.18.33.39', 'VVcqFMwR', 'BHLN.DCNS', 'Sentral Senayan 2 Sentral Senayan 2 lantai 7 ', 'Rosma Labaikka A', ''),
(1086, 'PRO01060-2018', 'SCH01060-2018', 'TCH01060-2018', 'teknisi', '2018/09/20', 'Relokasi', '2-236611242585-18.12.18.34.18', 'GpkWJAT6', 'PT ASTRA INTERNATIONAL TBK', 'ASTRA TSO PDC SCY [T005], JL. GAYA MOTOR\r\n\r\nBARAT NO. 8 JAKARTA (1)\r\nNODE MPLS (PE) INDOSAT (2)', 'Sri Hartati', ''),
(1087, 'PRO01061-2018', 'SCH01061-2018', 'TCH01061-2018', 'teknisi', '2018/09/21', 'Aktivasi', '2-235755026883-18.12.18.34.47', 'yXGKTd7x', 'SINAR WIJAYA PLYWOOD INDUSTRIES', 'Wisma Nusantara 15thfloor Jl MH Thamrin No 59,', 'Rosma Labaikka A', ''),
(1088, 'PRO01062-2018', 'SCH01062-2018', 'TCH01062-2018', 'teknisi', '2018/09/21', 'Aktivasi', '2-236564872317-18.12.18.35.17', 'OiJFw1nP', 'ARUPA CLOUD NUSANTARA', 'ARUPA, BANK NEGARA INDONESIA JL. JEND SUDIRMAN KAV 1 JAKARTA 10220 - IDC DUREN TIGA JL. DUREN TIGA RAYA NO. 7H RT 09/RW 05 JAKARTA 12760', 'Evi Fitria', ''),
(1089, 'PRO01063-2018', 'SCH01063-2018', 'TCH01063-2018', 'teknisi', '2018/09/21', 'Aktivasi', '2-235993258062-18.12.18.35.42', 'fhAoso8G', 'OPHIR HOLDINGS & SERVICES (UK) LTD', 'BT GLOBAL SOLUTIONS (OPHIR HOLDINGS & SERVICES (UK) LTD)\r\nJln Jendral Sudirman Kav 9 Ratu Plaza Office Tower,Jakarta 10270 (1)\r\nNODE BT JL. MEDAN MERDEKA BARAT NO 21 (2)', 'Agung Pribadi Yahya', ''),
(1090, 'PRO01064-2018', 'SCH01064-2018', 'TCH01064-2018', 'teknisi', '2018/09/21', 'Aktivasi', '2-235187026820-18.12.18.36.05', 'IB3ZVD7S', 'IMS Health Indonesia', 'Jalan Jendral Sudirman Kav. 7-8', 'Akhsan Ibnu Fajar', ''),
(1091, 'PRO01065-2018', 'SCH01065-2018', 'TCH01065-2018', 'teknisi', '2018/09/19', 'Aktivasi', '2-235638213528-18.12.18.36.41', 'XNJpfm1P', 'CEMERLANG ABADI MULIA', 'JL. RAYA NAROGONG KM. 7 NO.33\r\nBOJONG MENTENG RAWALUMBU BEKASI', 'Aprianti Lestari', ''),
(1092, 'PRO01066-2018', 'SCH01066-2018', 'TCH01066-2018', 'teknisi', '2018/09/24', 'Aktivasi', '2-236589765568-18.12.18.37.14', 'FnNS9dTV', 'AT&T for Levi Strauss', 'PT Bank Nationalnobu, Jl. MH Thamrin\r\nNo.2 Boulevard 110', '\"Akhsan Ibnu Fajar ', ''),
(1093, 'PRO01067-2018', 'SCH01067-2018', 'TCH01067-2018', 'teknisi', '2018/09/27', 'Aktivasi', '2-234503417621-18.12.18.37.44', '928O3tTB', 'PT MAXINDO NETWORK', 'CYBER 1, RAK10, MMR IDC CYBER, LANTAI 7, JL. KUNINGAN BARAT RAYA NO.8 JAKARTA 12710', 'Evi Fitria', ''),
(1094, 'PRO01068-2018', 'SCH01068-2018', 'TCH01068-2018', 'teknisi', '2018/09/19', 'Aktivasi', '2-234946994240-18.12.18.38.17', 'qlXH05H0', 'ARTAJASA PEMBAYARAN ELEKTRONIS PT ', 'Gedung Lintasarta Lt.2 (DC) Jl. TB. Simatupang Kav.10 Jakarta Selatan 12430', 'Evi Fitria', ''),
(1095, 'PRO01069-2018', 'SCH01069-2018', 'TCH01069-2018', 'teknisi', '2018/05/09', 'Dismantle', '1VlTTLsF-18.12.18.39.28', '2-220065585503', 'PT. HEINZ ABC INDONESIA', 'Jalan Jendral Sudirman KAV 32, INTILAND TOWER lantaii 3A', 'Nur Aminah', ''),
(1096, 'PRO01070-2018', 'SCH01070-2018', 'TCH01070-2018', 'teknisi', '2018/05/08', 'Dismantle', '2AwpQvmJ-18.12.18.40.32', '2-220171204152', 'PT. HEINZ ABC INDONESIA', 'Kecamatan Klari Karawang Timur, Pabrik Heinze ABC Desa Walahar', 'Nur Aminah', ''),
(1097, 'PRO01071-2018', 'SCH01071-2018', 'TCH01071-2018', 'teknisi', '2018/06/11', 'Dismantle', '2-220469789265-18.12.18.45.03', '2-227969499466', 'MARINA ANCOL GREEN HOTEL', 'JL.LODAN TIMUR NO 7, TAMAN IMPIAN JAYA ANCOL', 'Nur Aminah', ''),
(1098, 'PRO01072-2018', 'SCH01072-2018', 'TCH01072-2018', 'teknisi', '2018/05/28', 'Dismantle', '6rtOPWJq-18.12.18.47.02', '2-156779608306', 'AJE INDONESIA', '\"JL. ARYA KEMUNING NO. 198 (BELAKANG PERUMAHAN PERIUK JAYA)\r\nTANGERANG\"', 'Indah Mulyati', ''),
(1099, 'PRO01073-2018', 'SCH01073-2018', 'TCH01073-2018', 'teknisi', '2018/06/29', 'Dismantle', 'QUOv0fBX-18.12.18.48.33', '2-187193276819', 'GRAHA LAYAR PRIMA MALL OF INDONESIA', 'MALL OF INDONESIA, Jln. Boulevard Barat No.1 Kelapa Gading JAKARTA', 'Indah Mulyati ', ''),
(1100, 'PRO01074-2018', 'SCH01074-2018', 'TCH01074-2018', 'teknisi', '2018/10/11', 'Dismantle', 'SXQ5Oz0a-18.12.18.56.10', '2-242786886371', 'BHLN.DCNS', 'Sentral Senayan 2 Sentral Senayan 2 lantai 7 ', 'Rosma Labaikka A', ''),
(1101, 'PRO01075-2018', 'SCH01075-2018', 'TCH01075-2018', 'teknisi', '2018/10/15', 'Aktivasi', '2-236230818576-18.12.18.56.58', 'UyAOwplQ', 'PT NETTOCYBER INDONESIA', 'PT. NETTOCYBER INDONESIA The Manhatan Square Mid Tower 2nd Floor Jl. Tb Simatupang No.1s Jakarta 12430', 'Trimah Astuti', ''),
(1102, 'PRO01076-2018', 'SCH01076-2018', 'TCH01076-2018', 'teknisi', '2018/08/15', 'Survey', '2-234377946670-18.12.18.57.59', 'oUd7TUWw', ' HYPERNET INDODATA', 'Graha Kirana  Kelurahan Sunter Jaya, Tanjung Priok Kelurahan Sunter Jaya, Tanjung Priok 14350 Jakarta', 'NA', ''),
(1103, 'PRO01077-2018', 'SCH01077-2018', 'TCH01077-2018', 'teknisi', '2018/11/12', 'Aktivasi', '2-247593609094-18.12.18.59.39', 'Ipn84FL7', 'BENDAHARA PENGELUARAN PUSINTEK', '\"KEMENKEU PUSINTEK LAPANGAN BANTENG\r\nGEDUNG SYAFRUDIN PRAWIRANEGARA, JALAN\r\nLAPANGAN BANTENG TIMUR NO.2-4 JAKARTA\"', 'Sri Hartati', ''),
(1104, 'PRO01078-2018', 'SCH01078-2018', 'TCH01078-2018', 'teknisi', '2018/11/15', 'Aktivasi', '2-234931719123-18.12.18.00.29', 'JvMUIUnm', 'PT PRIMA WAHANA CARAK', '\"WTC 3 JL JEND SUDIRMAN KAV 29-31 LT 34\r\nJAKARTA\"', 'Sri Hartati', ''),
(1105, 'PRO01079-2018', 'SCH01079-2018', 'TCH01079-2018', 'teknisi', '2018/11/16', 'Aktivasi', '2-242773504688-18.12.18.17.17', '33hzRi4e', 'ENERGI UNGGUL PERSADA', 'JL RAYA PEJUANG,MEDAN SATRIA,BEKASI,JABAR\r\n17131', 'Aprianti Lestari ', ''),
(1106, 'PRO01080-2018', 'SCH01080-2018', 'TCH01080-2018', 'teknisi', '2018/11/22', 'Aktivasi', '2-246801269483-18.12.18.21.16', 'PMZKTCKQ', 'INTIREKA KARSA PAMURTYA', '\"GOLDEN RAMA TOURS & TRAVEL, JL. TANAH\r\nABANG II NO. 73-75 PETOJO SELATAN JAKARTA\r\nPUSAT\"', 'Sri Hartati', ''),
(1107, 'PRO01081-2018', 'SCH01081-2018', 'TCH01081-2018', 'teknisi', '2018/11/27', 'Aktivasi', '2-254211959741-18.12.18.24.03', '0hRTMbol', 'PT TANGARA MITRACOM', 'APJII LT 1 Jl. Kuningan Barat Raya No.8, RT.1/RW.3, Kuningan Barat, Mampang Prapatan Jakarta Selatan 12710', 'Trimah Astuti (Rima)', ''),
(1108, 'PRO01082-2018', 'SCH01082-2018', 'TCH01082-2018', 'teknisi', '2018/11/28', 'Aktivasi', '2-250419446373-18.12.18.25.22', 'zrTF5upa', 'ATT for ARNOTS 10 MBPS-lld', '\"JL. KH. WAHAB AFFAN NO. 08 KM 28,\r\nPONDOK UNGU, BEKASI, 17132\"', 'Akhsan Ibnu Fajar ', ''),
(1109, 'PRO01083-2018', 'SCH01083-2018', 'TCH01083-2018', 'teknisi', '2018/11/29', 'Aktivasi', '2-242737339371-18.12.18.13.01', 'qnViTWzB', 'PT. SATRIA ANTARAN PRIMA', 'JL BINTARA JAYA RAYA NO 3', 'Aprianti Lestari ', ''),
(1110, 'PRO01084-2018', 'SCH01084-2018', 'TCH01084-2018', 'teknisi', '2018/11/30', 'Aktivasi', '2-249435192698-18.12.18.15.52', 'KDhsy05L', ' PT REUTERS SERVICES INDONESIA', 'REUTERS SERVICE INDONESIA Sampoerna Startegic Building, 29 floor Jend Sudirman Jakarta 10220', 'Trimah Astuti (Rima)', ''),
(1111, 'PRO01085-2018', 'SCH01085-2018', 'TCH01085-2018', 'teknisi', '2018/12/14', 'Aktivasi', '2-257850630800-18.12.18.20.15', 'CzWNTS62', 'PRIMA HONEYCOMB INTERNATIONAL', '\"DIAMOND GOLF DDG 107 PANTAI INDAH\r\nKAPUK\"', 'Aprianti Lestari ', ''),
(1112, 'PRO01086-2018', 'SCH01086-2018', 'TCH01086-2018', 'teknisi', '2018/04/10', 'Aktivasi', '2-216049921197-18.12.18.23.55', 'pqTFOLdJ', 'AT&T ', 'JL. Mampang Prapatan Raya No. 139 , Graha Mobisel Building ,4th Floor, PT Monier Room Server, Jakarta- 12790 ', 'Tri Purnomo', ''),
(1113, 'PRO01087-2018', 'SCH01087-2018', 'TCH01087-2018', 'teknisi', '2018/04/10', 'Aktivasi', '2-216049921197-18.12.18.23.55', 'pqTFOLdJ', 'AT&T ', 'JL. Mampang Prapatan Raya No. 139 , Graha Mobisel Building ,4th Floor, PT Monier Room Server, Jakarta- 12790 ', 'Tri Purnomo', ''),
(1114, 'PRO01088-2018', 'SCH01088-2018', 'TCH01088-2018', 'teknisi', '2018/03/07', 'Relokasi', '2-213389007383-18.12.18.24.40', '2-215924098745', 'PT. AXA TECHNOLOGY SERVICES ASIA INDONESIA', 'Axa Tower Kuningan City Lt. 12, Jl. Prof Dr. Satrio Kav. 18 Setiabudi Kuningan, Jakarta 12940', 'Debby ', ''),
(1115, 'PRO01089-2018', 'SCH01089-2018', 'TCH01089-2018', 'teknisi', '2018/03/19', 'Aktivasi', '2-186999396526-18.12.18.25.11', '2K1Aloox', 'TATA - OPPO', 'CTG SBB OPPO TANGERANG', 'Tri Purnomo', ''),
(1116, 'PRO01090-2018', 'SCH01090-2018', 'TCH01090-2018', 'teknisi', '2018/02/26', 'Aktivasi', 'aLXehB7V-18.12.18.25.47', '2-213331307136', ' PRIMACOM INTERBUANA', 'BANK INA DC DCI CIBITUNG 17520', 'Evi Fitria ', ''),
(1117, 'PRO01091-2018', 'SCH01091-2018', 'TCH01091-2018', 'teknisi', '2018/02/22', 'Aktivasi', 'Hdug5vid-18.12.18.26.17', '2-213389972243', 'GENERAL MOTOR INDONESIA', 'PT. VUTEQ INDONESIA JL. CEMPAKA KM 37 RT.003 RW.002 KEL. JATIMULYA KEC. TAMBUN SELATAN BEKASI', 'Nur Aminah', ''),
(1118, 'PRO01092-2018', 'SCH01092-2018', 'TCH01092-2018', 'teknisi', '2018/04/23', 'Aktivasi', '2-215969739966-18.12.18.27.14', '0iFb5w0C', 'AT&T - ABOTT', 'Wisma Pondok Indah 2 , 10 Fl Jl.Sultan Iskandar Muda Kav V-TA, Server room, 10th floor, Only one rack, Pondok Indah Office Tower 2, Jakarta, Indonesia â€“ 12310', 'Tri Purnomo', ''),
(1119, 'PRO01093-2018', 'SCH01093-2018', 'TCH01093-2018', 'teknisi', '2018/03/27', 'Aktivasi', 'Jr3kEuGP-18.12.18.27.24', '2-216805517175', 'DAVID JAHJA', 'Apartemen gading mediterania residences', 'Faizar Hasbi', ''),
(1120, 'PRO01094-2018', 'SCH01094-2018', 'TCH01094-2018', 'teknisi', '2018/04/30', 'Aktivasi', '2-220206673203-18.12.18.28.12', 'lFpSNzrT', 'PT GRAHA COM', '\"BLOK M PLAZA LT. 8, JL. BULUNGAN NO.76,\r\nKERAMAT PELA KEBAYORAN BARU BLOK M\r\nJAKARTA SELATAN\"', 'Sri Hartati', ''),
(1121, 'PRO01095-2018', 'SCH01095-2018', 'TCH01095-2018', 'teknisi', '2018/01/27', 'Dismantle', 'QdCEv5mM-18.12.18.28.53', '2-97181965492', 'BANK BTPN', 'KANTOR BTPN PANDEGLANG, JL. RAYA SERANG KM. 1, CURUG SAWER RT 001/009, KEL PANDEGLANG, KEC. PANDEGLANG, PANDEGLANG 42211', 'Debby', ''),
(1122, 'PRO01096-2018', 'SCH01096-2018', 'TCH01096-2018', 'teknisi', '2018/04/19', 'Aktivasi', '2-148275201600-18.12.18.29.29', 'SiBKhzwt', 'BANK PERMATA', 'DRC Bank Permata, Jl. Mh Thamrin Blok B1 No.1 Bintaro Sektor 7 Pondok Aren, Tangerang, 15224', 'Evi Fitria', ''),
(1123, 'PRO01097-2018', 'SCH01097-2018', 'TCH01097-2018', 'teknisi', '2018/05/22', 'Survey', '2-152516615821-18.12.18.30.09', 'HmUe6U7T', 'PT. SUPRA BOGA LESTARI TBK (FARMERS MARKET BINTARO', 'FARMERS MARKET BINTARO EXCHANGE LG FLOOR JL. LINGKAR LUAR BINTARO JAYA SEKTOR 7', 'Sri Hartati', ''),
(1124, 'PRO01098-2018', 'SCH01098-2018', 'TCH01098-2018', 'teknisi', '2018/04/27', 'Dismantle', 'mGd0OTls-18.12.18.31.00', '2-97181924155', 'BANK BTPN', 'KANTOR BTPN JOHAR KARAWANG, JL. RUKO GRAND PLAZA BLOK IV NO. 11-12, JL. RAYA GALUH MAS, KEC. TALUK JAMBE TIMUR, KARAWANG 41361', 'Debby', ''),
(1125, 'PRO01099-2018', 'SCH01099-2018', 'TCH01099-2018', 'teknisi', '2018/03/01', 'Aktivasi', 'JzxSHqiI-18.12.18.31.34', '2-214185636263', 'PT BANK DBS INDONESIA', 'ANZ RBS PONDOK INDAH BRANCH, JL. METRO PONDOK INDAH KAV. IIIBB PONDOK INDAH JAKARTA SELATAN', ' Evi Fitria ', ''),
(1126, 'PRO01100-2018', 'SCH01100-2018', 'TCH01100-2018', 'teknisi', '2018/05/17', 'Aktivasi', '2-216999389301-18.12.18.32.08', 'MUqlEGeO', ' AT&T - Eaton 2M Bidakara ', 'Eaton Corporation, Menara Bidakara 2, JI. Jend. Gatot Subroto Kav, 71-73 Pancoran, 12th Floor, Telco Room, Jakarta, Indonesia, 12870', 'Tri Purnomo', ''),
(1127, 'PRO01101-2018', 'SCH01101-2018', 'TCH01101-2018', 'teknisi', '2018/05/18', 'Aktivasi', '2-220239212389-18.12.18.32.17', 'kI3Qo6dd', 'PT. HOME CREDIT INDONESIA ', 'DC Finexus, Jl. Ir. H. Juanda 3 No.22, RT.2/RW.2, Kb. Klp., Gambir, Jakarta 10120', 'Debby', ''),
(1128, 'PRO01102-2018', 'SCH01102-2018', 'TCH01102-2018', 'teknisi', '2018/05/14', 'Aktivasi', '2-216805981799-18.12.18.32.45', 'i7ILW2C2', 'PT. ASTRA SEDAYA FINANCE', 'GERMAN CENTER, JL. KAPTEN SUBIJANTO DS BSD CITY TANGGERANG 15321', 'Evi Fitria ', ''),
(1129, 'PRO01103-2018', 'SCH01103-2018', 'TCH01103-2018', 'teknisi', '2018/05/03', 'Aktivasi', '2-219185782571-18.12.18.33.06', 'C3aw62iN', 'PATRA TELEKOMUNIKASI INDONESIA', 'JL. PRINGGONDANI II NO. 33, ALTERNATIF\r\nCIBUBUR, DEPOK 16954', 'Adya Pramesthi', ''),
(1130, 'PRO01104-2018', 'SCH01104-2018', 'TCH01104-2018', 'teknisi', '2018/06/06', 'Aktivasi', '2-233594255574-18.12.18.34.59', 'lP4WJ7RT', 'INDONESIA INFRASTRUCTURE FINANCE ', 'THE ENERGY BUILDING LT.3, JL. JEND SUDIRMAN KAV.52-53 JAKARTA 10110', 'Debby ', ''),
(1131, 'PRO01105-2018', 'SCH01105-2018', 'TCH01105-2018', 'teknisi', '2018/05/24', 'Survey', '2-220370628500', 'UuiPdm2q', ' DUNIA LUXINDO PT', 'Victorias Secret Aeon Mall, Jalan BSD Raya Utama Ground Floor, Atrium Lobby Tangerang, Banten, Serpong 15345', 'Debby ', 'first'),
(1134, 'PRO01108-2018', 'SCH01108-2018', 'TCH01108-2018', 'teknisi', '2018/11/05', 'Survey', '2-243502174124-18.12.18.01.44', '4kPXNfn2', 'REACH NETWORK SERVICES INDONESIA', '\"WISMA GKBI LT. 17 SUITE 1701, JL. JEND.\r\nSUDIRMAN NO. 28 JAKARTA 10210\"', 'Rizqi Aditama', ''),
(1133, 'PRO01107-2018', 'SCH01107-2018', 'TCH01107-2018', 'teknisi', '2018/04/08', 'Survey', '2-215907658171-18.12.18.37.03', 'CtyBDnqJ', 'SUN LIFE FINANCIAL INDONESIA, PT', 'The Plaza IBM, Jl. MH. Thamrin No. 28 - 30, The Plaza Complex, Gondangdia, Menteng, RT.9/RW.5, RT.9/RW.5, Gondangdia, Menteng, Jakarta Pusat 10350', 'Debby', ''),
(1135, 'PRO01109-2018', 'SCH01109-2018', 'TCH01109-2018', 'teknisi', '2018/12/12', 'TROUBLE SHOOT', '2-263091206862', '8uPsMtD9', 'KANTOR NOTARIS MALA MUKTI', 'Kuningan City', 'Indosat Corporate Helpdesk', 'first'),
(1136, 'PRO01110-2018', 'SCH01110-2018', 'TCH01110-2018', 'teknisi', '2018/12/18', 'Aktivasi', 'gMNATpcT', '2-263490579976', 'PRIMA HONEYCOMB INTERNATIONAL', 'DIAMOND GOLF DDG 107 PANTAI INDAH\r\nKAPUK', 'Aprianti Lestari ', 'first'),
(1137, 'PRO01111-2018', 'SCH01111-2018', 'TCH01111-2018', 'teknisi', '2018/12/18', 'Survey', '2-263374651260', 'aiU4l8x7', ' PT BANK DBS INDONESIA', 'PT AOS Jl Radio Dalam no.16 lt. 4, Kebayoran Baru Jakarta 12140', 'Trimah Astuti ', 'first'),
(1138, 'PRO01112-2018', 'SCH01112-2018', 'TCH01112-2018', 'teknisi', '2018/12/18', 'Aktivasi', 'Odw983GK', ' 2-263485628910', 'SURYA SUKSES INDONESIA', 'CYBER 1 LANTAI 3 JL KUNINGAN BARAT NO 8 JAKARTA', 'Aprianti Lestari', 'first'),
(1139, 'PRO01113-2018', 'SCH01113-2018', 'TCH01113-2018', 'teknisi', '2018/12/14', 'PENARIKAN KABEL', '2-243376638528', 'XcZN4kLv', 'AT&T (NNI  BEARER 1G )', 'MSC Lt.6 ', 'Rizqi Aditama', 'first'),
(1140, 'PRO01114-2018', 'SCH01114-2018', 'TCH01114-2018', 'teknisi', '2018/01/31', 'Aktivasi', 'weMOIO4U-18.12.19.01.55', '2-172340838437', 'PT. CITIGROUP SEKURITAS INDONESIA', 'PT DCI INDONESIA - JL IRIAN 1 BLOK GG5-1, KAWASAN INDUSTRI MM2100, CIBITUNG, CIKARANG BARAT, BEKASI', 'Nur Aminah', ''),
(1141, 'PRO01115-2018', 'SCH01115-2018', 'TCH01115-2018', 'teknisi', '2018/10/03', 'Aktivasi', 'c6vIKIv2-18.12.19.06.16', ' 2-129494579926', 'REACH TELSTRA FOR VISA INTERNATIONAL', '\"Jl. Jend. Sudirman No. 28, Wisma GKBI\r\nLt. 17 S-1701\"', 'Rizqi Aditama', ''),
(1142, 'PRO01116-2018', 'SCH01116-2018', 'TCH01116-2018', 'teknisi', '2018/01/22', 'Aktivasi', 'gbDn0PFN-18.12.19.09.04', '2-170985238044', 'BEND. PENGELUARAN BPPTL (AMRAN FIRDAUS)', 'BPPTL, JL M KAHFI II NO 88, Cipedak, Jagakarsa, Kota Jakarta Selatan, DKI JAKARTA, 12630, Indonesia', 'Annisya Fahmi', ''),
(1143, 'PRO01117-2018', 'SCH01117-2018', 'TCH01117-2018', 'teknisi', '2018/01/26', 'Dismantle', 'S07M8TnF-18.12.19.12.15', '2-165862108380', 'CITIBANK NA', 'CITIBANK SOUTH QUARTER GEDUNG B LT. 6, JLN. RA. KARTINI NO. 8, CILANDAK BARA, JAKARTA', 'Debby ', ''),
(1144, 'PRO01118-2018', 'SCH01118-2018', 'TCH01118-2018', 'teknisi', '2018/01/31', 'Aktivasi', '2-167876084864-18.12.19.13.42', '2-172214669889', 'BANK BTPN', 'Gedung Menara BTPN Jl. Dr. Ide Anak Agung Gde Agung Kav. 5.5 - 5.6 Jakarta Selatan 12950', 'Muhammad Indra Kurniawan', ''),
(1145, 'PRO01119-2018', 'SCH01119-2018', 'TCH01119-2018', 'teknisi', '2018/01/26', 'Dismantle', 'S07M8TnF-18.12.19.15.30', '2-165862108380', 'CITIBANK NA', 'CITIBANK SOUTH QUARTER GEDUNG B LT. 6, JLN. RA. KARTINI NO. 8, CILANDAK BARA, JAKARTA', 'Debby ', ''),
(1146, 'PRO01120-2018', 'SCH01120-2018', 'TCH01120-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-167994377287-18.12.19.18.51', 'vLzp4nmd', 'TELENET ', '\"LIPPO CYBER PARK JL. BOULEVARD\r\nGAJAH MADA, 2179-81 LIPPO KARAWACI\r\nTANGERANG, BANTEN\"', 'Hesti Setiowati', ''),
(1147, 'PRO01121-2018', 'SCH01121-2018', 'TCH01121-2018', 'teknisi', '2018/02/12', 'Aktivasi', '2-167994377287-18.12.19.23.44', 'vLzp4nmd', 'TELENET ', '\"LIPPO CYBER PARK JL. BOULEVARD\r\nGAJAH MADA, 2179-81 LIPPO KARAWACI\r\nTANGERANG, BANTEN\"', 'Hesti Setiowati', ''),
(1148, 'PRO01122-2018', 'SCH01122-2018', 'TCH01122-2018', 'teknisi', '2018/02/14', 'Aktivasi', '2-167994377287-18.12.19.30.01', 'vLzp4nmd', 'TELENET ', '\"LIPPO CYBER PARK JL. BOULEVARD\r\nGAJAH MADA, 2179-81 LIPPO KARAWACI\r\nTANGERANG, BANTEN\"', 'Hesti Setiowati', ''),
(1149, 'PRO01123-2018', 'SCH01123-2018', 'TCH01123-2018', 'teknisi', '2018/02/14', 'Aktivasi', '2-167994377287-18.12.19.31.01', 'vLzp4nmd', 'TELENET ', '\"LIPPO CYBER PARK JL. BOULEVARD\r\nGAJAH MADA, 2179-81 LIPPO KARAWACI\r\nTANGERANG, BANTEN\"', 'Hesti Setiowati', ''),
(1150, 'PRO01124-2018', 'SCH01124-2018', 'TCH01124-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170528875691-18.12.19.34.36', 'Lnn5Oxzs', 'TIN u/ AT&T', 'AT&T (TIN) 200M 1 Cyber KPPTI', 'Tri Purnomo', ''),
(1151, 'PRO01125-2018', 'SCH01125-2018', 'TCH01125-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170528875691-18.12.19.36.25', 'Lnn5Oxzs', 'TIN u/ AT&T', 'AT&T (TIN) 200M 1 Cyber KPPTI', 'Tri Purnomo', ''),
(1152, 'PRO01126-2018', 'SCH01126-2018', 'TCH01126-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170528875691-18.12.19.38.45', 'Lnn5Oxzs', 'TIN u/ AT&T', 'AT&T (TIN) 200M 1 Cyber KPPTI', 'Tri Purnomo', ''),
(1153, 'PRO01127-2018', 'SCH01127-2018', 'TCH01127-2018', 'teknisi', '2018/02/28', 'Aktivasi', '2-167752644081-18.12.19.39.13', 'aXsvm51b', 'TATA ICHIKOH', 'LINTASARTA TATA NODE Jl. T.B. Simatupang (Kav. 10) Jakarta Capital Region', 'NA', ''),
(1154, 'PRO01128-2018', 'SCH01128-2018', 'TCH01128-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170528875691-18.12.19.40.05', 'Lnn5Oxzs', 'TIN u/ AT&T', 'AT&T (TIN) 200M 1 Cyber KPPTI', 'Tri Purnomo', ''),
(1155, 'PRO01129-2018', 'SCH01129-2018', 'TCH01129-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170528875691-18.12.19.41.04', 'Lnn5Oxzs', 'TIN u/ AT&T', 'AT&T (TIN) 200M 1 Cyber KPPTI', 'Tri Purnomo', ''),
(1156, 'PRO01130-2018', 'SCH01130-2018', 'TCH01130-2018', 'teknisi', '2018/02/28', 'Aktivasi', '2-167752644081-18.12.19.41.23', 'aXsvm51b', 'TATA ICHIKOH', 'LINTASARTA TATA NODE Jl. T.B. Simatupang (Kav. 10) Jakarta Capital Region', 'NA', ''),
(1157, 'PRO01131-2018', 'SCH01131-2018', 'TCH01131-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170526147410-18.12.19.42.58', 'wy6iy7bc', 'TIN u/ AT&T', 'AT&T (TIN) 200M 2 Cyber KPPTI', 'Tri Purnomo', ''),
(1158, 'PRO01132-2018', 'SCH01132-2018', 'TCH01132-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170526147410-18.12.19.43.36', 'wy6iy7bc', 'TIN u/ AT&T', 'AT&T (TIN) 200M 2 Cyber KPPTI', 'Tri Purnomo', ''),
(1159, 'PRO01133-2018', 'SCH01133-2018', 'TCH01133-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170526147410-18.12.19.44.33', 'wy6iy7bc', 'TIN u/ AT&T', 'AT&T (TIN) 200M 2 Cyber KPPTI', 'Tri Purnomo', ''),
(1160, 'PRO01134-2018', 'SCH01134-2018', 'TCH01134-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170526147410-18.12.19.45.05', 'wy6iy7bc', 'TIN u/ AT&T', 'AT&T (TIN) 200M 2 Cyber KPPTI', 'Tri Purnomo', ''),
(1161, 'PRO01135-2018', 'SCH01135-2018', 'TCH01135-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170526147410-18.12.19.45.36', 'wy6iy7bc', 'TIN u/ AT&T', 'AT&T (TIN) 200M 2 Cyber KPPTI', 'Tri Purnomo', ''),
(1162, 'PRO01136-2018', 'SCH01136-2018', 'TCH01136-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530823866-18.12.19.53.25', 'zvGDnM4c', 'TIN u/ AT&T', 'AT&T (TIN) 200M 3 Cyber KPPTI', 'Tri Purnomo', ''),
(1163, 'PRO01137-2018', 'SCH01137-2018', 'TCH01137-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530823866-18.12.19.54.39', 'zvGDnM4c', 'TIN u/ AT&T', 'AT&T (TIN) 200M 3 Cyber KPPTI', 'Tri Purnomo', ''),
(1164, 'PRO01138-2018', 'SCH01138-2018', 'TCH01138-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530823866-18.12.19.56.56', 'zvGDnM4c', 'TIN u/ AT&T', 'AT&T (TIN) 200M 3 Cyber KPPTI', 'Tri Purnomo', ''),
(1165, 'PRO01139-2018', 'SCH01139-2018', 'TCH01139-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530823866-18.12.19.58.58', 'zvGDnM4c', 'TIN u/ AT&T', 'AT&T (TIN) 200M 3 Cyber KPPTI', 'Tri Purnomo', ''),
(1166, 'PRO01140-2018', 'SCH01140-2018', 'TCH01140-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530823866-18.12.19.01.19', 'zvGDnM4c', 'TIN u/ AT&T', 'AT&T (TIN) 200M 3 Cyber KPPTI', 'Tri Purnomo', ''),
(1167, 'PRO01141-2018', 'SCH01141-2018', 'TCH01141-2018', 'teknisi', '2018/02/02', 'Aktivasi', '2-170530602919-18.12.19.07.16', 'ReNJ1mWz', 'TIN u/ AT&T', 'AT&T (TIN) 200M Cyber Telkom Sigma BSD', 'Tri Purnomo', '');

--
-- Triggers `tbl_project_wo`
--
DELIMITER $$
CREATE TRIGGER `after_delete_project` AFTER DELETE ON `tbl_project_wo` FOR EACH ROW BEGIN
Delete from tbl_schedule_wo where kode_jadwal = OLD.kode_jadwal;
DELETE FROM tbl_teknisi_wo where kode_teknisi = OLD.kode_teknisi;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ptjb`
--

CREATE TABLE `tbl_ptjb` (
  `id_ptjb` int(11) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `wo_id` varchar(40) NOT NULL,
  `so_id` varchar(40) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `date_now` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `tgl_input` date NOT NULL,
  `no_vr` varchar(50) NOT NULL,
  `kode_amount_ptjb` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_ptjb`
--
DELIMITER $$
CREATE TRIGGER `after_delete_ptjb` AFTER DELETE ON `tbl_ptjb` FOR EACH ROW BEGIN
Delete from tbl_amount where kode_amount_ptjb = OLD.kode_amount_ptjb;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule_wo`
--

CREATE TABLE `tbl_schedule_wo` (
  `kode_jadwal` varchar(40) NOT NULL,
  `tgl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_schedule_wo`
--

INSERT INTO `tbl_schedule_wo` (`kode_jadwal`, `tgl`) VALUES
('SCH00005-2018', '2018/01/02'),
('SCH00400-2018', ''),
('SCH00003-2018', ''),
('SCH00002-2018', ''),
('SCH00001-2018', '2018/01/02'),
('SCH00006-2018', ''),
('SCH00007-2018', ''),
('SCH00008-2018', '2018/01/02'),
('SCH00009-2018', '2018/02/02'),
('SCH00010-2018', '2018/01/02'),
('SCH00011-2018', '2018/02/02'),
('SCH00035-2018', ''),
('SCH00013-2018', '2018/02/02'),
('SCH00014-2018', ''),
('SCH00015-2018', '2018/02/02'),
('SCH00016-2018', ''),
('SCH00017-2018', ''),
('SCH00018-2018', ''),
('SCH00019-2018', ''),
('SCH00020-2018', '2018/01/09'),
('SCH00176-2018', '2018/01/24'),
('SCH00022-2018', ''),
('SCH00023-2018', ''),
('SCH00024-2018', ''),
('SCH00025-2018', ''),
('SCH00026-2018', ''),
('SCH00027-2018', ''),
('SCH00028-2018', ''),
('SCH00029-2018', ''),
('SCH00030-2018', ''),
('SCH00177-2018', '2018/01/24'),
('SCH00032-2018', ''),
('SCH00033-2018', ''),
('SCH00034-2018', ''),
('SCH00036-2018', ''),
('SCH00037-2018', '2018/01/03'),
('SCH00038-2018', ''),
('SCH00039-2018', ''),
('SCH00040-2018', '2018/01/04'),
('SCH00041-2018', ''),
('SCH00042-2018', '2018/01/04'),
('SCH00043-2018', ''),
('SCH00044-2018', ''),
('SCH00045-2018', '2018/01/04'),
('SCH00046-2018', ''),
('SCH00047-2018', ''),
('SCH00048-2018', ''),
('SCH00049-2018', ''),
('SCH00050-2018', ''),
('SCH00051-2018', ''),
('SCH00052-2018', '2018/01/08'),
('SCH00053-2018', ''),
('SCH00054-2018', '2018/01/08'),
('SCH00055-2018', ''),
('SCH00056-2018', '2018/01/08'),
('SCH00057-2018', ''),
('SCH00058-2018', '2018/01/19'),
('SCH00175-2018', '2018/01/17'),
('SCH00060-2018', '2018/01/08'),
('SCH00061-2018', ''),
('SCH00062-2018', ''),
('SCH00063-2018', '2018/01/08'),
('SCH00064-2018', ''),
('SCH00065-2018', '2018/01/15'),
('SCH00066-2018', ''),
('SCH00067-2018', '2018/01/08'),
('SCH00068-2018', ''),
('SCH00069-2018', '2018/01/08'),
('SCH00070-2018', ''),
('SCH00071-2018', ''),
('SCH00072-2018', '2018/01/08'),
('SCH00073-2018', ''),
('SCH00074-2018', '2018/01/08'),
('SCH00075-2018', '2018/01/08'),
('SCH00076-2018', ''),
('SCH00077-2018', '2018/01/08'),
('SCH00078-2018', ''),
('SCH00079-2018', ''),
('SCH00080-2018', '2018/01/08'),
('SCH00081-2018', ''),
('SCH00082-2018', '2018/01/08'),
('SCH00083-2018', '2018/01/08'),
('SCH00084-2018', ''),
('SCH00085-2018', ''),
('SCH00086-2018', '2018/01/08'),
('SCH00087-2018', ''),
('SCH00088-2018', ''),
('SCH00089-2018', ''),
('SCH00090-2018', '2018/01/09'),
('SCH00091-2018', ''),
('SCH00092-2018', '2018/01/09'),
('SCH00178-2018', '2018/01/22'),
('SCH00094-2018', '2018/01/09'),
('SCH00095-2018', ''),
('SCH00096-2018', '2018/01/09'),
('SCH00097-2018', ''),
('SCH00098-2018', '2018/01/09'),
('SCH00099-2018', ''),
('SCH00100-2018', ''),
('SCH00101-2018', '2018/01/09'),
('SCH00102-2018', ''),
('SCH00103-2018', '2018/01/09'),
('SCH00104-2018', ''),
('SCH00105-2018', ''),
('SCH00106-2018', '2018/01/10'),
('SCH00107-2018', ''),
('SCH00108-2018', ''),
('SCH00109-2018', '2018/01/11'),
('SCH00110-2018', '2018/01/11'),
('SCH00111-2018', ''),
('SCH00112-2018', ''),
('SCH00113-2018', ''),
('SCH00114-2018', ''),
('SCH00115-2018', '2018/01/12'),
('SCH00118-2018', '2018/01/25'),
('SCH00117-2018', '2018/01/12'),
('SCH00119-2018', ''),
('SCH00120-2018', ''),
('SCH00121-2018', '2018/01/12'),
('SCH00122-2018', ''),
('SCH00123-2018', ''),
('SCH00124-2018', ''),
('SCH00125-2018', ''),
('SCH00126-2018', ''),
('SCH00127-2018', '2018/01/15'),
('SCH00128-2018', '2018/01/15'),
('SCH00129-2018', '2018/01/16'),
('SCH00130-2018', '2018/01/16'),
('SCH00131-2018', '2018/01/16'),
('SCH00132-2018', '2018/01/17'),
('SCH00133-2018', ''),
('SCH00134-2018', '2018/01/19'),
('SCH00135-2018', '2018/01/19'),
('SCH00136-2018', '2018/01/19'),
('SCH00137-2018', '2018/01/19'),
('SCH00138-2018', '2018/01/19'),
('SCH00139-2018', ''),
('SCH00140-2018', '2018/01/19'),
('SCH00141-2018', '2018/01/22'),
('SCH00144-2018', '2018/01/19'),
('SCH00143-2018', '2018/01/22'),
('SCH00145-2018', ''),
('SCH00146-2018', '2018/01/22'),
('SCH00147-2018', '2018/01/22'),
('SCH00148-2018', '2018/01/23'),
('SCH00149-2018', '2018/01/22'),
('SCH00150-2018', '2018/01/23'),
('SCH00151-2018', '2018/01/23'),
('SCH00152-2018', '2018/01/23'),
('SCH00153-2018', '2018/01/24'),
('SCH00154-2018', '2018/01/23'),
('SCH00155-2018', '2018/01/24'),
('SCH00156-2018', '2018/01/25'),
('SCH00157-2018', ''),
('SCH00158-2018', '2018/01/26'),
('SCH00159-2018', '2018/01/26'),
('SCH00160-2018', '2018/01/26'),
('SCH00161-2018', ''),
('SCH00162-2018', '2018/01/26'),
('SCH00163-2018', '2018/01/29'),
('SCH00164-2018', '2018/01/29'),
('SCH00165-2018', '2018/01/29'),
('SCH00166-2018', '2018/01/30'),
('SCH00167-2018', '2018/01/30'),
('SCH00168-2018', '2018/01/31'),
('SCH00169-2018', '2018/01/31'),
('SCH00170-2018', '2018/01/31'),
('SCH00171-2018', ''),
('SCH00172-2018', ''),
('SCH00173-2018', '2018/01/31'),
('SCH00174-2018', '2018/01/31'),
('SCH00179-2018', '2018/01/17'),
('SCH00180-2018', '2018/01/17'),
('SCH00181-2018', '2018/01/17'),
('SCH00182-2018', '2018/01/17'),
('SCH00183-2018', '2018/01/19'),
('SCH00184-2018', '2018/01/19'),
('SCH00185-2018', ''),
('SCH00188-2018', ''),
('SCH00187-2018', ''),
('SCH00189-2018', ''),
('SCH00190-2018', ''),
('SCH00191-2018', ''),
('SCH00192-2018', ''),
('SCH00193-2018', ''),
('SCH00194-2018', ''),
('SCH00195-2018', ''),
('SCH00196-2018', ''),
('SCH00197-2018', ''),
('SCH00198-2018', ''),
('SCH00199-2018', ''),
('SCH00200-2018', ''),
('SCH00201-2018', ''),
('SCH00202-2018', ''),
('SCH00203-2018', ''),
('SCH00204-2018', ''),
('SCH00205-2018', ''),
('SCH00206-2018', ''),
('SCH00207-2018', ''),
('SCH00208-2018', ''),
('SCH00209-2018', ''),
('SCH00210-2018', ''),
('SCH00211-2018', ''),
('SCH00212-2018', ''),
('SCH00213-2018', ''),
('SCH00214-2018', ''),
('SCH00215-2018', ''),
('SCH00216-2018', ''),
('SCH00217-2018', ''),
('SCH00218-2018', ''),
('SCH00219-2018', ''),
('SCH00220-2018', ''),
('SCH00221-2018', ''),
('SCH00222-2018', ''),
('SCH00223-2018', ''),
('SCH00224-2018', ''),
('SCH00225-2018', ''),
('SCH00226-2018', ''),
('SCH00227-2018', ''),
('SCH00228-2018', ''),
('SCH00229-2018', ''),
('SCH00230-2018', ''),
('SCH00231-2018', ''),
('SCH00232-2018', ''),
('SCH00233-2018', ''),
('SCH00234-2018', ''),
('SCH00235-2018', ''),
('SCH00236-2018', ''),
('SCH00237-2018', ''),
('SCH00238-2018', ''),
('SCH00239-2018', ''),
('SCH00240-2018', ''),
('SCH00241-2018', ''),
('SCH00242-2018', ''),
('SCH00243-2018', ''),
('SCH00244-2018', ''),
('SCH00245-2018', ''),
('SCH00246-2018', ''),
('SCH00247-2018', ''),
('SCH00248-2018', ''),
('SCH00249-2018', ''),
('SCH00250-2018', ''),
('SCH00251-2018', ''),
('SCH00252-2018', ''),
('SCH00253-2018', ''),
('SCH00254-2018', ''),
('SCH00255-2018', ''),
('SCH00256-2018', ''),
('SCH00261-2018', ''),
('SCH00258-2018', ''),
('SCH00259-2018', ''),
('SCH00260-2018', ''),
('SCH00262-2018', ''),
('SCH00263-2018', ''),
('SCH00264-2018', ''),
('SCH00265-2018', ''),
('SCH00266-2018', ''),
('SCH00267-2018', '2018/12/26'),
('SCH00268-2018', '2018/12/27'),
('SCH00269-2018', '2018/12/13'),
('SCH00270-2018', '2018/01/04'),
('SCH00303-2018', '2018/01/15'),
('SCH00272-2018', '2018/01/23'),
('SCH00273-2018', '2018/01/19'),
('SCH00274-2018', '2018/01/26'),
('SCH01026-2018', '2018/07/23'),
('SCH00276-2018', ''),
('SCH00277-2018', ''),
('SCH00278-2018', ''),
('SCH00279-2018', '2018/03/26'),
('SCH00282-2018', ''),
('SCH00281-2018', ''),
('SCH00283-2018', ''),
('SCH00284-2018', ''),
('SCH00285-2018', ''),
('SCH00286-2018', ''),
('SCH00287-2018', ''),
('SCH00288-2018', ''),
('SCH00289-2018', ''),
('SCH00290-2018', ''),
('SCH00291-2018', ''),
('SCH00292-2018', ''),
('SCH00293-2018', ''),
('SCH00294-2018', ''),
('SCH00295-2018', ''),
('SCH00296-2018', ''),
('SCH00297-2018', ''),
('SCH00298-2018', ''),
('SCH00299-2018', '2018/03/29'),
('SCH00300-2018', '2018/02/05'),
('SCH00301-2018', '2018/01/15'),
('SCH00302-2018', '2018/01/25'),
('SCH00304-2018', ''),
('SCH00305-2018', ''),
('SCH00306-2018', ''),
('SCH00307-2018', ''),
('SCH00308-2018', ''),
('SCH00309-2018', ''),
('SCH00310-2018', ''),
('SCH00311-2018', ''),
('SCH00312-2018', ''),
('SCH00313-2018', ''),
('SCH00314-2018', ''),
('SCH00315-2018', ''),
('SCH00316-2018', ''),
('SCH00317-2018', ''),
('SCH00318-2018', ''),
('SCH00319-2018', ''),
('SCH00320-2018', ''),
('SCH00321-2018', ''),
('SCH00322-2018', ''),
('SCH00323-2018', ''),
('SCH00324-2018', ''),
('SCH00325-2018', ''),
('SCH00326-2018', ''),
('SCH00327-2018', ''),
('SCH00328-2018', ''),
('SCH00329-2018', ''),
('SCH00330-2018', ''),
('SCH00331-2018', ''),
('SCH00332-2018', ''),
('SCH00333-2018', ''),
('SCH00334-2018', ''),
('SCH00335-2018', ''),
('SCH00336-2018', ''),
('SCH00337-2018', ''),
('SCH00338-2018', ''),
('SCH00339-2018', ''),
('SCH00340-2018', ''),
('SCH00341-2018', ''),
('SCH00342-2018', ''),
('SCH00343-2018', ''),
('SCH00344-2018', ''),
('SCH00345-2018', ''),
('SCH00346-2018', ''),
('SCH00347-2018', ''),
('SCH00348-2018', ''),
('SCH00349-2018', ''),
('SCH00350-2018', ''),
('SCH00351-2018', ''),
('SCH00352-2018', ''),
('SCH00353-2018', ''),
('SCH00354-2018', ''),
('SCH00355-2018', ''),
('SCH00356-2018', ''),
('SCH00357-2018', ''),
('SCH00358-2018', ''),
('SCH00359-2018', ''),
('SCH00360-2018', ''),
('SCH00361-2018', ''),
('SCH00362-2018', ''),
('SCH00363-2018', ''),
('SCH00364-2018', ''),
('SCH00365-2018', ''),
('SCH00366-2018', ''),
('SCH00367-2018', ''),
('SCH00368-2018', ''),
('SCH00369-2018', ''),
('SCH00389-2018', ''),
('SCH00391-2018', ''),
('SCH00372-2018', ''),
('SCH00373-2018', ''),
('SCH00374-2018', ''),
('SCH00375-2018', ''),
('SCH00376-2018', ''),
('SCH00377-2018', ''),
('SCH00378-2018', ''),
('SCH00379-2018', ''),
('SCH00380-2018', ''),
('SCH00381-2018', ''),
('SCH00382-2018', ''),
('SCH00383-2018', ''),
('SCH00384-2018', ''),
('SCH00385-2018', ''),
('SCH00386-2018', ''),
('SCH00399-2018', ''),
('SCH00387-2018', ''),
('SCH00388-2018', ''),
('SCH00390-2018', ''),
('SCH00392-2018', ''),
('SCH00393-2018', ''),
('SCH00394-2018', ''),
('SCH00395-2018', ''),
('SCH00396-2018', ''),
('SCH00397-2018', ''),
('SCH00398-2018', ''),
('SCH00401-2018', ''),
('SCH00402-2018', ''),
('SCH00403-2018', ''),
('SCH00404-2018', ''),
('SCH00405-2018', ''),
('SCH00406-2018', ''),
('SCH00407-2018', ''),
('SCH00408-2018', ''),
('SCH00409-2018', ''),
('SCH00410-2018', ''),
('SCH00411-2018', ''),
('SCH00412-2018', ''),
('SCH00413-2018', ''),
('SCH00414-2018', ''),
('SCH00415-2018', ''),
('SCH00416-2018', ''),
('SCH00417-2018', ''),
('SCH00976-2018', ''),
('SCH00419-2018', ''),
('SCH00420-2018', ''),
('SCH00977-2018', ''),
('SCH00422-2018', ''),
('SCH00423-2018', ''),
('SCH00424-2018', ''),
('SCH00425-2018', ''),
('SCH00426-2018', ''),
('SCH00427-2018', ''),
('SCH00428-2018', ''),
('SCH00429-2018', ''),
('SCH00430-2018', ''),
('SCH00431-2018', ''),
('SCH00432-2018', ''),
('SCH00433-2018', ''),
('SCH00434-2018', ''),
('SCH00435-2018', ''),
('SCH00436-2018', ''),
('SCH00437-2018', ''),
('SCH00438-2018', ''),
('SCH00439-2018', ''),
('SCH00440-2018', ''),
('SCH00441-2018', ''),
('SCH00442-2018', ''),
('SCH00443-2018', ''),
('SCH00444-2018', ''),
('SCH00445-2018', ''),
('SCH00446-2018', ''),
('SCH00447-2018', ''),
('SCH00448-2018', ''),
('SCH00449-2018', ''),
('SCH00450-2018', ''),
('SCH00451-2018', ''),
('SCH00452-2018', ''),
('SCH00453-2018', ''),
('SCH00454-2018', ''),
('SCH00455-2018', ''),
('SCH00456-2018', ''),
('SCH00457-2018', ''),
('SCH00458-2018', ''),
('SCH00459-2018', ''),
('SCH00460-2018', ''),
('SCH00461-2018', ''),
('SCH00462-2018', ''),
('SCH00463-2018', ''),
('SCH00464-2018', ''),
('SCH00465-2018', ''),
('SCH00466-2018', ''),
('SCH00467-2018', ''),
('SCH00468-2018', ''),
('SCH00469-2018', ''),
('SCH00470-2018', ''),
('SCH00471-2018', ''),
('SCH00472-2018', ''),
('SCH00473-2018', ''),
('SCH00474-2018', ''),
('SCH00475-2018', ''),
('SCH00476-2018', ''),
('SCH00477-2018', ''),
('SCH00478-2018', ''),
('SCH00479-2018', ''),
('SCH00480-2018', ''),
('SCH00481-2018', ''),
('SCH00482-2018', ''),
('SCH00483-2018', ''),
('SCH00484-2018', ''),
('SCH00485-2018', ''),
('SCH00486-2018', ''),
('SCH00487-2018', ''),
('SCH00488-2018', ''),
('SCH00489-2018', ''),
('SCH00490-2018', ''),
('SCH00491-2018', ''),
('SCH00492-2018', ''),
('SCH00493-2018', ''),
('SCH00494-2018', ''),
('SCH00495-2018', ''),
('SCH00496-2018', ''),
('SCH00497-2018', ''),
('SCH00498-2018', ''),
('SCH00499-2018', ''),
('SCH00500-2018', ''),
('SCH00501-2018', ''),
('SCH00502-2018', ''),
('SCH00503-2018', ''),
('SCH00504-2018', ''),
('SCH00505-2018', ''),
('SCH00506-2018', ''),
('SCH00507-2018', ''),
('SCH00508-2018', ''),
('SCH00509-2018', ''),
('SCH00510-2018', ''),
('SCH00511-2018', ''),
('SCH00512-2018', ''),
('SCH00513-2018', ''),
('SCH00514-2018', ''),
('SCH00515-2018', ''),
('SCH00516-2018', ''),
('SCH00517-2018', ''),
('SCH00518-2018', ''),
('SCH00519-2018', ''),
('SCH00520-2018', ''),
('SCH00521-2018', ''),
('SCH00522-2018', ''),
('SCH00523-2018', ''),
('SCH00524-2018', ''),
('SCH00525-2018', ''),
('SCH00526-2018', ''),
('SCH00527-2018', ''),
('SCH00528-2018', ''),
('SCH00529-2018', ''),
('SCH00530-2018', ''),
('SCH00531-2018', ''),
('SCH00532-2018', ''),
('SCH00533-2018', ''),
('SCH00534-2018', ''),
('SCH00535-2018', ''),
('SCH00536-2018', ''),
('SCH00537-2018', ''),
('SCH00538-2018', ''),
('SCH00539-2018', ''),
('SCH00540-2018', ''),
('SCH00541-2018', ''),
('SCH00542-2018', ''),
('SCH00543-2018', ''),
('SCH00544-2018', ''),
('SCH00545-2018', ''),
('SCH00546-2018', ''),
('SCH00547-2018', ''),
('SCH00548-2018', ''),
('SCH00549-2018', ''),
('SCH00550-2018', ''),
('SCH00551-2018', ''),
('SCH00552-2018', ''),
('SCH00553-2018', ''),
('SCH00554-2018', ''),
('SCH00555-2018', ''),
('SCH00556-2018', ''),
('SCH00557-2018', ''),
('SCH00558-2018', ''),
('SCH00559-2018', ''),
('SCH00560-2018', ''),
('SCH00561-2018', ''),
('SCH00562-2018', ''),
('SCH00563-2018', ''),
('SCH00564-2018', ''),
('SCH00565-2018', ''),
('SCH00566-2018', ''),
('SCH00567-2018', ''),
('SCH00568-2018', ''),
('SCH00569-2018', ''),
('SCH00570-2018', ''),
('SCH00571-2018', ''),
('SCH00572-2018', ''),
('SCH00573-2018', ''),
('SCH00574-2018', ''),
('SCH00575-2018', ''),
('SCH00576-2018', ''),
('SCH00577-2018', ''),
('SCH00578-2018', ''),
('SCH00579-2018', ''),
('SCH00580-2018', ''),
('SCH00581-2018', ''),
('SCH00582-2018', ''),
('SCH00583-2018', ''),
('SCH00584-2018', ''),
('SCH00585-2018', ''),
('SCH00586-2018', ''),
('SCH00587-2018', ''),
('SCH00588-2018', ''),
('SCH00589-2018', ''),
('SCH00590-2018', ''),
('SCH00591-2018', ''),
('SCH00592-2018', ''),
('SCH00593-2018', ''),
('SCH00594-2018', ''),
('SCH00595-2018', ''),
('SCH00596-2018', ''),
('SCH00597-2018', ''),
('SCH00598-2018', ''),
('SCH00599-2018', ''),
('SCH00600-2018', ''),
('SCH00601-2018', ''),
('SCH00602-2018', ''),
('SCH00603-2018', ''),
('SCH00604-2018', ''),
('SCH00605-2018', ''),
('SCH00606-2018', ''),
('SCH00607-2018', ''),
('SCH00608-2018', ''),
('SCH00609-2018', ''),
('SCH00610-2018', ''),
('SCH00611-2018', ''),
('SCH00612-2018', ''),
('SCH00613-2018', ''),
('SCH00614-2018', ''),
('SCH00615-2018', ''),
('SCH00616-2018', ''),
('SCH00617-2018', ''),
('SCH00618-2018', ''),
('SCH00619-2018', ''),
('SCH00620-2018', ''),
('SCH00621-2018', ''),
('SCH00622-2018', ''),
('SCH00623-2018', ''),
('SCH00624-2018', ''),
('SCH00625-2018', ''),
('SCH00626-2018', ''),
('SCH00627-2018', ''),
('SCH00628-2018', ''),
('SCH00629-2018', ''),
('SCH00630-2018', ''),
('SCH00631-2018', ''),
('SCH00632-2018', ''),
('SCH00633-2018', ''),
('SCH00634-2018', ''),
('SCH00635-2018', ''),
('SCH00636-2018', ''),
('SCH00637-2018', ''),
('SCH00638-2018', ''),
('SCH00639-2018', ''),
('SCH00640-2018', ''),
('SCH00641-2018', ''),
('SCH00642-2018', ''),
('SCH00643-2018', ''),
('SCH00644-2018', ''),
('SCH00645-2018', ''),
('SCH00646-2018', ''),
('SCH00647-2018', ''),
('SCH00648-2018', ''),
('SCH00649-2018', ''),
('SCH00650-2018', ''),
('SCH00651-2018', ''),
('SCH00984-2018', ''),
('SCH00653-2018', ''),
('SCH00654-2018', ''),
('SCH00655-2018', ''),
('SCH00983-2018', ''),
('SCH00982-2018', ''),
('SCH00981-2018', ''),
('SCH00659-2018', ''),
('SCH00660-2018', ''),
('SCH00661-2018', ''),
('SCH00662-2018', ''),
('SCH00663-2018', ''),
('SCH00664-2018', ''),
('SCH00665-2018', ''),
('SCH00666-2018', ''),
('SCH00667-2018', ''),
('SCH00980-2018', ''),
('SCH00979-2018', ''),
('SCH00978-2018', ''),
('SCH00974-2018', ''),
('SCH00972-2018', ''),
('SCH00971-2018', ''),
('SCH00674-2018', ''),
('SCH00970-2018', ''),
('SCH00969-2018', ''),
('SCH00968-2018', ''),
('SCH00967-2018', ''),
('SCH00966-2018', ''),
('SCH00965-2018', ''),
('SCH00964-2018', ''),
('SCH00963-2018', ''),
('SCH00961-2018', ''),
('SCH00684-2018', ''),
('SCH00962-2018', ''),
('SCH00975-2018', ''),
('SCH00959-2018', ''),
('SCH00958-2018', ''),
('SCH00973-2018', ''),
('SCH00956-2018', ''),
('SCH00955-2018', ''),
('SCH00954-2018', ''),
('SCH00694-2018', ''),
('SCH00695-2018', ''),
('SCH00696-2018', ''),
('SCH00697-2018', ''),
('SCH00698-2018', ''),
('SCH00699-2018', ''),
('SCH00700-2018', ''),
('SCH00701-2018', ''),
('SCH00702-2018', ''),
('SCH00703-2018', ''),
('SCH00704-2018', ''),
('SCH00705-2018', ''),
('SCH00706-2018', ''),
('SCH00707-2018', ''),
('SCH00708-2018', ''),
('SCH00748-2018', ''),
('SCH00710-2018', ''),
('SCH00711-2018', ''),
('SCH00712-2018', ''),
('SCH00713-2018', ''),
('SCH00714-2018', ''),
('SCH00715-2018', ''),
('SCH00716-2018', ''),
('SCH00717-2018', ''),
('SCH00718-2018', ''),
('SCH00719-2018', ''),
('SCH00720-2018', ''),
('SCH00721-2018', ''),
('SCH00722-2018', ''),
('SCH00723-2018', ''),
('SCH00724-2018', ''),
('SCH00725-2018', ''),
('SCH00726-2018', ''),
('SCH00727-2018', ''),
('SCH00728-2018', ''),
('SCH00729-2018', ''),
('SCH00730-2018', ''),
('SCH00731-2018', ''),
('SCH00732-2018', ''),
('SCH00733-2018', ''),
('SCH00734-2018', ''),
('SCH00735-2018', ''),
('SCH00736-2018', ''),
('SCH00737-2018', ''),
('SCH00738-2018', ''),
('SCH00739-2018', ''),
('SCH00740-2018', ''),
('SCH00741-2018', ''),
('SCH00742-2018', ''),
('SCH00743-2018', ''),
('SCH00744-2018', ''),
('SCH00953-2018', ''),
('SCH00747-2018', ''),
('SCH00749-2018', ''),
('SCH00750-2018', ''),
('SCH00751-2018', ''),
('SCH00752-2018', ''),
('SCH00753-2018', ''),
('SCH00754-2018', ''),
('SCH00755-2018', ''),
('SCH00756-2018', ''),
('SCH00757-2018', ''),
('SCH00758-2018', ''),
('SCH00759-2018', ''),
('SCH00760-2018', ''),
('SCH00761-2018', ''),
('SCH00762-2018', ''),
('SCH00763-2018', ''),
('SCH00764-2018', ''),
('SCH00765-2018', ''),
('SCH00766-2018', ''),
('SCH00767-2018', ''),
('SCH00768-2018', ''),
('SCH00769-2018', ''),
('SCH00770-2018', ''),
('SCH00771-2018', ''),
('SCH00772-2018', ''),
('SCH00773-2018', ''),
('SCH00774-2018', ''),
('SCH00775-2018', ''),
('SCH00776-2018', ''),
('SCH00777-2018', ''),
('SCH00778-2018', ''),
('SCH00779-2018', ''),
('SCH00782-2018', ''),
('SCH00781-2018', ''),
('SCH00783-2018', ''),
('SCH00784-2018', ''),
('SCH00785-2018', ''),
('SCH00786-2018', ''),
('SCH00787-2018', ''),
('SCH00788-2018', ''),
('SCH00789-2018', ''),
('SCH00790-2018', ''),
('SCH00791-2018', ''),
('SCH00792-2018', ''),
('SCH00793-2018', ''),
('SCH00794-2018', ''),
('SCH00795-2018', ''),
('SCH00796-2018', ''),
('SCH00797-2018', ''),
('SCH00798-2018', ''),
('SCH00799-2018', ''),
('SCH00800-2018', ''),
('SCH00801-2018', ''),
('SCH00802-2018', ''),
('SCH00803-2018', ''),
('SCH00804-2018', ''),
('SCH00805-2018', ''),
('SCH00806-2018', ''),
('SCH00807-2018', ''),
('SCH00808-2018', ''),
('SCH00809-2018', ''),
('SCH00810-2018', ''),
('SCH00811-2018', ''),
('SCH00812-2018', ''),
('SCH00813-2018', ''),
('SCH00814-2018', ''),
('SCH00815-2018', ''),
('SCH00816-2018', ''),
('SCH00817-2018', ''),
('SCH00818-2018', ''),
('SCH00819-2018', ''),
('SCH00820-2018', ''),
('SCH00821-2018', ''),
('SCH00822-2018', ''),
('SCH00823-2018', ''),
('SCH00824-2018', ''),
('SCH00825-2018', ''),
('SCH00826-2018', ''),
('SCH00827-2018', ''),
('SCH00828-2018', ''),
('SCH00829-2018', ''),
('SCH00830-2018', ''),
('SCH00831-2018', ''),
('SCH00832-2018', ''),
('SCH00833-2018', ''),
('SCH00834-2018', ''),
('SCH00835-2018', ''),
('SCH00836-2018', ''),
('SCH00837-2018', ''),
('SCH00838-2018', ''),
('SCH00839-2018', ''),
('SCH00840-2018', ''),
('SCH00841-2018', ''),
('SCH00842-2018', ''),
('SCH00843-2018', ''),
('SCH00844-2018', ''),
('SCH00845-2018', ''),
('SCH00846-2018', ''),
('SCH00847-2018', ''),
('SCH00848-2018', ''),
('SCH00849-2018', ''),
('SCH00850-2018', ''),
('SCH00851-2018', ''),
('SCH00852-2018', ''),
('SCH00853-2018', ''),
('SCH00854-2018', ''),
('SCH00855-2018', ''),
('SCH00856-2018', ''),
('SCH00857-2018', ''),
('SCH00858-2018', ''),
('SCH00859-2018', ''),
('SCH00860-2018', ''),
('SCH00861-2018', ''),
('SCH00862-2018', ''),
('SCH00863-2018', ''),
('SCH00864-2018', ''),
('SCH00865-2018', ''),
('SCH00866-2018', ''),
('SCH00867-2018', ''),
('SCH00868-2018', ''),
('SCH00869-2018', ''),
('SCH00870-2018', ''),
('SCH00871-2018', ''),
('SCH00872-2018', ''),
('SCH00873-2018', ''),
('SCH00874-2018', ''),
('SCH00875-2018', ''),
('SCH00876-2018', ''),
('SCH00877-2018', ''),
('SCH00878-2018', ''),
('SCH00879-2018', ''),
('SCH00880-2018', ''),
('SCH00881-2018', ''),
('SCH00882-2018', ''),
('SCH00883-2018', ''),
('SCH00884-2018', ''),
('SCH00885-2018', ''),
('SCH00886-2018', ''),
('SCH00887-2018', ''),
('SCH00888-2018', ''),
('SCH00889-2018', ''),
('SCH00890-2018', ''),
('SCH00891-2018', ''),
('SCH00892-2018', ''),
('SCH00893-2018', ''),
('SCH00894-2018', ''),
('SCH00895-2018', ''),
('SCH00896-2018', ''),
('SCH00897-2018', ''),
('SCH00898-2018', ''),
('SCH00899-2018', ''),
('SCH00900-2018', ''),
('SCH00901-2018', ''),
('SCH00902-2018', ''),
('SCH00903-2018', ''),
('SCH00904-2018', ''),
('SCH00905-2018', ''),
('SCH00906-2018', ''),
('SCH00907-2018', ''),
('SCH00908-2018', ''),
('SCH00909-2018', ''),
('SCH00910-2018', ''),
('SCH00911-2018', ''),
('SCH00912-2018', ''),
('SCH00913-2018', ''),
('SCH00914-2018', ''),
('SCH00915-2018', ''),
('SCH00916-2018', ''),
('SCH00917-2018', ''),
('SCH00918-2018', ''),
('SCH00919-2018', ''),
('SCH00920-2018', ''),
('SCH00921-2018', ''),
('SCH00922-2018', ''),
('SCH00923-2018', ''),
('SCH00924-2018', ''),
('SCH00925-2018', ''),
('SCH00926-2018', ''),
('SCH00927-2018', ''),
('SCH00928-2018', ''),
('SCH00929-2018', ''),
('SCH00930-2018', ''),
('SCH00931-2018', ''),
('SCH00932-2018', ''),
('SCH00933-2018', ''),
('SCH00934-2018', ''),
('SCH00935-2018', ''),
('SCH00936-2018', ''),
('SCH00937-2018', ''),
('SCH00938-2018', ''),
('SCH00939-2018', ''),
('SCH00940-2018', ''),
('SCH00941-2018', ''),
('SCH00942-2018', ''),
('SCH00943-2018', ''),
('SCH00944-2018', ''),
('SCH00945-2018', ''),
('SCH00946-2018', ''),
('SCH00947-2018', ''),
('SCH00948-2018', ''),
('SCH00949-2018', ''),
('SCH00950-2018', ''),
('SCH00951-2018', ''),
('SCH00952-2018', ''),
('SCH00985-2018', ''),
('SCH00986-2018', ''),
('SCH00991-2018', ''),
('SCH00990-2018', ''),
('SCH00988-2018', ''),
('SCH00989-2018', ''),
('SCH00992-2018', ''),
('SCH00993-2018', ''),
('SCH00994-2018', ''),
('SCH00995-2018', ''),
('SCH00996-2018', ''),
('SCH00997-2018', ''),
('SCH00998-2018', ''),
('SCH00999-2018', ''),
('SCH01000-2018', ''),
('SCH01001-2018', ''),
('SCH01002-2018', ''),
('SCH01003-2018', '2018/02/07'),
('SCH01004-2018', '2018/02/14'),
('SCH01005-2018', '2018/02/23'),
('SCH01006-2018', '2018/05/02'),
('SCH01007-2018', '2018/05/03'),
('SCH01010-2018', '2018/05/07'),
('SCH01009-2018', '2018/03/19'),
('SCH01011-2018', '2018/05/17'),
('SCH01012-2018', '2018/05/18'),
('SCH01013-2018', '2018/05/23'),
('SCH01014-2018', '2018/05/30'),
('SCH01015-2018', '2018/06/04'),
('SCH01016-2018', '2018/07/02'),
('SCH01017-2018', '2018/07/03'),
('SCH01018-2018', '2018/07/05'),
('SCH01019-2018', '2018/07/05'),
('SCH01020-2018', '2018/07/09'),
('SCH01021-2018', '2018/07/09'),
('SCH01022-2018', '2018/07/10'),
('SCH01023-2018', '2018/07/11'),
('SCH01044-2018', '2018/07/23'),
('SCH01025-2018', '2018/07/23'),
('SCH01027-2018', '2018/03/07'),
('SCH01028-2018', '2018/03/15'),
('SCH01029-2018', '2018/07/26'),
('SCH01030-2018', '2018/04/16'),
('SCH01031-2018', '2018/07/26'),
('SCH01032-2018', '2018/07/26'),
('SCH01033-2018', '2018/04/19'),
('SCH01034-2018', '2018/07/26'),
('SCH01035-2018', '2018/07/26'),
('SCH01036-2018', '2018/04/23'),
('SCH01037-2018', '2018/07/26'),
('SCH01038-2018', '2018/07/27'),
('SCH01039-2018', '2018/07/20'),
('SCH01040-2018', '2018/05/30'),
('SCH01041-2018', '2018/06/06'),
('SCH01042-2018', '2018/06/26'),
('SCH01043-2018', ''),
('SCH01045-2018', ''),
('SCH01046-2018', '2018/08/10'),
('SCH01047-2018', ''),
('SCH01048-2018', '2018/08/20'),
('SCH01049-2018', ''),
('SCH01050-2018', ''),
('SCH01051-2018', ''),
('SCH01052-2018', ''),
('SCH01053-2018', ''),
('SCH01054-2018', ''),
('SCH01055-2018', ''),
('SCH01056-2018', '2018/09/05'),
('SCH01057-2018', '2018/09/10'),
('SCH01058-2018', '2018/09/18'),
('SCH01059-2018', '2018/09/18'),
('SCH01060-2018', '2018/09/20'),
('SCH01061-2018', '2018/09/21'),
('SCH01062-2018', '2018/09/21'),
('SCH01063-2018', '2018/09/21'),
('SCH01064-2018', '2018/09/21'),
('SCH01065-2018', '2018/09/24'),
('SCH01066-2018', '2018/09/24'),
('SCH01067-2018', '2018/09/27'),
('SCH01068-2018', '2018/09/19'),
('SCH01069-2018', '2018/09/04'),
('SCH01070-2018', '2018/09/04'),
('SCH01071-2018', '2018/09/04'),
('SCH01072-2018', '2018/09/04'),
('SCH01073-2018', '2018/09/04'),
('SCH01074-2018', '2018/10/11'),
('SCH01075-2018', '2018/10/15'),
('SCH01076-2018', '2018/10/15'),
('SCH01077-2018', '2018/11/12'),
('SCH01078-2018', '2018/11/15'),
('SCH01079-2018', '2018/11/16'),
('SCH01080-2018', '2018/11/22'),
('SCH01081-2018', '2018/11/27'),
('SCH01082-2018', '2018/11/28'),
('SCH01083-2018', '2018/11/29'),
('SCH01084-2018', '2018/11/30'),
('SCH01085-2018', '2018/12/14'),
('SCH01086-2018', '2018/04/10'),
('SCH01087-2018', '2018/04/10'),
('SCH01088-2018', '2018/04/10'),
('SCH01089-2018', '2018/04/11'),
('SCH01090-2018', '2018/04/17'),
('SCH01091-2018', '2018/04/23'),
('SCH01092-2018', '2018/04/23'),
('SCH01093-2018', '2018/04/25'),
('SCH01094-2018', '2018/04/30'),
('SCH01095-2018', '2018/04/27'),
('SCH01096-2018', '2018/05/30'),
('SCH01097-2018', '2018/05/25'),
('SCH01098-2018', '2018/05/23'),
('SCH01099-2018', '2018/05/21'),
('SCH01100-2018', '2018/05/17'),
('SCH01101-2018', '2018/05/18'),
('SCH01102-2018', '2018/05/14'),
('SCH01103-2018', '2018/05/03'),
('SCH01104-2018', '2018/06/06'),
('SCH01105-2018', ''),
('SCH01108-2018', '2018/12/10'),
('SCH01107-2018', '2018/07/10'),
('SCH01109-2018', ''),
('SCH01110-2018', ''),
('SCH01111-2018', ''),
('SCH01112-2018', ''),
('SCH01113-2018', ''),
('SCH01114-2018', '2018/02/01'),
('SCH01115-2018', '2018/02/01'),
('SCH01116-2018', '2018/02/01'),
('SCH01117-2018', '2018/02/01'),
('SCH01118-2018', '2018/02/02'),
('SCH01119-2018', '2018/02/19'),
('SCH01120-2018', '2018/02/02'),
('SCH01121-2018', '2018/02/12'),
('SCH01122-2018', '2018/02/14'),
('SCH01123-2018', '2018/02/14'),
('SCH01124-2018', '2018/02/05'),
('SCH01125-2018', '2018/02/07'),
('SCH01126-2018', '2018/02/12'),
('SCH01127-2018', '2018/03/01'),
('SCH01128-2018', '2018/02/13'),
('SCH01129-2018', '2018/02/14'),
('SCH01130-2018', '2018/03/09'),
('SCH01131-2018', '2018/02/05'),
('SCH01132-2018', '2018/02/07'),
('SCH01133-2018', '2018/02/12'),
('SCH01134-2018', '2018/02/13'),
('SCH01135-2018', '2018/02/14'),
('SCH01136-2018', '2018/02/05'),
('SCH01137-2018', '2018/02/07'),
('SCH01138-2018', '2018/02/12'),
('SCH01139-2018', '2018/02/13'),
('SCH01140-2018', '2018/02/14'),
('SCH01141-2018', '2018/02/05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skil`
--

CREATE TABLE `tbl_skil` (
  `id` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `skil` text NOT NULL,
  `kompetensi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skil`
--

INSERT INTO `tbl_skil` (`id`, `nip`, `skil`, `kompetensi`) VALUES
(1, '18150', 'VISUAL BASIC', '90'),
(3, '18150', 'HTML, CSS, BOOTSTRAP', '80'),
(4, '18150', 'PHP, MYSQL, JAVASCRIPT', '70'),
(5, '18150', 'SYSTEM ANALYST, DATABASE', '70'),
(6, '18150', 'ANDROID PROGRAMMING, JAVA', '50'),
(7, '18150', 'PHOTOSHOP, CORELDRAW', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skil_bahasa`
--

CREATE TABLE `tbl_skil_bahasa` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `bahasa` text NOT NULL,
  `kompetensi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skil_bahasa`
--

INSERT INTO `tbl_skil_bahasa` (`id`, `nip`, `bahasa`, `kompetensi`) VALUES
(1, '18150', 'INDONESIA', '95'),
(3, '18150', 'INGGRIS', '70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` varchar(20) NOT NULL,
  `status_peg` text NOT NULL,
  `sts_kawin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `status_peg`, `sts_kawin`) VALUES
('STS0001', 'STP0002', 'STK0002'),
('STS0003', 'STP0003', 'STK0002'),
('STS0004', 'Status Pegawai', 'Status Kawin'),
('STS0005', 'Status Pegawai', 'Status Kawin'),
('STS0006', 'Status Pegawai', 'Status Kawin'),
('STS0007', 'STP0002', 'STK0002'),
('STS0008', 'STP0002', 'STK0002'),
('STS0009', 'STP0002', 'STK0002'),
('STS0010', 'STP0002', 'STK0002'),
('STS0011', 'STP0002', 'STK0001'),
('STS0012', 'STP0002', 'STK0001'),
('STS0013', 'STP0002', 'STK0002'),
('STS0014', 'STP0002', 'STK0002'),
('STS0015', 'STP0002', 'STK0002'),
('STS0016', 'STP0001', 'STK0002'),
('STS0017', 'STP0001', 'STK0001'),
('STS0018', 'STP0001', 'STK0002'),
('STS0019', 'STP0001', 'STK0002'),
('STS0020', 'STP0001', 'STK0002'),
('STS0021', 'STP0001', 'STK0002'),
('STS0022', 'STP0001', 'STK0002'),
('STS0023', 'STP0001', 'STK0002'),
('STS0024', 'STP0001', 'STK0002'),
('STS0025', 'STP0001', 'STK0002'),
('STS0026', 'STP0001', 'STK0002'),
('STS0027', 'STP0001', 'STK0002'),
('STS0028', 'STP0001', 'STK0001'),
('STS0029', 'STP0001', 'STK0001'),
('STS0030', 'STP0001', 'STK0001'),
('STS0031', 'STP0001', 'STK0002'),
('STS0032', 'STP0001', 'STK0001'),
('STS0033', 'STP0001', 'STK0001'),
('STS0034', 'STP0001', 'STK0001'),
('STS0035', 'STP0003', 'STK0002'),
('STS0036', 'STP0003', 'STK0002'),
('STS0037', 'STP0003', 'STK0002'),
('STS0038', 'STP0003', 'STK0002'),
('STS0039', 'STP0003', 'STK0002'),
('STS0040', 'STP0003', 'STK0002'),
('STS0041', 'STP0003', 'STK0002'),
('STS0042', 'STP0003', 'STK0002'),
('STS0043', 'STP0003', 'STK0002'),
('STS0044', 'STP0003', 'STK0002'),
('STS0045', 'Status Pegawai', 'Status Kawin'),
('STS0046', 'Status Pegawai', 'Status Kawin'),
('STS0047', 'Status Pegawai', 'Status Kawin'),
('STS0048', 'Status Pegawai', 'Status Kawin'),
('STS0049', 'Status Pegawai', 'Status Kawin'),
('STS0050', 'Status Pegawai', 'Status Kawin'),
('STS0051', 'Status Pegawai', 'Status Kawin'),
('STS0052', 'Status Pegawai', 'Status Kawin'),
('STS0053', 'Status Pegawai', 'Status Kawin'),
('STS0054', 'Status Pegawai', 'Status Kawin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_kasbon`
--

CREATE TABLE `tbl_status_kasbon` (
  `kode_status` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `st_bon` enum('SUDAH DIKEMBALIKAN','BELUM DIKEMBALIKAN') NOT NULL,
  `st_amount` enum('SUDAH DIKEMBALIKAN','BELUM DIKEMBALIKAN') NOT NULL,
  `st_lunas` enum('SELESAI','PENDING','BELUM SELESAI') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tabungan`
--

CREATE TABLE `tbl_tabungan` (
  `id_tabungan` varchar(20) NOT NULL,
  `bank` text NOT NULL,
  `no_rekening` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tabungan`
--

INSERT INTO `tbl_tabungan` (`id_tabungan`, `bank`, `no_rekening`) VALUES
('TBG0001', 'BNK0001', '1570006124581'),
('TBG0003', 'BNK0001', '0'),
('TBG0004', 'Nama Bank', ''),
('TBG0005', 'Nama Bank', ''),
('TBG0006', 'Nama Bank', ''),
('TBG0007', 'BNK0001', '-772653'),
('TBG0008', 'BNK0001', '60010065476'),
('TBG0009', 'BNK0001', '-225301'),
('TBG0010', 'BNK0001', '1660001033638'),
('TBG0011', 'BNK0001', '-2978969'),
('TBG0012', 'BNK0001', '1010006003923'),
('TBG0013', 'BNK0001', '1290011090863'),
('TBG0014', 'BNK0001', '1570005598355'),
('TBG0015', 'BNK0001', '-1232104'),
('TBG0016', 'BNK0001', '1320014106711'),
('TBG0017', 'BNK0001', '1570005116075'),
('TBG0018', 'BNK0001', '1570004957016'),
('TBG0019', 'BNK0001', '-3031057'),
('TBG0020', 'BNK0001', '9000030319470'),
('TBG0021', 'BNK0001', '9000028943455'),
('TBG0022', 'BNK0001', '9000025487241'),
('TBG0023', 'BNK0001', '-786457'),
('TBG0024', 'BNK0001', '1660001328970'),
('TBG0025', 'BNK0001', '1570005407144'),
('TBG0026', 'BNK0001', '9000029142636'),
('TBG0027', 'BNK0001', '600077296888'),
('TBG0028', 'BNK0001', '-785723'),
('TBG0029', 'BNK0001', '1210005098631'),
('TBG0030', 'BNK0001', '-322781'),
('TBG0031', 'BNK0001', '9000011393288'),
('TBG0032', 'BNK0001', '9000011749182'),
('TBG0033', 'BNK0001', '1570002505866'),
('TBG0034', 'BNK0001', '60007215852'),
('TBG0035', 'Nama Bank', ''),
('TBG0036', 'Nama Bank', ''),
('TBG0037', 'BNK0004', ''),
('TBG0038', 'BNK0006', '703369133400'),
('TBG0039', 'BNK0005', ''),
('TBG0040', 'BNK0001', '60010405888'),
('TBG0041', 'Nama Bank', ''),
('TBG0042', 'Nama Bank', ''),
('TBG0043', 'Nama Bank', ''),
('TBG0044', 'Nama Bank', ''),
('TBG0045', 'Nama Bank', ''),
('TBG0046', 'Nama Bank', ''),
('TBG0047', 'Nama Bank', ''),
('TBG0048', 'Nama Bank', ''),
('TBG0049', 'Nama Bank', ''),
('TBG0050', 'Nama Bank', ''),
('TBG0051', 'Nama Bank', ''),
('TBG0052', 'Nama Bank', ''),
('TBG0053', 'Nama Bank', ''),
('TBG0054', 'Nama Bank', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teknisi_wo`
--

CREATE TABLE `tbl_teknisi_wo` (
  `kode_teknisi` varchar(50) NOT NULL,
  `teknisi1` varchar(255) NOT NULL,
  `teknisi2` varchar(255) NOT NULL,
  `teknisi3` varchar(255) NOT NULL,
  `teknisi4` varchar(255) NOT NULL,
  `pkl1` varchar(255) NOT NULL,
  `pkl2` varchar(255) NOT NULL,
  `pkl3` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teknisi_wo`
--

INSERT INTO `tbl_teknisi_wo` (`kode_teknisi`, `teknisi1`, `teknisi2`, `teknisi3`, `teknisi4`, `pkl1`, `pkl2`, `pkl3`) VALUES
('TCH00008-2018', 'JOSHUA ILHAM', 'ADE SYAUKI M', '', '', '', '', ''),
('TCH00009-2018', 'MUHAMMAD GILANG RAMADHAN', '', '', '', '', '', ''),
('TCH00010-2018', 'RIZKI', 'JAFAR SIDIX', '', '', '', '', ''),
('TCH00007-2018', '', '', '', '', '', '', ''),
('TCH00006-2018', '', '', '', '', '', '', ''),
('TCH00005-2018', 'BUDIMAN PRASETYO', 'RIZKI', '', '', '', '', ''),
('TCH00003-2018', '', '', '', '', '', '', ''),
('TCH00400-2018', '', '', '', '', '', '', ''),
('TCH00001-2018', 'ARI ARIYANTO', '', '', '', '', '', ''),
('TCH00002-2018', '', '', '', '', '', '', ''),
('TCH00011-2018', 'MUHAMMAD GILANG RAMADHAN', '', '', '', '', '', ''),
('TCH00035-2018', '', '', '', '', '', '', ''),
('TCH00013-2018', 'MUHAMMAD GILANG RAMADHAN', '', '', '', '', '', ''),
('TCH00014-2018', '', '', '', '', '', '', ''),
('TCH00015-2018', 'MUHAMMAD GILANG RAMADHAN', '', '', '', '', '', ''),
('TCH00016-2018', '', '', '', '', '', '', ''),
('TCH00017-2018', '', '', '', '', '', '', ''),
('TCH00018-2018', '', '', '', '', '', '', ''),
('TCH00019-2018', '', '', '', '', '', '', ''),
('TCH00020-2018', 'MUHAMMAD GILANG RAMADHAN', 'BUDIMAN PRASETYO', '', '', '', '', ''),
('TCH00176-2018', 'JAFAR SIDIX', 'ADE SYAUKI M', '', '', '', '', ''),
('TCH00022-2018', '', '', '', '', '', '', ''),
('TCH00023-2018', '', '', '', '', '', '', ''),
('TCH00024-2018', '', '', '', '', '', '', ''),
('TCH00025-2018', '', '', '', '', '', '', ''),
('TCH00026-2018', '', '', '', '', '', '', ''),
('TCH00027-2018', '', '', '', '', '', '', ''),
('TCH00028-2018', '', '', '', '', '', '', ''),
('TCH00029-2018', '', '', '', '', '', '', ''),
('TCH00030-2018', '', '', '', '', '', '', ''),
('TCH00177-2018', 'TONI', '', '', '', '', '', ''),
('TCH00032-2018', '', '', '', '', '', '', ''),
('TCH00033-2018', '', '', '', '', '', '', ''),
('TCH00034-2018', '', '', '', '', '', '', ''),
('TCH00036-2018', '', '', '', '', '', '', ''),
('TCH00037-2018', 'MUHAMMAD GILANG RAMADHAN', 'HAFID', 'ABDILLAH', '', '', '', ''),
('TCH00038-2018', '', '', '', '', '', '', ''),
('TCH00039-2018', '', '', '', '', '', '', ''),
('TCH00040-2018', 'NIKO', 'DIDIK', '', '', '', '', ''),
('TCH00041-2018', '', '', '', '', '', '', ''),
('TCH00042-2018', 'JOSHUA ILHAM', 'ADE SYAUKI M', '', '', '', '', ''),
('TCH00043-2018', '', '', '', '', '', '', ''),
('TCH00044-2018', '', '', '', '', '', '', ''),
('TCH00045-2018', 'JOSHUA ILHAM', 'ADE SYAUKI M', '', '', '', '', ''),
('TCH00046-2018', '', '', '', '', '', '', ''),
('TCH00047-2018', '', '', '', '', '', '', ''),
('TCH00048-2018', '', '', '', '', '', '', ''),
('TCH00049-2018', '', '', '', '', '', '', ''),
('TCH00050-2018', '', '', '', '', '', '', ''),
('TCH00051-2018', '', '', '', '', '', '', ''),
('TCH00052-2018', 'HALIM RACHMAN RIFALDI', 'MUHAMMAD NAUFAL', 'BUDIMAN PRASETYO', 'ARYA ERLANGGA', '', '', ''),
('TCH00053-2018', '', '', '', '', '', '', ''),
('TCH00054-2018', 'NUR MUFID', 'JAFAR SIDIX', 'ABDILLAH', '', '', '', ''),
('TCH00055-2018', '', '', '', '', '', '', ''),
('TCH00056-2018', 'JOSHUA ILHAM', 'ADE SYAUKI M', '', '', '', '', ''),
('TCH00057-2018', '', '', '', '', '', '', ''),
('TCH00058-2018', 'RIZKI', 'ARYA ERLANGGA', 'MUHAMMAD NAUFAL', 'DIDIK', '', '', ''),
('TCH00175-2018', 'MUADZ AZMI AMRULLAH', '', '', '', '', '', ''),
('TCH00060-2018', 'RIZKI', 'ADI', '', '', '', '', ''),
('TCH00061-2018', '', '', '', '', '', '', ''),
('TCH00062-2018', '', '', '', '', '', '', ''),
('TCH00063-2018', 'JOSHUA ILHAM', 'DAFFA', '', '', '', '', ''),
('TCH00064-2018', '', '', '', '', '', '', ''),
('TCH00065-2018', 'SAMIAJI', '', '', '', '', '', ''),
('TCH00066-2018', '', '', '', '', '', '', ''),
('TCH00067-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00068-2018', '', '', '', '', '', '', ''),
('TCH00069-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00070-2018', '', '', '', '', '', '', ''),
('TCH00071-2018', '', '', '', '', '', '', ''),
('TCH00072-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00073-2018', '', '', '', '', '', '', ''),
('TCH00074-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00075-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00076-2018', '', '', '', '', '', '', ''),
('TCH00077-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00078-2018', '', '', '', '', '', '', ''),
('TCH00079-2018', '', '', '', '', '', '', ''),
('TCH00080-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00081-2018', '', '', '', '', '', '', ''),
('TCH00082-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00083-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00084-2018', '', '', '', '', '', '', ''),
('TCH00085-2018', '', '', '', '', '', '', ''),
('TCH00086-2018', 'MUADZ AZMI AMRULLAH', 'HALIM RACHMAN RIFALDI', 'TONI', 'AHMAD AJIJUDIN', '', '', ''),
('TCH00087-2018', '', '', '', '', '', '', ''),
('TCH00088-2018', '', '', '', '', '', '', ''),
('TCH00089-2018', '', '', '', '', '', '', ''),
('TCH00090-2018', 'MUHAMMAD NAUFAL', 'FARHAN RAMADHAN', 'HALIM RACHMAN RIFALDI', 'HAFID', '', '', ''),
('TCH00091-2018', '', '', '', '', '', '', ''),
('TCH00092-2018', 'NIKO', '', '', '', '', '', ''),
('TCH00178-2018', 'SAMIAJI', '', '', '', '', '', ''),
('TCH00094-2018', 'TONI', 'NIKO', '', '', '', '', ''),
('TCH00095-2018', '', '', '', '', '', '', ''),
('TCH00096-2018', 'NUR MUFID', 'JOSHUA ILHAM', '', '', '', '', ''),
('TCH00097-2018', '', '', '', '', '', '', ''),
('TCH00098-2018', 'MUHAMMAD GILANG RAMADHAN', 'BUDIMAN PRASETYO', '', '', '', '', ''),
('TCH00099-2018', '', '', '', '', '', '', ''),
('TCH00100-2018', '', '', '', '', '', '', ''),
('TCH00101-2018', 'MUHAMMAD GILANG RAMADHAN', 'BUDIMAN PRASETYO', '', '', '', '', ''),
('TCH00102-2018', '', '', '', '', '', '', ''),
('TCH00103-2018', 'MUHAMMAD GILANG RAMADHAN', 'BUDIMAN PRASETYO', '', '', '', '', ''),
('TCH00104-2018', '', '', '', '', '', '', ''),
('TCH00105-2018', '', '', '', '', '', '', ''),
('TCH00106-2018', 'NUR MUFID', 'JOSHUA ILHAM', '', '', '', '', ''),
('TCH00107-2018', '', '', '', '', '', '', ''),
('TCH00108-2018', '', '', '', '', '', '', ''),
('TCH00109-2018', 'HALIM RACHMAN RIFALDI', 'FARHAN RAMADHAN', 'JOSHUA ILHAM', 'MUHAMMAD NAUFAL', '', '', ''),
('TCH00110-2018', 'HALIM RACHMAN RIFALDI', 'ADE SYAUKI M', 'MUHAMMAD NAUFAL', 'FARHAN RAMADHAN', '', '', ''),
('TCH00111-2018', '', '', '', '', '', '', ''),
('TCH00112-2018', '', '', '', '', '', '', ''),
('TCH00113-2018', '', '', '', '', '', '', ''),
('TCH00114-2018', '', '', '', '', '', '', ''),
('TCH00115-2018', 'JAFAR SIDIX', 'JOSHUA ILHAM', 'ABDILLAH', '', '', '', ''),
('TCH00118-2018', 'HAFID', '', '', '', '', '', ''),
('TCH00117-2018', 'MUADZ AZMI AMRULLAH', 'HANIF', '', '', '', '', ''),
('TCH00119-2018', '', '', '', '', '', '', ''),
('TCH00120-2018', '', '', '', '', '', '', ''),
('TCH00121-2018', 'RIZKI', 'ADI', 'ARYA ERLANGGA', '', '', '', ''),
('TCH00122-2018', '', '', '', '', '', '', ''),
('TCH00123-2018', '', '', '', '', '', '', ''),
('TCH00124-2018', '', '', '', '', '', '', ''),
('TCH00125-2018', '', '', '', '', '', '', ''),
('TCH00126-2018', '', '', '', '', '', '', ''),
('TCH00127-2018', 'ADI', 'DAFFA', '', '', '', '', ''),
('TCH00128-2018', 'AHMAD AJIJUDIN', 'FARHAN RAMADHAN', 'MUHAMMAD NAUFAL', 'NIKO', '', '', ''),
('TCH00129-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00130-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00131-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00132-2018', 'MUADZ AZMI AMRULLAH', '', '', '', '', '', ''),
('TCH00133-2018', '', '', '', '', '', '', ''),
('TCH00134-2018', 'JOSHUA ILHAM', '', '', '', '', '', ''),
('TCH00135-2018', 'NUR MUFID', 'MUHAMMAD NAUFAL', '', '', '', '', ''),
('TCH00136-2018', 'HALIM RACHMAN RIFALDI', '', '', '', '', '', ''),
('TCH00137-2018', 'AHMAD AJIJUDIN', 'BUDIMAN PRASETYO', 'JOSHUA ILHAM', '', '', '', ''),
('TCH00138-2018', 'MUADZ AZMI AMRULLAH', '', '', '', '', '', ''),
('TCH00139-2018', '', '', '', '', '', '', ''),
('TCH00140-2018', 'AHMAD AJIJUDIN', '', '', '', '', '', ''),
('TCH00141-2018', 'BABEH', '', '', '', '', '', ''),
('TCH00144-2018', 'AHMAD AJIJUDIN', '', '', '', '', '', ''),
('TCH00143-2018', 'NUR MUFID', '', '', '', '', '', ''),
('TCH00145-2018', '', '', '', '', '', '', ''),
('TCH00146-2018', 'AHMAD AJIJUDIN', '', '', '', '', '', ''),
('TCH00147-2018', 'MUADZ AZMI AMRULLAH', 'ABDILLAH', '', '', '', '', ''),
('TCH00148-2018', 'NIKO', 'HANIF', '', '', '', '', ''),
('TCH00149-2018', 'NIKO', '', '', '', '', '', ''),
('TCH00150-2018', 'ARYA ERLANGGA', 'BUDIMAN PRASETYO', '', '', '', '', ''),
('TCH00151-2018', 'NIKO', 'HAFID', '', '', '', '', ''),
('TCH00152-2018', 'DAFFA', 'FARHAN RAMADHAN', '', '', '', '', ''),
('TCH00153-2018', 'DIDIK', '', '', '', '', '', ''),
('TCH00154-2018', 'AHMAD AJIJUDIN', '', '', '', '', '', ''),
('TCH00155-2018', 'JOSHUA ILHAM', '', '', '', '', '', ''),
('TCH00156-2018', 'DOBIYANTO KRISNA SETIAWAN', '', '', '', '', '', ''),
('TCH00157-2018', '', '', '', '', '', '', ''),
('TCH00158-2018', 'FARHAN RAMADHAN', 'DIDIK', '', '', '', '', ''),
('TCH00159-2018', 'NIKO', 'HANIF', '', '', '', '', ''),
('TCH00160-2018', 'ARYA ERLANGGA', 'ABDILLAH', '', '', '', '', ''),
('TCH00161-2018', '', '', '', '', '', '', ''),
('TCH00162-2018', 'HALIM RACHMAN RIFALDI', 'JOSHUA ILHAM', '', '', '', '', ''),
('TCH00163-2018', 'JOSHUA ILHAM', 'ABDILLAH', '', '', '', '', ''),
('TCH00164-2018', 'DOBIYANTO KRISNA SETIAWAN', '', '', '', '', 'MUHAMMAD IKHSANUDIN', ''),
('TCH00165-2018', 'HALIM RACHMAN RIFALDI', '', '', '', '', '', ''),
('TCH00166-2018', 'FARHAN RAMADHAN', 'DIDIK', '', '', '', '', ''),
('TCH00167-2018', 'NIKO', 'ADI', '', '', '', '', ''),
('TCH00168-2018', 'NIKO', 'ADI', '', '', '', '', ''),
('TCH00169-2018', 'TONI', '', '', '', '', '', ''),
('TCH00170-2018', 'RIZKI', '', '', '', '', '', ''),
('TCH00171-2018', '', '', '', '', '', '', ''),
('TCH00172-2018', '', '', '', '', '', '', ''),
('TCH00173-2018', 'MUADZ AZMI AMRULLAH', 'NUR MUFID', '', '', '', '', ''),
('TCH00174-2018', 'MUADZ AZMI AMRULLAH', '', '', '', '', '', ''),
('TCH00179-2018', 'DOBIYANTO KRISNA SETIAWAN', 'ARYA ERLANGGA', '', '', '', '', ''),
('TCH00180-2018', 'MUHAMMAD GILANG RAMADHAN', '', '', '', '', '', ''),
('TCH00181-2018', 'MUHAMMAD GILANG RAMADHAN', '', '', '', '', '', ''),
('TCH00182-2018', 'RIZKI', 'ARYA ERLANGGA', '', '', '', '', ''),
('TCH00183-2018', 'SAMIAJI', '', '', '', '', '', ''),
('TCH00184-2018', 'SAMIAJI', '', '', '', '', '', ''),
('TCH00185-2018', '', '', '', '', '', '', ''),
('TCH00188-2018', '', '', '', '', '', '', ''),
('TCH00187-2018', '', '', '', '', '', '', ''),
('TCH00189-2018', '', '', '', '', '', '', ''),
('TCH00190-2018', '', '', '', '', '', '', ''),
('TCH00191-2018', '', '', '', '', '', '', ''),
('TCH00192-2018', '', '', '', '', '', '', ''),
('TCH00193-2018', '', '', '', '', '', '', ''),
('TCH00194-2018', '', '', '', '', '', '', ''),
('TCH00195-2018', '', '', '', '', '', '', ''),
('TCH00196-2018', '', '', '', '', '', '', ''),
('TCH00197-2018', '', '', '', '', '', '', ''),
('TCH00198-2018', '', '', '', '', '', '', ''),
('TCH00199-2018', '', '', '', '', '', '', ''),
('TCH00200-2018', '', '', '', '', '', '', ''),
('TCH00201-2018', '', '', '', '', '', '', ''),
('TCH00202-2018', '', '', '', '', '', '', ''),
('TCH00203-2018', '', '', '', '', '', '', ''),
('TCH00204-2018', '', '', '', '', '', '', ''),
('TCH00205-2018', '', '', '', '', '', '', ''),
('TCH00206-2018', '', '', '', '', '', '', ''),
('TCH00207-2018', '', '', '', '', '', '', ''),
('TCH00208-2018', '', '', '', '', '', '', ''),
('TCH00209-2018', '', '', '', '', '', '', ''),
('TCH00210-2018', '', '', '', '', '', '', ''),
('TCH00211-2018', '', '', '', '', '', '', ''),
('TCH00212-2018', '', '', '', '', '', '', ''),
('TCH00213-2018', '', '', '', '', '', '', ''),
('TCH00214-2018', '', '', '', '', '', '', ''),
('TCH00215-2018', '', '', '', '', '', '', ''),
('TCH00216-2018', '', '', '', '', '', '', ''),
('TCH00217-2018', '', '', '', '', '', '', ''),
('TCH00218-2018', '', '', '', '', '', '', ''),
('TCH00219-2018', '', '', '', '', '', '', ''),
('TCH00220-2018', '', '', '', '', '', '', ''),
('TCH00221-2018', '', '', '', '', '', '', ''),
('TCH00222-2018', '', '', '', '', '', '', ''),
('TCH00223-2018', '', '', '', '', '', '', ''),
('TCH00224-2018', '', '', '', '', '', '', ''),
('TCH00225-2018', '', '', '', '', '', '', ''),
('TCH00226-2018', '', '', '', '', '', '', ''),
('TCH00227-2018', '', '', '', '', '', '', ''),
('TCH00228-2018', '', '', '', '', '', '', ''),
('TCH00229-2018', '', '', '', '', '', '', ''),
('TCH00230-2018', '', '', '', '', '', '', ''),
('TCH00231-2018', '', '', '', '', '', '', ''),
('TCH00232-2018', '', '', '', '', '', '', ''),
('TCH00233-2018', '', '', '', '', '', '', ''),
('TCH00234-2018', '', '', '', '', '', '', ''),
('TCH00235-2018', '', '', '', '', '', '', ''),
('TCH00236-2018', '', '', '', '', '', '', ''),
('TCH00237-2018', '', '', '', '', '', '', ''),
('TCH00238-2018', '', '', '', '', '', '', ''),
('TCH00239-2018', '', '', '', '', '', '', ''),
('TCH00240-2018', '', '', '', '', '', '', ''),
('TCH00241-2018', '', '', '', '', '', '', ''),
('TCH00242-2018', '', '', '', '', '', '', ''),
('TCH00243-2018', '', '', '', '', '', '', ''),
('TCH00244-2018', '', '', '', '', '', '', ''),
('TCH00245-2018', '', '', '', '', '', '', ''),
('TCH00246-2018', '', '', '', '', '', '', ''),
('TCH00247-2018', '', '', '', '', '', '', ''),
('TCH00248-2018', '', '', '', '', '', '', ''),
('TCH00249-2018', '', '', '', '', '', '', ''),
('TCH00250-2018', '', '', '', '', '', '', ''),
('TCH00251-2018', '', '', '', '', '', '', ''),
('TCH00252-2018', '', '', '', '', '', '', ''),
('TCH00253-2018', '', '', '', '', '', '', ''),
('TCH00254-2018', '', '', '', '', '', '', ''),
('TCH00255-2018', '', '', '', '', '', '', ''),
('TCH00256-2018', '', '', '', '', '', '', ''),
('TCH00261-2018', '', '', '', '', '', '', ''),
('TCH00258-2018', '', '', '', '', '', '', ''),
('TCH00259-2018', '', '', '', '', '', '', ''),
('TCH00260-2018', '', '', '', '', '', '', ''),
('TCH00262-2018', '', '', '', '', '', '', ''),
('TCH00263-2018', '', '', '', '', '', '', ''),
('TCH00264-2018', '', '', '', '', '', '', ''),
('TCH00265-2018', '', '', '', '', '', '', ''),
('TCH00266-2018', '', '', '', '', '', '', ''),
('TCH00267-2018', 'ARI ARIYANTO', '', '', '', '', '', 'TEST USER'),
('TCH00268-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', 'TEST USER'),
('TCH00269-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH00270-2018', 'AHMAD AJIJUDIN', '', '', '', '', '', ''),
('TCH00303-2018', 'SAMIAJI', '', '', '', '', '', ''),
('TCH00272-2018', 'RIZKI', 'BUDIMAN PRASETYO', '', '', '', '', ''),
('TCH00273-2018', 'RIZKI', 'ARYA ERLANGGA', 'MUHAMMAD NAUFAL', 'DIDIK', '', '', ''),
('TCH00274-2018', 'NUR MUFID', 'MUHAMMAD GILANG RAMADHAN', '', '', '', '', ''),
('TCH01026-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH00276-2018', '', '', '', '', '', '', ''),
('TCH00277-2018', '', '', '', '', '', '', ''),
('TCH00278-2018', '', '', '', '', '', '', ''),
('TCH00279-2018', 'DOBIYANTO KRISNA SETIAWAN', '', '', '', '', '', ''),
('TCH00282-2018', '', '', '', '', '', '', ''),
('TCH00281-2018', '', '', '', '', '', '', ''),
('TCH00283-2018', '', '', '', '', '', '', ''),
('TCH00284-2018', '', '', '', '', '', '', ''),
('TCH00285-2018', '', '', '', '', '', '', ''),
('TCH00286-2018', '', '', '', '', '', '', ''),
('TCH00287-2018', '', '', '', '', '', '', ''),
('TCH00288-2018', '', '', '', '', '', '', ''),
('TCH00289-2018', '', '', '', '', '', '', ''),
('TCH00290-2018', '', '', '', '', '', '', ''),
('TCH00291-2018', '', '', '', '', '', '', ''),
('TCH00292-2018', '', '', '', '', '', '', ''),
('TCH00293-2018', '', '', '', '', '', '', ''),
('TCH00294-2018', '', '', '', '', '', '', ''),
('TCH00295-2018', '', '', '', '', '', '', ''),
('TCH00296-2018', '', '', '', '', '', '', ''),
('TCH00297-2018', '', '', '', '', '', '', ''),
('TCH00298-2018', '', '', '', '', '', '', ''),
('TCH00299-2018', 'SAMIAJI', '', '', '', '', '', ''),
('TCH00300-2018', 'TONI', 'SAMIAJI', '', '', '', '', ''),
('TCH00301-2018', 'SAMIAJI', '', '', '', '', '', ''),
('TCH00302-2018', 'HAFID', '', '', '', '', '', ''),
('TCH00304-2018', '', '', '', '', '', '', ''),
('TCH00305-2018', '', '', '', '', '', '', ''),
('TCH00306-2018', '', '', '', '', '', '', ''),
('TCH00307-2018', '', '', '', '', '', '', ''),
('TCH00308-2018', '', '', '', '', '', '', ''),
('TCH00309-2018', '', '', '', '', '', '', ''),
('TCH00310-2018', '', '', '', '', '', '', ''),
('TCH00311-2018', '', '', '', '', '', '', ''),
('TCH00312-2018', '', '', '', '', '', '', ''),
('TCH00313-2018', '', '', '', '', '', '', ''),
('TCH00314-2018', '', '', '', '', '', '', ''),
('TCH00315-2018', '', '', '', '', '', '', ''),
('TCH00316-2018', '', '', '', '', '', '', ''),
('TCH00317-2018', '', '', '', '', '', '', ''),
('TCH00318-2018', '', '', '', '', '', '', ''),
('TCH00319-2018', '', '', '', '', '', '', ''),
('TCH00320-2018', '', '', '', '', '', '', ''),
('TCH00321-2018', '', '', '', '', '', '', ''),
('TCH00322-2018', '', '', '', '', '', '', ''),
('TCH00323-2018', '', '', '', '', '', '', ''),
('TCH00324-2018', '', '', '', '', '', '', ''),
('TCH00325-2018', '', '', '', '', '', '', ''),
('TCH00326-2018', '', '', '', '', '', '', ''),
('TCH00327-2018', '', '', '', '', '', '', ''),
('TCH00328-2018', '', '', '', '', '', '', ''),
('TCH00329-2018', '', '', '', '', '', '', ''),
('TCH00330-2018', '', '', '', '', '', '', ''),
('TCH00331-2018', '', '', '', '', '', '', ''),
('TCH00332-2018', '', '', '', '', '', '', ''),
('TCH00333-2018', '', '', '', '', '', '', ''),
('TCH00334-2018', '', '', '', '', '', '', ''),
('TCH00335-2018', '', '', '', '', '', '', ''),
('TCH00336-2018', '', '', '', '', '', '', ''),
('TCH00337-2018', '', '', '', '', '', '', ''),
('TCH00338-2018', '', '', '', '', '', '', ''),
('TCH00339-2018', '', '', '', '', '', '', ''),
('TCH00340-2018', '', '', '', '', '', '', ''),
('TCH00341-2018', '', '', '', '', '', '', ''),
('TCH00342-2018', '', '', '', '', '', '', ''),
('TCH00343-2018', '', '', '', '', '', '', ''),
('TCH00344-2018', '', '', '', '', '', '', ''),
('TCH00345-2018', '', '', '', '', '', '', ''),
('TCH00346-2018', '', '', '', '', '', '', ''),
('TCH00347-2018', '', '', '', '', '', '', ''),
('TCH00348-2018', '', '', '', '', '', '', ''),
('TCH00349-2018', '', '', '', '', '', '', ''),
('TCH00350-2018', '', '', '', '', '', '', ''),
('TCH00351-2018', '', '', '', '', '', '', ''),
('TCH00352-2018', '', '', '', '', '', '', ''),
('TCH00353-2018', '', '', '', '', '', '', ''),
('TCH00354-2018', '', '', '', '', '', '', ''),
('TCH00355-2018', '', '', '', '', '', '', ''),
('TCH00356-2018', '', '', '', '', '', '', ''),
('TCH00357-2018', '', '', '', '', '', '', ''),
('TCH00358-2018', '', '', '', '', '', '', ''),
('TCH00359-2018', '', '', '', '', '', '', ''),
('TCH00360-2018', '', '', '', '', '', '', ''),
('TCH00361-2018', '', '', '', '', '', '', ''),
('TCH00362-2018', '', '', '', '', '', '', ''),
('TCH00363-2018', '', '', '', '', '', '', ''),
('TCH00364-2018', '', '', '', '', '', '', ''),
('TCH00365-2018', '', '', '', '', '', '', ''),
('TCH00366-2018', '', '', '', '', '', '', ''),
('TCH00367-2018', '', '', '', '', '', '', ''),
('TCH00368-2018', '', '', '', '', '', '', ''),
('TCH00369-2018', '', '', '', '', '', '', ''),
('TCH00389-2018', '', '', '', '', '', '', ''),
('TCH00391-2018', '', '', '', '', '', '', ''),
('TCH00372-2018', '', '', '', '', '', '', ''),
('TCH00373-2018', '', '', '', '', '', '', ''),
('TCH00374-2018', '', '', '', '', '', '', ''),
('TCH00375-2018', '', '', '', '', '', '', ''),
('TCH00376-2018', '', '', '', '', '', '', ''),
('TCH00377-2018', '', '', '', '', '', '', ''),
('TCH00378-2018', '', '', '', '', '', '', ''),
('TCH00379-2018', '', '', '', '', '', '', ''),
('TCH00380-2018', '', '', '', '', '', '', ''),
('TCH00381-2018', '', '', '', '', '', '', ''),
('TCH00382-2018', '', '', '', '', '', '', ''),
('TCH00383-2018', '', '', '', '', '', '', ''),
('TCH00384-2018', '', '', '', '', '', '', ''),
('TCH00385-2018', '', '', '', '', '', '', ''),
('TCH00386-2018', '', '', '', '', '', '', ''),
('TCH00399-2018', '', '', '', '', '', '', ''),
('TCH00387-2018', '', '', '', '', '', '', ''),
('TCH00388-2018', '', '', '', '', '', '', ''),
('TCH00390-2018', '', '', '', '', '', '', ''),
('TCH00392-2018', '', '', '', '', '', '', ''),
('TCH00393-2018', '', '', '', '', '', '', ''),
('TCH00394-2018', '', '', '', '', '', '', ''),
('TCH00395-2018', '', '', '', '', '', '', ''),
('TCH00396-2018', '', '', '', '', '', '', ''),
('TCH00397-2018', '', '', '', '', '', '', ''),
('TCH00398-2018', '', '', '', '', '', '', ''),
('TCH00401-2018', '', '', '', '', '', '', ''),
('TCH00402-2018', '', '', '', '', '', '', ''),
('TCH00403-2018', '', '', '', '', '', '', ''),
('TCH00404-2018', '', '', '', '', '', '', ''),
('TCH00405-2018', '', '', '', '', '', '', ''),
('TCH00406-2018', '', '', '', '', '', '', ''),
('TCH00407-2018', '', '', '', '', '', '', ''),
('TCH00408-2018', '', '', '', '', '', '', ''),
('TCH00409-2018', '', '', '', '', '', '', ''),
('TCH00410-2018', '', '', '', '', '', '', ''),
('TCH00411-2018', '', '', '', '', '', '', ''),
('TCH00412-2018', '', '', '', '', '', '', ''),
('TCH00413-2018', '', '', '', '', '', '', ''),
('TCH00414-2018', '', '', '', '', '', '', ''),
('TCH00415-2018', '', '', '', '', '', '', ''),
('TCH00416-2018', '', '', '', '', '', '', ''),
('TCH00417-2018', '', '', '', '', '', '', ''),
('TCH00976-2018', '', '', '', '', '', '', ''),
('TCH00419-2018', '', '', '', '', '', '', ''),
('TCH00420-2018', '', '', '', '', '', '', ''),
('TCH00977-2018', '', '', '', '', '', '', ''),
('TCH00422-2018', '', '', '', '', '', '', ''),
('TCH00423-2018', '', '', '', '', '', '', ''),
('TCH00424-2018', '', '', '', '', '', '', ''),
('TCH00425-2018', '', '', '', '', '', '', ''),
('TCH00426-2018', '', '', '', '', '', '', ''),
('TCH00427-2018', '', '', '', '', '', '', ''),
('TCH00428-2018', '', '', '', '', '', '', ''),
('TCH00429-2018', '', '', '', '', '', '', ''),
('TCH00430-2018', '', '', '', '', '', '', ''),
('TCH00431-2018', '', '', '', '', '', '', ''),
('TCH00432-2018', '', '', '', '', '', '', ''),
('TCH00433-2018', '', '', '', '', '', '', ''),
('TCH00434-2018', '', '', '', '', '', '', ''),
('TCH00435-2018', '', '', '', '', '', '', ''),
('TCH00436-2018', '', '', '', '', '', '', ''),
('TCH00437-2018', '', '', '', '', '', '', ''),
('TCH00438-2018', '', '', '', '', '', '', ''),
('TCH00439-2018', '', '', '', '', '', '', ''),
('TCH00440-2018', '', '', '', '', '', '', ''),
('TCH00441-2018', '', '', '', '', '', '', ''),
('TCH00442-2018', '', '', '', '', '', '', ''),
('TCH00443-2018', '', '', '', '', '', '', ''),
('TCH00444-2018', '', '', '', '', '', '', ''),
('TCH00445-2018', '', '', '', '', '', '', ''),
('TCH00446-2018', '', '', '', '', '', '', ''),
('TCH00447-2018', '', '', '', '', '', '', ''),
('TCH00448-2018', '', '', '', '', '', '', ''),
('TCH00449-2018', '', '', '', '', '', '', ''),
('TCH00450-2018', '', '', '', '', '', '', ''),
('TCH00451-2018', '', '', '', '', '', '', ''),
('TCH00452-2018', '', '', '', '', '', '', ''),
('TCH00453-2018', '', '', '', '', '', '', ''),
('TCH00454-2018', '', '', '', '', '', '', ''),
('TCH00455-2018', '', '', '', '', '', '', ''),
('TCH00456-2018', '', '', '', '', '', '', ''),
('TCH00457-2018', '', '', '', '', '', '', ''),
('TCH00458-2018', '', '', '', '', '', '', ''),
('TCH00459-2018', '', '', '', '', '', '', ''),
('TCH00460-2018', '', '', '', '', '', '', ''),
('TCH00461-2018', '', '', '', '', '', '', ''),
('TCH00462-2018', '', '', '', '', '', '', ''),
('TCH00463-2018', '', '', '', '', '', '', ''),
('TCH00464-2018', '', '', '', '', '', '', ''),
('TCH00465-2018', '', '', '', '', '', '', ''),
('TCH00466-2018', '', '', '', '', '', '', ''),
('TCH00467-2018', '', '', '', '', '', '', ''),
('TCH00468-2018', '', '', '', '', '', '', ''),
('TCH00469-2018', '', '', '', '', '', '', ''),
('TCH00470-2018', '', '', '', '', '', '', ''),
('TCH00471-2018', '', '', '', '', '', '', ''),
('TCH00472-2018', '', '', '', '', '', '', ''),
('TCH00473-2018', '', '', '', '', '', '', ''),
('TCH00474-2018', '', '', '', '', '', '', ''),
('TCH00475-2018', '', '', '', '', '', '', ''),
('TCH00476-2018', '', '', '', '', '', '', ''),
('TCH00477-2018', '', '', '', '', '', '', ''),
('TCH00478-2018', '', '', '', '', '', '', ''),
('TCH00479-2018', '', '', '', '', '', '', ''),
('TCH00480-2018', '', '', '', '', '', '', ''),
('TCH00481-2018', '', '', '', '', '', '', ''),
('TCH00482-2018', '', '', '', '', '', '', ''),
('TCH00483-2018', '', '', '', '', '', '', ''),
('TCH00484-2018', '', '', '', '', '', '', ''),
('TCH00485-2018', '', '', '', '', '', '', ''),
('TCH00486-2018', '', '', '', '', '', '', ''),
('TCH00487-2018', '', '', '', '', '', '', ''),
('TCH00488-2018', '', '', '', '', '', '', ''),
('TCH00489-2018', '', '', '', '', '', '', ''),
('TCH00490-2018', '', '', '', '', '', '', ''),
('TCH00491-2018', '', '', '', '', '', '', ''),
('TCH00492-2018', '', '', '', '', '', '', ''),
('TCH00493-2018', '', '', '', '', '', '', ''),
('TCH00494-2018', '', '', '', '', '', '', ''),
('TCH00495-2018', '', '', '', '', '', '', ''),
('TCH00496-2018', '', '', '', '', '', '', ''),
('TCH00497-2018', '', '', '', '', '', '', ''),
('TCH00498-2018', '', '', '', '', '', '', ''),
('TCH00499-2018', '', '', '', '', '', '', ''),
('TCH00500-2018', '', '', '', '', '', '', ''),
('TCH00501-2018', '', '', '', '', '', '', ''),
('TCH00502-2018', '', '', '', '', '', '', ''),
('TCH00503-2018', '', '', '', '', '', '', ''),
('TCH00504-2018', '', '', '', '', '', '', ''),
('TCH00505-2018', '', '', '', '', '', '', ''),
('TCH00506-2018', '', '', '', '', '', '', ''),
('TCH00507-2018', '', '', '', '', '', '', ''),
('TCH00508-2018', '', '', '', '', '', '', ''),
('TCH00509-2018', '', '', '', '', '', '', ''),
('TCH00510-2018', '', '', '', '', '', '', ''),
('TCH00511-2018', '', '', '', '', '', '', ''),
('TCH00512-2018', '', '', '', '', '', '', ''),
('TCH00513-2018', '', '', '', '', '', '', ''),
('TCH00514-2018', '', '', '', '', '', '', ''),
('TCH00515-2018', '', '', '', '', '', '', ''),
('TCH00516-2018', '', '', '', '', '', '', ''),
('TCH00517-2018', '', '', '', '', '', '', ''),
('TCH00518-2018', '', '', '', '', '', '', ''),
('TCH00519-2018', '', '', '', '', '', '', ''),
('TCH00520-2018', '', '', '', '', '', '', ''),
('TCH00521-2018', '', '', '', '', '', '', ''),
('TCH00522-2018', '', '', '', '', '', '', ''),
('TCH00523-2018', '', '', '', '', '', '', ''),
('TCH00524-2018', '', '', '', '', '', '', ''),
('TCH00525-2018', '', '', '', '', '', '', ''),
('TCH00526-2018', '', '', '', '', '', '', ''),
('TCH00527-2018', '', '', '', '', '', '', ''),
('TCH00528-2018', '', '', '', '', '', '', ''),
('TCH00529-2018', '', '', '', '', '', '', ''),
('TCH00530-2018', '', '', '', '', '', '', ''),
('TCH00531-2018', '', '', '', '', '', '', ''),
('TCH00532-2018', '', '', '', '', '', '', ''),
('TCH00533-2018', '', '', '', '', '', '', ''),
('TCH00534-2018', '', '', '', '', '', '', ''),
('TCH00535-2018', '', '', '', '', '', '', ''),
('TCH00536-2018', '', '', '', '', '', '', ''),
('TCH00537-2018', '', '', '', '', '', '', ''),
('TCH00538-2018', '', '', '', '', '', '', ''),
('TCH00539-2018', '', '', '', '', '', '', ''),
('TCH00540-2018', '', '', '', '', '', '', ''),
('TCH00541-2018', '', '', '', '', '', '', ''),
('TCH00542-2018', '', '', '', '', '', '', ''),
('TCH00543-2018', '', '', '', '', '', '', ''),
('TCH00544-2018', '', '', '', '', '', '', ''),
('TCH00545-2018', '', '', '', '', '', '', ''),
('TCH00546-2018', '', '', '', '', '', '', ''),
('TCH00547-2018', '', '', '', '', '', '', ''),
('TCH00548-2018', '', '', '', '', '', '', ''),
('TCH00549-2018', '', '', '', '', '', '', ''),
('TCH00550-2018', '', '', '', '', '', '', ''),
('TCH00551-2018', '', '', '', '', '', '', ''),
('TCH00552-2018', '', '', '', '', '', '', ''),
('TCH00553-2018', '', '', '', '', '', '', ''),
('TCH00554-2018', '', '', '', '', '', '', ''),
('TCH00555-2018', '', '', '', '', '', '', ''),
('TCH00556-2018', '', '', '', '', '', '', ''),
('TCH00557-2018', '', '', '', '', '', '', ''),
('TCH00558-2018', '', '', '', '', '', '', ''),
('TCH00559-2018', '', '', '', '', '', '', ''),
('TCH00560-2018', '', '', '', '', '', '', ''),
('TCH00561-2018', '', '', '', '', '', '', ''),
('TCH00562-2018', '', '', '', '', '', '', ''),
('TCH00563-2018', '', '', '', '', '', '', ''),
('TCH00564-2018', '', '', '', '', '', '', ''),
('TCH00565-2018', '', '', '', '', '', '', ''),
('TCH00566-2018', '', '', '', '', '', '', ''),
('TCH00567-2018', '', '', '', '', '', '', ''),
('TCH00568-2018', '', '', '', '', '', '', ''),
('TCH00569-2018', '', '', '', '', '', '', ''),
('TCH00570-2018', '', '', '', '', '', '', ''),
('TCH00571-2018', '', '', '', '', '', '', ''),
('TCH00572-2018', '', '', '', '', '', '', ''),
('TCH00573-2018', '', '', '', '', '', '', ''),
('TCH00574-2018', '', '', '', '', '', '', ''),
('TCH00575-2018', '', '', '', '', '', '', ''),
('TCH00576-2018', '', '', '', '', '', '', ''),
('TCH00577-2018', '', '', '', '', '', '', ''),
('TCH00578-2018', '', '', '', '', '', '', ''),
('TCH00579-2018', '', '', '', '', '', '', ''),
('TCH00580-2018', '', '', '', '', '', '', ''),
('TCH00581-2018', '', '', '', '', '', '', ''),
('TCH00582-2018', '', '', '', '', '', '', ''),
('TCH00583-2018', '', '', '', '', '', '', ''),
('TCH00584-2018', '', '', '', '', '', '', ''),
('TCH00585-2018', '', '', '', '', '', '', ''),
('TCH00586-2018', '', '', '', '', '', '', ''),
('TCH00587-2018', '', '', '', '', '', '', ''),
('TCH00588-2018', '', '', '', '', '', '', ''),
('TCH00589-2018', '', '', '', '', '', '', ''),
('TCH00590-2018', '', '', '', '', '', '', ''),
('TCH00591-2018', '', '', '', '', '', '', ''),
('TCH00592-2018', '', '', '', '', '', '', ''),
('TCH00593-2018', '', '', '', '', '', '', ''),
('TCH00594-2018', '', '', '', '', '', '', ''),
('TCH00595-2018', '', '', '', '', '', '', ''),
('TCH00596-2018', '', '', '', '', '', '', ''),
('TCH00597-2018', '', '', '', '', '', '', ''),
('TCH00598-2018', '', '', '', '', '', '', ''),
('TCH00599-2018', '', '', '', '', '', '', ''),
('TCH00600-2018', '', '', '', '', '', '', ''),
('TCH00601-2018', '', '', '', '', '', '', ''),
('TCH00602-2018', '', '', '', '', '', '', ''),
('TCH00603-2018', '', '', '', '', '', '', ''),
('TCH00604-2018', '', '', '', '', '', '', ''),
('TCH00605-2018', '', '', '', '', '', '', ''),
('TCH00606-2018', '', '', '', '', '', '', ''),
('TCH00607-2018', '', '', '', '', '', '', ''),
('TCH00608-2018', '', '', '', '', '', '', ''),
('TCH00609-2018', '', '', '', '', '', '', ''),
('TCH00610-2018', '', '', '', '', '', '', ''),
('TCH00611-2018', '', '', '', '', '', '', ''),
('TCH00612-2018', '', '', '', '', '', '', ''),
('TCH00613-2018', '', '', '', '', '', '', ''),
('TCH00614-2018', '', '', '', '', '', '', ''),
('TCH00615-2018', '', '', '', '', '', '', ''),
('TCH00616-2018', '', '', '', '', '', '', ''),
('TCH00617-2018', '', '', '', '', '', '', ''),
('TCH00618-2018', '', '', '', '', '', '', ''),
('TCH00619-2018', '', '', '', '', '', '', ''),
('TCH00620-2018', '', '', '', '', '', '', ''),
('TCH00621-2018', '', '', '', '', '', '', ''),
('TCH00622-2018', '', '', '', '', '', '', ''),
('TCH00623-2018', '', '', '', '', '', '', ''),
('TCH00624-2018', '', '', '', '', '', '', ''),
('TCH00625-2018', '', '', '', '', '', '', ''),
('TCH00626-2018', '', '', '', '', '', '', ''),
('TCH00627-2018', '', '', '', '', '', '', ''),
('TCH00628-2018', '', '', '', '', '', '', ''),
('TCH00629-2018', '', '', '', '', '', '', ''),
('TCH00630-2018', '', '', '', '', '', '', ''),
('TCH00631-2018', '', '', '', '', '', '', ''),
('TCH00632-2018', '', '', '', '', '', '', ''),
('TCH00633-2018', '', '', '', '', '', '', ''),
('TCH00634-2018', '', '', '', '', '', '', ''),
('TCH00635-2018', '', '', '', '', '', '', ''),
('TCH00636-2018', '', '', '', '', '', '', ''),
('TCH00637-2018', '', '', '', '', '', '', ''),
('TCH00638-2018', '', '', '', '', '', '', ''),
('TCH00639-2018', '', '', '', '', '', '', ''),
('TCH00640-2018', '', '', '', '', '', '', ''),
('TCH00641-2018', '', '', '', '', '', '', ''),
('TCH00642-2018', '', '', '', '', '', '', ''),
('TCH00643-2018', '', '', '', '', '', '', ''),
('TCH00644-2018', '', '', '', '', '', '', ''),
('TCH00645-2018', '', '', '', '', '', '', ''),
('TCH00646-2018', '', '', '', '', '', '', ''),
('TCH00647-2018', '', '', '', '', '', '', ''),
('TCH00648-2018', '', '', '', '', '', '', ''),
('TCH00649-2018', '', '', '', '', '', '', ''),
('TCH00650-2018', '', '', '', '', '', '', ''),
('TCH00651-2018', '', '', '', '', '', '', ''),
('TCH00984-2018', '', '', '', '', '', '', ''),
('TCH00653-2018', '', '', '', '', '', '', ''),
('TCH00654-2018', '', '', '', '', '', '', ''),
('TCH00655-2018', '', '', '', '', '', '', ''),
('TCH00983-2018', '', '', '', '', '', '', ''),
('TCH00982-2018', '', '', '', '', '', '', ''),
('TCH00981-2018', '', '', '', '', '', '', ''),
('TCH00659-2018', '', '', '', '', '', '', ''),
('TCH00660-2018', '', '', '', '', '', '', ''),
('TCH00661-2018', '', '', '', '', '', '', ''),
('TCH00662-2018', '', '', '', '', '', '', ''),
('TCH00663-2018', '', '', '', '', '', '', ''),
('TCH00664-2018', '', '', '', '', '', '', ''),
('TCH00665-2018', '', '', '', '', '', '', ''),
('TCH00666-2018', '', '', '', '', '', '', ''),
('TCH00667-2018', '', '', '', '', '', '', ''),
('TCH00980-2018', '', '', '', '', '', '', ''),
('TCH00979-2018', '', '', '', '', '', '', ''),
('TCH00978-2018', '', '', '', '', '', '', ''),
('TCH00974-2018', '', '', '', '', '', '', ''),
('TCH00972-2018', '', '', '', '', '', '', ''),
('TCH00971-2018', '', '', '', '', '', '', ''),
('TCH00674-2018', '', '', '', '', '', '', ''),
('TCH00970-2018', '', '', '', '', '', '', ''),
('TCH00969-2018', '', '', '', '', '', '', ''),
('TCH00968-2018', '', '', '', '', '', '', ''),
('TCH00967-2018', '', '', '', '', '', '', ''),
('TCH00966-2018', '', '', '', '', '', '', ''),
('TCH00965-2018', '', '', '', '', '', '', ''),
('TCH00964-2018', '', '', '', '', '', '', ''),
('TCH00963-2018', '', '', '', '', '', '', ''),
('TCH00961-2018', '', '', '', '', '', '', ''),
('TCH00684-2018', '', '', '', '', '', '', ''),
('TCH00962-2018', '', '', '', '', '', '', ''),
('TCH00975-2018', '', '', '', '', '', '', ''),
('TCH00959-2018', '', '', '', '', '', '', ''),
('TCH00958-2018', '', '', '', '', '', '', ''),
('TCH00973-2018', '', '', '', '', '', '', ''),
('TCH00956-2018', '', '', '', '', '', '', ''),
('TCH00955-2018', '', '', '', '', '', '', ''),
('TCH00954-2018', '', '', '', '', '', '', ''),
('TCH00694-2018', '', '', '', '', '', '', ''),
('TCH00695-2018', '', '', '', '', '', '', ''),
('TCH00696-2018', '', '', '', '', '', '', ''),
('TCH00697-2018', '', '', '', '', '', '', ''),
('TCH00698-2018', '', '', '', '', '', '', ''),
('TCH00699-2018', '', '', '', '', '', '', ''),
('TCH00700-2018', '', '', '', '', '', '', ''),
('TCH00701-2018', '', '', '', '', '', '', ''),
('TCH00702-2018', '', '', '', '', '', '', ''),
('TCH00703-2018', '', '', '', '', '', '', ''),
('TCH00704-2018', '', '', '', '', '', '', ''),
('TCH00705-2018', '', '', '', '', '', '', ''),
('TCH00706-2018', '', '', '', '', '', '', ''),
('TCH00707-2018', '', '', '', '', '', '', ''),
('TCH00708-2018', '', '', '', '', '', '', ''),
('TCH00748-2018', '', '', '', '', '', '', ''),
('TCH00710-2018', '', '', '', '', '', '', ''),
('TCH00711-2018', '', '', '', '', '', '', ''),
('TCH00712-2018', '', '', '', '', '', '', ''),
('TCH00713-2018', '', '', '', '', '', '', ''),
('TCH00714-2018', '', '', '', '', '', '', ''),
('TCH00715-2018', '', '', '', '', '', '', ''),
('TCH00716-2018', '', '', '', '', '', '', ''),
('TCH00717-2018', '', '', '', '', '', '', ''),
('TCH00718-2018', '', '', '', '', '', '', ''),
('TCH00719-2018', '', '', '', '', '', '', ''),
('TCH00720-2018', '', '', '', '', '', '', ''),
('TCH00721-2018', '', '', '', '', '', '', ''),
('TCH00722-2018', '', '', '', '', '', '', ''),
('TCH00723-2018', '', '', '', '', '', '', ''),
('TCH00724-2018', '', '', '', '', '', '', ''),
('TCH00725-2018', '', '', '', '', '', '', ''),
('TCH00726-2018', '', '', '', '', '', '', ''),
('TCH00727-2018', '', '', '', '', '', '', ''),
('TCH00728-2018', '', '', '', '', '', '', ''),
('TCH00729-2018', '', '', '', '', '', '', ''),
('TCH00730-2018', '', '', '', '', '', '', ''),
('TCH00731-2018', '', '', '', '', '', '', ''),
('TCH00732-2018', '', '', '', '', '', '', ''),
('TCH00733-2018', '', '', '', '', '', '', ''),
('TCH00734-2018', '', '', '', '', '', '', ''),
('TCH00735-2018', '', '', '', '', '', '', ''),
('TCH00736-2018', '', '', '', '', '', '', ''),
('TCH00737-2018', '', '', '', '', '', '', ''),
('TCH00738-2018', '', '', '', '', '', '', ''),
('TCH00739-2018', '', '', '', '', '', '', ''),
('TCH00740-2018', '', '', '', '', '', '', ''),
('TCH00741-2018', '', '', '', '', '', '', ''),
('TCH00742-2018', '', '', '', '', '', '', ''),
('TCH00743-2018', '', '', '', '', '', '', ''),
('TCH00744-2018', '', '', '', '', '', '', ''),
('TCH00953-2018', '', '', '', '', '', '', ''),
('TCH00747-2018', '', '', '', '', '', '', ''),
('TCH00749-2018', '', '', '', '', '', '', ''),
('TCH00750-2018', '', '', '', '', '', '', ''),
('TCH00751-2018', '', '', '', '', '', '', ''),
('TCH00752-2018', '', '', '', '', '', '', ''),
('TCH00753-2018', '', '', '', '', '', '', ''),
('TCH00754-2018', '', '', '', '', '', '', ''),
('TCH00755-2018', '', '', '', '', '', '', ''),
('TCH00756-2018', '', '', '', '', '', '', ''),
('TCH00757-2018', '', '', '', '', '', '', ''),
('TCH00758-2018', '', '', '', '', '', '', ''),
('TCH00759-2018', '', '', '', '', '', '', ''),
('TCH00760-2018', '', '', '', '', '', '', ''),
('TCH00761-2018', '', '', '', '', '', '', ''),
('TCH00762-2018', '', '', '', '', '', '', ''),
('TCH00763-2018', '', '', '', '', '', '', ''),
('TCH00764-2018', '', '', '', '', '', '', ''),
('TCH00765-2018', '', '', '', '', '', '', ''),
('TCH00766-2018', '', '', '', '', '', '', ''),
('TCH00767-2018', '', '', '', '', '', '', ''),
('TCH00768-2018', '', '', '', '', '', '', ''),
('TCH00769-2018', '', '', '', '', '', '', ''),
('TCH00770-2018', '', '', '', '', '', '', ''),
('TCH00771-2018', '', '', '', '', '', '', ''),
('TCH00772-2018', '', '', '', '', '', '', ''),
('TCH00773-2018', '', '', '', '', '', '', ''),
('TCH00774-2018', '', '', '', '', '', '', ''),
('TCH00775-2018', '', '', '', '', '', '', ''),
('TCH00776-2018', '', '', '', '', '', '', ''),
('TCH00777-2018', '', '', '', '', '', '', ''),
('TCH00778-2018', '', '', '', '', '', '', ''),
('TCH00779-2018', '', '', '', '', '', '', ''),
('TCH00782-2018', '', '', '', '', '', '', ''),
('TCH00781-2018', '', '', '', '', '', '', ''),
('TCH00783-2018', '', '', '', '', '', '', ''),
('TCH00784-2018', '', '', '', '', '', '', ''),
('TCH00785-2018', '', '', '', '', '', '', ''),
('TCH00786-2018', '', '', '', '', '', '', ''),
('TCH00787-2018', '', '', '', '', '', '', ''),
('TCH00788-2018', '', '', '', '', '', '', ''),
('TCH00789-2018', '', '', '', '', '', '', ''),
('TCH00790-2018', '', '', '', '', '', '', ''),
('TCH00791-2018', '', '', '', '', '', '', ''),
('TCH00792-2018', '', '', '', '', '', '', ''),
('TCH00793-2018', '', '', '', '', '', '', ''),
('TCH00794-2018', '', '', '', '', '', '', ''),
('TCH00795-2018', '', '', '', '', '', '', ''),
('TCH00796-2018', '', '', '', '', '', '', ''),
('TCH00797-2018', '', '', '', '', '', '', ''),
('TCH00798-2018', '', '', '', '', '', '', ''),
('TCH00799-2018', '', '', '', '', '', '', ''),
('TCH00800-2018', '', '', '', '', '', '', ''),
('TCH00801-2018', '', '', '', '', '', '', ''),
('TCH00802-2018', '', '', '', '', '', '', ''),
('TCH00803-2018', '', '', '', '', '', '', ''),
('TCH00804-2018', '', '', '', '', '', '', ''),
('TCH00805-2018', '', '', '', '', '', '', ''),
('TCH00806-2018', '', '', '', '', '', '', ''),
('TCH00807-2018', '', '', '', '', '', '', ''),
('TCH00808-2018', '', '', '', '', '', '', ''),
('TCH00809-2018', '', '', '', '', '', '', ''),
('TCH00810-2018', '', '', '', '', '', '', ''),
('TCH00811-2018', '', '', '', '', '', '', ''),
('TCH00812-2018', '', '', '', '', '', '', ''),
('TCH00813-2018', '', '', '', '', '', '', ''),
('TCH00814-2018', '', '', '', '', '', '', ''),
('TCH00815-2018', '', '', '', '', '', '', ''),
('TCH00816-2018', '', '', '', '', '', '', ''),
('TCH00817-2018', '', '', '', '', '', '', ''),
('TCH00818-2018', '', '', '', '', '', '', ''),
('TCH00819-2018', '', '', '', '', '', '', ''),
('TCH00820-2018', '', '', '', '', '', '', ''),
('TCH00821-2018', '', '', '', '', '', '', ''),
('TCH00822-2018', '', '', '', '', '', '', ''),
('TCH00823-2018', '', '', '', '', '', '', ''),
('TCH00824-2018', '', '', '', '', '', '', ''),
('TCH00825-2018', '', '', '', '', '', '', ''),
('TCH00826-2018', '', '', '', '', '', '', ''),
('TCH00827-2018', '', '', '', '', '', '', ''),
('TCH00828-2018', '', '', '', '', '', '', ''),
('TCH00829-2018', '', '', '', '', '', '', ''),
('TCH00830-2018', '', '', '', '', '', '', ''),
('TCH00831-2018', '', '', '', '', '', '', ''),
('TCH00832-2018', '', '', '', '', '', '', ''),
('TCH00833-2018', '', '', '', '', '', '', ''),
('TCH00834-2018', '', '', '', '', '', '', ''),
('TCH00835-2018', '', '', '', '', '', '', ''),
('TCH00836-2018', '', '', '', '', '', '', ''),
('TCH00837-2018', '', '', '', '', '', '', ''),
('TCH00838-2018', '', '', '', '', '', '', ''),
('TCH00839-2018', '', '', '', '', '', '', ''),
('TCH00840-2018', '', '', '', '', '', '', ''),
('TCH00841-2018', '', '', '', '', '', '', ''),
('TCH00842-2018', '', '', '', '', '', '', ''),
('TCH00843-2018', '', '', '', '', '', '', ''),
('TCH00844-2018', '', '', '', '', '', '', ''),
('TCH00845-2018', '', '', '', '', '', '', ''),
('TCH00846-2018', '', '', '', '', '', '', ''),
('TCH00847-2018', '', '', '', '', '', '', ''),
('TCH00848-2018', '', '', '', '', '', '', ''),
('TCH00849-2018', '', '', '', '', '', '', ''),
('TCH00850-2018', '', '', '', '', '', '', ''),
('TCH00851-2018', '', '', '', '', '', '', ''),
('TCH00852-2018', '', '', '', '', '', '', ''),
('TCH00853-2018', '', '', '', '', '', '', ''),
('TCH00854-2018', '', '', '', '', '', '', ''),
('TCH00855-2018', '', '', '', '', '', '', ''),
('TCH00856-2018', '', '', '', '', '', '', ''),
('TCH00857-2018', '', '', '', '', '', '', ''),
('TCH00858-2018', '', '', '', '', '', '', ''),
('TCH00859-2018', '', '', '', '', '', '', ''),
('TCH00860-2018', '', '', '', '', '', '', ''),
('TCH00861-2018', '', '', '', '', '', '', ''),
('TCH00862-2018', '', '', '', '', '', '', ''),
('TCH00863-2018', '', '', '', '', '', '', ''),
('TCH00864-2018', '', '', '', '', '', '', ''),
('TCH00865-2018', '', '', '', '', '', '', ''),
('TCH00866-2018', '', '', '', '', '', '', ''),
('TCH00867-2018', '', '', '', '', '', '', ''),
('TCH00868-2018', '', '', '', '', '', '', ''),
('TCH00869-2018', '', '', '', '', '', '', ''),
('TCH00870-2018', '', '', '', '', '', '', ''),
('TCH00871-2018', '', '', '', '', '', '', ''),
('TCH00872-2018', '', '', '', '', '', '', ''),
('TCH00873-2018', '', '', '', '', '', '', ''),
('TCH00874-2018', '', '', '', '', '', '', ''),
('TCH00875-2018', '', '', '', '', '', '', ''),
('TCH00876-2018', '', '', '', '', '', '', ''),
('TCH00877-2018', '', '', '', '', '', '', ''),
('TCH00878-2018', '', '', '', '', '', '', ''),
('TCH00879-2018', '', '', '', '', '', '', ''),
('TCH00880-2018', '', '', '', '', '', '', ''),
('TCH00881-2018', '', '', '', '', '', '', ''),
('TCH00882-2018', '', '', '', '', '', '', ''),
('TCH00883-2018', '', '', '', '', '', '', ''),
('TCH00884-2018', '', '', '', '', '', '', ''),
('TCH00885-2018', '', '', '', '', '', '', ''),
('TCH00886-2018', '', '', '', '', '', '', ''),
('TCH00887-2018', '', '', '', '', '', '', ''),
('TCH00888-2018', '', '', '', '', '', '', ''),
('TCH00889-2018', '', '', '', '', '', '', ''),
('TCH00890-2018', '', '', '', '', '', '', ''),
('TCH00891-2018', '', '', '', '', '', '', ''),
('TCH00892-2018', '', '', '', '', '', '', ''),
('TCH00893-2018', '', '', '', '', '', '', ''),
('TCH00894-2018', '', '', '', '', '', '', ''),
('TCH00895-2018', '', '', '', '', '', '', ''),
('TCH00896-2018', '', '', '', '', '', '', ''),
('TCH00897-2018', '', '', '', '', '', '', ''),
('TCH00898-2018', '', '', '', '', '', '', ''),
('TCH00899-2018', '', '', '', '', '', '', ''),
('TCH00900-2018', '', '', '', '', '', '', ''),
('TCH00901-2018', '', '', '', '', '', '', ''),
('TCH00902-2018', '', '', '', '', '', '', ''),
('TCH00903-2018', '', '', '', '', '', '', ''),
('TCH00904-2018', '', '', '', '', '', '', ''),
('TCH00905-2018', '', '', '', '', '', '', ''),
('TCH00906-2018', '', '', '', '', '', '', ''),
('TCH00907-2018', '', '', '', '', '', '', ''),
('TCH00908-2018', '', '', '', '', '', '', ''),
('TCH00909-2018', '', '', '', '', '', '', ''),
('TCH00910-2018', '', '', '', '', '', '', ''),
('TCH00911-2018', '', '', '', '', '', '', ''),
('TCH00912-2018', '', '', '', '', '', '', ''),
('TCH00913-2018', '', '', '', '', '', '', ''),
('TCH00914-2018', '', '', '', '', '', '', ''),
('TCH00915-2018', '', '', '', '', '', '', ''),
('TCH00916-2018', '', '', '', '', '', '', ''),
('TCH00917-2018', '', '', '', '', '', '', ''),
('TCH00918-2018', '', '', '', '', '', '', ''),
('TCH00919-2018', '', '', '', '', '', '', ''),
('TCH00920-2018', '', '', '', '', '', '', ''),
('TCH00921-2018', '', '', '', '', '', '', ''),
('TCH00922-2018', '', '', '', '', '', '', ''),
('TCH00923-2018', '', '', '', '', '', '', ''),
('TCH00924-2018', '', '', '', '', '', '', ''),
('TCH00925-2018', '', '', '', '', '', '', ''),
('TCH00926-2018', '', '', '', '', '', '', ''),
('TCH00927-2018', '', '', '', '', '', '', ''),
('TCH00928-2018', '', '', '', '', '', '', ''),
('TCH00929-2018', '', '', '', '', '', '', ''),
('TCH00930-2018', '', '', '', '', '', '', ''),
('TCH00931-2018', '', '', '', '', '', '', ''),
('TCH00932-2018', '', '', '', '', '', '', ''),
('TCH00933-2018', '', '', '', '', '', '', ''),
('TCH00934-2018', '', '', '', '', '', '', ''),
('TCH00935-2018', '', '', '', '', '', '', ''),
('TCH00936-2018', '', '', '', '', '', '', ''),
('TCH00937-2018', '', '', '', '', '', '', ''),
('TCH00938-2018', '', '', '', '', '', '', ''),
('TCH00939-2018', '', '', '', '', '', '', ''),
('TCH00940-2018', '', '', '', '', '', '', ''),
('TCH00941-2018', '', '', '', '', '', '', ''),
('TCH00942-2018', '', '', '', '', '', '', ''),
('TCH00943-2018', '', '', '', '', '', '', ''),
('TCH00944-2018', '', '', '', '', '', '', ''),
('TCH00945-2018', '', '', '', '', '', '', ''),
('TCH00946-2018', '', '', '', '', '', '', ''),
('TCH00947-2018', '', '', '', '', '', '', ''),
('TCH00948-2018', '', '', '', '', '', '', ''),
('TCH00949-2018', '', '', '', '', '', '', ''),
('TCH00950-2018', '', '', '', '', '', '', ''),
('TCH00951-2018', '', '', '', '', '', '', ''),
('TCH00952-2018', '', '', '', '', '', '', ''),
('TCH00985-2018', '', '', '', '', '', '', ''),
('TCH00986-2018', '', '', '', '', '', '', ''),
('TCH00989-2018', '', '', '', '', '', '', ''),
('TCH00988-2018', '', '', '', '', '', '', ''),
('TCH00990-2018', '', '', '', '', '', '', ''),
('TCH00991-2018', '', '', '', '', '', '', ''),
('TCH00992-2018', '', '', '', '', '', '', ''),
('TCH00993-2018', '', '', '', '', '', '', ''),
('TCH00994-2018', '', '', '', '', '', '', ''),
('TCH00995-2018', '', '', '', '', '', '', ''),
('TCH00996-2018', '', '', '', '', '', '', ''),
('TCH00997-2018', '', '', '', '', '', '', ''),
('TCH00998-2018', '', '', '', '', '', '', ''),
('TCH00999-2018', '', '', '', '', '', '', ''),
('TCH01000-2018', '', '', '', '', '', '', ''),
('TCH01001-2018', '', '', '', '', '', '', ''),
('TCH01002-2018', '', '', '', '', '', '', ''),
('TCH01003-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01004-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01005-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01006-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01007-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01010-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01009-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01011-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01012-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01013-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01014-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01015-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01016-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01017-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01018-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01019-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01020-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01021-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01022-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01023-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01044-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01025-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01027-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01028-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01029-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01030-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01031-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01032-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01033-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01034-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01035-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01036-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01037-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01038-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01039-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01040-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01041-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01042-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01043-2018', '', '', '', '', '', '', ''),
('TCH01045-2018', '', '', '', '', '', '', ''),
('TCH01046-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01047-2018', '', '', '', '', '', '', ''),
('TCH01048-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01049-2018', '', '', '', '', '', '', ''),
('TCH01050-2018', '', '', '', '', '', '', ''),
('TCH01051-2018', '', '', '', '', '', '', ''),
('TCH01052-2018', '', '', '', '', '', '', ''),
('TCH01053-2018', '', '', '', '', '', '', ''),
('TCH01054-2018', '', '', '', '', '', '', ''),
('TCH01055-2018', '', '', '', '', '', '', ''),
('TCH01056-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01057-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01058-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01059-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01060-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01061-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01062-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01063-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01064-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01065-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01066-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01067-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01068-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01069-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01070-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01071-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01072-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01073-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01074-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01075-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01076-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01077-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01078-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01079-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', '');
INSERT INTO `tbl_teknisi_wo` (`kode_teknisi`, `teknisi1`, `teknisi2`, `teknisi3`, `teknisi4`, `pkl1`, `pkl2`, `pkl3`) VALUES
('TCH01080-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01081-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01082-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01083-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01084-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01085-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01086-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01087-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01088-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01089-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01090-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01091-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01092-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01093-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01094-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01095-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01096-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01097-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01098-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01099-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01100-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01101-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01102-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01103-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01104-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01105-2018', '', '', '', '', '', '', ''),
('TCH01108-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01107-2018', 'DEA RACHMAYATI HANDIARTO', '', '', '', '', '', ''),
('TCH01109-2018', '', '', '', '', '', '', ''),
('TCH01110-2018', '', '', '', '', '', '', ''),
('TCH01111-2018', '', '', '', '', '', '', ''),
('TCH01112-2018', '', '', '', '', '', '', ''),
('TCH01113-2018', '', '', '', '', '', '', ''),
('TCH01114-2018', 'MUADZ AZMI AMRULLAH', 'NUR MUFID', '', '', '', '', ''),
('TCH01115-2018', 'MUHAMMAD NAUFAL', '', '', '', '', '', ''),
('TCH01116-2018', 'RIZKI', 'ADI', '', '', '', '', ''),
('TCH01117-2018', 'JAFAR SIDIX', 'JOSHUA ILHAM', '', '', '', '', ''),
('TCH01118-2018', 'ADI', 'RIZKI', '', '', '', '', ''),
('TCH01119-2018', 'DOBIYANTO KRISNA SETIAWAN', 'JOSHUA ILHAM', '', '', '', '', ''),
('TCH01120-2018', 'TONI', '', '', '', '', '', ''),
('TCH01121-2018', 'DOBIYANTO KRISNA SETIAWAN', '', '', '', '', '', ''),
('TCH01122-2018', 'DOBIYANTO KRISNA SETIAWAN', '', '', '', '', '', ''),
('TCH01123-2018', 'DOBIYANTO KRISNA SETIAWAN', '', '', '', '', '', ''),
('TCH01124-2018', 'LUTHFIAN SYAUQI', '', '', '', '', '', ''),
('TCH01125-2018', 'FARHAN RAMADHAN', '', '', '', '', '', ''),
('TCH01126-2018', 'TONI', 'NUR MUFID', '', '', '', '', ''),
('TCH01127-2018', 'MUADZ AZMI AMRULLAH', 'BUDIMAN PRASETYO', '', '', '', '', ''),
('TCH01128-2018', 'MUHAMMAD NAUFAL', 'NUR MUFID', '', '', '', '', ''),
('TCH01129-2018', 'FARHAN RAMADHAN', 'NUR MUFID', '', '', '', '', ''),
('TCH01130-2018', 'HALIM RACHMAN RIFALDI', 'LUTHFIAN SYAUQI', '', '', '', '', ''),
('TCH01131-2018', 'LUTHFIAN SYAUQI', '', '', '', '', '', ''),
('TCH01132-2018', 'FARHAN RAMADHAN', '', '', '', '', '', ''),
('TCH01133-2018', 'TONI', 'NUR MUFID', '', '', '', '', ''),
('TCH01134-2018', 'MUHAMMAD NAUFAL', 'NUR MUFID', '', '', '', '', ''),
('TCH01135-2018', 'FARHAN RAMADHAN', 'NUR MUFID', '', '', '', '', ''),
('TCH01136-2018', 'LUTHFIAN SYAUQI', '', '', '', '', '', ''),
('TCH01137-2018', 'FARHAN RAMADHAN', '', '', '', '', '', ''),
('TCH01138-2018', 'TONI', 'NUR MUFID', '', '', '', '', ''),
('TCH01139-2018', 'MUHAMMAD NAUFAL', 'NUR MUFID', '', '', '', '', ''),
('TCH01140-2018', 'FARHAN RAMADHAN', 'NUR MUFID', '', '', '', '', ''),
('TCH01141-2018', 'LUTHFIAN SYAUQI', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `level_user` int(5) NOT NULL,
  `email` varchar(40) NOT NULL,
  `nip` varchar(5) NOT NULL,
  `status` int(5) NOT NULL,
  `w_login` datetime NOT NULL,
  `w_daftar` datetime NOT NULL,
  `photo` varchar(100) NOT NULL,
  `kd_approve` int(3) NOT NULL,
  `aboutme` text NOT NULL,
  `web` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `google+` varchar(100) NOT NULL,
  `patch` varchar(100) NOT NULL,
  `pinbb` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `level_user`, `email`, `nip`, `status`, `w_login`, `w_daftar`, `photo`, `kd_approve`, `aboutme`, `web`, `facebook`, `twitter`, `google+`, `patch`, `pinbb`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'hr@lrcom.co.id', '1235', 1, '2018-11-14 09:16:49', '2018-05-07 00:00:00', '/pega/assets/avatars/avatar.png\r\n', 1, '', '', '', '', '', '', ''),
(3, 'ariyanto', 'a4b20d4d8c2680fddab31d27fe7ba1e6', 5, 'ari.yanto@lrcom.co.id', '18150', 1, '2018-11-13 12:44:34', '2018-05-30 09:26:42', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(4, 'deahandiarto', 'loveyouall', 5, 'dea.handiarto@lrcom.co.id', '18149', 1, '2018-07-02 16:00:17', '2018-05-30 13:14:17', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(5, 'r1v413', 'e4e383099594d374d6382d2a9b3d6a76', 5, 'achmad.syarif@lrcom.co.id', '13058', 1, '2018-10-15 09:52:20', '2018-05-30 16:00:20', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(6, 'Bangun Dwi Prasetyo', 'c23a476923b229f2561d6eae5d49b4dc', 5, 'bangun.prasetyo@lrcom.co.id', '15095', 1, '2018-05-31 13:37:34', '2018-05-31 11:24:45', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(7, 'halim', '223e07b91415d500004acad9f343da70', 5, 'halim.rachman@lrcom.co.id', '16129', 1, '2018-05-31 14:32:27', '2018-05-31 11:26:28', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(8, 'Galuh', 'f6bbf821c7a8b95d5ce9418dd1ee6193', 5, 'galuh.devi@lrcom.co.id', '15098', 1, '2018-06-05 13:43:42', '2018-05-31 11:26:31', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(9, 'rahmania', '827ccb0eea8a706c4c34a16891f84e7b', 5, 'rahmania.ramadhani@lrcom.co.id', '14090', 1, '2018-05-31 11:43:57', '2018-05-31 11:34:37', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(10, 'farhanrmd', '855608dd936ce8504fd3f0ca38484364', 5, 'farhanr@lrcom.co.id', '15097', 1, '2018-10-16 11:16:45', '2018-05-31 11:39:51', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(11, 'agneslestia', '1c729c020827c9fb61d04f64e6ece756', 5, 'agnes.eka@lrcom.co.id', '13049', 1, '2018-06-05 11:14:31', '2018-05-31 11:42:09', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(12, 'Eti Fitriani', '48f1f353f89811f48fcc4a29093143a9', 5, 'eti.fitriani@lrcom.co.id', '14091', 1, '2018-06-07 15:13:01', '2018-05-31 11:58:17', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(13, 'muhammadnauufal', 'd406a979d43bd581bcd7407ad27ea902', 5, 'muhammad.naufal@lrcom.co.id', '15121', 1, '2018-10-15 21:45:41', '2018-05-31 12:18:55', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(14, 'Irwan Setiawan', '0225b97941f0074a8f1fa928c77e29c3', 5, 'irwan.setiawan@lrcom.co.id', '12017', 1, '2018-05-31 16:11:24', '2018-05-31 12:31:45', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(15, 'muhammad.afif', 'debd6a9f948b70d5b9a1cb3f2796569a', 5, 'muhammad.afif@lrcom.co.id', '17137', 1, '2018-10-12 16:05:28', '2018-05-31 12:35:29', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(16, 'Arya Erlangga', 'bbfc9ca1a50937d8d380fa6e2dff6381', 5, 'aryaerlangga@lrcom.co.id', '18148', 1, '2018-08-09 17:41:07', '2018-05-31 12:46:17', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(18, 'Muadz', '25a7d8ae12fc2b27cb79d5949573bcba', 5, 'muadzazmi@lrcom.co.id', '16130', 1, '2018-06-07 09:26:01', '2018-05-31 13:30:11', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(19, 'budiman', '6114b85833e313279acff1f0fb7a9e2b', 5, 'budimanp24@lrcom.co.id', '18147', 1, '2018-11-09 17:57:53', '2018-05-31 19:04:54', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(20, 'rizqiaditama', 'b9334bbe3ea1c8852a22af599f6e6df7', 5, 'rizqi.aditama@lrcom.co.id', '17139', 1, '2018-06-08 14:45:12', '2018-05-31 19:21:42', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(22, 'ajijudin', 'd54ca6e4cd794b9bb7d8e703361a842f', 5, 'ahmadajijudin@gmail.com', '15107', 1, '2018-10-12 14:35:29', '2018-05-31 20:01:50', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(23, 'riananang', 'b4a5cb98923988770d106298b3418377', 5, 'rian.anang@lrcom.coid', '18146', 1, '2018-10-15 15:54:07', '2018-06-05 11:15:45', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(24, 'Riska Adrini', 'riska123', 5, 'riskaadrini@lrcom.co.id', '12003', 1, '2018-06-05 11:21:55', '2018-06-05 11:20:33', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(27, 'test1', 'test1', 0, '', '111', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '', ''),
(33, 'Gilang', '6d8f8a1a4837f099459ec46a72660f30', 5, 'septi.gilangramadhan@gmail.com', '15100', 1, '2018-11-09 18:16:02', '2018-10-12 14:45:18', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(46, 'Doby Krisna Setiawan', '4bf12902c5c4fdb08bf64e95f0e1b0bc', 5, 'doby.krisna@gmail.com', '17135', 1, '2018-10-16 11:15:45', '2018-10-16 10:21:11', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(26, 'rizky_ptama', 'ktbffh1905', 5, 'rizky.pratama@lrcom.co.id', '18151', 1, '2018-07-12 08:37:13', '2018-07-10 16:03:58', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(28, 'test2', 'test2', 0, '', '112', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '', ''),
(29, 'test3', 'test3', 0, '', '113', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '', ''),
(30, 'test4', 'test4', 0, '', '114', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '', ''),
(31, 'test5', 'test5', 0, '', '115', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '', ''),
(32, 'Erlan Sutrajat', 'eac4cf9c942008b256ad5b5b3f62e4b5', 5, 'erlan.sutrajat@lrcom.co.id', '12001', 1, '2018-10-12 14:42:03', '2018-10-12 14:35:38', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(35, 'Vibra Miliano', '6a82852c54559b54aa02c505f1386bee', 5, 'vibramiliano@gmail.com', '001', 1, '2018-10-15 10:19:23', '2018-10-15 10:05:55', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(36, 'Aqshal Attallah ', '7b348fd9507b5e4b99ecae5ca463a533', 5, 'aqshalattallah@gmail.com', '002', 1, '2018-10-15 10:14:29', '2018-10-15 10:07:24', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(37, 'ahmadirgi', '5f9db3fa9750133ba00cba936c1422f4', 5, 'achmadirggi25@gmail.com', '003', 1, '2018-10-15 10:34:51', '2018-10-15 10:20:39', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(38, 'rian wahab', '0dd92e27ad8b8f0d9b048ba730a864e0', 5, 'rianwahabalamsyah26@gmail.com', '004', 1, '2018-10-15 10:25:03', '2018-10-15 10:23:43', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(39, 'Fauzan Dinan', '3447732a0a31c03957c5941ef9050365', 5, 'fauzandinan@gmail.com', '005', 1, '2018-10-15 10:35:35', '2018-10-15 10:26:50', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(40, 'muhikhsan', 'a3c2db5ddb879709acc36302e52edd1c', 5, 'muhikhsanudin1@gmail.com', '006', 1, '2018-10-15 10:46:13', '2018-10-15 10:40:31', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(41, 'mhmdsya', '36f51fb39410b13a79dfe6fa99290000', 5, 'syaifulaminudin81@gmail.com', '008', 1, '2018-11-12 14:56:14', '2018-10-15 10:47:28', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(42, 'Abyyuhafizh', '95be208914790a8e4d5ada0aad75eaa6', 5, 'abyyu92@gmail.com', '007', 1, '2018-10-15 10:52:25', '2018-10-15 10:49:51', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(43, 'ridwansyah15', '0277978aeb1b242181820d6b08c57cf2', 5, 'iwannnlagi@gmail.com', '009', 1, '2018-10-15 10:59:06', '2018-10-15 10:58:32', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(44, 'IwanSetiawan08', '14d5a653c1dd44cf4781bdc3e595c8e2', 5, 'iwan.telkom08@gmail.com', '010', 1, '2018-10-15 11:07:10', '2018-10-15 11:06:29', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(45, 'Erlan', 'superadmin', 0, '', '12001', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '', ''),
(47, 'adesyauki', 'e10adc3949ba59abbe56e057f20f883e', 5, 'ade.syauki@lrcom.co.id', '17143', 1, '2018-10-17 00:55:42', '2018-10-16 10:28:10', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(48, 'Mufid', 'debd6a9f948b70d5b9a1cb3f2796569a', 5, 'nmufid@lrcom.co.id', '15103', 1, '2018-10-30 10:28:07', '2018-10-16 15:45:37', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', ''),
(49, 'Luthfiansyauqi', 'd1dd18b7467f12713426f368efba5628', 5, 'luthfian.syauqi@lrcom.co.id', '15116', 1, '2018-10-19 17:35:15', '2018-10-16 18:58:50', '/pega/assets/avatars/avatar5.png', 1, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_lr`
--

CREATE TABLE `tbl_user_lr` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level_user` enum('SUPER ADMIN','ADMIN','USER','ADMIN TEKNIS','ADMIN FINANCE','ADMIN GUDANG') NOT NULL,
  `kode_approve` int(5) NOT NULL,
  `status` int(5) NOT NULL,
  `w_daftar` datetime NOT NULL,
  `w_login` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_lr`
--

INSERT INTO `tbl_user_lr` (`id`, `nip`, `password`, `level_user`, `kode_approve`, `status`, `w_daftar`, `w_login`) VALUES
(2, '18150', '21232f297a57a5a743894a0e4a801fc3', 'ADMIN', 1, 1, '2018-10-03 11:19:19', '2018-12-12 14:37:07'),
(3, '1235', '47bce5c74f589f4867dbd57e9ca9f808', 'SUPER ADMIN', 1, 1, '2018-10-09 00:00:00', '2018-12-12 15:22:51'),
(13, '14090', 'debd6a9f948b70d5b9a1cb3f2796569a', 'ADMIN FINANCE', 1, 0, '2018-11-21 14:59:43', '0000-00-00 00:00:00'),
(12, '12017', 'debd6a9f948b70d5b9a1cb3f2796569a', 'ADMIN TEKNIS', 1, 0, '2018-11-21 14:59:11', '0000-00-00 00:00:00'),
(11, '18146', 'debd6a9f948b70d5b9a1cb3f2796569a', 'ADMIN TEKNIS', 1, 0, '2018-11-21 14:57:38', '0000-00-00 00:00:00'),
(10, '12003', 'debd6a9f948b70d5b9a1cb3f2796569a', 'SUPER ADMIN', 1, 0, '2018-11-21 14:56:23', '0000-00-00 00:00:00'),
(9, '12001', '71bc86668fffa46984ccf1ae34ffebfa', 'SUPER ADMIN', 1, 1, '2018-11-21 14:56:00', '2018-11-23 10:29:01'),
(14, '15098', 'debd6a9f948b70d5b9a1cb3f2796569a', 'ADMIN GUDANG', 1, 0, '2018-11-21 15:00:34', '0000-00-00 00:00:00'),
(15, '18149', 'debd6a9f948b70d5b9a1cb3f2796569a', 'ADMIN', 1, 0, '2018-11-21 15:01:14', '0000-00-00 00:00:00'),
(16, '13049', '7067821a488137b801cd31ee38fcce05', 'USER', 1, 0, '2018-12-12 10:56:42', '0000-00-00 00:00:00'),
(17, '13057', 'dce6345ea5b90d6ea53f0ef5c4b4c72c', 'USER', 1, 0, '2018-12-12 10:58:21', '0000-00-00 00:00:00'),
(18, '13058', '6699b106c472bf44f11e5da46c1eac93', 'USER', 1, 1, '2018-12-12 10:59:53', '2018-12-18 10:38:58'),
(19, '14069', '25e6720874cc226d8a862051d0f11ae4', 'USER', 1, 0, '2018-12-12 11:02:30', '0000-00-00 00:00:00'),
(20, '14091', '48f1f353f89811f48fcc4a29093143a9', 'USER', 1, 0, '2018-12-12 11:10:05', '0000-00-00 00:00:00'),
(21, '15095', '604d306e04bc5c18ac7cf28de98650f8', 'USER', 1, 0, '2018-12-12 11:13:02', '0000-00-00 00:00:00'),
(22, '15097', '1ac5012170b65fb99f171ad799d045ac', 'USER', 1, 0, '2018-12-12 11:17:30', '0000-00-00 00:00:00'),
(23, '15100', '6d8f8a1a4837f099459ec46a72660f30', 'USER', 1, 0, '2018-12-12 11:21:20', '0000-00-00 00:00:00'),
(24, '15103', 'ed1e56ef963bb91c45a14a50c2f3cd95', 'USER', 1, 0, '2018-12-12 11:22:47', '0000-00-00 00:00:00'),
(25, '15107', '8de13959395270bf9d6819f818ab1a00', 'USER', 1, 0, '2018-12-12 11:23:57', '0000-00-00 00:00:00'),
(26, '15116', 'eb206b338b3148d348f76f1f427f6859', 'USER', 1, 0, '2018-12-12 11:24:27', '0000-00-00 00:00:00'),
(27, '15121', 'c23ff576b099ad9d63451d0df246cead', 'USER', 1, 0, '2018-12-12 11:25:05', '0000-00-00 00:00:00'),
(28, '16129', '36d014e752c3f8c27e64150624925642', 'USER', 1, 0, '2018-12-12 11:25:36', '0000-00-00 00:00:00'),
(29, '16130', 'd384c0daee226c5bb6546ff084e9f686', 'USER', 1, 0, '2018-12-12 11:26:23', '0000-00-00 00:00:00'),
(30, '16132', '1799a385299601a9b4de7a58911e982e', 'USER', 1, 0, '2018-12-12 11:27:02', '0000-00-00 00:00:00'),
(31, '17135', 'e009bf94c915b5c3316bb7fedeea5a4d', 'USER', 1, 0, '2018-12-12 11:28:15', '0000-00-00 00:00:00'),
(32, '17137', 'ecc8486f6a1ff3e07c636eb44df95052', 'USER', 1, 0, '2018-12-12 11:28:57', '0000-00-00 00:00:00'),
(33, '17143', 'fa6a6bd136dec26a1dd5e326b7e43254', 'USER', 1, 0, '2018-12-12 11:30:18', '0000-00-00 00:00:00'),
(34, '17144', 'b6e7eab5f8a65aa2821b63ca694bc251', 'USER', 1, 0, '2018-12-12 11:30:40', '0000-00-00 00:00:00'),
(35, '18147', '67a88979fd1561c1e22262ecb1357645', 'USER', 1, 0, '2018-12-12 11:31:22', '0000-00-00 00:00:00'),
(36, '18148', '611dd931040ba2284d0adc26a5e3f056', 'USER', 1, 0, '2018-12-12 11:31:47', '0000-00-00 00:00:00'),
(37, '00009', 'e3482f5da8a03ae2b3ed0ced7b376ac5', 'USER', 1, 1, '2018-12-12 15:17:30', '2018-12-12 15:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_wo`
--

CREATE TABLE `tbl_user_wo` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` enum('Super Admin','Admin','Admin Finance','Admin WO','Admin Collection','Admin RM') NOT NULL,
  `w_login` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_wo`
--

INSERT INTO `tbl_user_wo` (`id`, `username`, `password`, `level`, `w_login`) VALUES
(12001, 'erlans', 'esutrajat', 'Super Admin', '2018-12-18 17:07:41'),
(12003, 'Riska Adrini', 'riska123', 'Super Admin', '2018-12-19 09:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `no_lv` int(50) NOT NULL,
  `n_lv` varchar(50) NOT NULL,
  `level_user` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`no_lv`, `n_lv`, `level_user`) VALUES
(1, 'Admin', 1),
(2, 'Super Admin', 2),
(5, 'User', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_kasbon`
--
ALTER TABLE `project_kasbon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_wo`
--
ALTER TABLE `project_wo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alamat`
--
ALTER TABLE `tbl_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `tbl_cuti`
--
ALTER TABLE `tbl_cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data_agama`
--
ALTER TABLE `tbl_data_agama`
  ADD PRIMARY KEY (`kode_agama`);

--
-- Indexes for table `tbl_data_bank`
--
ALTER TABLE `tbl_data_bank`
  ADD PRIMARY KEY (`kode_bank`);

--
-- Indexes for table `tbl_data_divisi`
--
ALTER TABLE `tbl_data_divisi`
  ADD PRIMARY KEY (`kode_divisi`);

--
-- Indexes for table `tbl_data_jabatan`
--
ALTER TABLE `tbl_data_jabatan`
  ADD PRIMARY KEY (`kode_jabatan`);

--
-- Indexes for table `tbl_data_lokasi`
--
ALTER TABLE `tbl_data_lokasi`
  ADD PRIMARY KEY (`kode_lokasi`);

--
-- Indexes for table `tbl_data_status_kawin`
--
ALTER TABLE `tbl_data_status_kawin`
  ADD PRIMARY KEY (`id_status_kawin`);

--
-- Indexes for table `tbl_data_status_pegawai`
--
ALTER TABLE `tbl_data_status_pegawai`
  ADD PRIMARY KEY (`kode_status`);

--
-- Indexes for table `tbl_detail_cuti`
--
ALTER TABLE `tbl_detail_cuti`
  ADD PRIMARY KEY (`kode_cuti`);

--
-- Indexes for table `tbl_detail_pendidikan`
--
ALTER TABLE `tbl_detail_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dokumen`
--
ALTER TABLE `tbl_dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `tbl_inventory`
--
ALTER TABLE `tbl_inventory`
  ADD PRIMARY KEY (`no_inventory`);

--
-- Indexes for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tbl_kasbon`
--
ALTER TABLE `tbl_kasbon`
  ADD PRIMARY KEY (`id_kasbon`);

--
-- Indexes for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  ADD PRIMARY KEY (`id_lahir`);

--
-- Indexes for table `tbl_kode_income`
--
ALTER TABLE `tbl_kode_income`
  ADD PRIMARY KEY (`id_income`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `tbl_level_user_admin`
--
ALTER TABLE `tbl_level_user_admin`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `tbl_level_user_super`
--
ALTER TABLE `tbl_level_user_super`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `tbl_masa`
--
ALTER TABLE `tbl_masa`
  ADD PRIMARY KEY (`masa`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_no_telp`
--
ALTER TABLE `tbl_no_telp`
  ADD PRIMARY KEY (`id_telp`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  ADD PRIMARY KEY (`jenjang`);

--
-- Indexes for table `tbl_peng`
--
ALTER TABLE `tbl_peng`
  ADD PRIMARY KEY (`id_pes`);

--
-- Indexes for table `tbl_pengalaman_kerja`
--
ALTER TABLE `tbl_pengalaman_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_prestasi`
--
ALTER TABLE `tbl_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_project_wo`
--
ALTER TABLE `tbl_project_wo`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `tbl_ptjb`
--
ALTER TABLE `tbl_ptjb`
  ADD PRIMARY KEY (`id_ptjb`);

--
-- Indexes for table `tbl_schedule_wo`
--
ALTER TABLE `tbl_schedule_wo`
  ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indexes for table `tbl_skil`
--
ALTER TABLE `tbl_skil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_skil_bahasa`
--
ALTER TABLE `tbl_skil_bahasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_status_kasbon`
--
ALTER TABLE `tbl_status_kasbon`
  ADD PRIMARY KEY (`kode_status`);

--
-- Indexes for table `tbl_tabungan`
--
ALTER TABLE `tbl_tabungan`
  ADD PRIMARY KEY (`id_tabungan`);

--
-- Indexes for table `tbl_teknisi_wo`
--
ALTER TABLE `tbl_teknisi_wo`
  ADD PRIMARY KEY (`kode_teknisi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_lr`
--
ALTER TABLE `tbl_user_lr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_wo`
--
ALTER TABLE `tbl_user_wo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`no_lv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_kasbon`
--
ALTER TABLE `project_kasbon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_wo`
--
ALTER TABLE `project_wo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_cuti`
--
ALTER TABLE `tbl_cuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_detail_pendidikan`
--
ALTER TABLE `tbl_detail_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_kasbon`
--
ALTER TABLE `tbl_kasbon`
  MODIFY `id_kasbon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_kode_income`
--
ALTER TABLE `tbl_kode_income`
  MODIFY `id_income` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_peng`
--
ALTER TABLE `tbl_peng`
  MODIFY `id_pes` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pengalaman_kerja`
--
ALTER TABLE `tbl_pengalaman_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_prestasi`
--
ALTER TABLE `tbl_prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_project_wo`
--
ALTER TABLE `tbl_project_wo`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1168;

--
-- AUTO_INCREMENT for table `tbl_ptjb`
--
ALTER TABLE `tbl_ptjb`
  MODIFY `id_ptjb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_skil`
--
ALTER TABLE `tbl_skil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_skil_bahasa`
--
ALTER TABLE `tbl_skil_bahasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_user_lr`
--
ALTER TABLE `tbl_user_lr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no_lv` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
