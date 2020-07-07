-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 06:00 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be_apipabar`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `gambar`, `sumber`, `tanggal_post`, `created_at`, `updated_at`) VALUES
(1, 'Bintuni Masuk Wilayah Resiko Rendah, Semua Pasien Positif COVID-19 Telah Sembuh', 'Dikutip dari PAPUADALAMBERITA.COM. MANOKWARI- Pemerintah Provinsi Papua Barat melalui Gugus Tugas Percepatan Penanganan COVID-19 Papua Barat merilis data terbaru, per Jumat (26/6/2020) ada penambahan satu orang pasien COVID-19 sembuh, yaitu dari Kabupaten Teluk Bintuni jenis kelamin perempuan usia 41 tahun.\r\n\r\nDengan demikian Kabupaten Teluk Bintuni yang memiliki pasien positif tertinggi kedua di Papua Barat, yaitu 50 pasien, setelah Kota Sorong dengan pasien positif  92 orang, dan 50 orang positif ini semuanya telah sembuh.\r\n\r\nSesuai panduan gugus tugas nasiona, kabupaten Bintuni yang awalnya masuk wilayah merah, kini status itu menurun menjadi wilayah resiko rendah.\r\n\r\n‘’Panduan gugus tugas nasional satu daerah kembali hijau salah satunya adalah empat minggu daerah tersebut tanpa kasus baru, Bintuni baru 13 hari tanpa kasus baru, kami masih perlu kerja keras, tetapi kami sudah masuk wilayah resiko rendah,’’ ujar Direktur Rumah Sakit Umum Daerah (RSUD) Kabupaten Teluk Bintuni yang juga anggota Gugus Tugas (COVID-19) Kabupaten Teluk Bintuni, dr Eka Suradji menjawab peretanyaan papuadalamberita.com melalui grup whatsapp jurnalis Papua Barat bersama Gugus Tugas COVID-19 Papua Barat, Jumat (26/6/2020) malam.\r\n\r\nDokter Eka mengimbau kedepannya semua warga harus bersama-sama kerja keras untuk mengendalikan COVID-19 di Papua Barat .\r\n\r\nJika Kabupaten Teluk Bintuni bisa mempertahankan zero (0) positif COVID-19 dalam beberapa minggu ke depan,  Kabupaten Bintuni sebagai salah satu Kabupaten di Papua Barat yang dapat direkomendasikan Gugus Tugas Provinsi Papua Barat memasuki New Normal.\r\n\r\n‘’Saya kira bisa, intinya kita melihat daerah-daerah yang sudah melakukan berbagai upaya dan berhasil menekan dan menurunkan angka penularan dapat direkomendasikan untuk masuk new normal,’’ tambah juru bicara Gugus Tugas Percepatan Penanganan COVID-19 Papua Barat, dokter Arnold Tiniap melalui pesan whatsapp Grup COVID-19 Papua Barat, Jumat (26/6/2020) malam.\r\n\r\nKeberhasilan Kabupaten Teluk Bintuni tidak hanya pada semua pasien positif yang telah sembuh, namun data COVID-19 Papua Barat juga menyebutkan tidak ada penambahan Orang Dalam Pemantauan (ODP), Pasien Dalam Pengawasan (PDP)  dan hanya penambahan satu (1) Orang Tanpa Gejala  (OTG) dari Kabupaten Teluk Bintuni Jumat (26/6).', 'berita_26.jpg', 'http://papuadalamberita.com/bintuni-masuk-wilayah-resiko-rendah-semua-pasien-positif-covid-19-telah-sembuh/', '30 Juni 202', NULL, NULL),
(2, 'TNI, Polri dan Satpol PP mulai Disiplinkan Masyarakat Laksanakan Protokol Kesehatan', 'Dikutip dari MANOKWARI – Gugus Tugas Covid-19 Kabupaten Manokwari melalui Bidang Penertiban mulai melaksanakan pendisiplinan pelaksanaan protokol kesehatan di ruang publik, Kamis (25/6/2020). Kegiatan pendisiplinan pertama dilaksanakan di Pasar Wosi dan Sanggeng, Terminal Wosi, Pelabuhan Marampa, serta pusat perbelanjaan, toko, dan warung makan.\r\n\r\nKetua Harian Gugus Tugas Covid-19 Kabupaten Manokwari, drg. Henri Sembiring, mengatakan, kegiatan pendisplinan itu dilakukan oleh Bidang Penertiban yang terdiri dari unsur TNI, Polri, dan Satpol PP Kabupaten Manokwari.\r\n\r\nPendisiplinan dilakukan guna mewujudkan masyarakat yang produktif dan aman Covid-19. Selain itu, sebagai upaya menyiapkan masyarakat Manokwari menuju New Normal.\r\n\r\n“Kemarin tim sudah melakukan pengamanan di Pasar Wosi dan Sanggeng. Saya arahkan mereka untuk melakukan sweeping supaya penularan ini jangan terjadi. Saya pesan ke mereka untuk sampaikan kepada masyarakat bahwa memakai masker bukan untuk Gugus Tugas Covid-19 dan Pemkab Manokwari, tetapi untuk melindungi diri dan keluarga sendiri,” kata Sembiring di Posko Gugus Tugas Covid-19 Kabupaten Manokwari, Jumat (26/6/2020).\r\n\r\nMenurutnya, kegiatan pendisplinan harus dijalankan dan terus dilaksanakan guna mempersiapkan masyarakat Manokwari melaksanakan tiga protokol kesehatan, pakai masker, cuci tangan pakai sabun, dan menjaga jarak dengan orang lain.\r\n\r\n“Jika ini dijalankan, kita tidak akan tertular. Jadi saya harap kepada masyarakat Manokwari kita belum memasuki New Normal. Kemarin kita ada tambah dua kasus, jadi kita masih naik terus, naik terus. Jadi saya harapkan kita jangan pikir ini sudah normal, baru nanti terjadi klaster baru san sekarang penularan bukan lagi yang datang dari luar tapi antara kita dengan kita,” ujarnya.\r\n\r\nSoal dasar hukum dalam melaksanakan pendisiplinan terhadap, Sembiring mengatakan, berdasarkan situasi kedaruratan bencana non-alam, itu bisa dilakukan.\r\n\r\n“Di daerah lain sudah jalankan itu,” tandasnya.', 'berita_25.jpeg', 'https://suaramandiri.co/2020/06/26/tni-polri-dan-satpol-pp-mulai-disiplinkan-masyarakat-laksanakan-protokol-kesehatan/', '30 Juni 2020', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_covid`
--

CREATE TABLE `data_covid` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jumlah` int(11) NOT NULL,
  `meningkat_menurun` int(11) NOT NULL,
  `tanggal_update` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_covid`
--

INSERT INTO `data_covid` (`id`, `status`, `total_jumlah`, `meningkat_menurun`, `tanggal_update`, `created_at`, `updated_at`) VALUES
(1, 'Positif', 236, 0, '29 Juni 2020', NULL, NULL),
(2, 'Negatif', 1838, 0, '29 Juni 2020', NULL, NULL),
(3, 'Sembuh', 152, 0, '29 Juni 2020', NULL, NULL),
(4, 'Meninggal', 18, 0, '29 Juni 2020', NULL, NULL),
(5, 'PDP', 107, 0, '29 Juni 2020', NULL, NULL),
(6, 'ODP', 1246, 0, '29 Juni 2020', NULL, NULL),
(7, 'OTG', 2803, 0, '29 Juni 2020', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_29_141128_create_data_covid_table', 1),
(4, '2020_06_30_001644_create_data_berita_table', 2),
(5, '2020_06_30_010509_create_rumah_sakit_table', 3),
(6, '2020_06_30_013015_create_tentang_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_rs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`id`, `nama_rs`, `telp`, `email`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 'Rumah Sakit Provinsi', '(0986) 215133', 'rs1@gmail.com', 'Jl. Siliwangi No.1, Manokwari Tim., Manokwari Bar., Kabupaten Manokwari, Papua Bar. 98312', NULL, NULL),
(2, 'Rumah Sakit TNI AL', '(0986) 215132', 'rs2@gmail.com', 'Jl. Siliwangi No.1, Manokwari Tim., Manokwari Bar., Kabupaten Manokwari, Papua Bar. 98312', NULL, NULL),
(3, 'Regional General Hospital Manokwari', '(0986) 2151331', 'rs3@gmail.com', 'Jl. Siliwangi No.1, Manokwari Tim., Manokwari Bar., Kabupaten Manokwari, Papua Bar. 98312', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`id`, `phone`, `email`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, '1500141', 'satgascovid19@papuabaratprov.go.id', 'Jl. Brigjen Marinir (Purn) Abraham O.Atururi Arfai - Kantor Gubernur Papua Barat(Lt.1) - Manokwari - Papua Barat - 98315', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_covid`
--
ALTER TABLE `data_covid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_covid`
--
ALTER TABLE `data_covid`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
