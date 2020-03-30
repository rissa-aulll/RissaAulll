-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2020 pada 13.34
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_location`
--

CREATE TABLE `data_location` (
  `id` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lon` float(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_location`
--

INSERT INTO `data_location` (`id`, `desc`, `lat`, `lon`) VALUES
(1, 'Aston', -7.147182, 111.875107),
(2, 'favehotel', -7.152219, 111.874306),
(3, 'hotel bojonegoro', -7.158480, 111.879074),
(4, 'RedDoorz', -7.158297, 111.878876),
(5, 'Dewarna hotel', -7.162003, 111.897476),
(6, 'airy hotel', -7.165245, 111.894844),
(7, 'Nirwana hotel', -7.168040, 111.895432);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_location`
--
ALTER TABLE `data_location`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_location`
--
ALTER TABLE `data_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
