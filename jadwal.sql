-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Okt 2022 pada 08.00
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(100) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `jk`, `alamat`) VALUES
(1, 'ANDI FARMADI', 'laki-laki', 'Balangan'),
(6, 'MOHAMMAD REZA FAISAL', 'Laki - laki', 'Amerika'),
(7, 'IRWAN BUDIMAN', 'laki-laki', 'Amerika'),
(8, 'MULIADI', 'Laki - laki', 'Jakarta'),
(9, 'DODON TURIANTO NUGRAHADI', 'laki-laki', 'Depok'),
(10, 'RADITYO ADI NUGROHO', 'Laki - laki', 'Aceh'),
(11, 'DWI KARTINI', 'Perempuan', 'Jember'),
(12, 'FRISKA ABADI', 'laki-laki', 'Amerika'),
(13, 'RUDY HERTENO', 'laki-laki', 'Cuba'),
(14, 'MUHAMMAD ITQAN MAZDAD', 'laki-laki', 'Amerika'),
(15, 'RAHMAT RAMADHANI', 'laki-laki', 'Amerika'),
(16, 'TRIANDO HAMONANGAN SARAGIH', 'laki-laki', 'Amerika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `id_jam` int(11) DEFAULT NULL,
  `hari` varchar(30) DEFAULT NULL,
  `id_pelajaran` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_guru`, `id_jam`, `hari`, `id_pelajaran`, `id_kelas`) VALUES
(76, 1, 6, 'senin', 13, 14),
(77, 1, 7, 'senin', 12, 14),
(78, 6, 9, 'senin', 13, 14),
(79, 6, 10, 'senin', 13, 14),
(80, 7, 11, 'senin', 17, 14),
(81, 7, 12, 'senin', 17, 14),
(82, 8, 13, 'senin', 14, 14),
(83, 8, 14, 'senin', 14, 14),
(84, 6, 6, 'senin', 21, 15),
(85, 6, 7, 'senin', 21, 15),
(86, 1, 9, 'senin', 22, 15),
(87, 1, 10, 'senin', 22, 15),
(88, 1, 6, 'selasa', 14, 14),
(89, 11, 6, 'senin', 14, 24),
(90, 1, 7, 'senin', 12, 24),
(91, NULL, 7, 'selasa', 12, 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `id_jam` int(11) NOT NULL,
  `jam` varchar(30) NOT NULL,
  `mulai` varchar(30) NOT NULL,
  `akhir` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`id_jam`, `jam`, `mulai`, `akhir`) VALUES
(6, '1', '07:30', '08:00'),
(7, '2', '08:00', '08:30'),
(9, '3', '08:30', '09:00'),
(10, '4', '09:00', '09:30'),
(11, '5', '10:00', '10:30'),
(12, '6', '10:30', '11:00'),
(13, '7', '11:00', '11:30'),
(14, '8', '11:30', '12:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `id_semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `id_semester`) VALUES
(14, '1A', 4),
(15, '1B', 4),
(16, '2A', 4),
(17, '2B', 4),
(18, '3A', 4),
(19, '3B', 4),
(20, '4A', 4),
(21, '4B', 4),
(22, '5', 4),
(23, '6', 4),
(24, '1A', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id_pelajaran` int(11) NOT NULL,
  `pelajaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`id_pelajaran`, `pelajaran`) VALUES
(12, 'Bahasa Indonesia'),
(13, 'Bahasa Inggris'),
(14, 'Matematika'),
(15, 'IPA'),
(16, 'IPS'),
(17, 'Kesenian'),
(18, 'BTA'),
(19, 'Olahraga'),
(20, 'PAI'),
(21, 'Bahasa Arab'),
(22, 'Hadist');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id_semester` int(11) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `semester` enum('ganjil','genap','','') NOT NULL,
  `status` enum('0','1','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id_semester`, `tahun`, `semester`, `status`) VALUES
(4, '2020/2021', 'ganjil', '1'),
(10, '2020/2021', 'genap', '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_jam` (`id_jam`),
  ADD KEY `id_pelajaran` (`id_pelajaran`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_semester` (`id_semester`);

--
-- Indeks untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id_jam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `id_guru` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_jam` FOREIGN KEY (`id_jam`) REFERENCES `jam` (`id_jam`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_pelajaran` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `id_semester` FOREIGN KEY (`id_semester`) REFERENCES `semester` (`id_semester`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
