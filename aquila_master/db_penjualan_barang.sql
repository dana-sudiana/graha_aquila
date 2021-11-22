-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2021 pada 11.26
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nomer_rmh` varchar(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` varchar(12) NOT NULL,
  `nrp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nomer_rmh`, `nama`, `tgl_lahir`, `nrp`, `email`, `jurusan`, `ket`) VALUES
(1, 'A1-1', 'KOSONG', '', '', '', '', ''),
(2, 'A1-2', 'Triyono Jedul', '', '', '', '', ''),
(3, 'A1-3', 'Erdi Wishnu', '', '', '', '', ''),
(4, 'A1-4', 'Tiara', '', '', '', '', ''),
(5, 'A1-5', 'Ade aditya Yahdjan', '', '', '', '', ''),
(6, 'A1-6', 'Ivan Darmawan/Siska', '', '', '', '', ''),
(7, 'A1-7', 'Pandu', '', '', '', '', ''),
(8, 'A1-8', 'Ferdy', '', '', '', '', ''),
(9, 'A1-9', 'Hendra Suhendra', '', '', '', '', ''),
(10, 'A1-10', 'Anrico / Yopie', '', '', '', '', ''),
(11, 'A1-11', 'Deddy Wijaya', '', '', '', '', ''),
(12, 'A1-12', 'Ferry Indra', '', '', '', '', ''),
(13, 'A1-13', 'Ria', '', '', '', '', ''),
(14, 'A1-14', 'Chris Manurung (Chris)', '', '', '', '', ''),
(15, 'A1-15', 'Rosmeri Tambunan (Ros)', '', '', '', '', ''),
(16, 'A1-16', 'Yogi Valentin', '', '', '', '', ''),
(17, 'A1-17', 'M. Arie Suryadi', '', '', '', '', ''),
(18, 'A1-18', 'Nelson', '', '', '', '', ''),
(19, 'A1-19', 'KOSONG', '', '', '', '', ''),
(20, 'A1-20', 'Nila Tria Angraeni', '', '', '', '', ''),
(21, 'A1-21', 'Edho', '', '', '', '', ''),
(22, 'A1-22', 'Sulaiman Habibi', '', '', '', '', ''),
(23, 'A1-23', 'Heavy Weis Danata', '', '', '', '', ''),
(24, 'A1-24', 'M. Gasti', '', '', '', '', ''),
(25, 'A1-25', 'Carto Erlangga / M Raymond Rahman', '', '', '', '', ''),
(26, 'A1-26', 'Ahmad Ibnu Nurlambang', '', '', '', '', ''),
(27, 'A1-27', 'Gularso', '', '', '', '', ''),
(28, 'A2-1', 'Deny / Sachin Sigh', '', '', '', '', ''),
(29, 'A2-2', 'Zaenuri', '', '', '', '', ''),
(30, 'A2-3', 'Andri Kusbandi (Dokter)', '', '', '', '', ''),
(31, 'A2-4', 'Oki Kurniawan', '', '', '', '', ''),
(32, 'A2-5', 'Kasro Sidauruk', '', '', '', '', ''),
(33, 'A2-6', 'Jia Bagus Ardianto', '', '', '', '', ''),
(34, 'A2-7', 'Fatullah Donie S (Donie)', '', '', '', '', ''),
(35, 'A2-8', 'Ari prasetyo', '', '', '', '', ''),
(36, 'A2-9', 'Riezki Aliza', '', '', '', '', ''),
(37, 'A2-10', 'Alam', '', '', '', '', ''),
(38, 'A2-11', 'Rosgita P (Rosgita)', '', '', '', '', ''),
(39, 'A2-12', 'Hadi Satria', '', '', '', '', ''),
(40, 'A2-13', 'Ugi', '', '', '', '', ''),
(41, 'A2-14', 'Awang', '', '', '', '', ''),
(42, 'A2-15', 'Utomo Broto/Maisaroh', '', '', '', '', ''),
(43, 'A2-16', 'Fernando Siagian', '', '', '', '', ''),
(44, 'A2-17', 'Ali Sofyan Kamal', '', '', '', '', ''),
(45, 'A2-18', 'Ridwan', '', '', '', '', ''),
(46, 'A2-19', 'Fikrie', '', '', '', '', ''),
(47, 'A2-20', 'Adiwibowo (Bowo)', '', '', '', '', ''),
(48, 'A2-21', 'M. Nasser (Acen)', '', '', '', '', ''),
(49, 'A2-22', 'Atim Suhendar', '', '', '', '', ''),
(50, 'A3-1', 'Sandy Romualdus', '', '', '', '', ''),
(51, 'A3-2', 'Nico', '', '', '', '', ''),
(52, 'A3-3', 'Hartanto Wijaya', '', '', '', '', ''),
(53, 'A3-4', 'KOSONG', '', '', '', '', ''),
(54, 'A3-5', 'Rangga Putra', '', '', '', '', ''),
(55, 'A3-6', 'Benyamin', '', '', '', '', ''),
(56, 'A3-7', 'KOSONG', '', '', '', '', ''),
(57, 'A3-8', 'KOSONG', '', '', '', '', ''),
(58, 'A3-9', 'KOSONG', '', '', '', '', ''),
(59, 'A3-10', 'Gery Rival', '', '', '', '', ''),
(60, 'A3-11', 'Rezi Maulana', '', '', '', '', ''),
(61, 'A3-12', 'KOSONG', '', '', '', '', ''),
(62, 'B1-1', 'Fera Rianti', '', '', '', '', ''),
(63, 'B1-2', 'KOSONG', '', '', '', '', ''),
(64, 'B1-3', 'Andy', '', '', '', '', ''),
(65, 'B1-4', 'Ai Arofah', '', '', '', '', ''),
(66, 'B1-5', 'Dendi setiawan', '', '', '', '', ''),
(67, 'B1-6', 'Akbar Epit', '', '', '', '', ''),
(68, 'B1-7', 'Ahmad Fadhil Moussavi', '', '', '', '', ''),
(69, 'B1-8', 'Sondang', '', '', '', '', ''),
(70, 'B1-9', 'Rizky Rahayu', '', '', '', '', ''),
(71, 'B1-10', 'Satria Eka Daya', '', '', '', '', ''),
(72, 'B1-11', 'Sendi Dian Putra', '', '', '', '', ''),
(73, 'B1-12', 'Jonas Purba', '', '', '', '', ''),
(74, 'B1-13', 'Moharom Julianto', '', '', '', '', ''),
(75, 'B1-14', 'Erwin Gibran', '', '', '', '', ''),
(76, 'B1-15', 'R Surahman', '', '', '', '', ''),
(77, 'B1-16', 'Achmad Marulloh', '', '', '', '', ''),
(78, 'B1-17', 'Budi', '', '', '', '', ''),
(79, 'B1-18', 'KOSONG', '', '', '', '', ''),
(80, 'B1-19', 'Dody Iskandar', '', '', '', '', ''),
(81, 'B1-20', 'Egi Cahyo Prabowo', '', '', '', '', ''),
(82, 'B1-21', 'Bekti', '', '', '', '', ''),
(83, 'B1-22', 'Handy Aprilia N', '', '', '', '', ''),
(84, 'B1-23', 'Haris', '', '', '', '', ''),
(85, 'B1-24', 'Tekad Iman Sumarisma', '', '', '', '', ''),
(86, 'B1-25', 'Rully Anjar (Rully)', '', '', '', '', ''),
(87, 'B1-26', 'Ahmad Maulana', '', '', '', '', ''),
(88, 'B1-27', 'Amram Saloh', '', '', '', '', ''),
(89, 'B1-28', 'Amram Saloh', '', '', '', '', ''),
(90, 'B1-29', 'Fadhli Yurdhika (Fadhli)', '', '', '', '', ''),
(91, 'B1-30', 'Danda (Aquaman)', '', '', '', '', ''),
(92, 'B2-1', 'Astiaransyah Dwi Putra', '', '', '', '', ''),
(93, 'B2-2', 'Saiful Anwar', '', '', '', '', ''),
(94, 'B2-3', 'Vaddly Destanto', '', '', '', '', ''),
(95, 'B2-4', 'Maulana', '', '', '', '', ''),
(96, 'B2-5', 'KOSONG', '', '', '', '', ''),
(97, 'B2-6', 'Akbar', '', '', '', '', ''),
(98, 'B2-7', 'Arief Eka', '', '', '', '', ''),
(99, 'B2-8', 'Eko/ Nana Upitasari', '', '', '', '', ''),
(100, 'B2-9', 'Imanuel', '', '', '', '', ''),
(101, 'B2-10', 'KOSONG', '', '', '', '', ''),
(102, 'B2-11', 'Donny Wahyu', '', '', '', '', ''),
(103, 'B2-12', 'KOSONG', '', '', '', '', ''),
(104, 'B2-13', 'Helen Syerah', '', '', '', '', ''),
(105, 'B2-14', 'Yanuar', '', '', '', '', ''),
(106, 'B2-15', 'KOSONG', '', '', '', '', ''),
(107, 'B2-16', 'Dita Septiana Apsari', '', '', '', '', ''),
(108, 'B2-17', 'Noor rendra', '', '', '', '', ''),
(109, 'B2-18', 'Yunita Zana', '', '', '', '', ''),
(110, 'B2-19', 'Saepul Bahri', '', '', '', '', ''),
(111, 'B2-20', 'Ibu Ika', '', '', '', '', ''),
(112, 'B2-21', 'Herdian', '', '', '', '', ''),
(113, 'B2-22', 'Zekki Martogi Simbolon', '', '', '', '', ''),
(114, 'B2-23', 'Gede Indra', '', '', '', '', ''),
(115, 'B2-24', 'Agus Supriyanto', '', '', '', '', ''),
(116, 'B2-25', 'Ananta Wikram', '', '', '', '', ''),
(117, 'B2-26', 'Rusli Irawan', '', '', '', '', ''),
(118, 'B3-1', 'Fera Rianti', '', '', '', '', ''),
(119, 'B3-2', 'Agus Supriana Samsie', '', '', '', '', ''),
(120, 'B3-3', 'Dedy Ivan Pardede (Ivan)', '', '', '', '', ''),
(121, 'B3-4', 'Aisyah', '', '', '', '', ''),
(122, 'B3-5', 'Rizal Ziya', '', '', '', '', ''),
(123, 'B3-6', 'Cindy Sisardi (Yusuf)', '', '', '', '', ''),
(124, 'B3-7', 'Muhammad Ihya Ulumudin', '', '', '', '', ''),
(125, 'B3-8', 'Tri Wahyu Maulana Putra', '', '', '', '', ''),
(126, 'B3-9', 'Syam', '', '', '', '', ''),
(127, 'B3-10', 'Erick', '', '', '', '', ''),
(128, 'B3-11', 'Bambang Tri Y', '', '', '', '', ''),
(129, 'B3-12', 'Adhiguna Wibowo Pardede', '', '', '', '', ''),
(130, 'B3-13', 'KOSONG', '', '', '', '', ''),
(131, 'B3-14', 'KOSONG', '', '', '', '', ''),
(132, 'B3-15', 'KOSONG', '', '', '', '', ''),
(133, 'B3-16', 'Fahrul', '', '', '', '', ''),
(134, 'B3-17', 'Wibowo', '', '', '', '', ''),
(135, 'B3-18', 'Saepul', '', '', '', '', ''),
(136, 'B3-19', 'Fahmi Wahyudin', '', '', '', '', ''),
(137, 'B3-20', 'Muhammad Guntur', '', '', '', '', ''),
(138, 'B3-21', 'Enos Alexander Situmeang', '', '', '', '', ''),
(139, 'B3-22', 'Iqbal Rizki Kurniadi', '', '', '', '', ''),
(140, 'B3-23', 'Ari Mahita', '', '', '', '', ''),
(141, 'B3-24', 'Ferry', '', '', '', '', ''),
(142, 'B3-25', 'Bunda Yudist (Gobang)', '', '', '', '', ''),
(143, 'B3-26', 'Koes Wahyudi (Yudi)', '', '', '', '', ''),
(144, 'B3-27', 'KOSONG', '', '', '', '', ''),
(145, 'B3-28', 'Karsono', '', '', '', '', ''),
(146, 'B3-29', 'Arnold', '', '', '', '', ''),
(147, 'B3-30', 'KOSONG', '', '', '', '', ''),
(148, 'B3-31', 'KOSONG', '', '', '', '', ''),
(149, 'B3-32', 'KOSONG', '', '', '', '', ''),
(150, 'B3-33', 'Ryad', '', '', '', '', ''),
(151, 'C1-1', 'KOSONG', '', '', '', '', ''),
(152, 'C1-2', 'KOSONG', '', '', '', '', ''),
(153, 'C1-3', 'Joko Yuli Riatmadi', '', '', '', '', ''),
(154, 'C1-4', 'Eka Atmaja Herawan', '', '', '', '', ''),
(155, 'C1-5', 'Suprianto', '', '', '', '', ''),
(156, 'C1-6', 'Solichudin / Olle', '', '', '', '', ''),
(157, 'C1-7', 'Ajun', '', '', '', '', ''),
(158, 'C1-8', 'Brawi', '', '', '', '', ''),
(159, 'C1-9', 'Ifan', '', '', '', '', ''),
(160, 'C1-10', 'Bobby', '', '', '', '', ''),
(161, 'C1-11', 'Mohammad Zia', '', '', '', '', ''),
(162, 'C1-12', 'Dimas Adidaya', '', '', '', '', ''),
(163, 'C1-13', 'Ramdhon', '', '', '', '', ''),
(164, 'C2-1', 'KOSONG', '', '', '', '', ''),
(165, 'C2-2', 'Teti Marlina Marbun (Sigit Pamungka', '', '', '', '', ''),
(166, 'C2-3', 'Aditya', '', '', '', '', ''),
(167, 'C2-4', 'KOSONG', '', '', '', '', ''),
(168, 'C2-5', 'Tria Triyana', '', '', '', '', ''),
(169, 'C2-6', 'Yudha Setiawan', '', '', '', '', ''),
(170, 'C2-7', 'Irawan Sapto Aji', '', '', '', '', ''),
(171, 'C2-8', 'Erika', '', '', '', '', ''),
(172, 'C2-9', 'KOSONG', '', '', '', '', ''),
(173, 'C2-10', 'Eni Nursetyaningsih', '', '', '', '', ''),
(174, 'C2-11', 'Chairul Anwar', '', '', '', '', ''),
(175, 'C2-12', 'Ibnu Sina', '', '', '', '', ''),
(176, 'C2-13', 'Aria Andriyansyah', '', '', '', '', ''),
(177, 'C2-14', 'Ahmad Ricky Rizkilla', '', '', '', '', ''),
(178, 'C2-15', 'KOSONG', '', '', '', '', ''),
(179, 'C2-16', 'Gagus', '', '', '', '', ''),
(180, 'C2-17', 'Ibnu', '', '', '', '', ''),
(181, 'C2-18', 'Andika', '', '', '', '', ''),
(182, 'C3-1', 'Dimas Yogi', '', '', '', '', ''),
(183, 'C3-2', 'Aditia Nugraha', '', '', '', '', ''),
(184, 'C3-3', 'Dwi Rahayu', '', '', '', '', ''),
(185, 'C3-4', 'Irsyad Ardy H', '', '', '', '', ''),
(186, 'C3-5', 'Irwan', '', '', '', '', ''),
(187, 'C3-6', 'Taufik Raditya', '', '', '', '', ''),
(188, 'C3-7', 'Adit', '', '', '', '', ''),
(189, 'C3-8', 'Rendi', '', '', '', '', ''),
(190, 'C3-9', 'Sari Rosyani', '', '', '', '', ''),
(191, 'C3-10', 'Budi Hartana (Pak De Yono)', '', '', '', '', ''),
(192, 'C3-11', 'KOSONG', '', '', '', '', ''),
(193, 'C3-12', 'KOSONG', '', '', '', '', ''),
(194, 'C3-13', 'Reza Romadon', '', '', '', '', ''),
(195, 'C3-14', 'KOSONG', '', '', '', '', ''),
(196, 'C3-15', 'KOSONG', '', '', '', '', ''),
(197, 'C3-16', 'Hendricus Levent (Alie Fajar)', '', '', '', '', ''),
(198, 'C3-17', 'Suprani Hamzah', '', '', '', '', ''),
(199, 'C3-18', 'Ahmad Sudiana (Dana)', '', '', '', '', ''),
(200, 'C3-19', 'A Bondan Sasongko', '', '', '', '', ''),
(201, 'C3-20', 'Andrey', '', '', '', '', ''),
(202, 'C3-21', 'Syamsul Arief', '', '', '', '', ''),
(203, 'C3-22', 'Wawan', '', '', '', '', ''),
(204, 'C3-23', 'Rudi Frianto', '', '', '', '', ''),
(205, 'C3-24', 'Handoko', '', '', '', '', ''),
(206, 'C3-25', 'Hans Alfrendy Wiraputera', '', '', '', '', ''),
(207, 'C3-26', 'KOSONG', '', '', '', '', ''),
(208, 'C3-27', 'Rizky Miftahul Akbar', '', '', '', '', ''),
(209, 'C3-28', 'KOSONG', '', '', '', '', ''),
(210, 'C3-29', 'Setyani Budiari', '', '', '', '', ''),
(211, 'C3-30', 'KOSONG', '', '', '', '', ''),
(212, 'C3-31', 'Lujeng', '', '', '', '', ''),
(213, 'C3-32', 'Meiyanto', '', '', '', '', ''),
(214, 'C3-33', 'KOSONG', '', '', '', '', ''),
(215, 'C3-34', 'Carvin', '', '', '', '', ''),
(216, 'C3-35', 'Andri Hermawan', '', '', '', '', ''),
(217, 'C3-36', 'Ahmad Ramdani (Amri 08578044097', '', '', '', '', ''),
(218, 'C3-37', 'harry', '', '', '', '', ''),
(219, 'C3-38', 'Sinyo', '', '', '', '', ''),
(220, 'C3-39', 'Alfa', '', '', '', '', ''),
(221, 'C3-40', 'Giyan Budiono', '', '', '', '', ''),
(222, 'C3-41', 'Fajar', '', '', '', '', ''),
(223, 'C3-42', 'I Gusti Tisna Wijaya', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barcode` varchar(50) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` varchar(11) NOT NULL,
  `stok` varchar(20) NOT NULL,
  `harga_jual` varchar(20) NOT NULL,
  `profit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kode_barcode`, `nama_barang`, `satuan`, `harga_beli`, `stok`, `harga_jual`, `profit`) VALUES
('0999871445289', 'Buku', 'PACK', '100000', '8', '2000000', '1900000'),
('23467045658768', 'Pepsodent', 'LUSIN', '10000', '2', '20000', '10000'),
('2366528905', 'test1234', 'LUSIN', '50000', '6', '200000', '150000'),
('554389002457', 'Galon', 'PCS', '25000', '4', '50000', '25000'),
('76981039475822', 'Roti', 'PACK', '12000', '0', '15000', '3000'),
('8995757412003', 'ENVELOPE', 'PACK', '8000', '5', '12000', '4000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `kode_konsumen` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kecamatan` varchar(150) NOT NULL,
  `telpon` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`kode_konsumen`, `nama`, `alamat`, `alamat_kecamatan`, `telpon`, `email`) VALUES
(1, 'Lutri', 'Villa Sentosa', 'ggfgfgfhhg', '5354545', 'lutriveflina@gmail.com'),
(2, 'Ayunda', 'jakarta selatan', '6yrytryrtyrtr', '376800455787', 'ayunda@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `kode_pembelian` int(11) NOT NULL,
  `nofaktur` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_supplier` varchar(20) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `kode_barcode` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pembelian`
--

INSERT INTO `tb_pembelian` (`kode_pembelian`, `nofaktur`, `tanggal`, `nama_supplier`, `nama_barang`, `kode_barcode`, `stok`) VALUES
(5, 'TP001', '2019-03-29', 'PT. Cemilan Sentosa', 'ffffff', 'ENVELOPE', 3),
(7, 'TP002', '2019-03-29', 'PT. Jaya Sentosa', 'hgfhghfghhh', 'SAMBAL ABC 123', 1),
(8, 'TP003', '2019-03-28', 'PT. Jaya Sentosa', '', 'SAMBAL ABC ', 1),
(9, 'TP005', '2019-03-15', 'PT. Cemilan Sentosa', '', 'Roti', 1),
(10, 'TP004', '2019-03-13', 'PT. Jaya Sentosa', '', 'ENVELOPE', 1),
(11, 'TP006', '2019-04-01', 'PT.Bahagia Selalu', '', 'Buku', 1),
(12, 'TP007', '2019-04-01', 'PT. Jaya Sentosa', '', '23467045658768', 1),
(13, 'TP0011', '2019-04-25', 'PT. Cemilan Sentosa', '', '23467045658768', 3),
(14, 'TP006', '2019-04-29', 'PT. Cemilan Sentosa', '', '8995757412003', 5),
(15, 'TP008', '2019-05-02', 'PT. Cemilan Sentosa', '', '0999871445289', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_podaily`
--

CREATE TABLE `tb_podaily` (
  `kode_penjualan` int(11) NOT NULL,
  `nik` varchar(12) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tgl_lahir` varchar(16) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telpon` varchar(16) NOT NULL,
  `status` varchar(40) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_podaily`
--

INSERT INTO `tb_podaily` (`kode_penjualan`, `nik`, `nama`, `tgl_lahir`, `alamat`, `telpon`, `status`, `bagian`) VALUES
(1, 'A1-1', 'KOSONG', '', '', '', '', ''),
(2, 'A1-2', 'Triyono Jedul', '', '', '', '', ''),
(3, 'A1-3', 'Erdi Wishnu', '', '', '', '', ''),
(4, 'A1-4', 'Tiara', '', '', '', '', ''),
(5, 'A1-5', 'Ade aditya Yahdjan', '', '', '', '', ''),
(6, 'A1-6', 'Ivan Darmawan/Siska', '', '', '', '', ''),
(7, 'A1-7', 'Pandu', '', '', '', '', ''),
(8, 'A1-8', 'Ferdy', '', '', '', '', ''),
(9, 'A1-9', 'Hendra Suhendra', '', '', '', '', ''),
(10, 'A1-10', 'Anrico / Yopie', '', '', '', '', ''),
(11, 'A1-11', 'Deddy Wijaya', '', '', '', '', ''),
(12, 'A1-12', 'Ferry Indra', '', '', '', '', ''),
(13, 'A1-13', 'Ria', '', '', '', '', ''),
(14, 'A1-14', 'Chris Manurung (Chris)', '', '', '', '', ''),
(15, 'A1-15', 'Rosmeri Tambunan (Ros)', '', '', '', '', ''),
(16, 'A1-16', 'Yogi Valentin', '', '', '', '', ''),
(17, 'A1-17', 'M. Arie Suryadi', '', '', '', '', ''),
(18, 'A1-18', 'Nelson', '', '', '', '', ''),
(19, 'A1-19', 'KOSONG', '', '', '', '', ''),
(20, 'A1-20', 'Nila Tria Angraeni', '', '', '', '', ''),
(21, 'A1-21', 'Edho', '', '', '', '', ''),
(22, 'A1-22', 'Sulaiman Habibi', '', '', '', '', ''),
(23, 'A1-23', 'Heavy Weis Danata', '', '', '', '', ''),
(24, 'A1-24', 'M. Gasti', '', '', '', '', ''),
(25, 'A1-25', 'Carto Erlangga / M Raymond Rahman', '', '', '', '', ''),
(26, 'A1-26', 'Ahmad Ibnu Nurlambang', '', '', '', '', ''),
(27, 'A1-27', 'Gularso', '', '', '', '', ''),
(28, 'A2-1', 'Deny / Sachin Sigh', '', '', '', '', ''),
(29, 'A2-2', 'Zaenuri', '', '', '', '', ''),
(30, 'A2-3', 'Andri Kusbandi (Dokter)', '', '', '', '', ''),
(31, 'A2-4', 'Oki Kurniawan', '', '', '', '', ''),
(32, 'A2-5', 'Kasro Sidauruk', '', '', '', '', ''),
(33, 'A2-6', 'Jia Bagus Ardianto', '', '', '', '', ''),
(34, 'A2-7', 'Fatullah Donie S (Donie)', '', '', '', '', ''),
(35, 'A2-8', 'Ari prasetyo', '', '', '', '', ''),
(36, 'A2-9', 'Riezki Aliza', '', '', '', '', ''),
(37, 'A2-10', 'Alam', '', '', '', '', ''),
(38, 'A2-11', 'Rosgita P (Rosgita)', '', '', '', '', ''),
(39, 'A2-12', 'Hadi Satria', '', '', '', '', ''),
(40, 'A2-13', 'Ugi', '', '', '', '', ''),
(41, 'A2-14', 'Awang', '', '', '', '', ''),
(42, 'A2-15', 'Utomo Broto/Maisaroh', '', '', '', '', ''),
(43, 'A2-16', 'Fernando Siagian', '', '', '', '', ''),
(44, 'A2-17', 'Ali Sofyan Kamal', '', '', '', '', ''),
(45, 'A2-18', 'Ridwan', '', '', '', '', ''),
(46, 'A2-19', 'Fikrie', '', '', '', '', ''),
(47, 'A2-20', 'Adiwibowo (Bowo)', '', '', '', '', ''),
(48, 'A2-21', 'M. Nasser (Acen)', '', '', '', '', ''),
(49, 'A2-22', 'Atim Suhendar', '', '', '', '', ''),
(50, 'A3-1', 'Sandy Romualdus', '', '', '', '', ''),
(51, 'A3-2', 'Nico', '', '', '', '', ''),
(52, 'A3-3', 'Hartanto Wijaya', '', '', '', '', ''),
(53, 'A3-4', 'KOSONG', '', '', '', '', ''),
(54, 'A3-5', 'Rangga Putra', '', '', '', '', ''),
(55, 'A3-6', 'Benyamin', '', '', '', '', ''),
(56, 'A3-7', 'KOSONG', '', '', '', '', ''),
(57, 'A3-8', 'KOSONG', '', '', '', '', ''),
(58, 'A3-9', 'KOSONG', '', '', '', '', ''),
(59, 'A3-10', 'Gery Rival', '', '', '', '', ''),
(60, 'A3-11', 'Rezi Maulana', '', '', '', '', ''),
(61, 'A3-12', 'KOSONG', '', '', '', '', ''),
(62, 'B1-1', 'Fera Rianti', '', '', '', '', ''),
(63, 'B1-2', 'KOSONG', '', '', '', '', ''),
(64, 'B1-3', 'Andy', '', '', '', '', ''),
(65, 'B1-4', 'Ai Arofah', '', '', '', '', ''),
(66, 'B1-5', 'Dendi setiawan', '', '', '', '', ''),
(67, 'B1-6', 'Akbar Epit', '', '', '', '', ''),
(68, 'B1-7', 'Ahmad Fadhil Moussavi', '', '', '', '', ''),
(69, 'B1-8', 'Sondang', '', '', '', '', ''),
(70, 'B1-9', 'Rizky Rahayu', '', '', '', '', ''),
(71, 'B1-10', 'Satria Eka Daya', '', '', '', '', ''),
(72, 'B1-11', 'Sendi Dian Putra', '', '', '', '', ''),
(73, 'B1-12', 'Jonas Purba', '', '', '', '', ''),
(74, 'B1-13', 'Moharom Julianto', '', '', '', '', ''),
(75, 'B1-14', 'Erwin Gibran', '', '', '', '', ''),
(76, 'B1-15', 'R Surahman', '', '', '', '', ''),
(77, 'B1-16', 'Achmad Marulloh', '', '', '', '', ''),
(78, 'B1-17', 'Budi', '', '', '', '', ''),
(79, 'B1-18', 'KOSONG', '', '', '', '', ''),
(80, 'B1-19', 'Dody Iskandar', '', '', '', '', ''),
(81, 'B1-20', 'Egi Cahyo Prabowo', '', '', '', '', ''),
(82, 'B1-21', 'Bekti', '', '', '', '', ''),
(83, 'B1-22', 'Handy Aprilia N', '', '', '', '', ''),
(84, 'B1-23', 'Haris', '', '', '', '', ''),
(85, 'B1-24', 'Tekad Iman Sumarisma', '', '', '', '', ''),
(86, 'B1-25', 'Rully Anjar (Rully)', '', '', '', '', ''),
(87, 'B1-26', 'Ahmad Maulana', '', '', '', '', ''),
(88, 'B1-27', 'Amram Saloh', '', '', '', '', ''),
(89, 'B1-28', 'Amram Saloh', '', '', '', '', ''),
(90, 'B1-29', 'Fadhli Yurdhika (Fadhli)', '', '', '', '', ''),
(91, 'B1-30', 'Danda (Aquaman)', '', '', '', '', ''),
(92, 'B2-1', 'Astiaransyah Dwi Putra', '', '', '', '', ''),
(93, 'B2-2', 'Saiful Anwar', '', '', '', '', ''),
(94, 'B2-3', 'Vaddly Destanto', '', '', '', '', ''),
(95, 'B2-4', 'Maulana', '', '', '', '', ''),
(96, 'B2-5', 'KOSONG', '', '', '', '', ''),
(97, 'B2-6', 'Akbar', '', '', '', '', ''),
(98, 'B2-7', 'Arief Eka', '', '', '', '', ''),
(99, 'B2-8', 'Eko/ Nana Upitasari', '', '', '', '', ''),
(100, 'B2-9', 'Imanuel', '', '', '', '', ''),
(101, 'B2-10', 'KOSONG', '', '', '', '', ''),
(102, 'B2-11', 'Donny Wahyu', '', '', '', '', ''),
(103, 'B2-12', 'KOSONG', '', '', '', '', ''),
(104, 'B2-13', 'Helen Syerah', '', '', '', '', ''),
(105, 'B2-14', 'Yanuar', '', '', '', '', ''),
(106, 'B2-15', 'KOSONG', '', '', '', '', ''),
(107, 'B2-16', 'Dita Septiana Apsari', '', '', '', '', ''),
(108, 'B2-17', 'Noor rendra', '', '', '', '', ''),
(109, 'B2-18', 'Yunita Zana', '', '', '', '', ''),
(110, 'B2-19', 'Saepul Bahri', '', '', '', '', ''),
(111, 'B2-20', 'Ibu Ika', '', '', '', '', ''),
(112, 'B2-21', 'Herdian', '', '', '', '', ''),
(113, 'B2-22', 'Zekki Martogi Simbolon', '', '', '', '', ''),
(114, 'B2-23', 'Gede Indra', '', '', '', '', ''),
(115, 'B2-24', 'Agus Supriyanto', '', '', '', '', ''),
(116, 'B2-25', 'Ananta Wikram', '', '', '', '', ''),
(117, 'B2-26', 'Rusli Irawan', '', '', '', '', ''),
(118, 'B3-1', 'Fera Rianti', '', '', '', '', ''),
(119, 'B3-2', 'Agus Supriana Samsie', '', '', '', '', ''),
(120, 'B3-3', 'Dedy Ivan Pardede (Ivan)', '', '', '', '', ''),
(121, 'B3-4', 'Aisyah', '', '', '', '', ''),
(122, 'B3-5', 'Rizal Ziya', '', '', '', '', ''),
(123, 'B3-6', 'Cindy Sisardi (Yusuf)', '', '', '', '', ''),
(124, 'B3-7', 'Muhammad Ihya Ulumudin', '', '', '', '', ''),
(125, 'B3-8', 'Tri Wahyu Maulana Putra', '', '', '', '', ''),
(126, 'B3-9', 'Syam', '', '', '', '', ''),
(127, 'B3-10', 'Erick', '', '', '', '', ''),
(128, 'B3-11', 'Bambang Tri Y', '', '', '', '', ''),
(129, 'B3-12', 'Adhiguna Wibowo Pardede', '', '', '', '', ''),
(130, 'B3-13', 'KOSONG', '', '', '', '', ''),
(131, 'B3-14', 'KOSONG', '', '', '', '', ''),
(132, 'B3-15', 'KOSONG', '', '', '', '', ''),
(133, 'B3-16', 'Fahrul', '', '', '', '', ''),
(134, 'B3-17', 'Wibowo', '', '', '', '', ''),
(135, 'B3-18', 'Saepul', '', '', '', '', ''),
(136, 'B3-19', 'Fahmi Wahyudin', '', '', '', '', ''),
(137, 'B3-20', 'Muhammad Guntur', '', '', '', '', ''),
(138, 'B3-21', 'Enos Alexander Situmeang', '', '', '', '', ''),
(139, 'B3-22', 'Iqbal Rizki Kurniadi', '', '', '', '', ''),
(140, 'B3-23', 'Ari Mahita', '', '', '', '', ''),
(141, 'B3-24', 'Ferry', '', '', '', '', ''),
(142, 'B3-25', 'Bunda Yudist (Gobang)', '', '', '', '', ''),
(143, 'B3-26', 'Koes Wahyudi (Yudi)', '', '', '', '', ''),
(144, 'B3-27', 'KOSONG', '', '', '', '', ''),
(145, 'B3-28', 'Karsono', '', '', '', '', ''),
(146, 'B3-29', 'Arnold', '', '', '', '', ''),
(147, 'B3-30', 'KOSONG', '', '', '', '', ''),
(148, 'B3-31', 'KOSONG', '', '', '', '', ''),
(149, 'B3-32', 'KOSONG', '', '', '', '', ''),
(150, 'B3-33', 'Ryad', '', '', '', '', ''),
(151, 'C1-1', 'KOSONG', '', '', '', '', ''),
(152, 'C1-2', 'KOSONG', '', '', '', '', ''),
(153, 'C1-3', 'Joko Yuli Riatmadi', '', '', '', '', ''),
(154, 'C1-4', 'Eka Atmaja Herawan', '', '', '', '', ''),
(155, 'C1-5', 'Suprianto', '', '', '', '', ''),
(156, 'C1-6', 'Solichudin / Olle', '', '', '', '', ''),
(157, 'C1-7', 'Ajun', '', '', '', '', ''),
(158, 'C1-8', 'Brawi', '', '', '', '', ''),
(159, 'C1-9', 'Ifan', '', '', '', '', ''),
(160, 'C1-10', 'Bobby', '', '', '', '', ''),
(161, 'C1-11', 'Mohammad Zia', '', '', '', '', ''),
(162, 'C1-12', 'Dimas Adidaya', '', '', '', '', ''),
(163, 'C1-13', 'Ramdhon', '', '', '', '', ''),
(164, 'C2-1', 'KOSONG', '', '', '', '', ''),
(165, 'C2-2', 'Teti Marlina Marbun (Sigit Pamungka', '', '', '', '', ''),
(166, 'C2-3', 'Aditya', '', '', '', '', ''),
(167, 'C2-4', 'KOSONG', '', '', '', '', ''),
(168, 'C2-5', 'Tria Triyana', '', '', '', '', ''),
(169, 'C2-6', 'Yudha Setiawan', '', '', '', '', ''),
(170, 'C2-7', 'Irawan Sapto Aji', '', '', '', '', ''),
(171, 'C2-8', 'Erika', '', '', '', '', ''),
(172, 'C2-9', 'KOSONG', '', '', '', '', ''),
(173, 'C2-10', 'Eni Nursetyaningsih', '', '', '', '', ''),
(174, 'C2-11', 'Chairul Anwar', '', '', '', '', ''),
(175, 'C2-12', 'Ibnu Sina', '', '', '', '', ''),
(176, 'C2-13', 'Aria Andriyansyah', '', '', '', '', ''),
(177, 'C2-14', 'Ahmad Ricky Rizkilla', '', '', '', '', ''),
(178, 'C2-15', 'KOSONG', '', '', '', '', ''),
(179, 'C2-16', 'Gagus', '', '', '', '', ''),
(180, 'C2-17', 'Ibnu', '', '', '', '', ''),
(181, 'C2-18', 'Andika', '', '', '', '', ''),
(182, 'C3-1', 'Dimas Yogi', '', '', '', '', ''),
(183, 'C3-2', 'Aditia Nugraha', '', '', '', '', ''),
(184, 'C3-3', 'Dwi Rahayu', '', '', '', '', ''),
(185, 'C3-4', 'Irsyad Ardy H', '', '', '', '', ''),
(186, 'C3-5', 'Irwan', '', '', '', '', ''),
(187, 'C3-6', 'Taufik Raditya', '', '', '', '', ''),
(188, 'C3-7', 'Adit', '', '', '', '', ''),
(189, 'C3-8', 'Rendi', '', '', '', '', ''),
(190, 'C3-9', 'Sari Rosyani', '', '', '', '', ''),
(191, 'C3-10', 'Budi Hartana (Pak De Yono)', '', '', '', '', ''),
(192, 'C3-11', 'KOSONG', '', '', '', '', ''),
(193, 'C3-12', 'KOSONG', '', '', '', '', ''),
(194, 'C3-13', 'Reza Romadon', '', '', '', '', ''),
(195, 'C3-14', 'KOSONG', '', '', '', '', ''),
(196, 'C3-15', 'KOSONG', '', '', '', '', ''),
(197, 'C3-16', 'Hendricus Levent (Alie Fajar)', '', '', '', '', ''),
(198, 'C3-17', 'Suprani Hamzah', '', '', '', '', ''),
(199, 'C3-18', 'Ahmad Sudiana (Dana)', '', '', '', '', ''),
(200, 'C3-19', 'A Bondan Sasongko', '', '', '', '', ''),
(201, 'C3-20', 'Andrey', '', '', '', '', ''),
(202, 'C3-21', 'Syamsul Arief', '', '', '', '', ''),
(203, 'C3-22', 'Wawan', '', '', '', '', ''),
(204, 'C3-23', 'Rudi Frianto', '', '', '', '', ''),
(205, 'C3-24', 'Handoko', '', '', '', '', ''),
(206, 'C3-25', 'Hans Alfrendy Wiraputera', '', '', '', '', ''),
(207, 'C3-26', 'KOSONG', '', '', '', '', ''),
(208, 'C3-27', 'Rizky Miftahul Akbar', '', '', '', '', ''),
(209, 'C3-28', 'KOSONG', '', '', '', '', ''),
(210, 'C3-29', 'Setyani Budiari', '', '', '', '', ''),
(211, 'C3-30', 'KOSONG', '', '', '', '', ''),
(212, 'C3-31', 'Lujeng', '', '', '', '', ''),
(213, 'C3-32', 'Meiyanto', '', '', '', '', ''),
(214, 'C3-33', 'KOSONG', '', '', '', '', ''),
(215, 'C3-34', 'Carvin', '', '', '', '', ''),
(216, 'C3-35', 'Andri Hermawan', '', '', '', '', ''),
(217, 'C3-36', 'Ahmad Ramdani (Amri 08578044097', '', '', '', '', ''),
(218, 'C3-37', 'harry', '', '', '', '', ''),
(219, 'C3-38', 'Sinyo', '', '', '', '', ''),
(220, 'C3-39', 'Alfa', '', '', '', '', ''),
(221, 'C3-40', 'Giyan Budiono', '', '', '', '', ''),
(222, 'C3-41', 'Fajar', '', '', '', '', ''),
(223, 'C3-42', 'I Gusti Tisna Wijaya', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(20) NOT NULL,
  `tlp` varchar(12) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_supplier`
--

INSERT INTO `tb_supplier` (`id`, `nama_supplier`, `tlp`, `alamat`) VALUES
(1, 'PT. Cemilan Sentosa', '9499959944', 'jakarta'),
(2, 'PT.Bahagia Selalu', '9599599549', 'padang'),
(3, 'PT. Jaya Sentosa', '959959955', 'padang barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `password`, `level`) VALUES
(1, 'nesa', 'nesa', '123', 'kasir'),
(2, 'dimas', 'dimas', '123', 'kasir'),
(3, 'dana', 'dana', '123', 'kasir'),
(4, 'syamsul', 'syamsul', '123', 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_barcode`);

--
-- Indeks untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`kode_konsumen`);

--
-- Indeks untuk tabel `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`kode_pembelian`);

--
-- Indeks untuk tabel `tb_podaily`
--
ALTER TABLE `tb_podaily`
  ADD PRIMARY KEY (`kode_penjualan`);

--
-- Indeks untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  MODIFY `kode_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  MODIFY `kode_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_podaily`
--
ALTER TABLE `tb_podaily`
  MODIFY `kode_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
