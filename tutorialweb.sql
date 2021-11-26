-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Nov 2021 pada 10.29
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
-- Database: `tutorialweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `nrp` varchar(16) NOT NULL,
  `tgl_upload` date NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `nrp`, `tgl_upload`, `nama`) VALUES
(3, '', '2021-11-14', '3.jpg'),
(19, '', '2021-11-25', '2.jpg'),
(20, '', '2021-11-25', '1.jpg'),
(21, '', '2021-11-25', '4.jpg'),
(22, '', '2021-11-25', '7.jpg'),
(23, '', '2021-11-25', '6.jpg'),
(24, '', '2021-11-25', '8.jpg'),
(25, '', '2021-11-25', 'IMG-20211114-WA0044.jpg'),
(26, '', '2021-11-25', 'spd2.jpg'),
(27, '', '2021-11-25', 'keren-jip-mini-ini-buatan-santri-asal-jember_169.jpeg'),
(28, '', '2021-11-25', 'sepeda2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
