-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 03:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel2`
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
(1, 'Judul1', 'Isi1', 'berita.jpg', 'sumber1', '2020-06-22', NULL, '2020-07-08 04:42:02'),
(2, 'Judul2', 'Isi2', 'berita.jpg', 'sumber2', '2020-06-22', NULL, '2020-07-08 04:41:50'),
(3, 'Penerapan “New Normal” Harus Berdasarkan Regulasi', 'Dikutip dari TEROPONGNEWS.COM, MANOKWARI – Kebijakan pemerintah untuk menerapkan tatanan hidup baru atau “New Normal” di Provinsi Papua Barat mendapat apresiasi dari berbagai kalangan.\r\n\r\nNamun, penerapan tatanan hidup baru itu perlu didasarkan pada regulasi yang mengatur tentang kegiatan masyarakat supaya dapat bermanfaat, terutama pencegahan penyebaran corona virus disease 2019 (COVID-19).\r\n\r\nTokoh Pemuda Papua Barat, Marinus Bonepay melalui telpon celulernya kepada media ini, Rabu (17/6) mengatakan, ketika dilaksanakan “New Normal” maka semua akses akan dibuka maka kemungkinan pasti terjadi.\r\n\r\n“Terutama transportasi baik udara, darat maupun laut diatur dalan regulasi atau aturan tetap untuk mengatur, bukan sekedar himbauan supaya mengikat semua pihak dengan mengedepankan anjuran pemerintah mencegah COVID-19,” ucap Marinus Bonepay.\r\n\r\nLanjut Bonepay, yang harus diproteksi secara maksimal adalah transportasi dari luar tanah papua karena angka pasien positif masih tinggi, ini juga akan berpengaruh pada penyebaran COVID-19.\r\n\r\nPolitisi muda ini minta supaya New Normal hanya dibuka untuk 12 Kabupaten dan 1 Kota di Provinsi Papua Barat, mengingat penanganan pasien positif COVID-19 sudah membaik dan mencegah penyebaran.\r\n\r\n“Kalau dari saya, lebih baik buka akses New Normal untuk lokal papua barat supaya akses semua sektor jalan dalam rangka menunjang pemerintah daerah untuk menjalankan roda pemerintahan kembali normal, pelayanan kepada masyarakat berjalan baik,” pungkasnya.\r\n\r\nTetapi semua tergantung kepada pemerintah daerah sebagai eksekutor dengan mengedepankan regulasi sebagai dasar.', 'berita5.jpg', 'http://teropongnews.com/berita/penerapan-new-normal-harus-berdasarkan-regulasi/', '2020-06-18', NULL, '2020-07-08 04:41:34'),
(4, 'Kaum Muda Fakfak Beri Dukungan Moril dan Spirit Untuk dr. Subhan Rumoning, Fokus Tangani Covid -19', 'Dikutip dari PAPUADALAMBERITA.COM. FAKFAK – Masih seputar klinik Satria Medika tempat praktek dr. Subhan Rumoning, Sp.PD, yang beberapa hari lalu sempat diberitakan terjadi pungutan biaya rapid test di klinik swasta tersebut.\r\n\r\nPemberitaan yang menyudutkan dokter sepecialis penyakit dalam itu, membuat dirinya sempat mengajukan pengunduran diri sebagai ketua tim Kesehatan Covid -19 Kabupaten Fakfak.\r\n\r\nTerkait pemberitaan yang memojokkan dirinya, membuat puluhan kaum muda Fakfak, Rabu (17/6/2020) sekitar jam 11.00 WIT mendatangi RSUD Fakfak untuk meminta penjelasan resmi dari Direktur RSUD Fakfak itu.\r\n\r\nSelain meminta penjelasan resmi dari dokter specialis penyakit dalam satu satunya di RSUD Fakfak, kaum muda Fakfak ini juga meminta Subhan Rumoning agar tetap fokus berada di tim gugus tugas percepatan penanganan Covid -19 Kabupaten Fakfak dengan alasan masyarakat Fakfak masih membutuhkannya untuk menangani corona virus di Kabupaten Fakfak ini.\r\n\r\nDalam pertemuan yang berlangsung di ruang kerja Direktur RSUD Fakfak, para pemuda ini juga memberikan dukungan moril dan spirit bagi dokter muda specialis penyakit dalam ini agar tetap berada di dalam tim Gugus Tugas Covid -19 untuk menangani penyebaran Covid -19 di Kabupaten Fakfak.\r\n\r\nAmin Jabir Suaery, S.Pd, kepada papuadalamberita.com. mengatakan, dampak pemberitaan klinik Satria Medika yang menyudutkan dr. Subhan Rumoning, Sp.PD, hingga terancam mengundurkan diri dari tim Covid -19 Kabupaten Fakfak, membuat pemuda Fakfak harus turun tangan untuk ikut menyelesaikan persoalan ini agar dokter sepecialis penyakit dalam ini tetap berada bersama masyarakat untuk “perangi” memutuskan mata rantai Covid -19 di Fakfak.\r\n\r\n“Pengaruh pemberitaan yang menyerang dirinya (dr. Subhan Rumoning) hingga dirinya nyaris mengudurkan diri, sangat riskan bagi penanganan Covid -19 di Fakfak karena itu selaku pemuda yang peduli tergadap Covid -19 di Fakfak harus memberikan dukungan moril dan spirit sehingga dia harus tetap berada dalam garda terdepan bersama tenaga medis lainnya untuk ikut memutus mata rantai Covid -19 di Fakfak”, tegas Amin Jabir Suaery.\r\n\r\nLebih lanjut menurut Amin Jabir Suaery, dari hasil kordinasi para pemuda Fakfak dengan dr. Subhan Rumoning, dimana dijelaskan bahwa, rapid test di klinik tempatnya berparktek tidak menggunakan fasilitas Pemerintah Daerah khusus fasilitas RSUD Fakfak.\r\n\r\nBahkan harga rapid test yang ditetapkan klinik swasta tersebut sudah sesuai dengan coast operasional klinik tempatnya praktek setelah menjalankan tugas kedinasan sebagai Direktur RSUD Fakfak, tuturnya kepada media ini.\r\n\r\nKarena itu, para pemuda Fakfak kata Amin, sapaan akrabnya, berharap agar masyarakat Fakfak tidak terpengaruh dengan pemberitaan beberapa hari lalu yang telah menyerang pribadi dr. Subhan Rumoning yang selama ini menjalankan praktek di klinik swasta tersebut.(RL 07)', 'berita4.jpg', 'http://papuadalamberita.com/kaum-muda-fakfak-beri-dukungan-moril-dan-spirit-untuk-dr-subhan-rumoning-fokus-tangani-covid-19/', '2020-06-18', NULL, '2020-07-08 04:41:23'),
(5, 'DPR Papua Barat Bentuk Pansus Dana Covid-19', 'Dikutip dari papuabaratnews.co – Dewan Perwakilan Rakyat (DPR) Provinsi Papua Barat akhirnya membentuk panitia khusus (Pansus) pengawasan dana penanganan virus corona atau Covid-19 di daerah tersebut.\r\n\r\nWakil Ketua DPR Papua Barat Saleh Siknun mengatakan, pemerintah provinsi telah mengalokasikan anggaran cukup besar untuk penanganan Covid-19 serta dampaknya. Anggaran tersebut mencapai Rp197,8 miliar yang bersumber APBD Papua Barat tahun anggaran 2020. Dengan demikian, pihaknya menginginkan alokasi anggaran itu benar-benar tepat sasaran dan terserap secara maksimal.\r\n\r\n“Anggaran ini berasal dari rasionalisasi, pemotongan 50 persen dana belanja modal dari setiap OPD termasuk sekretariat DPR Papua Barat,” ucap Saleh saat dikonfirmasi Papua Barat News, Selasa (23/6/2020).\r\n\r\nIa menerangkan, pembentukan pansus merupakan keinginan sebagian besar anggota DPR Papua Barat. Pansu juga akan memantau pendistribusian Jaminan Pengaman Sosial (JPS) mulai dari administrasi rasionalisasi PAD APBD 2020 serta realisasi anggaran pada penanganan Covid-19.\r\n\r\nMenurut dia, seluruh komisi di DPR akan terlibat dalam pansus. Dengan pengawasan yang optimal dari dewan, maka sangat diharapkan penanganan Covid-19 serta pendistribusian bantuan dilakukan pemerintah daerah dengan merata.\r\n\r\n‘’Pembagian bahan makanan, jangan sampai ada yang terlewatkan. Masyarakat yang selayaknya membutuhkan bantuan harus dapat, intinya harus merata dan tepat sasaran,’’ ujarnya.\r\n\r\nDalam penyaluran bantuan bahan makanan, kata Saleh, Pemprov Papua Barat mengalokasikan anggaran sebesar Rp48 miliar. Bantuan disalurkan ke kabupaten/kota yang diserahkan langsung oleh gubernur dengan melibatkan organisasi keagamaan.\r\n\r\n‘’Pemerintah provinsi menyerahkan ke pemerintah kabupaten/kota yang selanjutnya disampaikan ke masyarakat. Perlu dipahami masyarakat bahwa yang menentukan penerima bantuan bukan provinsi dan apa yang dilakukan gubernur sudah benar,’’ tuturnya.\r\n\r\nAkan tetapi, politikus PDI Perjuangan ini belum bisa memastikan apakah bantuan bahan makanan sudah tepat sasaran atau belum. Hal ini akan ditelusuri Pansus Covid-19. Dan, hingga kini DPR Papua Barat juga belum menerima laporan terkait realokasi anggaran atau pemotongan belanja modal yang mencapai 50 persen. Laporan itu belum diterima dari Tim Anggaran Pemerintah Daerah (TPAD) Provinsi Papua Barat. Dalam waktu dekat, DPR Provinsi Papua Barat berencana akan memanggil TAPD untuk meminta penjelasan realokasi anggaran di setiap OPD.\r\n\r\n‘’Memang kami sudah mendapat informasi bahwa TAPD sudah melakukan rasionalisasi dan sudah dilaporkan ke pemerintah pusat, tetapi DPR Papua Barat belum mendapatkan laporan secara tertulis,’’ tega dia. (PB22)', 'berita3.jpg', 'http://papuabaratnews.co/papua-barat/dpr-papua-barat-bentuk-pansus-dana-covid-19/', '2020-06-25', NULL, '2020-07-08 04:41:11'),
(6, 'DPR Papua Barat Awasi Transparansi Penggunaan Dana Covid-19 Rp197,8 Miliar', 'Dikutip dari KABARPAPUA.CO – DPR Provinsi Papua Barat membentuk Pansus untuk pengawasan dana Covid-19 yang digelontorkan Pemerintah Provinsi Papua Barat dengan nominal Rp197,8 miliar.\r\n\r\nKetua DPR Provinsi Papua Barat, Orgenes Wonggor mengatakan pembentukan pansus berdasarkan kesepakatan semua fraksi. Pansus tersebut diketuai oleh Ortiz Sagrim, dengan sekertaris Pansus Xaverius Kameubun dari fraksi artai bersatu, bendahara dijabat oleh Mathius Menteng.\r\n\r\n“Dalam 1-2 hari kedepan SK untuk pansus sudah keluar dan tim pansus dapat langsung bekerja melakukan pemantauan dana Covid-19,” jelasnya, Rabu 24 Juni 2020.\r\n\r\nKata Wonggor, dana Covid-19 sebagian besar berasal dari dana OPD yang dialihkan, termasuk dana DPR Papua Barat, senilai Rp60 miliar yang dialihkan untuk penanganan Covid-19.\r\n\r\n“Anggaran yang cukup fantastis, sehingga harus tetap diawasi, agar dana tersebut tepat sasaran. Kami berharap semua pihak mengawasi peruntukan dana ini,” ujarnya.\r\n\r\nIa menyebutkan, pembentukan pansus Covid-19 DPR Papua Barat dilakukan dengan dana sukarela dari anggota DPR yang hadir, sebab sisa uang yang ada hanya untuk reses dan medical check up anggota DPR.\r\n\r\n“Penggunaan anggaran harus transparan, jangan ditutup-tutupi, agar tidak ada dusta diantara kita,” jelasnya. *** (Irsye Simbar)', 'berita2.jpg', 'https://kabarpapua.co/dpr-papua-barat-awasi-transparansi-penggunaan-dana-covid-19-rp1978-miliar/', '2020-06-25', NULL, '2020-07-08 04:40:59'),
(7, 'Papua Barat Sembuh 16, Positif Tambah Satu dari Manokwari, Total Diperiksa 1.962 Orang', 'Dikutip dari PAPUADALAMBERITA.COM – Pasien CoronaVirus Disease 2019 (COVID-19) Provinsi Papua Barat yang sembuh per Rabu 924/6/2020) bertambah 16 orang, sehingga total sembuh menjadi 145 orang atau 64,4%.\r\n\r\n‘’Hari ini ada tambahan 16 orang yang dinyatakan sembuh, yang berasal dari Kabupaten Sorong 13 orang, Kabupaten Bintuni dua (2) orang dan Kota Sorong satu (1) orang,’’ ujar juru bicara Gugus Tugas Percepatan Penanganan COVID-19 Papua Barat, dokter Arnold Tiniap kepada wartawan melalui siaran persnya secara tertulis, Rabu (24/6/2020) malam.\r\n\r\nJuru bicara COVID-19 Papua Barat menginformasikan orang yang diperiksa di Papua Barat hingga Rabu (24/6/2020) berjumlah 1.962 orang, yang dinyatakan negatif 1.737 orang atau 88,5%, yang positif 225 orang atau 11,5 persen.\r\n\r\n‘’Hari ini ada tambahan satu orang positif yang berasal dari Kabupaten Manokwari,’’ jelas dokter Arnold Tiniap.\r\n\r\nDokter juga melaporkan gambaran situasi epidemic Orang Tanpa Gejala (OTG) tambahan hari ini 20 orang, dari Kabupaten Manokwari 15 orang, Kabupaten Teluk Bintuni tiga (3) orang, Kabupaten Sorong satu (1) orang dan Kabupaten raja Ampat satu (1) orang.\r\n\r\n‘’Masih dalam pemantauan 1.042 orang, selesai pemantauan 1.519 orang, total 2.561 orang,’’ tambah Arnold Tiniap.\r\n\r\nIa mengatakan untuk Orang Dalam Pemantauan (ODP) tambahan hari ini empat orang, dari Kabupaten Manokwari, masih dalam pemantauan 248 orang, selesai pemantauan 970 orang, total 1.218 orang.\r\n\r\n‘’Pasien Dalam Pengawasan (PDP) tambahan hari ini tidak ada dalam pengawsan 24 orang, selesai pengawasan 80 orang, total 104 orang.\r\n\r\nMeninggal dunia total 20 orang, PDP 15 orang, ODP satu (1), OTG satu (1), positif konfirmasi tiga (3) orang. ‘’Presentasi kematian dari kasus yang terkonfirmasi (3 dari 224) adalah 1,3%,’’ tambah Arnold Tiniap.(tam)', 'berita1.jpg', 'http://papuadalamberita.com/papua-barat-sembuh-16-positif-tambah-satu-dari-manokwari-total-diperiksa-1-962-orang/', '2020-06-25', NULL, '2020-07-08 04:40:44'),
(8, 'TNI, Polri dan Satpol PP mulai Disiplinkan Masyarakat Laksanakan Protokol Kesehatan', 'Dikutip dari MANOKWARI – Gugus Tugas Covid-19 Kabupaten Manokwari melalui Bidang Penertiban mulai melaksanakan pendisiplinan pelaksanaan protokol kesehatan di ruang publik, Kamis (25/6/2020). Kegiatan pendisiplinan pertama dilaksanakan di Pasar Wosi dan Sanggeng, Terminal Wosi, Pelabuhan Marampa, serta pusat perbelanjaan, toko, dan warung makan.\r\n\r\nKetua Harian Gugus Tugas Covid-19 Kabupaten Manokwari, drg. Henri Sembiring, mengatakan, kegiatan pendisplinan itu dilakukan oleh Bidang Penertiban yang terdiri dari unsur TNI, Polri, dan Satpol PP Kabupaten Manokwari.\r\n\r\nPendisiplinan dilakukan guna mewujudkan masyarakat yang produktif dan aman Covid-19. Selain itu, sebagai upaya menyiapkan masyarakat Manokwari menuju New Normal.\r\n\r\n“Kemarin tim sudah melakukan pengamanan di Pasar Wosi dan Sanggeng. Saya arahkan mereka untuk melakukan sweeping supaya penularan ini jangan terjadi. Saya pesan ke mereka untuk sampaikan kepada masyarakat bahwa memakai masker bukan untuk Gugus Tugas Covid-19 dan Pemkab Manokwari, tetapi untuk melindungi diri dan keluarga sendiri,” kata Sembiring di Posko Gugus Tugas Covid-19 Kabupaten Manokwari, Jumat (26/6/2020).\r\n\r\nMenurutnya, kegiatan pendisplinan harus dijalankan dan terus dilaksanakan guna mempersiapkan masyarakat Manokwari melaksanakan tiga protokol kesehatan, pakai masker, cuci tangan pakai sabun, dan menjaga jarak dengan orang lain.\r\n\r\n“Jika ini dijalankan, kita tidak akan tertular. Jadi saya harap kepada masyarakat Manokwari kita belum memasuki New Normal. Kemarin kita ada tambah dua kasus, jadi kita masih naik terus, naik terus. Jadi saya harapkan kita jangan pikir ini sudah normal, baru nanti terjadi klaster baru san sekarang penularan bukan lagi yang datang dari luar tapi antara kita dengan kita,” ujarnya.\r\n\r\nSoal dasar hukum dalam melaksanakan pendisiplinan terhadap, Sembiring mengatakan, berdasarkan situasi kedaruratan bencana non-alam, itu bisa dilakukan.\r\n\r\n“Di daerah lain sudah jalankan itu,” tandasnya.(SM7)', 'berita6.jpg', 'https://suaramandiri.co/2020/06/26/tni-polri-dan-satpol-pp-mulai-disiplinkan-masyarakat-laksanakan-protokol-kesehatan/', '2020-06-28', NULL, '2020-07-08 04:40:23'),
(9, 'Bintuni Masuk Wilayah Resiko Rendah, Semua Pasien Positif COVID-19 Telah Sembuh', 'Dikutip dari PAPUADALAMBERITA.COM. MANOKWARI- Pemerintah Provinsi Papua Barat melalui Gugus Tugas Percepatan Penanganan COVID-19 Papua Barat merilis data terbaru, per Jumat (26/6/2020) ada penambahan satu orang pasien COVID-19 sembuh, yaitu dari Kabupaten Teluk Bintuni jenis kelamin perempuan usia 41 tahun.\r\n\r\nDengan demikian Kabupaten Teluk Bintuni yang memiliki pasien positif tertinggi kedua di Papua Barat, yaitu 50 pasien, setelah Kota Sorong dengan pasien positif  92 orang, dan 50 orang positif ini semuanya telah sembuh.\r\n\r\nSesuai panduan gugus tugas nasiona, kabupaten Bintuni yang awalnya masuk wilayah merah, kini status itu menurun menjadi wilayah resiko rendah.\r\n\r\n‘’Panduan gugus tugas nasional satu daerah kembali hijau salah satunya adalah empat minggu daerah tersebut tanpa kasus baru, Bintuni baru 13 hari tanpa kasus baru, kami masih perlu kerja keras, tetapi kami sudah masuk wilayah resiko rendah,’’ ujar Direktur Rumah Sakit Umum Daerah (RSUD) Kabupaten Teluk Bintuni yang juga anggota Gugus Tugas (COVID-19) Kabupaten Teluk Bintuni, dr Eka Suradji menjawab peretanyaan papuadalamberita.com melalui grup whatsapp jurnalis Papua Barat bersama Gugus Tugas COVID-19 Papua Barat, Jumat (26/6/2020) malam.\r\n\r\nDokter Eka mengimbau kedepannya semua warga harus bersama-sama kerja keras untuk mengendalikan COVID-19 di Papua Barat .\r\n\r\nJika Kabupaten Teluk Bintuni bisa mempertahankan zero (0) positif COVID-19 dalam beberapa minggu ke depan,  Kabupaten Bintuni sebagai salah satu Kabupaten di Papua Barat yang dapat direkomendasikan Gugus Tugas Provinsi Papua Barat memasuki New Normal.\r\n\r\n‘’Saya kira bisa, intinya kita melihat daerah-daerah yang sudah melakukan berbagai upaya dan berhasil menekan dan menurunkan angka penularan dapat direkomendasikan untuk masuk new normal,’’ tambah juru bicara Gugus Tugas Percepatan Penanganan COVID-19 Papua Barat, dokter Arnold Tiniap melalui pesan whatsapp Grup COVID-19 Papua Barat, Jumat (26/6/2020) malam.\r\n\r\nKeberhasilan Kabupaten Teluk Bintuni tidak hanya pada semua pasien positif yang telah sembuh, namun data COVID-19 Papua Barat juga menyebutkan tidak ada penambahan Orang Dalam Pemantauan (ODP), Pasien Dalam Pengawasan (PDP)  dan hanya penambahan satu (1) Orang Tanpa Gejala  (OTG) dari Kabupaten Teluk Bintuni Jumat (26/6).(tam)FacebookTwitterWhatsAppGmailLineShare', 'berita7.jpg', 'http://papuadalamberita.com/bintuni-masuk-wilayah-resiko-rendah-semua-pasien-positif-covid-19-telah-sembuh/', '2020-06-28', NULL, '2020-07-08 04:40:03');

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
(1, 'Positif', 272, 0, '10 July 2020', NULL, NULL),
(2, 'Negatif', 2767, 0, '10 July 2020', NULL, NULL),
(3, 'Sembuh', 186, 0, '10 July 2020', NULL, NULL),
(4, 'Meninggal', 4, 0, '10 July 2020', NULL, NULL),
(5, 'PDP', 119, 0, '10 July 2020', NULL, NULL),
(6, 'ODP', 1324, 0, '10 July 2020', NULL, NULL),
(7, 'OTG', 3440, 0, '10 July 2020', NULL, NULL);

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
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`id`, `nama_rs`, `telp`, `email`, `lokasi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Rumah Sakit Provinsi', '0986215133', '-', 'Jl. Siliwangi No.1, Manokwari Tim., Manokwari Bar., Kabupaten Manokwari, Papua Bar. 98312', 'rs.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `biodata` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`id`, `biodata`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 'telp', '1500141', NULL, '2020-07-09 02:15:59'),
(2, 'email', 'satgascovid19@papuabaratprov.go.id', NULL, NULL),
(3, 'lokasi', 'Jl. Brigjen Marinir (Purn) Abraham O.Atururi Arfai - Kantor Gubernur Papua Barat(Lt.1) - Manokwari - Papua Barat - 98315', NULL, NULL);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$DJYbdqOp9w/GyH4NV6IDtuXhdwgwJmXFMsVy5LmnRm.XtiGRlP2pS', NULL, '2020-07-05 21:27:40', '2020-07-10 06:30:57');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
