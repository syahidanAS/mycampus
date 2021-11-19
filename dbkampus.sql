-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2021 pada 07.44
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses_token`
--

CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akses_token`
--

INSERT INTO `akses_token` (`id_akses_token`, `id_user`, `access_token`, `ip_address`) VALUES
(1, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwidXNlcm5hbWUiOiJpZGFuMTMiLCJlbWFpbCI6ImFqZW5nQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiNWY0ZGNjM2I1YWE3NjVkNjFkODMyN2RlYjg4MmNmOTkiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjEtMTEtMTRUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjM2OTkwNjQ0LCJleHAiOjE2MzY5OTIwODR9.D_gN36UZy33kCLe3NxV6bzwGAwinOlaW-6Pnzelmzak', '192.168.56.1'),
(2, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwidXNlcm5hbWUiOiJpZGFuMTMiLCJlbWFpbCI6ImFqZW5nQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiNWY0ZGNjM2I1YWE3NjVkNjFkODMyN2RlYjg4MmNmOTkiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjEtMTEtMTRUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjM2OTkwNjU5LCJleHAiOjE2MzY5OTIwOTl9.zQ2O2ZC3cj7Nn3X6TOxIFnbdlXpxpuubn1P7P854UWs', '192.168.56.1'),
(3, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJpZGFuMTMiLCJlbWFpbCI6InN5YWhpZGFuMTM5QGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiNWY0ZGNjM2I1YWE3NjVkNjFkODMyN2RlYjg4MmNmOTkiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjEtMTEtMTRUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjM2OTkwNjcxLCJleHAiOjE2MzY5OTIxMTF9.f3i1LAYzJkYFbfkwRqBK4WdHvo5DOyNwZe1TNo26YBE', '192.168.56.1'),
(4, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJpZGFuMTMiLCJlbWFpbCI6InN5YWhpZGFuMTM5QGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiNWY0ZGNjM2I1YWE3NjVkNjFkODMyN2RlYjg4MmNmOTkiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjEtMTEtMTRUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNjM2OTkwNzIzLCJleHAiOjE2MzY5OTIxNjN9.jGVi8igRdkwzidx3Yb3Z-SbWVHxqf_4kj3qt--8Fox0', '192.168.56.1'),
(5, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJyYWloYW4iLCJlbWFpbCI6InJhaWhhbkBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjVmNGRjYzNiNWFhNzY1ZDYxZDgzMjdkZWI4ODJjZjk5Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTExLTE0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYzNjk5MTU3MiwiZXhwIjoxNjM2OTkzMDEyfQ.0UFypKxWcjsGKaDrQufjhMM7hW1xRsxlFzpWaLv2Rlk', '192.168.56.1'),
(6, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJyYWloYW4iLCJlbWFpbCI6InJhaWhhbkBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjVmNGRjYzNiNWFhNzY1ZDYxZDgzMjdkZWI4ODJjZjk5Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTExLTE0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYzNjk5MjY2NiwiZXhwIjoxNjM2OTk0MTA2fQ.usRKvppzOxwCRZ-1CI5nOYvyFGR-_vTcouiS7XywaBk', '192.168.56.1'),
(7, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJyYWloYW4iLCJlbWFpbCI6InJhaWhhbkBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjVmNGRjYzNiNWFhNzY1ZDYxZDgzMjdkZWI4ODJjZjk5Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTExLTE0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYzNjk5MzAwMywiZXhwIjoxNjM2OTk0NDQzfQ.vyCGFY-PLKdcolZqhBa-iYKHeNvN0WnGhE3XaIOkeOU', '192.168.56.1'),
(8, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJyYWloYW4iLCJlbWFpbCI6InJhaWhhbkBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjVmNGRjYzNiNWFhNzY1ZDYxZDgzMjdkZWI4ODJjZjk5Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTExLTE0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYzNjk5MzA5NCwiZXhwIjoxNjM2OTk0NTM0fQ.e-UUZa2BWLQVnrOWVAxor_kh9U9cZj1RRDRmHpg0404', '192.168.56.1'),
(9, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJyYWloYW4iLCJlbWFpbCI6InJhaWhhbkBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjVmNGRjYzNiNWFhNzY1ZDYxZDgzMjdkZWI4ODJjZjk5Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTExLTE0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTYzNjk5MzEwNSwiZXhwIjoxNjM2OTk0NTQ1fQ.aaSJpg_K0kdBwQfO05ezDTtfLBjLUnILq7aa6FUI5gw', '192.168.56.1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `tanggal_krs` date NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jurusan`) VALUES
(40, 17111146, 'Syahidan Arrizaldy Sidik', 'Teknik Informatika'),
(44, 18123334, 'Ajeng Nadia Efendi', 'Teknik Informatika'),
(48, 1412355, 'Gita Savitri Devi', 'Teknik Kimia'),
(49, 12345456, 'Tifanny Zeta', 'Teknik Kimia'),
(50, 432532532, 'Budi Sudarsono', 'Teknik Industri'),
(51, 19128837, 'Indah Permatasari', 'Matematika'),
(52, 15123454, 'Wahyu Maulidin', 'Teknik Industri'),
(53, 16124657, 'Zidan Setiawan', 'Teknik Industri'),
(54, 1872839, 'Farhan Nugraha', 'Teknik Informatika'),
(55, 163538445, 'Ahmad Subagja', 'Matematika'),
(56, 167728729, 'Joko Sudarsono', 'Teknik Kimia'),
(57, 1613245, 'Wahyu Nugraha', 'Teknik Kimia'),
(58, 16628839, 'Wahid Maulidin', 'Teknik Industri'),
(59, 12345656, 'Zahra Maulidia', 'Desain Komunikasi Visual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL,
  `matakuliah` varchar(30) NOT NULL,
  `sks` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Algoritma Pemrograman', 2),
(2, 'Basis Data', 0),
(3, 'Kecerdasan Buatan', 3),
(4, 'Pemrograman Web', 3),
(5, 'Struktur Data', 3),
(6, 'Manajemen Proyek Perangkat Lun', 3),
(7, 'Bahasa Indonesia', 2),
(8, 'Bahasa Inggris', 2),
(9, 'Mikroprosesor', 3),
(10, 'Bioteknologi', 3),
(11, 'Anatomi Makhluk Hidup', 3),
(12, 'Matematika Dasar', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL,
  `tanggal_daftar` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `tanggal_daftar`) VALUES
(1, 'idan13', 'syahidan139@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, '2021-11-15'),
(2, 'idan13', 'ajeng@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, '2021-11-15'),
(3, 'raihan', 'raihan@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, '2021-11-15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses_token`
--
ALTER TABLE `akses_token`
  ADD PRIMARY KEY (`id_akses_token`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses_token`
--
ALTER TABLE `akses_token`
  MODIFY `id_akses_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akses_token`
--
ALTER TABLE `akses_token`
  ADD CONSTRAINT `akses_token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
