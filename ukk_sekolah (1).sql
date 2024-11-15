-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Nov 2024 pada 04.27
-- Versi server: 8.0.30
-- Versi PHP: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date NOT NULL,
  `tanggal_post_agenda` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `deskripsi`, `tanggal`, `tanggal_post_agenda`, `status`, `kategori_id`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'Ujikom PPLG 2025', 'Uji Kompetensi (Ujikom) merupakan salah satu syarat wajib kelulusan bagi siswa/i kelas 12 di SMKN 4 Kota Bogor, tak terkecuali jurusan Pengembangan Perangkat Lunak dan Gim (PPLG). Ujikom dilaksanakan total 5 hari dibagi menjadi. 21-22 November 2024 sidang ujikom yang dibagi 2 sesi dan 4 rombel, sedangkan tanggal 25, 26, 28 November 2024 ujikom yang diuji oleh pihak eksternal yaitu PT. Bonet. Semoga seluruh siswa/i kelas 12 yang sedang ujikom dimudahkan dan lulus dengan hasil memuaskan, Aamiin..😊', '2024-11-21', '2024-11-01', 'active', 2, 1, '2024-11-09 02:48:05', '2024-11-09 05:38:18'),
(2, 'Pelantikan P3R', 'Pelantikan gabungan ekstrakurikuler PMR, Paskibra, Pramuka, dan Rohis merupakan acara setiap satu tahun sekali. Seperti PMR contohnya, pelantikan diadakan dengan tujuan melantik anggota baru kelas 10 dan untuk tahun ini cukup spesial. Karena pelantikan dibarengi dengan pemilihan ketua umum PMR dan serah terima jabatan (sertijab).', '2024-12-06', '2024-10-06', 'active', 2, 1, '2024-11-09 02:48:34', '2024-11-09 05:34:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda_hashtag`
--

CREATE TABLE `agenda_hashtag` (
  `id` bigint UNSIGNED NOT NULL,
  `agenda_id` bigint UNSIGNED NOT NULL,
  `hashtag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('02d1eba317a4d41192aad5f424f154ec', 'i:1;', 1731552361),
('02d1eba317a4d41192aad5f424f154ec:timer', 'i:1731552361;', 1731552361),
('3b1e2e11d9cc4611ce4643d174dee5bb', 'i:1;', 1731395818),
('3b1e2e11d9cc4611ce4643d174dee5bb:timer', 'i:1731395818;', 1731395818),
('483e8180cf4678cf1292d8c46d0cbd6b', 'i:1;', 1731393612),
('483e8180cf4678cf1292d8c46d0cbd6b:timer', 'i:1731393612;', 1731393612),
('7b5aa08abdfaf4366b91a5eb83aa1e9f', 'i:1;', 1731487349),
('7b5aa08abdfaf4366b91a5eb83aa1e9f:timer', 'i:1731487349;', 1731487349),
('bba6024639ffe6ced9b2146ad5871ab0', 'i:1;', 1731394085),
('bba6024639ffe6ced9b2146ad5871ab0:timer', 'i:1731394085;', 1731394085);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `photo_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'halo', '2024-11-09 03:01:04', '2024-11-09 03:01:04'),
(5, 1, 3, 'keren banget sih pmr❤️', '2024-11-12 00:16:24', '2024-11-12 00:16:24'),
(6, 1, 2, 'apa', '2024-11-13 02:13:57', '2024-11-13 02:13:57'),
(7, 1, 2, 'keren', '2024-11-13 02:19:52', '2024-11-13 02:19:52'),
(8, 1, 2, 'wahh', '2024-11-13 02:26:22', '2024-11-13 02:26:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `is_map` tinyint(1) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galery`
--

INSERT INTO `galery` (`id`, `judul`, `deskripsi`, `is_map`, `tanggal`, `status`, `kategori_id`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'Ekstrakurikuler', 'Galery dari Ekstrakurikuler PMR, Pramuka, Paskibra, Rohis, Volly, Basket, Futsal, Paduan Suara, Akustik, Seni Tari,', 0, '2024-11-02', 'active', 3, 1, '2024-11-09 02:50:18', '2024-11-09 05:44:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery_hashtag`
--

CREATE TABLE `galery_hashtag` (
  `id` bigint UNSIGNED NOT NULL,
  `galery_id` bigint UNSIGNED NOT NULL,
  `hashtag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hashtags`
--

CREATE TABLE `hashtags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `deskripsi`, `image`, `tanggal`, `status`, `kategori_id`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'Musyawarah Kerja OSIS 2', 'Musyawarah Kerja OSIS (Muker) merupakan salah satu kegiatan wajib setiap pergantian kepengurusan OSIS yang bekerja sama dengan semua ekstrakurikuler di SMKN 4 Kota Bogor. Nantinya hasil dari program kerja (proker) yang dibuat dan disepakati oleh OSIS dan perwakilan ekskul akan dilaksanakan oleh seluruh siswa SMKN 4 Kota Bogor. Diharapkan dari hasil Muker ini, dapat memberikan dampak positif bagi seluruh siswa SMKN 4 Kota Bogor', 'informasi/lZFgQ42lCOgS7OF5Fs136XUeS7kUHIK2AgKmO9v8.jpg', '2024-11-07', 'aktif', 1, 1, '2024-11-09 02:46:53', '2024-11-14 05:41:59'),
(2, 'Lomba Fruit Tea', 'Lomba fashion Show yang diadakan oleh fruit tea diikuti oleh semua kelas dan eksktrakurikuler, termasuk Palang Merah Remaja (PMR) dan Pramuka. Dalam foto tersebut yang mewakili PMR adalah Jibran Syam Rhayzan (XI TO 1), Intan Kirani Febiola (XI PPLG 2), dan Salsya Aprilian (XI PPLG 3). Dalam lomba yang diadakan Rabu, 6 November 2024 ini, menampilkan outfit terbaik sesuai tema rasa fruit tea yang nantinya akan mewakili sekolah dalam lomba fruit tea tingkat nasional', 'informasi/YqRQ5UayyMrRwhDWcTbC1Msp0Pm0HhDH07kSa0zR.jpg', '2024-11-06', 'active', 1, 1, '2024-11-09 02:47:32', '2024-11-09 05:31:39'),
(3, 'hani gamon', 'hani diajak move on dari notipu gamau gaes', 'informasi/7h5soLClfN7dn3RqaCzTpOYOh8SW2uj3TdZEZqKY.jpg', '2024-11-10', 'active', 1, 1, '2024-11-09 23:12:28', '2024-11-09 23:12:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_hashtag`
--

CREATE TABLE `informasi_hashtag` (
  `id` bigint UNSIGNED NOT NULL,
  `informasi_id` bigint UNSIGNED NOT NULL,
  `hashtag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'INFORMASI', 'informasi berisi berita, pengumuman penting, dan prestasi yang diinfokan secara aktual', '2024-11-09 02:45:34', '2024-11-09 05:23:51'),
(2, 'AGENDA', 'agenda berisi jadwal kegiatan yang akan berlangsung di smkn 4 kota bogor', '2024-11-09 02:45:56', '2024-11-09 05:23:13'),
(3, 'GALERY', 'galery berisi foto-foto smkn 4 kota bogor yang diabadikan setiap momennya', '2024-11-09 02:46:12', '2024-11-09 05:22:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `photo_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id`, `photo_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 1, 1, '2024-11-10 02:52:07', '2024-11-10 02:52:07'),
(10, 1, 3, '2024-11-12 00:16:06', '2024-11-12 00:16:06'),
(11, 1, 2, '2024-11-13 02:26:13', '2024-11-13 02:26:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_21_000000_add_last_login_at_to_users_table', 1),
(5, '2024_09_28_074550_create_petugas_table', 1),
(6, '2024_09_28_074734_create_profiles_table', 1),
(7, '2024_09_29_075015_add_two_factor_columns_to_users_table', 1),
(8, '2024_09_29_085312_create_personal_access_tokens_table', 1),
(9, '2024_09_30_025852_create_kategoris_table', 1),
(10, '2024_09_30_025900_create_informasis_table', 1),
(11, '2024_09_30_025904_create_agendas_table', 1),
(12, '2024_09_30_025907_create_galeries_table', 1),
(13, '2024_09_30_153601_create_sliders_table', 1),
(14, '2024_10_03_131535_create_photos_table', 1),
(15, '2024_10_08_114612_create_likes_table', 1),
(16, '2024_10_08_114630_create_comments_table', 1),
(17, '2024_10_14_123759_add_role_to_users_table', 1),
(18, '2024_11_05_124439_create_views_table', 1),
(19, '2024_11_05_125423_create_replies_table', 1),
(20, 'create_hashtags_and_relations_table', 1),
(21, 'create_tags_and_taggables_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', 'a9c37bf4623d827b5e53cf90235656a6a62f3b30bf04b27fbfc70f198ebe4ad3', '[\"*\"]', '2024-11-09 02:59:55', NULL, '2024-11-09 02:57:02', '2024-11-09 02:59:55'),
(17, 'App\\Models\\User', 1, 'API TOKEN', 'a2b3ae3d7bc6c948d6fff7262cd67b9f742bb2e839301230177dbde4a1e809db', '[\"*\"]', NULL, NULL, '2024-11-14 00:20:32', '2024-11-14 00:20:32'),
(18, 'App\\Models\\User', 1, 'API TOKEN', 'efd5fd3eab68ec65bda83b5422349aa7cba9b011b15fccc0fefcfbacbb6b4d70', '[\"*\"]', NULL, NULL, '2024-11-14 00:44:05', '2024-11-14 00:44:05'),
(19, 'App\\Models\\User', 1, 'API TOKEN', 'b70c5115990ca35ab658dd594201674c72bc20a68469e3854f7709ab63d32984', '[\"*\"]', NULL, NULL, '2024-11-14 01:00:52', '2024-11-14 01:00:52'),
(20, 'App\\Models\\User', 1, 'API TOKEN', '0df9baecc5116f4f8142bc2404fb6bbcd17c40baa482e7b0e25c7b90e27b6523', '[\"*\"]', NULL, NULL, '2024-11-14 01:01:10', '2024-11-14 01:01:10'),
(21, 'App\\Models\\User', 1, 'API TOKEN', 'be62e3eaac1056c3a7be0224ec5581d80fef20b34d17e24214fb5666211fc00c', '[\"*\"]', NULL, NULL, '2024-11-14 01:10:12', '2024-11-14 01:10:12'),
(22, 'App\\Models\\User', 1, 'API TOKEN', '833a9c94ca48b67579cb575206a2175cbc1921d7bf950ee6d59d57c64334e8c8', '[\"*\"]', NULL, NULL, '2024-11-14 01:10:15', '2024-11-14 01:10:15'),
(23, 'App\\Models\\User', 1, 'API TOKEN', '2828c1bacf7be8d0813cc0b4be26ad4bc7cc152e6bc8e1d4c82e5e92d4ea8b0d', '[\"*\"]', NULL, NULL, '2024-11-14 01:13:20', '2024-11-14 01:13:20'),
(26, 'App\\Models\\User', 1, 'API TOKEN', '15c36dcd81a53310b2f3e238f847394a6fadd572a80062d797f6a0fcf6f6f42f', '[\"*\"]', NULL, NULL, '2024-11-14 01:18:51', '2024-11-14 01:18:51'),
(29, 'App\\Models\\User', 2, 'API TOKEN', '4ed1beaaa89ec520a1797789bd29720d7bbd00e1ad6dd7a2052a72fce0f62b74', '[\"*\"]', NULL, NULL, '2024-11-14 01:23:17', '2024-11-14 01:23:17'),
(30, 'App\\Models\\User', 1, 'API TOKEN', '19f25873fb231145245d51aae435400c0febccf1a8b25d5cd8bc96718c105633', '[\"*\"]', NULL, NULL, '2024-11-14 01:23:53', '2024-11-14 01:23:53'),
(31, 'App\\Models\\User', 1, 'API TOKEN', '483a5e471e1c562b10dcdc0ee20c752aa90b841f397f92e95b799d1550fe73d0', '[\"*\"]', NULL, NULL, '2024-11-14 01:38:20', '2024-11-14 01:38:20'),
(32, 'App\\Models\\User', 1, 'API TOKEN', 'aad39e9fe3bbc0eb23729819c16ea154c629c63cc099d36b375b1020d04368e4', '[\"*\"]', NULL, NULL, '2024-11-14 04:55:39', '2024-11-14 04:55:39'),
(33, 'App\\Models\\User', 1, 'API TOKEN', '9791e352b6cb04106a53635d05e888ad959594c407a73212f15e6ec8c3f7dc20', '[\"*\"]', NULL, NULL, '2024-11-14 05:04:58', '2024-11-14 05:04:58'),
(34, 'App\\Models\\User', 1, 'API TOKEN', '5488ba3f7396b8720910c2ea4f85dcf4aff817008bb373e95160ae2f0c97e281', '[\"*\"]', NULL, NULL, '2024-11-14 05:11:04', '2024-11-14 05:11:04'),
(35, 'App\\Models\\User', 1, 'API TOKEN', 'd9e860a9eddee288afc6330bd8045d52556abfb71e2245a6d133ba54bbe6c52d', '[\"*\"]', NULL, NULL, '2024-11-14 05:28:10', '2024-11-14 05:28:10'),
(36, 'App\\Models\\User', 1, 'API TOKEN', '918960d616aaa301649521fd38c5bbf6a7badfc2fcdc4cac62afe3c748ced85e', '[\"*\"]', NULL, NULL, '2024-11-14 05:29:03', '2024-11-14 05:29:03'),
(37, 'App\\Models\\User', 1, 'API TOKEN', 'daa374771ffcfdbb4cb98abd3e2fd004211570646dd5532f5e51dc51140a1e70', '[\"*\"]', NULL, NULL, '2024-11-14 05:59:26', '2024-11-14 05:59:26'),
(38, 'App\\Models\\User', 2, 'API TOKEN', '4e8b757cc955f0af5ab474889ea41c999a1194a281b9dd01c4114c807f3a506b', '[\"*\"]', NULL, NULL, '2024-11-14 20:36:57', '2024-11-14 20:36:57'),
(39, 'App\\Models\\User', 2, 'API TOKEN', '6aec9560072d4cd5d96bb0fea9e09bb5e491fd0f72290d1ece3b7044bc9b6583', '[\"*\"]', '2024-11-14 20:41:10', NULL, '2024-11-14 20:39:34', '2024-11-14 20:41:10'),
(40, 'App\\Models\\User', 2, 'API TOKEN', 'ed0b894265b290116e4cf045b720814e7fb0047aa685a8bb758b04845124cda2', '[\"*\"]', '2024-11-14 21:15:27', NULL, '2024-11-14 21:08:30', '2024-11-14 21:15:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `galery_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`id`, `galery_id`, `image`, `judul`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/photos/m34t6B14LWgCF0Fx0FHUy8t5h5yRc7b3aDCv8Qv8.jpg', 'Bidang LCT PMR', 1, '2024-11-09 02:51:38', '2024-11-09 05:45:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photo_hashtag`
--

CREATE TABLE `photo_hashtag` (
  `id` bigint UNSIGNED NOT NULL,
  `photo_id` bigint UNSIGNED NOT NULL,
  `hashtag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `replies`
--

CREATE TABLE `replies` (
  `id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `user_id`, `reply`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Halo User! tertarik masuk bidang LCT di PMR?', '2024-11-09 05:58:40', '2024-11-09 05:58:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4Spo33oObHyUaAyxWYWBdFMtxTNQisHQw4Vp1X8f', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFRySGk3UEJTOVhkZDhqRzE0U0NCbUsxRE5uTGRBdnhRNEdYM1hvdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493797),
('6HGK0eQSeYp08ACYV8OZFVgIIPjSktrcKGCrUriN', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGxBTlRpTHNBYUpTcHdCQUNUbkltNlhWOG5DRzFYVTFSWmVUcHViUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493618),
('7cmhaRCeHyflTOkSv4qDmxlrwizr8TjHin3jyOOb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidW1mM3Rmb3UxSnFwbVpmQ2R1akpEUWtRNlVvQ1lCODR4a3JmOU1uQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731585395),
('aH0mha8kuLRWUSb0iGPr1lybSx9TdwtK5tuAo9CI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0JtcTRVWkpDMjZWNUtpVG44QUdQM1ZXMUFDOUkzdHk4bFVrRmZzYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731560243),
('ES96wL8wfQ1wNlhcKiMisfbj0EBl46QyKMoggKVz', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDQzeDNxa281Mm9UeWJ0eXkxWGh3b1RqdjdPQTI3NFd6WTMwREZYYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493237),
('jx0rT3g52jiDyBiLGE5Y33NecvWqm3sAMEi8SQAA', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWJhNWFRbGRUM3o4dXB2S3I5NmZaZExKcnp2UkFsR3pNdHVZSnJLeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHA6Ly9sb2NhbGhvc3QvYXBsaWthc2lzZWtvbGFoL2JhY2tlbmRfZ2FsZXJpc2Vrb2xhaC9wdWJsaWMiO319', 1731572471),
('k3z0GxQz0YrPHaE3asr8levyzEVxNXZynJNHzZhU', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialJKZnB4SHR3cDRHb05rVjZUdU01Nk9mNUQ0U0Y2eWtyU1d1TzVKWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731494239),
('KGk0lyEI88zI1UohWC8UlWEzP8hkjgLtChjEhDCT', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlZ0Q2VjU1l6RHNNVnJKTU5oT1UwVExzTWtwdW8wTzVLYWR1aXRvcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493623),
('kheIZI9qPgX9tGBnm5dxvvpe7laxoafQzFy4jUF9', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXh1WnE3aVU3TGdJdEhnd2FlNHJrUVYwMnBRaHl3RDRYclJzVWVVUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHA6Ly9sb2NhbGhvc3QvYXBsaWthc2lzZWtvbGFoL2JhY2tlbmRfZ2FsZXJpc2Vrb2xhaC9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1731552329),
('KXlh7t4kBLChbcTQ3RQIFleaKlxDbr96QHt1NfgX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMmlYd3FQZTZIS1VZWkVObzI0aGpOU1hrRTFnNVpKR2E5VkJkQkZYMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1731487532),
('N4X2ZdGHhStjIRGhKbukc2wxSA25QXEg8hH0o0Ll', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNURyTFFhVzE2TWwwTk9ESGdyV1hLeHpzMTV6UXdUUzBHTDZzMzN3YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493550),
('QqwHzFSNtIWoJ7kTogNQtQI6A4jEE9FLKqpW70ww', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlRLU0RaS3hnd29XTGRCWUc1aWQ4T3Vsc0VBUWRja2dFUHoyY25WeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493893),
('w3G8s1UHD8fQJ3OF5bTmNyle8BHgV6Kjjp7z0lqi', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFBzeTlwc1pJOUlKQ09QcWdzaU5DeXZUaTQ5MFdwcGd3bVpWZGJCWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493907),
('wsTBAKshUeymNh7DnSrxu5BjXsBVxUijhiGnMime', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3R1UDM4cjRvcENZNlIxcGFtZnh3eFNmWGFQNFdJVDNYUENYa2Z1YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjAzOiJodHRwOi8vMTAuMC4yLjIvYXBsaWthc2lzZWtvbGFoL2JhY2tlbmRfZ2FsZXJpc2Vrb2xhaC9wdWJsaWMvc3RvcmFnZS9waG90b3MvaHR0cDovLzEwLjAuMi4yL2FwbGlrYXNpc2Vrb2xhaC9iYWNrZW5kX2dhbGVyaXNla29sYWgvcHVibGljL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731480225),
('xUyCq1nFMx50nfRQl028Wf3lqJPPxEbiyNAPvozq', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkFRT2M0MUVsOEpiVDZ0RDNvNE83OTFxSUxpUUN1OVpZWkVtenF6byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493785),
('y1LX5G2iXu1wiBdFCpW9ZaHgqsH5pmZBUC6pqfcZ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOTVwTXRpcTl3cDljaFpOOUxldnQxMWRBcTNrOFBtWXRKMm5jWVIwRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731588193),
('ya4BXzQpEvNDYEhfPXX2V0R7WAzDXfAAO38D8gPW', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjdiU21oQU0xSnVLWUF0NnFPY3YwTWE1Qkg1aFkybHZqbVRlcDhzcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493611),
('YrumHFlrFPP1seQBQyWPaUJKCADK52Tdn9R4HAxe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0dGUTNQMnFQVmxJWmNKdjB5TTJ6UEpFeEliVGlXUXBKUGp0SEx1byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHA6Ly9sb2NhbGhvc3QvYXBsaWthc2lzZWtvbGFoL2JhY2tlbmRfZ2FsZXJpc2Vrb2xhaC9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731495447),
('ZGqQm8dZoSd0ax4HqpF63wQY0A6vO2lw6i36x1Rh', NULL, '127.0.0.1', 'Dart/3.5 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRngxRUVIbXNxMHc2d2M2UUpkRG5kbGI1ZWxRQWpZakdFaHpvTnQ3SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE2OiJodHRwOi8vMTAuMC4yLjI6ODAwMC9zdG9yYWdlL2h0dHA6Ly8xMC4wLjIuMjo4MDAwL3N0b3JhZ2UvaW1hZ2VzL3Bob3Rvcy9tMzR0NkIxNExXZ0NGMEZ4MEZIVXk4dDVoNXlSYzdiM2FEQ3Y4UXY4LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731493881);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'slider/8ORaRabua1VB5ahz2dAiX0rbB0Yn5m38uPNvVW5V.jpg', '#', '2024-11-09 02:52:00', '2024-11-09 02:52:00'),
(2, 'slider/AKXrTJfYSFOaTppA84xYwgP7q2HA8QMYqBC5SXRq.jpg', '#', '2024-11-09 02:52:20', '2024-11-09 02:52:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `avatar`, `role`, `remember_token`, `created_at`, `updated_at`, `last_login_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$fjPuYOmr/QWaQlV6XMTNSel5/g9WqI7RigcaAtx3s4w8GiFteCh66', NULL, NULL, NULL, NULL, 'admin', 'rQPykpZVxGIUw4ozX5t33wCq683flXcjhMDJ2zuiu7XbtuVUwhWAMZePTGXf', '2024-11-09 02:34:18', '2024-11-09 02:36:37', NULL),
(2, 'User 1', 'user1@gmail.com', NULL, '$2y$12$iPi6Tr0gEumCC1NAsdZE4OcErW6hIyX9oCzIjnvExAZkO7mGCbLVW', NULL, NULL, NULL, NULL, 'user', 'Ys4BWqrXMJ24tbKzSW9KoRrh0Ht5i3pv0Uyk47W4hE4AzX79CtqwefUPoTFp', '2024-11-09 02:34:18', '2024-11-09 02:37:26', NULL),
(3, 'User 2', 'user2@gmail.com', NULL, '$2y$12$QH5NiWP5p4.kfVOTXGJlF.WS0DJmkznl53vuy/3v7GNX46jAOjVzG', NULL, NULL, NULL, NULL, 'user', '15lLJiZLeZlK1w3jtW7qSKY8sqmURWKX95O8qLNNKLnFAughz4LamGPEmkeE', '2024-11-09 02:34:19', '2024-11-09 02:38:09', NULL),
(4, 'Kamila Putri Herlambang', 'kp.herlambang@gmail.com', NULL, '$2y$12$jITTGviI..ATHCu25xBjpO.HMgMSAhtHc3Is0whCwq1fIhU5fbSf2', NULL, NULL, NULL, NULL, 'admin', 'Ttez3xMR9aPLFKz0aFQZs5nYxjOXv1uQ0k2dfzH37xq8jkfbTSOdNeM3mqTM', '2024-11-09 05:54:25', '2024-11-09 05:54:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `views`
--

CREATE TABLE `views` (
  `id` bigint UNSIGNED NOT NULL,
  `photo_id` bigint UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `views`
--

INSERT INTO `views` (`id`, `photo_id`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '2024-11-09 03:00:18', '2024-11-09 03:00:18'),
(2, 1, NULL, NULL, '2024-11-09 03:00:40', '2024-11-09 03:00:40'),
(3, 1, NULL, NULL, '2024-11-09 03:01:04', '2024-11-09 03:01:04'),
(4, 1, NULL, NULL, '2024-11-09 03:05:19', '2024-11-09 03:05:19'),
(5, 1, NULL, NULL, '2024-11-09 03:05:25', '2024-11-09 03:05:25'),
(6, 1, NULL, NULL, '2024-11-09 03:06:49', '2024-11-09 03:06:49'),
(7, 1, NULL, NULL, '2024-11-09 05:57:12', '2024-11-09 05:57:12'),
(8, 1, NULL, NULL, '2024-11-09 05:58:41', '2024-11-09 05:58:41'),
(9, 1, NULL, NULL, '2024-11-09 06:02:54', '2024-11-09 06:02:54'),
(10, 1, NULL, NULL, '2024-11-09 06:03:23', '2024-11-09 06:03:23'),
(11, 1, NULL, NULL, '2024-11-10 02:51:59', '2024-11-10 02:51:59'),
(12, 1, NULL, NULL, '2024-11-11 23:15:11', '2024-11-11 23:15:11'),
(13, 1, NULL, NULL, '2024-11-11 23:19:19', '2024-11-11 23:19:19'),
(14, 1, NULL, NULL, '2024-11-11 23:19:28', '2024-11-11 23:19:28'),
(15, 1, NULL, NULL, '2024-11-11 23:22:54', '2024-11-11 23:22:54'),
(16, 1, NULL, NULL, '2024-11-11 23:23:08', '2024-11-11 23:23:08'),
(17, 1, NULL, NULL, '2024-11-11 23:26:50', '2024-11-11 23:26:50'),
(18, 1, NULL, NULL, '2024-11-11 23:27:17', '2024-11-11 23:27:17'),
(19, 1, NULL, NULL, '2024-11-11 23:27:40', '2024-11-11 23:27:40'),
(20, 1, NULL, NULL, '2024-11-11 23:29:16', '2024-11-11 23:29:16'),
(21, 1, NULL, NULL, '2024-11-11 23:31:24', '2024-11-11 23:31:24'),
(22, 1, NULL, NULL, '2024-11-11 23:33:02', '2024-11-11 23:33:02'),
(23, 1, NULL, NULL, '2024-11-11 23:34:03', '2024-11-11 23:34:03'),
(24, 1, NULL, NULL, '2024-11-11 23:34:58', '2024-11-11 23:34:58'),
(25, 1, NULL, NULL, '2024-11-11 23:36:01', '2024-11-11 23:36:01'),
(26, 1, NULL, NULL, '2024-11-11 23:36:45', '2024-11-11 23:36:45'),
(27, 1, NULL, NULL, '2024-11-11 23:38:38', '2024-11-11 23:38:38'),
(28, 1, NULL, NULL, '2024-11-11 23:39:29', '2024-11-11 23:39:29'),
(29, 1, NULL, NULL, '2024-11-11 23:40:42', '2024-11-11 23:40:42'),
(30, 1, NULL, NULL, '2024-11-11 23:42:07', '2024-11-11 23:42:07'),
(31, 1, NULL, NULL, '2024-11-11 23:44:47', '2024-11-11 23:44:47'),
(32, 1, NULL, NULL, '2024-11-11 23:47:15', '2024-11-11 23:47:15'),
(33, 1, NULL, NULL, '2024-11-11 23:48:26', '2024-11-11 23:48:26'),
(34, 1, NULL, NULL, '2024-11-11 23:51:42', '2024-11-11 23:51:42'),
(35, 1, NULL, NULL, '2024-11-11 23:54:17', '2024-11-11 23:54:17'),
(36, 1, NULL, NULL, '2024-11-12 00:11:06', '2024-11-12 00:11:06'),
(37, 1, NULL, NULL, '2024-11-12 00:11:23', '2024-11-12 00:11:23'),
(38, 1, NULL, NULL, '2024-11-12 00:15:12', '2024-11-12 00:15:12'),
(39, 1, NULL, NULL, '2024-11-12 00:15:23', '2024-11-12 00:15:23'),
(40, 1, NULL, NULL, '2024-11-12 00:15:30', '2024-11-12 00:15:30'),
(41, 1, NULL, NULL, '2024-11-12 00:16:04', '2024-11-12 00:16:04'),
(42, 1, NULL, NULL, '2024-11-12 00:16:24', '2024-11-12 00:16:24'),
(43, 1, NULL, NULL, '2024-11-13 21:44:32', '2024-11-13 21:44:32'),
(44, 1, NULL, NULL, '2024-11-13 21:47:56', '2024-11-13 21:47:56'),
(45, 1, NULL, NULL, '2024-11-13 21:48:19', '2024-11-13 21:48:19'),
(46, 1, NULL, NULL, '2024-11-14 04:47:40', '2024-11-14 04:47:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agenda_kategori_id_foreign` (`kategori_id`),
  ADD KEY `agenda_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `agenda_hashtag`
--
ALTER TABLE `agenda_hashtag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agenda_hashtag_agenda_id_foreign` (`agenda_id`),
  ADD KEY `agenda_hashtag_hashtag_id_foreign` (`hashtag_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_photo_id_foreign` (`photo_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galery_kategori_id_foreign` (`kategori_id`),
  ADD KEY `galery_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `galery_hashtag`
--
ALTER TABLE `galery_hashtag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galery_hashtag_galery_id_foreign` (`galery_id`),
  ADD KEY `galery_hashtag_hashtag_id_foreign` (`hashtag_id`);

--
-- Indeks untuk tabel `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashtags_name_unique` (`name`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `informasi_kategori_id_foreign` (`kategori_id`),
  ADD KEY `informasi_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `informasi_hashtag`
--
ALTER TABLE `informasi_hashtag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `informasi_hashtag_informasi_id_foreign` (`informasi_id`),
  ADD KEY `informasi_hashtag_hashtag_id_foreign` (`hashtag_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_photo_id_foreign` (`photo_id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_galery_id_foreign` (`galery_id`),
  ADD KEY `photos_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `photo_hashtag`
--
ALTER TABLE `photo_hashtag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_hashtag_photo_id_foreign` (`photo_id`),
  ADD KEY `photo_hashtag_hashtag_id_foreign` (`hashtag_id`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_foreign` (`comment_id`),
  ADD KEY `replies_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggables_tag_id_foreign` (`tag_id`),
  ADD KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_photo_id_foreign` (`photo_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `agenda_hashtag`
--
ALTER TABLE `agenda_hashtag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galery`
--
ALTER TABLE `galery`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galery_hashtag`
--
ALTER TABLE `galery_hashtag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `informasi_hashtag`
--
ALTER TABLE `informasi_hashtag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `photo_hashtag`
--
ALTER TABLE `photo_hashtag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agenda_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `agenda_hashtag`
--
ALTER TABLE `agenda_hashtag`
  ADD CONSTRAINT `agenda_hashtag_agenda_id_foreign` FOREIGN KEY (`agenda_id`) REFERENCES `agenda` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agenda_hashtag_hashtag_id_foreign` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `galery_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galery_hashtag`
--
ALTER TABLE `galery_hashtag`
  ADD CONSTRAINT `galery_hashtag_galery_id_foreign` FOREIGN KEY (`galery_id`) REFERENCES `galery` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `galery_hashtag_hashtag_id_foreign` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `informasi_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `informasi_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `informasi_hashtag`
--
ALTER TABLE `informasi_hashtag`
  ADD CONSTRAINT `informasi_hashtag_hashtag_id_foreign` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `informasi_hashtag_informasi_id_foreign` FOREIGN KEY (`informasi_id`) REFERENCES `informasi` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_galery_id_foreign` FOREIGN KEY (`galery_id`) REFERENCES `galery` (`id`),
  ADD CONSTRAINT `photos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `photo_hashtag`
--
ALTER TABLE `photo_hashtag`
  ADD CONSTRAINT `photo_hashtag_hashtag_id_foreign` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `photo_hashtag_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
