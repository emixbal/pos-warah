-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.22-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table tokoku.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.kategori: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
	(1, 'Snack', '2022-03-16 22:59:19', '2022-03-16 22:59:19'),
	(2, 'Minuman', '2022-03-16 22:59:26', '2022-03-16 22:59:26');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.member
CREATE TABLE IF NOT EXISTS `member` (
  `id_member` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_member`),
  UNIQUE KEY `member_kode_member_unique` (`kode_member`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.member: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
	(1, '00001', 'Asmo', 'Surakarta', '082145001972', '2022-03-16 23:09:16', '2022-03-16 23:09:16');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.migrations: ~21 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
	(7, '2021_03_05_195441_buat_kategori_table', 1),
	(8, '2021_03_05_195949_buat_produk_table', 1),
	(9, '2021_03_05_200515_buat_member_table', 1),
	(10, '2021_03_05_200706_buat_supplier_table', 1),
	(11, '2021_03_05_200841_buat_pembelian_table', 1),
	(12, '2021_03_05_200845_buat_pembelian_detail_table', 1),
	(13, '2021_03_05_200853_buat_penjualan_table', 1),
	(14, '2021_03_05_200858_buat_penjualan_detail_table', 1),
	(15, '2021_03_05_200904_buat_setting_table', 1),
	(16, '2021_03_05_201756_buat_pengeluaran_table', 1),
	(17, '2021_03_11_225128_create_sessions_table', 1),
	(18, '2021_03_24_115009_tambah_foreign_key_to_produk_table', 1),
	(19, '2021_03_24_131829_tambah_kode_produk_to_produk_table', 1),
	(20, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
	(21, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.pembelian
CREATE TABLE IF NOT EXISTS `pembelian` (
  `id_pembelian` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.pembelian: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
	(1, 1, 72, 279600, 0, 279600, '2022-03-16 23:19:45', '2022-03-16 23:20:28');
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.pembelian_detail
CREATE TABLE IF NOT EXISTS `pembelian_detail` (
  `id_pembelian_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.pembelian_detail: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `pembelian_detail` DISABLE KEYS */;
INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_beli`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, 850, 24, 20400, '2022-03-16 23:19:53', '2022-03-16 23:19:58'),
	(2, 1, 5, 5400, 48, 259200, '2022-03-16 23:20:03', '2022-03-16 23:20:15');
/*!40000 ALTER TABLE `pembelian_detail` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.pengeluaran
CREATE TABLE IF NOT EXISTS `pengeluaran` (
  `id_pengeluaran` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.pengeluaran: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `pengeluaran` DISABLE KEYS */;
INSERT INTO `pengeluaran` (`id_pengeluaran`, `deskripsi`, `nominal`, `created_at`, `updated_at`) VALUES
	(1, 'Beli Token Listrik', 250000, '2022-03-16 23:21:30', '2022-03-16 23:21:30');
/*!40000 ALTER TABLE `pengeluaran` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `id_penjualan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.penjualan: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
	(2, NULL, 3, 11000, 0, 11000, 15000, 1, '2022-03-16 23:16:06', '2022-03-16 23:16:40'),
	(3, NULL, 4, 9000, 0, 9000, 10000, 1, '2022-03-16 23:16:46', '2022-03-16 23:17:16');
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.penjualan_detail
CREATE TABLE IF NOT EXISTS `penjualan_detail` (
  `id_penjualan_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.penjualan_detail: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `penjualan_detail` DISABLE KEYS */;
INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
	(1, 2, 6, 3000, 1, 0, 3000, '2022-03-16 23:16:13', '2022-03-16 23:16:13'),
	(2, 2, 5, 7000, 1, 0, 7000, '2022-03-16 23:16:18', '2022-03-16 23:16:18'),
	(3, 2, 1, 1000, 2, 0, 2000, '2022-03-16 23:16:23', '2022-03-16 23:16:25'),
	(4, 3, 2, 2000, 1, 0, 2000, '2022-03-16 23:16:54', '2022-03-16 23:16:54'),
	(5, 3, 7, 3000, 1, 0, 3000, '2022-03-16 23:17:01', '2022-03-16 23:17:01'),
	(6, 3, 4, 2000, 2, 0, 4000, '2022-03-16 23:17:06', '2022-03-16 23:17:08');
/*!40000 ALTER TABLE `penjualan_detail` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.personal_access_tokens: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_kategori` int(10) unsigned NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`),
  UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  KEY `produk_id_kategori_foreign` (`id_kategori`),
  CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.produk: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
	(1, 1, 'P000001', 'Taro Kecil', 'Taro', 800, 0, 1000, 46, '2022-03-16 23:04:00', '2022-03-16 23:16:40'),
	(2, 1, 'P000002', 'Taro Besar', 'Taro', 1700, 0, 2000, 47, '2022-03-16 23:04:29', '2022-03-16 23:17:16'),
	(3, 1, 'P000003', 'Chiki Snack Balls', 'Chiki', 850, 0, 1000, 48, '2022-03-16 23:05:49', '2022-03-16 23:20:28'),
	(4, 1, 'P000004', 'Chitato', 'Chitato', 1850, 0, 2000, 22, '2022-03-16 23:06:18', '2022-03-16 23:17:16'),
	(5, 1, 'P000005', 'Oreo', 'Oreo', 5400, 0, 7000, 77, '2022-03-16 23:07:12', '2022-03-16 23:20:28'),
	(6, 2, 'P000006', 'Aqua 650 ml', 'Aqua', 2700, 0, 3000, 47, '2022-03-16 23:08:21', '2022-03-16 23:16:40'),
	(7, 2, 'P000007', 'Le Minerale 650 ml', 'Le Minerale', 2600, 0, 3000, 29, '2022-03-16 23:08:51', '2022-03-16 23:17:16');
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.sessions: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('XWf25I1RoCxHJ1nrl89lRCqTaS6cBs0b8zmS8fQn', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoicGtOVlRFdlltQmpFTklIZ3EyVVp0U1dueHV3N1RRcHBCMFB3bVNxUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sYXBvcmFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGhvQjdPdFNGUEdLOGlCZmFBdkloR085d0VzMDBhNUZJazZuZXFVMGlHL3MwaXhDZDVDSXgyIjtzOjEyOiJpZF9wZW5qdWFsYW4iO2k6NjtzOjEyOiJpZF9wZW1iZWxpYW4iO2k6MTtzOjExOiJpZF9zdXBwbGllciI7czoxOiIxIjt9', 1647474558);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.setting
CREATE TABLE IF NOT EXISTS `setting` (
  `id_setting` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.setting: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
	(1, 'Toko Ku', 'Jl. Kibandang Samaran Ds. Slangit', '081234779987', 1, 5, '/img/logo.png', '/img/member.png', NULL, NULL);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.supplier: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
	(1, 'PT Mayora TBK', 'Surakarta', '085123456456', '2022-03-16 23:18:41', '2022-03-16 23:18:41'),
	(2, 'PT Aqua Golden Misisipi', 'Klaten', '08123456789', '2022-03-16 23:19:14', '2022-03-16 23:19:14');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

-- membuang struktur untuk table tokoku.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel tokoku.users: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$hoB7OtSFPGK8iBfaAvIhGO9wEs00a5FIk6neqU0iG/s0ixCd5CIx2', '/img/user.jpg', 1, NULL, NULL, NULL, NULL, NULL, '2022-03-16 01:31:15', '2022-03-16 01:31:15'),
	(2, 'Kasir 1', 'kasir1@gmail.com', NULL, '$2y$10$dAHn7JT4cCetnNPrM.8SF.g7VdafUeMUWaAMNdI7kyUmarpQxokv.', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2022-03-16 01:31:15', '2022-03-16 01:31:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
