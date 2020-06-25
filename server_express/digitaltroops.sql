-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2020 pada 15.46
-- Versi server: 10.4.6-MariaDB
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
-- Database: `digitaltroops`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penduduks`
--

CREATE TABLE `data_penduduks` (
  `id` int(11) NOT NULL,
  `no_kk` int(11) DEFAULT NULL,
  `nik` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `id_hbkel` int(11) NOT NULL,
  `no_rt` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penduduks`
--

INSERT INTO `data_penduduks` (`id`, `no_kk`, `nik`, `nama_lengkap`, `id_hbkel`, `no_rt`, `createdAt`, `updatedAt`) VALUES
(8, 2147483647, 2147483647, 'Sukijah', 2, 1, '2020-06-18 07:11:39', '2020-06-18 07:11:39'),
(9, 2147483647, 2147483647, 'Mae', 2, 1, '2020-06-18 08:27:56', '2020-06-18 08:27:56'),
(10, 2147483647, 2147483647, 'faisalganteng', 1, 1, '2020-06-18 11:46:21', '2020-06-18 11:46:21'),
(11, 2147483647, 2147483647, 'faisalganteng', 1, 1, '2020-06-18 11:46:23', '2020-06-18 11:46:23'),
(12, 1234567899, 1234567899, 'isaltea', 1, 1, '2020-06-18 11:47:28', '2020-06-18 11:47:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan_keluargas`
--

CREATE TABLE `hubungan_keluargas` (
  `id` int(11) NOT NULL,
  `stat_hbkel` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungan_keluargas`
--

INSERT INTO `hubungan_keluargas` (`id`, `stat_hbkel`, `createdAt`, `updatedAt`) VALUES
(1, 'Kepala Keluarga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Suami', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200618023329-create-user.js'),
('20200618030643-create-hubungan-keluarga.js'),
('20200618059953-create-data-penduduk.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'faisal@gmail.com', 'qwerty', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_penduduks`
--
ALTER TABLE `data_penduduks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hbkel` (`id_hbkel`);

--
-- Indeks untuk tabel `hubungan_keluargas`
--
ALTER TABLE `hubungan_keluargas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_penduduks`
--
ALTER TABLE `data_penduduks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `hubungan_keluargas`
--
ALTER TABLE `hubungan_keluargas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_penduduks`
--
ALTER TABLE `data_penduduks`
  ADD CONSTRAINT `data_penduduks_ibfk_1` FOREIGN KEY (`id_hbkel`) REFERENCES `hubungan_keluargas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
