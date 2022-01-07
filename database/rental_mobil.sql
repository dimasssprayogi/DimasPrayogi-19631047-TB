-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2022 pada 05.21
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `id_mobil` int(20) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `harga` int(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merek`, `tipe`, `tahun`, `nopol`, `harga`, `status`) VALUES
(19, 'Daihatsu', 'Vios', '2014', 'B 5', 400000, 'Tersedia'),
(29, 'Lamborghini', 'Veneno', '2018', 'B 16 A', 11000000, 'Tersedia'),
(21, 'Honda', 'Jazz', '2017', 'B 3 RI', 500000, 'Tersedia'),
(17, 'Suzuki', 'Eskudo', '2012', 'B 4', 600000, 'Tersedia'),
(16, 'Toyota', 'Avanza', '2014', 'B 2', 400000, 'Tersedia'),
(31, 'VW', 'Combi', '2008', 'B 4', 600000, 'Tersedia'),
(28, 'Mitsubishi', 'Lancer Evo', '2017', 'B 14', 700000, 'Tersedia'),
(30, 'Toyota', 'Alphard', '2017', 'D 4 RY', 600000, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nik` int(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `nik`, `alamat`, `telp`, `email`) VALUES
(14, 'Qori', 0, 'Bekasi', '07519400390', 'Qori@gmail.com'),
(13, 'Glenn', 0, 'Cicalengka', '085289388949', 'jksolslopdm'),
(10, 'Ismail', 0, 'Tasik', '081353666345', 'mail.com'),
(17, 'Sidiq', 0, 'Padang	', '085276878499', 'Shidiq.com'),
(18, 'Qoriah Indah Susilow', 0, 'Jl AH Nasution, Cibiru, Bandung', '081317812207', 'Qoriahindah@gmail'),
(20, 'ihsan miftahul huda', 0, 'bandung', '089232033927', 'mask@gmail.com'),
(21, 'ihsan miftahul huda', 0, 'Cibiru', '089232033927', 'mask@gmail.com'),
(22, 'alvito', 0, 'kajsdhakdhkadhkawud	', '085799504760', 'alvito@gmail.com'),
(23, 'Ronal', 0, 'Pondok gede', '089765121907', 'ronal@gmail.com'),
(24, 'Ronal', 0, 'Pondok gede', '089765121907', 'ronal@gmail.com'),
(25, 'Alvito', 0, 'Jl. Tebet	', '085182731827', 'alvito@gmail.com'),
(26, 'Alvito', 0, 'Jl. Tebet	', '085182731827', 'alvito@gmail.com'),
(27, 'Ronaldo', 0, 'JL. Pondok Gede', '0878787878787878', 'ronaldo@gmail.com'),
(28, 'Ronaldo', 0, 'JL. Pondok Gede', '0878787878787878', 'ronaldo@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `peminjam` varchar(20) NOT NULL,
  `nopol` varchar(20) DEFAULT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` date DEFAULT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `lama` varchar(10) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  `denda` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `nopol`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`, `denda`) VALUES
(30, 'Alvito', 'D 3 RY', '500000', '2019-12-27', '2019-12-31', '4', '2000000', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
(6, 'admin', 'admin', 'admin', 'Admin'),
(7, 'staff', 'staff', 'staff', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `id_mobil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  MODIFY `id_peminjam` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
