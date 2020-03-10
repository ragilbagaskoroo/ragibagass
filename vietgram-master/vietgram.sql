-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2020 pada 11.57
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietgram`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `likes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `photo`
--

INSERT INTO `photo` (`id`, `username`, `url`, `caption`, `likes`) VALUES
(1, 'admin', 'https://1.bp.blogspot.com/-qCunfE480k0/XXLwXqKVCmI/AAAAAAAACko/t9TsvqpoMg0wENBJ2WKhCl4s3dlEBh-HQCLcBGAs/s1600/IMG_20190907_063727_899.jpg', '', 120),
(2, 'ragil', 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Gedung-Sate-Trees.jpg', '', 500),
(3, 'jackone', 'https://www.indonesiakaya.com/uploads/_images_gallery/cover/Sungai_Mahakam_ie_1290.jpg', '', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `username`, `name`, `website`, `bio`, `email`, `phonenumber`, `gender`) VALUES
(1, 'admin', 'admin', 'https://www.google.co.id', '                                                                                                                                                                                                                     ', 'admin@gmail.com', '08578253232', 'L'),
(2, 'ragil', 'Ragil Bagaskoro', 'https://www.twitter.co.id', 'jomblo', 'ragilbagaskoro6376@gmail.com', '085346704247', 'L'),
(3, 'jackone', 'khairan zakwan', 'https://www.facebook.com', 'jomblow', 'zakwanwallay27@gmail.com', '08115571471', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `email`) VALUES
('admin', 'admin123', 'admin@gmail.com'),
('jackone', 'wallay27', 'zakwanwallay27@gmail.com'),
('ragil', 'mrbagas2232', 'ragilbagaskoro6376@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
