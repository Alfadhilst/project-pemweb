-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2024 pada 06.54
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_pemweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `ID` int(11) NOT NULL,
  `layanan` varchar(50) NOT NULL,
  `paket` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`ID`, `layanan`, `paket`, `deskripsi`, `harga`, `created_at`) VALUES
(22, 'Bersih rumah', 'Paket dasar', '2 jam pembersihan Cocok untuk apartemen atau rumah kecil Termasuk pembersihan umum dan menyapu/mengepel.', 25000.00, '2024-11-27 13:07:18'),
(23, 'Bersih rumah', 'Paket standar', '4 jam pembersihan Ideal untuk rumah sedang Termasuk semua layanan paket dasar plus pembersihan kamar mandi dan dapur.', 50000.00, '2024-11-27 13:32:46'),
(24, 'Bersih rumah', 'Paket premium', '6-8 jam pembersihan Sempurna untuk rumah besar atau deep cleaning Mencakup semua layanan dengan tambahan pembersihan jendela dan poles lantai', 80000.00, '2024-11-27 13:34:13'),
(25, 'Grooming', 'Paket potong', 'Konsultasi gratis Pencucian rambut dengan produk premium Pijatan kepala yang menenangkan Styling akhir untuk hasil sempurna.', 45000.00, '2024-11-27 13:38:38'),
(26, 'Grooming', 'Paket styling', 'Blow dry dengan berbagai teknik untuk volume dan tekstur Catok untuk rambut lurus berkilau atau curly yang sempurna Styling cepat untuk tampilan profesional.', 60000.00, '2024-11-27 13:39:39'),
(27, 'Grooming', 'Paket lengkap', 'Dapatkan semua layanan yang tersedia.', 90000.00, '2024-11-27 13:40:22'),
(28, 'Laundry', 'Cuci reguler', 'Cuci bersih dengan deterjen premium Pelembut pakaian berkualitas Setrika rapi Lipat dan packaging yang baik dengan Pengerjaan 2-3 hari.', 15000.00, '2024-11-27 13:46:24'),
(29, 'Laundry', 'Cuci kilat', 'Layanan cuci cepat Siap dalam 24 jam Kualitas tetap terjamin Cocok untuk kebutuhan mendadak.', 25000.00, '2024-11-27 13:47:38'),
(30, 'Laundry', 'Cuci khusus', 'Dry cleaning untuk pakaian formal Perawatan khusus untuk kain sensitif Treatment noda membandel Cuci sepatu dan tas.', 35000.00, '2024-11-27 13:49:41'),
(31, 'Grooming hewan', 'Basic grooming', 'Mencakup Mandi, blow dry, sisir bulu.', 50000.00, '2024-11-27 14:08:02'),
(32, 'Grooming hewan', 'Complete grooming', 'Tambahan Basic + potong kuku, bersihkan telinga, sikat gigi.', 75000.00, '2024-11-27 14:08:45'),
(33, 'Grooming hewan', 'Premium grooming', 'Semua layanan Complete + potong/styling bulu, spa treatment.', 100000.00, '2024-11-27 14:09:41'),
(34, 'Antar jemput penitipan hewan', 'Paket reguler', 'Mencakup penginapan, makan 3x sehari, dan waktu bermain.', 100000.00, '2024-11-27 14:11:56'),
(35, 'Antar jemput penitipan hewan', 'Paket premium', 'Tambahan grooming, camilan khusus, dan update foto/video harian.', 150000.00, '2024-11-27 14:12:50'),
(36, 'Antar jemput penitipan hewan', 'Paket VIP', 'Semua layanan premium + kamar pribadi mewah & perhatian ekstra.', 200000.00, '2024-11-27 14:13:39'),
(37, 'Pemeriksaan kesehatan', 'Paket umum', 'Mencakup Pemeriksaan fisik lengkap, Pengukuran tekanan darah, Pemeriksaan detak jantung dan paru-paru, Cek gula darah, dan Cek kolesterol.', 55000.00, '2024-11-27 14:14:34'),
(38, 'Pemeriksaan kesehatan', 'Paket diagnostik', 'Proses EKG (elektrokardiogram), Pengambilan sampel darah, Tes urin, dan Rontgen portable (untuk kasus tertentu).', 85000.00, '2024-11-27 14:15:16'),
(39, 'Pemeriksaan kesehatan', 'Paket darurat', 'Perawatan luka, Terapi infus, Injeksi obat, hingga Fisioterapi.', 120000.00, '2024-11-27 14:15:49'),
(40, 'Konsultasi online', 'Paket basic', 'Mencakup 4x konsultasi video dengan dokter umum (30 menit/sesi), Chat dengan dokter umum 24/7, Pemeriksaan gejala digital dengan AI, Resep digital, Rekam medis digital, dan Pengingat jadwal konsultasi', 45000.00, '2024-11-27 14:32:05'),
(41, 'Konsultasi online', 'Paket family', 'Semua fitur Paket BASIC + Berlaku untuk 4 anggota keluarga, konsultasi video dengan dokter umum, konsultasi dengan dokter spesialis, Gratis pengiriman obat (max. 10km), Konsultasi ahli gizi, dan Monitoring kesehatan keluarga', 90000.00, '2024-11-27 14:33:00'),
(42, 'Konsultasi online', 'Paket premium', 'Semua fitur Paket FAMILY + Berlaku untuk 6 anggota keluarga, Prioritas antrian konsultasi, Medical check-up di rumah 1x/bulan, Gratis pengiriman obat (max. 25km), Personal health assistant 24/7, dan Laporan kesehatan bulanan.', 150000.00, '2024-11-27 14:33:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`ID`, `email`, `password`, `name`, `created_at`) VALUES
(1, 'fafa@gmail.com', '$2y$10$898tpJnF2t2Own4f/0TtluBpTOnIaRWBgTdzAdABMjhXJxCVOw6qK', 'fafa', '2024-11-24'),
(2, 'ihsan@gmail.com', '$2y$10$1Uq5Uh6A/xu.p76qRsrD/uDyACg2HPVTEn2by3/kQtr4N3ZPrySQe', 'ihsan', '2024-11-26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
