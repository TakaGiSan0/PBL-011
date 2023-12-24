-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Des 2023 pada 09.52
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbl3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `suhu` int(11) NOT NULL,
  `lembab` int(11) NOT NULL,
  `cahaya` int(11) NOT NULL,
  `tanah` int(11) NOT NULL,
  `alat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `waktu`, `suhu`, `lembab`, `cahaya`, `tanah`, `alat_id`) VALUES
(1, '2023-12-21 02:03:17', 20, 30, 40, 5, 1),
(2, '2023-12-21 02:07:02', 30, 40, 50, 6, 2),
(3, '2023-12-22 11:04:28', 655, 655, 240, 0, 0),
(4, '2023-12-22 11:07:09', 655, 655, 220, 0, 0),
(5, '2023-12-22 11:08:45', 655, 655, 155, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(70) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `no_hp`, `nama`) VALUES
(1, 'QWEQW', '$2y$10$gqGaAPXuySfUL4s6D.edUe6juihFBEkUivAbPQLBUAd9R27gFCSnW', 'mfir559@gmail.com', '082193892174', 'awdas'),
(3, 'qwer', '$2y$10$FEoV2HAx5M9EEOkza/RKEOhjk7p28KlRzfvk7sKAlXqNn.ylghgLG', 'wqedqw@gmail.com', '08128986', 'Muhamad Firdaus'),
(12, 'admin', '$2y$10$qlBOxVpbk2urP5gR28Ffiug2h0I9n93b/muphWod4ER/0Ghig/Nuy', 'admin@gmail.com', '123456789', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
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
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
