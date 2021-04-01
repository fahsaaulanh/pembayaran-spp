-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2021 pada 00.05
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pembayarandb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kompetensi_keahlian` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `kompetensi_keahlian`, `created_at`, `updated_at`) VALUES
(1, 'RPL X-1', 'Rekayasa Perangkat Lunak', '2021-02-27 20:22:54', '2021-02-27 20:22:54'),
(2, 'RPL X-2', 'Rekayasa Perangkat Lunak', '2021-02-27 20:23:21', '2021-02-27 20:23:21'),
(3, 'RPL X-3', 'Rekayasa Perangkat Lunak', '2021-02-27 20:24:02', '2021-02-27 20:24:02'),
(4, 'RPL X-4', 'Rekayasa Perangkat Lunak', '2021-02-27 20:24:25', '2021-02-27 20:24:25'),
(5, 'RPL X-5', 'Rekayasa Perangkat Lunak', '2021-02-27 20:24:42', '2021-02-28 05:35:59'),
(6, 'TKJ X-1', 'Teknik Komputer Jaringan', '2021-02-27 20:25:25', '2021-02-27 20:25:25'),
(7, 'TKJ X-2', 'Teknik Komputer Jaringan', '2021-02-27 20:26:36', '2021-02-27 20:26:36'),
(9, 'TKJ X-3', 'Teknik Komputer Jaringan', '2021-02-28 02:24:47', '2021-02-28 02:24:47'),
(10, 'TKJ X-4', 'Teknik Komputer Jaringan', '2021-02-28 02:25:32', '2021-02-28 02:25:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_27_030035_buat_tabel_kelas', 2),
(5, '2021_02_27_030352_buat_tabel_spp', 3),
(6, '2021_02_27_030532_buat_tabel_siswa', 4),
(7, '2021_02_27_031620_buat_tabel_pembayaran', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yogapratama@smkwikrama.sch.id', '$2y$10$E1Tmd87Q3IHv8IZH/M367eHH4Kkav6tJkfO40xiZrMXbU6KjBAKkC', '2021-02-28 02:29:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_bayar` datetime NOT NULL,
  `nisn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_spp` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `tgl_bayar`, `nisn`, `id_spp`, `id_user`, `jumlah_bayar`, `created_at`, `updated_at`) VALUES
(2, '2021-03-03 00:00:00', '424242', 1, 1, 350000, '2021-03-02 08:01:58', '2021-03-02 08:01:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `nisn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `id_spp` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`nisn`, `nis`, `nama`, `alamat`, `no_telp`, `id_kelas`, `id_spp`, `id_user`, `created_at`, `updated_at`) VALUES
('00464640', '11907136', 'Siti Iswanti', 'Jl. Cisarua , Bogor - Jawa Barat', '085780700419', 1, 1, 9, '2021-02-28 05:34:18', '2021-02-28 05:34:18'),
('424242', '11907135', 'Devni Kusnia Wati', 'Jl. Cigombong, Bogor', '085780700419', 1, 1, 11, '2021-03-02 04:13:24', '2021-03-02 04:13:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spps`
--

CREATE TABLE `spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `spps`
--

INSERT INTO `spps` (`id`, `tahun`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 2021, 350000, '2021-02-28 02:16:06', '2021-02-28 02:16:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hak_akses` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `hak_akses`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fahsa Aula', 'fahsaaulanasaulhusna@smkwikrama.sch.id', 'administrator', NULL, '$2y$10$hir.7zpDt21PWRovLAjQgOgwXBY1ymjKpT8LR5aWcTcDPLQphQXGy', 'iyyYnFK0TDO83AmVKvcTGkfE39Xy2HPpsYalGvjZxpqvZz8YYhBlBwaC2Zq6', '2021-02-26 19:50:27', '2021-02-26 19:50:27'),
(2, 'Yoga Pratama', 'yogapratama@smkwikrama.sch.id', 'siswa', NULL, '$2y$10$nSgXPeYR1J5rLWV108.Qaeke7ZMIRgI3aJXxPXTd7HZmzDwXYMk5O', NULL, '2021-02-28 01:56:12', '2021-02-28 01:56:12'),
(3, 'Fahsa Aula', 'fahsaaula@gmail.com', 'petugas', NULL, '$2y$10$TpSZukBly5d.zvEGuR.ON.sgGk9bqDN/jY7QJHLivo8CGU6obCHoW', NULL, '2021-02-28 02:02:05', '2021-02-28 02:38:25'),
(4, 'Fahsa Aula Nasaul Husna', 'fahsaaula@smkwikrama.sch.id', 'siswa', NULL, '$2y$10$73HtSFkVBYYVnp9Enu4w4.ZDx8hYH1DGOhwbU9T/Yq2BCK9nCg.7i', NULL, '2021-02-28 04:47:04', '2021-02-28 04:47:04'),
(5, 'Fahsa', 'fahsa@gmail.com', 'siswa', NULL, '$2y$10$PKmjt.kT9NLo8adaMKSXp.tKqTcEaMm9Quc5B/PhOHeRQDEoNptoS', NULL, '2021-02-28 04:57:59', '2021-02-28 04:57:59'),
(6, 'Siti Iswanti', 'sitiiswanti@smkwikrama.sch.id', 'siswa', NULL, '$2y$10$FhGqy/yDYg0ClLph5bq1DugB/YrCzh3lftvjxcaQ9MMJJyK/iaAtu', NULL, '2021-02-28 05:24:18', '2021-02-28 05:24:18'),
(7, 'Siti Iswanti', 'sitiiswanti@gmail.com', 'siswa', NULL, '$2y$10$rGobRUkrUphLvEwEOlZVLOg4M0aFevkJyRdyYFmNmJciNMKVk2kEu', NULL, '2021-02-28 05:28:56', '2021-02-28 05:28:56'),
(8, 'Siti Iswanti', 'iswanti@smkwikrama.sch.id', 'siswa', NULL, '$2y$10$.g.qnvXoAuHiiQcQAm.zOOM5qAD74IWidMVYwWuB06i/zAEzml.fq', NULL, '2021-02-28 05:30:42', '2021-02-28 05:30:42'),
(9, 'Siti Iswanti', 'stiswanti@smkwikrama.sch.id', 'siswa', NULL, '$2y$10$XhwvtmfD0bZMgI9vYB812OCsgR6Xz5YiC2jZvlVkdFz7z8ugxqsR6', NULL, '2021-02-28 05:34:18', '2021-02-28 05:34:18'),
(10, 'Zahrani', 'zahrani@smkwikrama.sch.id', 'siswa', NULL, '$2y$10$EF31QBYc7Js5Yi5xUmLzZOF2PY9dFNxrkFTY9fBdDjSj8jf5Hkp6e', NULL, '2021-02-28 07:51:04', '2021-02-28 07:51:04'),
(11, 'Devni Kusnia Wati', 'devnikusnia@smkwikrama.sch.id', 'siswa', NULL, '$2y$10$QR9xx147N5FSTNSecUDOLuIwkeoJZxw4VVQx63QYl5hiUdpIpTuS6', NULL, '2021-03-02 04:13:24', '2021-03-02 04:13:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayarans_nisn_foreign` (`nisn`),
  ADD KEY `pembayarans_id_spp_foreign` (`id_spp`),
  ADD KEY `pembayarans_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `siswas_id_user_unique` (`id_user`),
  ADD KEY `siswas_id_kelas_foreign` (`id_kelas`),
  ADD KEY `siswas_id_spp_foreign` (`id_spp`);

--
-- Indeks untuk tabel `spps`
--
ALTER TABLE `spps`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `spps`
--
ALTER TABLE `spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD CONSTRAINT `pembayarans_id_spp_foreign` FOREIGN KEY (`id_spp`) REFERENCES `spps` (`id`),
  ADD CONSTRAINT `pembayarans_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pembayarans_nisn_foreign` FOREIGN KEY (`nisn`) REFERENCES `siswas` (`nisn`);

--
-- Ketidakleluasaan untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `siswas_id_spp_foreign` FOREIGN KEY (`id_spp`) REFERENCES `spps` (`id`),
  ADD CONSTRAINT `siswas_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
