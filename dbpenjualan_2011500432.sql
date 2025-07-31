-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jul 2025 pada 18.47
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpenjualan_2011500432`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_2011500432`
--

CREATE TABLE `barang_2011500432` (
  `KdBrg` varchar(6) NOT NULL,
  `NmBrg` varchar(50) NOT NULL,
  `Satuan` varchar(10) NOT NULL,
  `HargaBrg` int(6) NOT NULL,
  `Stok` int(3) NOT NULL,
  `KdKategori` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang_2011500432`
--

INSERT INTO `barang_2011500432` (`KdBrg`, `NmBrg`, `Satuan`, `HargaBrg`, `Stok`, `KdKategori`) VALUES
('B101', 'Baju', 'PCS', 30000, 9, '1'),
('B102', 'kemenja', 'PCS', 50000, 20, '1'),
('B201', 'Adiddas', 'PCS', 200000, 14, '2'),
('B202', 'Nike', 'PCS', 150000, 11, '2'),
('B301', 'Topi Converse', 'PCS', 150000, 22, '3'),
('B401', 'Putih', 'PCS', 889, 12, '4'),
('B402', 'Hitam', 'PCS', 7000, 43, '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buktipesan_2011500432`
--

CREATE TABLE `buktipesan_2011500432` (
  `NoPesan` varchar(7) NOT NULL,
  `TglPesan` date NOT NULL,
  `KdPlg` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buktipesan_2011500432`
--

INSERT INTO `buktipesan_2011500432` (`NoPesan`, `TglPesan`, `KdPlg`) VALUES
('BP00001', '2023-06-20', '2'),
('BP00002', '2023-06-21', '2'),
('BP00003', '2023-06-27', '1'),
('BP00004', '2023-06-27', '3'),
('BP00005', '2023-06-30', '3'),
('BP00006', '2023-07-03', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detil_pesan_2011500432`
--

CREATE TABLE `detil_pesan_2011500432` (
  `NoPesan` varchar(7) NOT NULL,
  `KdBrg` varchar(6) NOT NULL,
  `HrgPesan` int(6) NOT NULL,
  `JmlPesan` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detil_pesan_2011500432`
--

INSERT INTO `detil_pesan_2011500432` (`NoPesan`, `KdBrg`, `HrgPesan`, `JmlPesan`) VALUES
('BP00001', 'B101', 30000, 1),
('BP00002', 'B102', 50000, 1),
('BP00003', 'B402', 7000, 1),
('BP00004', 'B402', 7000, 2),
('BP00005', 'B102', 50000, 1),
('BP00006', 'B202', 150000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_2011500432`
--

CREATE TABLE `kategori_2011500432` (
  `KdKategori` varchar(3) NOT NULL,
  `NmKategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_2011500432`
--

INSERT INTO `kategori_2011500432` (`KdKategori`, `NmKategori`) VALUES
('1', 'Pakaian'),
('2', 'Sepatu'),
('3', 'Topi'),
('4', 'Kaos Kaki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan_2011500432`
--

CREATE TABLE `pelanggan_2011500432` (
  `KdPlg` varchar(6) NOT NULL,
  `NmPlg` varchar(50) DEFAULT '50',
  `AlamatPlg` varchar(50) DEFAULT NULL,
  `TelpPlg` varchar(15) DEFAULT '15'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan_2011500432`
--

INSERT INTO `pelanggan_2011500432` (`KdPlg`, `NmPlg`, `AlamatPlg`, `TelpPlg`) VALUES
('1', 'Syahbani Hoir', 'Meruya Selatan', '08150000000'),
('2', 'Budi ', 'Jakarta Selatan', '081222222222'),
('3', 'Luhur', 'Petukangan ', '08726727222'),
('4', 'Heny', 'Sumatra Selatan', '0865461111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas_2011500432`
--

CREATE TABLE `petugas_2011500432` (
  `KdPetugas` varchar(3) NOT NULL,
  `NmPetugas` varchar(50) NOT NULL,
  `AlamatPetugas` varchar(50) NOT NULL,
  `TelpPetugas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas_2011500432`
--

INSERT INTO `petugas_2011500432` (`KdPetugas`, `NmPetugas`, `AlamatPetugas`, `TelpPetugas`) VALUES
('1', 'Hoir', 'Meruya Selatan', '081567777777'),
('2', 'Budi', 'Petukangan Selatan', '088288888888');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ukuran_2011500432`
--

CREATE TABLE `ukuran_2011500432` (
  `kdukuran` varchar(2) NOT NULL,
  `ukuran` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ukuran_2011500432`
--

INSERT INTO `ukuran_2011500432` (`kdukuran`, `ukuran`) VALUES
('1', '42'),
('2', '35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang_2011500432`
--
ALTER TABLE `barang_2011500432`
  ADD PRIMARY KEY (`KdBrg`);

--
-- Indeks untuk tabel `buktipesan_2011500432`
--
ALTER TABLE `buktipesan_2011500432`
  ADD PRIMARY KEY (`NoPesan`);

--
-- Indeks untuk tabel `detil_pesan_2011500432`
--
ALTER TABLE `detil_pesan_2011500432`
  ADD PRIMARY KEY (`NoPesan`,`KdBrg`);

--
-- Indeks untuk tabel `kategori_2011500432`
--
ALTER TABLE `kategori_2011500432`
  ADD PRIMARY KEY (`KdKategori`);

--
-- Indeks untuk tabel `pelanggan_2011500432`
--
ALTER TABLE `pelanggan_2011500432`
  ADD PRIMARY KEY (`KdPlg`);

--
-- Indeks untuk tabel `petugas_2011500432`
--
ALTER TABLE `petugas_2011500432`
  ADD PRIMARY KEY (`KdPetugas`);

--
-- Indeks untuk tabel `ukuran_2011500432`
--
ALTER TABLE `ukuran_2011500432`
  ADD PRIMARY KEY (`kdukuran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
