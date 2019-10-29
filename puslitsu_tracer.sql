-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Okt 2019 pada 17.02
-- Versi server: 10.3.17-MariaDB-cll-lve
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puslitsu_tracer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `agenda_id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`agenda_id`, `judul`, `isi`, `username`) VALUES
(1, 'agenda', '<p>adas</p>', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`album_id`, `nama`) VALUES
(1, 'Album 1'),
(2, 'ratna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `reg` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `angkatan` varchar(15) NOT NULL,
  `ipk` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pekerjaan` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `username`, `reg`, `status`, `ttl`, `id_jurusan`, `jk`, `agama`, `alamat`, `telp`, `angkatan`, `ipk`, `email`, `pekerjaan`, `foto`) VALUES
(9, 'gita', '20191012gita', 'Lajang', 'Pekanbaru', 2, 'Perempuan', 'Islam', 'Jlan. Kutilang', '025871215', '2014', '4.0', 'gita@gmail.com', 'Wirausaha', 'Group-6-2.png'),
(10, '11651200014', '201910121165120', 'Lajang', '8 juli 1998', 1, 'Perempuan', 'Islam', 'Bagan jaya, Indragiri hilir', '085242792676', '16', '3.5', 'hany.cacuke78@gmail.com', 'Mahasiswi', '20190901_170917.jpg'),
(13, 'fauzirahman05', '20191012fauzirahman05', 'Lajang', 'Pekanbaru, 05-05-1996', 1, 'Laki-Laki', 'Islam', 'Jlan. Kutilang', '025871215', '2014', '4.0', 'ahmadfauzirahman@uin-suska.ac.id', 'Programmer', 'CN-CARD-FRONT-F.png'),
(14, 'Hany Al', '20191012Hany Al', 'Lajang', 'Inhil', 1, 'Perempuan', 'Islam', 'Bagan jaya, Indragiri hilir', '092242792676', '16', '3.4', 'hany.cacuke78@gmail.com', 'Mahasiswi', 'IMG-20190716-WA0011.jpg'),
(15, 'Piliang06', '20191012Piliang06', 'Lajang', '06 Juni 1996', 1, 'Laki-Laki', 'Islam', 'Desa Pantai Kecamatan Kuantan Musik Kab. Kuantan Singingi Riau', ' 082389123898', '2014', '3.45', 'Yanandarizky@gmail.com', 'Software Developer PT. Sprint Asia Teknologj', 'IMG-20191005-WA0053.jpg'),
(16, 'Eko selamet', '20191012Eko selamet', 'Lajang', 'Pulau palas, Inhil', 2, 'Laki-Laki', 'Islam', 'Gg.sepakat garuda sakti', '082285858812', '16', '3.5', 'Selamet.eko117@gmail.com', 'Mahasiswa', 'IMG-20191010-WA0022.jpg'),
(17, 'feggy', '20191012feggy', 'Lajang', 'Pekanbaru, 17 Maret 1996', 1, 'Laki-Laki', 'Islam', 'Jl. Tiung No. 18 Payung Sekaki Pekanbaru', '085272378932', '2014', '3.59', 'feggy.android@gmail.com', 'Android Developer', 'IMG_20190907_165602.jpg'),
(20, 'Bobbykurniawan', '20191012Bobbykurniawan', 'Lajang', 'Pekanbaru', 1, 'Laki-Laki', 'Islam', 'Jl gajah Mungkur', '081268130739', '2014', '3.42', 'Bobby.kurniawan@students.uin-suska.ac.id', 'Designner', 'PhotoGrid_1560679656222.jpg'),
(21, 'Mgufindo', '20191012Mgufindo', 'Lajang', 'Bontang', 1, 'Laki-Laki', 'Islam', 'Jl jeruk 2 No 84 Belimbing', '082386838514', '2014', '3.54', 'mgufindo@gmail.com', 'Swasta', '1570883429750.jpg'),
(22, 'M.Rifa\'i', '20191014M.Rifa\'i', 'Lajang', '07 Juli 1997', 3, 'Laki-Laki', 'Islam', 'Jl naga sakti', '085264508495', '2016', '3.82', 'Muhammad24121997@main.com', 'Mahasiswa', 'BeardManPhoto_20190122_131257.jpg'),
(23, 'Selamet eko kristanto', '20191014Selamet eko kristanto', 'Lajang', 'Pulau palas', 4, 'Laki-Laki', 'Islam', 'Sungai intan kecil', '082285858812', '2017', '3.55', 'selametekokristanto@gmail.com', 'Barbershop', 'FB_IMG_15693490662684491.jpg'),
(24, 'Nurkhairati', '20191015Nurkhairati', 'Lajang', 'Rengat, 16 November 1996', 1, 'Perempuan', 'Islam', 'jalan hangtuah no 275 indragiri hulu rengat', '082268079259', '2014', '3.34', 'nurkhairati@gmail.com', 'Guru ', 'SCJ_2192res.jpg'),
(25, 'Nurkhairati', '20191015Nurkhairati', 'Lajang', 'Rengat, 16 November 1996', 1, 'Perempuan', 'Islam', 'jalan hangtuah no 275 indragiri hulu rengat', '082268079259', '2014', '3.34', 'nurkhairati@gmail.com', 'Guru ', 'SCJ_2192res.jpg'),
(26, 'Izza Afkarina', '20191015Izza Afkarina', 'Lajang', 'Rokan Hulu, 2-Mei-1998', 1, 'Perempuan', 'Islam', 'Jl.Buluh Cina ', '082267671234', '15', '3.43', '11651200141@students.uin-suska.ac.id', 'Wirausaha', 'IMG_20161102_101507.jpg'),
(27, 'Muhammad Rifqi Aufa Abdika', '20191017Muhammad Rifqi Aufa Abdika', 'Lajang', 'Tembilahan 20 Oktober 1996', 1, 'Laki-Laki', 'Islam', 'Jl. Lumba lumba', '081268475430', '2014', '3.7', 'm.rifqi.aufa.abdika@students.uin-suska.ac.id', 'Programmer', 'index.png'),
(28, 'jbenastey', '20191019jbenastey', 'Lajang', 'Pekanbaru, 4 September 1997', 1, 'Laki-Laki', 'Islam', 'Jln Yudha Karya', '085355825959', '2015', '3.2', 'jbenastey@gmail.com', 'Programmer', 'jihad.jpg'),
(29, 'Aldyan Firdaus', '20191019Aldyan Firdaus', 'Lajang', 'Sibiruang 10 maret 1998', 1, 'Laki-Laki', 'Islam', 'Dusun III Sibiruang kec. Koto kampar huly', '081372434402', '2016', '3.15', 'Aldyanf98@gmail.com', '-', 'AFP_3393.JPG'),
(30, 'Khanza Oktavia', '20191019Khanza Oktavia', 'Lajang', 'Guntung, 7-10-1997', 14, 'Perempuan', 'Islam', 'Jl.Mustamindo', '081378786543', '16', '3.72', 'khanza.ok7@gmail.com', 'Karyawan Swasta', 'IMG_20190712_190728.jpg'),
(31, 'azharsiddiq', '20191019azharsiddiq', 'Lajang', 'Duri, 28 Mei 1997', 1, 'Laki-Laki', 'Islam', 'Jalan Pahlawan no 178', '081275753271', '2015', '3.43', 'azharsiddiq36@gmail.com', 'mahasiswa', 'IMG_20190929_192620_648.jpg'),
(32, 'Habibsadikin', '20191019Habibsadikin', 'Lajang', 'CILIMBER BANDUNG, 05 APRIL 1998', 3, 'Laki-Laki', 'Islam', 'JALAN SOEKARNO HATTA', '082284480096', '2016', '3,4', 'Habibsadikin@gmail.com', 'Mahasiswa', 'IMG_20190801_121315.jpg'),
(33, 'Habibsadikin', '20191019Habibsadikin', 'Lajang', 'CILIMBER BANDUNG, 05 APRIL 1998', 3, 'Laki-Laki', 'Islam', 'JALAN SOEKARNO HATTA', '082284480096', '2016', '3,4', 'Habibsadikin@gmail.com', 'Mahasiswa', 'IMG_20190801_121315.jpg'),
(34, 'REFANI AULIA PALUPI', '20191019REFANI AULIA PALUPI', 'Lajang', 'Pangkalan Kerinci, 2 Maret 1998', 1, 'Perempuan', 'Islam', 'Graha Mustamindo 1, Gg. Ikhlas', '081261115212', '2016', '3.3', 'refaniauliapalupi@gmail.cpm', 'Mahasiswi', 'IMG_20160526_134115.jpg'),
(35, 'Tiaramessa', '20191019Tiaramessa', 'Lajang', 'Pekanbaru, 28 February 1998', 1, 'Perempuan', 'Islam', 'Jalan Bukit Barisan blok A1 No.22', '081364261362', '2016', '3.12', '11651201329@students.uin-suska.ac.id', 'Mahasiswa', '50b18954033b35e2560a70fec78ee6d5.jpg'),
(36, 'Finadevn', '20191019Finadevn', 'Lajang', 'Kuningan, 6 mei 1997', 1, 'Perempuan', 'Islam', 'Jl. Harapan Raya No.50', '081266311157', '2015', '3.5', 'Fina.deviana@students.uin-suska.ac.id', '-', 'lambang1.png'),
(37, 'zurriyatafatni', '20191019zurriyatafatni', 'Lajang', 'Pangkalang Kerinci, 28 Juni 1998', 1, 'Perempuan', 'Islam', 'Permata Andalan 1 Blok K 21', '082392688006', '2016', '3,55', 'zurriyata@gmail.com', 'Mahasiswi', 'IMG_4657 copy.jpg'),
(38, 'Tiaramessa', '20191019Tiaramessa', 'Lajang', 'Pekanbaru, 28 February 1998', 1, 'Perempuan', 'Islam', 'Jalan Bukit Barisan blok A1 No.22', '081364261362', '2016', '3.12', '11651201329@students.uin-suska.ac.id', 'Mahasiswa', '50b18954033b35e2560a70fec78ee6d5.jpg'),
(39, 'Adeluthfi07', '20191019Adeluthfi07', 'Lajang', 'Pekanbaru, 07 Oktober 1997', 1, 'Laki-Laki', 'Islam', 'Jl.karya bersama', '082386178069', '2016', '3.28', 'Adeluthfi0710@gmail.com', 'Mahasiswa', 'IMG_20190831_130615.jpg'),
(40, 'tiaramessaputri', '20191019tiaramessaputri', 'Lajang', 'Pekanbaru, 28 februari 1998', 1, 'Perempuan', 'Islam', 'jalan bukit barisan blok A1 no.22', '081364261362', '2016', '3.12', 'tiaraamessa@gmail.com', 'mahasiswa', 'babytiger1.jpg'),
(41, 'fauziihsan', '20191019fauziihsan', 'Lajang', 'Muara Bungkal, 13 Februari 1997', 1, 'Laki-Laki', 'Islam', 'Muara Bungkal', '082381836236', '2016', '3.37', '11651100236@students.uin-suska.ac.id', 'Mahasiswa', '4x6.jpg'),
(42, 'y_amryy', '20191019y_amryy', 'Lajang', 'Sekeladi, 31 juli 1998', 1, 'Laki-Laki', 'Islam', 'Jl. Tuanku Tambusai', '082288255781', '16', '3.33', 'aulilamri46@gmail.com', 'Mahasiswa', 'IMG_20191005_103157_663.jpg'),
(43, 'Reski.saputra', '20191019Reski.saputra', 'Lajang', 'Pekanbaru', 1, 'Laki-Laki', 'Islam', 'Jl.Pasir Putih', '082390475215', '2016', '3.55', 'Reski.saputra@gmail.com', 'Mahasiswa', '139564.jpg'),
(44, 'Aliefalhadi', '20191019Aliefalhadi', 'Lajang', 'Payakumbuh', 1, 'Laki-Laki', 'Islam', 'Jln syamsiar thaib, pauh, lubuk sikaping, pasaman, sumbar', '082280219430', '205', '3,6', 'aliefalhadi28@gmail.com', 'Programmer', 'IMG_20190301_142755_249.jpg'),
(45, 'Muhammad Iqbal', '20191019Muhammad Iqbal', 'Lajang', 'Bukittingi, 23 September 1998', 1, 'Laki-Laki', 'Islam', 'Perumahan Taman Delima Blok A1 No 7', '082285393740', '2016', '3.4', '11651100294@students.uin-suska.ac.id', 'Mahasiswa', '40512467.png'),
(46, 'HARTINI', '20191020HARTINI', 'Menikah', 'Bagan Jaya, 08-07-1998', 1, 'Perempuan', 'Islam', 'Jl.Rimbo Panjang, Kampar', '082242792676', '16', '3.31', '11651200010@students.uin-suska.ac.id', 'Karyawan Swasta', '1473507674316.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `foto`, `judul`, `username`, `album_id`) VALUES
(1, 'gallery_big1.jpg', 'gambar pertama', 'admin', 1),
(2, 'gallery_big6.jpg', 'Gambar Kedua', 'admin', 1),
(3, 'gallery_big5.jpg', 'Gambar ketiga', 'admin', 1),
(4, 'gallery_big4.jpg', 'Gambar keempat', 'admin', 1),
(5, 'TIN2410.jpg', 'gambar kelima', 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `grafik`
--

CREATE TABLE `grafik` (
  `id` int(11) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tahun` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `grafik`
--

INSERT INTO `grafik` (`id`, `merek`, `jumlah`, `tahun`) VALUES
(1, 'Samsung', 80, 2011),
(2, 'Nokia', 20, 2002),
(3, 'Blackberry', 40, 2004);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_kuisioner_alumni`
--

CREATE TABLE `hasil_kuisioner_alumni` (
  `id_hasil_kuisioner_alumni` int(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `pertanyaan_jawaban` text DEFAULT NULL,
  `format_jawaban` text NOT NULL,
  `tanggal_menjawab` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hasil_kuisioner_alumni`
--

INSERT INTO `hasil_kuisioner_alumni` (`id_hasil_kuisioner_alumni`, `id_user`, `nama`, `pertanyaan_jawaban`, `format_jawaban`, `tanggal_menjawab`, `id_jurusan`) VALUES
(3, 9, 'gita', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"SPRINT ASIA TECONOLOCY\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"JAKARTA SELATAN\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"JAKARTA\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Lain-lain yaitu Informasi\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2019-02\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"5.000.000 \\u2013 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan pengalaman\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di STIKOM PI ?\",\"jawaban\":[\"Tidak sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Tidak Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"GameBrott\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2017\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"2018\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Info lowongan pada web STIKOM PI\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Mendapat keterampilan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"IPK \\/ kemampuan akademik\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"AHAMD FAUZI RAHMAN\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"PEKANBARU\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"2019-10-12\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jln. Kutilang Sakti\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"0255520\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"fauzi@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2014\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2018\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-12 10:00:23', 2),
(4, 12, 'Hany Al', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT indofood\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Garuda sakti\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Operator\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Internet\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"2.500.000 - 5.000.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"PT indofood\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Operator\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Internet\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Sesuai bidang keilmuan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Ekstrkulikuler, organisasi, kelompok studi\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Hany Al\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Inhil\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1998-07-08\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"Perempuan\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082242792676\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"hany.cacuke78@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2010\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-12 12:34:58', 1),
(6, 16, 'fauzirahman05', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"SPRINT ASIA TECONOLOCY\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"JAKARTA SELATAN\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"JAKARTA\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Lain-lain yaitu \"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2019-02\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"> 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Gaji Memadai\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sangat sesuai dengan harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Sangat Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"GameBrott\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Lain-lain yaitu Game\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2017\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"2018\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Gaji memadai\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Pengalaman lain : kursus keterampilan, bahasa, TI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"AHAMD FAUZI RAHMAN\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"PEKANBARU\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"2019-10-12\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jln. Kutilang Sakti\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"02255555\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"fauzi@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2014\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2018\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-12 13:19:13', 1),
(7, 17, 'Bobbykurniawan', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"CV. SUMBER TIRTA ANUGRAH\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jl riau\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Lain-lain yaitu Designner\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"September tahun 2019\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Internet\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sangat sesuai dengan harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Sangat Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Cv sumber tirta anugrah\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Lain-lain yaitu Designner\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"September 2019\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"-\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Internet\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Sesuai bidang keilmuan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Kepribadian\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Bobby Kurniawan\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1996-11-03\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl gajah Mungkur\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"081268130739\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"bobbykurniawan029@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2014\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-12 13:30:41', 1),
(8, 13, 'Piliang06', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT. Sprint Asia Teknologi\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jl. Rs Fatmawati Jakarta Selatan\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Jakarta Selatan\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"April 2019\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Lain-lain yaitu Teman\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"2.500.000 - 5.000.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan pengalaman\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"PT. Sprint Asia Teknologi\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"April 2019\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Sampai Sekarang\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Mendapat pengetahuan baru\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Ekstrkulikuler, organisasi, kelompok studi\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Rizky Yananda\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"MEDAN\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1996-06-06\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl. Hidup Baru Jakarta Selatan\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082389123898\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"yanandarizky@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2014\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2018\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-12 13:49:55', 1),
(9, 18, 'Mgufindo', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT Sandika cahaya mandiri\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jl Tebet timur dalam 8t\\/2b\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"DKI Jakarta\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"Desember 2018\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"2.500.000 - 5.000.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"PT Sandika Cahaya Mandiri\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"Desember 2018\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"-\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Sesuai bidang keilmuan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"> 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Pengalaman lain : kursus keterampilan, bahasa, TI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Muhammad Gufindo Alenra\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Bontang\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1996-01-17\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl kampung Melayu kecil III\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082386838514\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"mgufindo@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2014\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-12 13:52:35', 1),
(10, 19, 'M.Rifa\'i', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Mengajar\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jl nangka\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Tenaga Pendidik\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Lain-lain yaitu \"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Pengajar\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Tenaga Pendidik\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"2030\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Lain-lain yaitu \"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Kepribadian\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"M.RIFA\'I\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Inhil\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1997-10-14\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl naga sakti\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"085264508495\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"muhammad24121997@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Industri\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-14 09:13:57', 3),
(11, 20, 'Selamet eko kristanto', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Barbershop\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Gg sepakat\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Lain-lain yaitu Barber\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Lain-lain yaitu Inisiatif\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Rendah\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Tidak sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Sangat Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Barbershop\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Administrasi\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Forever\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Sesuai bidang keilmuan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"IPK \\/ kemampuan akademik\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Selamet eko Kristanto\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Pulau palas\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1997-01-01\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Gg sepakat\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082285858812\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"selametekokristanto@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2017\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Matematika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-14 09:18:29', 4),
(12, 21, 'Nurkhairati', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"SMKN 1 SEBERIDA\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"desa buluh rampai, seberida, indragiri hulu\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"indragiri hulu\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Tenaga Pendidik\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"Juli 2019\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sangat sesuai dengan harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Sangat Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"STIE INDRAGIRI RENGAT\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Staff IT\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"Oktober 2018\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Juni 2019\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Gaji memadai\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Pengalaman lain : kursus keterampilan, bahasa, TI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Nur Khairati\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Rengat\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1996-11-16\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"Perempuan\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"jalan hangtuah no 275 indragiri hulu \"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082268079259\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"nurkhairati@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2014\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"20\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-15 03:46:51', 1),
(13, 22, 'Izza Afkarina', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Almumtaz\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jl.Subrantas KM.15\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Administrasi\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"Agustus 2016\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Info lowongan pada Informasi Lowongan Kerja Online\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"2.500.000 - 5.000.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Rendah\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan pengalaman\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Kurang sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Tidak Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Almumtaz\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Administrasi\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"Agustus 2016\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"-\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Info lowongan pada web UIN SUSKA RIAU\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Mendapat pengetahuan baru\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Pengalaman lain : kursus keterampilan, bahasa, TI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Izza Afkarina\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Rokan HUlu\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1998-05-02\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"Perempuan\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl.Buluh cina\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082267671234\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"11651200141@students.uin-suska.ac.id\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-15 14:45:24', 1),
(14, 23, 'Muhammad Rifqi Aufa Abdika', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Bank Sampah Tuan Dibangrana\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jl Bakti\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"5\\/2019\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Lain-lain yaitu Alumni\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"2.500.000 - 5.000.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan pengalaman\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Bank Sampah Tuan Dibangrana\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"5\\/2019\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"5\\/2019\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Sesuai bidang keilmuan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Asal perguruan tinggi\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"M. Rifqi Aufa Abdika\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Tembilahan\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1996-10-20\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl. Lumba lumba\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"081268475430\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"m.rifqi.aufa.abdika@students.uin-suska.ac.id\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2014\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-17 01:40:55', 1),
(15, 24, 'jbenastey', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Digtive\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Perumahan Hasanah Indah \"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Kampar, Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"1 tahun\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Digtive\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"1 Tahun\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"2018\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Internet\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Sesuai bidang keilmuan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Pengalaman lain : kursus keterampilan, bahasa, TI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Jihad Benastey\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1997-09-04\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jalan Yudha Karya\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"085355825959\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"jbenastey@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 07:26:03', 1),
(16, 26, 'Khanza Oktavia', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT.Surya Citra\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Garuda Sakti Km.3\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Administrasi\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"november 2016\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"2.500.000 - 5.000.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Rendah\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan pengalaman\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Kurang sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Tidak Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"PT.Surya Citra\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Administrasi\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"november 2016\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"-\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Mendapat pengetahuan baru\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Asal perguruan tinggi\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Khanza Oktavia\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Guntung, 7-10-1997\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"2019-10-19\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"Perempuan\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Garuda Sakti, Km.3\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"081376768754\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"khanza.ok7@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Matematika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 07:40:25', 14);
INSERT INTO `hasil_kuisioner_alumni` (`id_hasil_kuisioner_alumni`, `id_user`, `nama`, `pertanyaan_jawaban`, `format_jawaban`, `tanggal_menjawab`, `id_jurusan`) VALUES
(17, 28, 'Habibsadikin', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT. PERTAMINA\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Dumai\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"KABUPATEN DUMAI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Lain-lain yaitu MIGAS\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Lain-lain yaitu KEPALA BIDANG\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"> 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Gaji Memadai\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Sangat Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"PT PERTAMINA\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Lain-lain yaitu Migas\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Lain-lain yaitu KEPALA BIDANG\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Bulan April 2100\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"Dst\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Gaji memadai\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"IPK \\/ kemampuan akademik\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"HABIB SADIKIN \"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"CILIMBER BANDUNG \"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1998-04-05\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"JALAN MERPATI \"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082284480096\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"habibsadikin@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Industri\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 07:44:18', 3),
(18, 32, 'zurriyatafatni', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT. Chevron Pacific Indonesia\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Rumbai\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Pekanbaru\\/Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"> 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Rumbai\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Januari 2019\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Internet\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Sesuai bidang keilmuan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"IPK \\/ kemampuan akademik\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Zurriyata Fatni\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Pangkalan Kerinci\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1998-06-28\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"Perempuan\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jln. Buluh Cina, Panam\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082392688006\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"zurriyata@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2019\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 07:54:35', 1),
(19, 29, 'REFANI AULIA PALUPI', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"RAPP\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Townsite 1, Pangkalan Kerinci\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Pelalawan\\/Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Staff IT\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Internet\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"5.000.000 \\u2013 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Gaji Memadai\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"RAPP\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Administrasi\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Internet\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Mendapat pengetahuan baru\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"IPK \\/ kemampuan akademik\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"REFANI AULIA PALUPI\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"PANGKALAN KERINCI\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1998-03-02\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"Perempuan\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"GRAHA MUSTAMINDO 1\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"081261115212\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"refaniauliapalupi@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 07:59:03', 1),
(20, 27, 'azharsiddiq', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Uin Suska\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jalan soebarantas Uin\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"pekanbaru\\/riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Lain-lain yaitu mahasiswa\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Gaji Memadai\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Kurang sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"uin\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Gaji memadai\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"IPK \\/ kemampuan akademik\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Pemerintah\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"azhar siddiq\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"duri\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1997-05-28\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"suka karya\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"081275753271\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"azharsiddiq36@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 08:07:09', 1),
(21, 33, 'Adeluthfi07', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Pt.Angin ribut\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jl.kartama\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Staff IT\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Info lowongan pada Informasi Lowongan Kerja Online\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"2.500.000 - 5.000.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan pengalaman\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sangat sesuai dengan harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Sangat Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Pt. Aneka ragam\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Oktober 2015\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Info lowongan pada web UIN SUSKA RIAU\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Gaji memadai\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Pengalaman lain : kursus keterampilan, bahasa, TI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Ade luthfi\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1997-10-07\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl.karya bersama\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082386178088\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"adeluthfi07@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 08:26:23', 1),
(22, 36, 'y_amryy', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT. MENCARI CINTA SEJATI\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"JL. IN AJA DULU\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"RIAU\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"2009\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Info lowongan pada Informasi Lowongan Kerja Online\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"> 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Sangat Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sangat sesuai dengan harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Sangat Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"PT. MENCARI CINTA SEJATI\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2009\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Masih belum ketemu cinta sejatinya, jadi belum berhenti\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Iklan\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Sesuai bidang keilmuan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Pengalaman lain : kursus keterampilan, bahasa, TI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Aulil Amri\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Sekeladi\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1998-07-31\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl. Garuda Sakti\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082288255781\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"aulilamri46@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2017\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 08:35:40', 1),
(23, 34, 'tiaramessaputri', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT. Mandiri Sejahtera\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"jalan nirwana ujung no.18\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Wiraswasta\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"february 2015\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Info lowongan pada Informasi Lowongan Kerja Online\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"5.000.000 \\u2013 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan pengalaman\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Kurang sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"PT. Burung Walet\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Wiraswasta\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"januari 2013\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"november 2014\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Internet\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Mendapat keterampilan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Kepribadian\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"R. Tiara Messa Putri\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1998-02-02\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"Perempuan\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"jalan bukit barisan blok A1 no.22\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"081364261362\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"tiaraamessa@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 08:39:20', 1),
(24, 37, 'Reski.saputra', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Google\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Silicon Valley\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"-\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Lain-lain yaitu Data Scientist\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"12 Maret 2022\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Internet\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"> 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Ssuai bidang keilmuan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sangat sesuai dengan harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Sangat Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Tesla\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Lain-lain yaitu AI\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"11 Juni 2021\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"23 Desember 2021\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Internet\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"2.500.000 \\u2013 5.000.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Mendapat pengetahuan baru\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Kepribadian\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Reski Saputra\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Pekanbaru\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"2019-10-19\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Jl.Pasir Putih\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082390475215\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"iki@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 08:48:41', 1),
(25, 25, 'Aldyan Firdaus', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Pt cinta abadi\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Jl kayangan\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Kampar\\/riau\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"Maret 2019\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Info lowongan pada Informasi Lowongan Kerja Online\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"5.000.000 \\u2013 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan pengalaman\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Pt cinta abadi\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Staff IT\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"2017\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Februari 2018\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Internet\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"< 2.500.000\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Gaji memadai\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Ekstrkulikuler, organisasi, kelompok studi\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Al\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Sb \"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"2016-08-08\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Taman karya\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"0134558767676\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"al@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2010\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 09:03:31', 1),
(26, 35, 'fauziihsan', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"PT. RAPP\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Pangkalan Kerinci\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"Pelalawan\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"januari 2016\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Koneksi (3,Dosen, Saudara\\/Keluarga, dll\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"> 7.500.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Tinggi\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Gaji Memadai\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"PT. IKPP\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Programmer\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"Maret 2015\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"Desember 2015\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"Dst\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Gaji memadai\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"< 3 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Pengalaman lain : kursus keterampilan, bahasa, TI\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"Fauzi Ihsan\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"Muara Bungkal\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"1997-02-13\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"laki-laki\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Muara Bungkal\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082381836236\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"fauzyihsan@gmail.com\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2011\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2015\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Teknik Informatika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.50-4.00\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-19 20:40:55', 1),
(27, 40, 'HARTINI', '[{\"pertanyaan\":\"Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)\",\"jawaban\":\"Almumtaz\"},{\"pertanyaan\":\"Alamat tempat bekerja sekarang?\",\"jawaban\":\"Garuda Sakti Km.3\"},{\"pertanyaan\":\"Kabupaten\\/Provinsi Bekerja?\",\"jawaban\":\"tembilahan\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Jabatan\\/posisi dalam bekerja?\",\"jawaban\":\"Tenaga Pendidik\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekkerja?\",\"jawaban\":\"juli 2016\"},{\"pertanyaan\":\"Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?\",\"jawaban\":\"Info lowongan pada Informasi Lowongan Kerja Online\"},{\"pertanyaan\":\"Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?\",\"jawaban\":[\"2.500.000 - 5.000.000\"]},{\"pertanyaan\":\"Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?\",\"jawaban\":[\"Rendah\"]},{\"pertanyaan\":\"Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?\",\"jawaban\":\"Mendapatkan\"},{\"pertanyaan\":\"Sejauh mana perkejaan saudara yang terakhir\\/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?\",\"jawaban\":[\"Sesuai harapan\"]},{\"pertanyaan\":\"Apakah saudara puas dengan pekerjaan saudara terkahir \\/ sekarang?\",\"jawaban\":[\"Puas\"]},{\"pertanyaan\":\"Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)\",\"jawaban\":\"Almumtaz\"},{\"pertanyaan\":\"Jenis Instransi\\/ bidang usaha\\/ industri?\",\"jawaban\":\"Wirausaha\"},{\"pertanyaan\":\"Jabatan \\/ posisi pekerjaan pertama?\",\"jawaban\":\"Tenaga Pendidik\"},{\"pertanyaan\":\"Bulan dan tahun mulai bekerja?\",\"jawaban\":\"november 2016\"},{\"pertanyaan\":\"Bulan dan tahun berhenti berkerja?\",\"jawaban\":\"-\"},{\"pertanyaan\":\"Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?\",\"jawaban\":[\"Teman, saudara, dll\"]},{\"pertanyaan\":\"Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?\",\"jawaban\":[\"Dst\"]},{\"pertanyaan\":\"Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?\",\"jawaban\":\"Mendapat keterampilan\"},{\"pertanyaan\":\"Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?\",\"jawaban\":[\"3 bulan \\u2013 8 bulan\"]},{\"pertanyaan\":\"Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?\",\"jawaban\":\"Kepribadian\"},{\"pertanyaan\":\"Jenis Instansi\\/Bidang Usaha\\/Industri?\",\"jawaban\":\"Swasta\"},{\"pertanyaan\":\"Nama?\",\"jawaban\":\"hartini\"},{\"pertanyaan\":\"Tempat Lahir?\",\"jawaban\":\"bagan jaya, 08-07-1998\"},{\"pertanyaan\":\"Tanggal Lahir?\",\"jawaban\":\"2019-10-20\"},{\"pertanyaan\":\"Jenis Kelamin?\",\"jawaban\":[\"Perempuan\"]},{\"pertanyaan\":\"Alamat Sekarang\\t?\",\"jawaban\":\"Garuda Sakti, Km.3\"},{\"pertanyaan\":\"No. Telp\\/Hp\\t?\",\"jawaban\":\"082267671234\"},{\"pertanyaan\":\"E-mail\\t?\",\"jawaban\":\"11651200141@students.uin-suska.ac.id\"},{\"pertanyaan\":\"Th. Masuk\\t?\",\"jawaban\":\"2016\"},{\"pertanyaan\":\"Th. Lulus\\t?\",\"jawaban\":\"2020\"},{\"pertanyaan\":\"Prodi\\t?\",\"jawaban\":[\"Matematika\"]},{\"pertanyaan\":\"IPK Lulusan\\t?\",\"jawaban\":[\"3.00-3.49\"]}]', '[\"text\",\"text\",\"text\",\"radio2\",\"radio2\",\"text\",\"radio2\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio\",\"text\",\"radio2\",\"radio2\",\"text\",\"text\",\"radio\",\"radio\",\"radio2\",\"radio\",\"radio2\",\"radio2\",\"text\",\"text\",\"date\",\"radio\",\"text\",\"number\",\"email\",\"number\",\"number\",\"radio\",\"radio\"]', '2019-10-20 11:27:44', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Teknik Informatika'),
(2, 'Sistem Informasi'),
(3, 'Teknik Industri'),
(4, 'Hukum Syariah'),
(5, 'Pendidikan Agama Islam'),
(6, 'Pendidikan Bahasa Arab'),
(7, 'Kependidikan Islam'),
(8, 'Pendidikan Bahasa Inggris'),
(9, 'Pendidikan Matematika'),
(10, 'Pendidikan Guru Madrasah Ibtidaiyah'),
(11, 'Pendidikan Kimia'),
(12, 'Pendidikan Bahasa Indonesia'),
(13, 'Tadris IPA'),
(14, 'Pendidikan Geografi'),
(15, 'Pendidikan IPS Ekonomi'),
(16, 'Aqidah dan Filsafat'),
(17, 'Tafsir Hadits'),
(18, 'Ilmu Hadis'),
(19, 'Perbandingan Agama'),
(20, 'Psikologi'),
(21, 'Manajemen S1'),
(22, 'Administrasi Negara S1'),
(23, 'Diploma III Manajemen Perusahaan'),
(24, 'Diploma III Akuntansi'),
(25, 'Diploma III Administrasi Perpajakan'),
(26, 'Ahwal Al-Syakhshiyyah'),
(27, 'Jinayah Siyasah'),
(28, 'Perbandingan Mazhab dan Hukum'),
(29, 'Muammalah'),
(30, 'Ekonomi Islam'),
(31, 'Ilmu Hukum'),
(32, 'Diploma III Perbankan Syariah'),
(33, 'Ilmu Komunikasi'),
(34, 'Pengembangan Masyarakat Islam'),
(35, 'Manajemen Dakwah'),
(36, 'Bimbingan dan Konseling Islam'),
(37, 'Teknik Elektro'),
(38, 'Matematika Terapan'),
(39, 'Peternakan'),
(40, 'Argoteknologi'),
(41, 'Gizi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuisioner`
--

CREATE TABLE `kuisioner` (
  `id_kuisioner` int(11) NOT NULL,
  `id_title` int(11) NOT NULL,
  `pertanyaan` text DEFAULT NULL,
  `format_pertanyaan` enum('radio','text','table','date','email','number','radio2','select') DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `tujuan` enum('alumni','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kuisioner`
--

INSERT INTO `kuisioner` (`id_kuisioner`, `id_title`, `pertanyaan`, `format_pertanyaan`, `jawaban`, `tujuan`) VALUES
(1, 3, 'Nama tempat bekerja sekarang? (Sesuai dengan form nama perusahaan sekarang diatas)', 'text', '', 'alumni'),
(2, 3, 'Alamat tempat bekerja sekarang?', 'text', '', 'alumni'),
(3, 3, 'Kabupaten/Provinsi Bekerja?', 'text', '', 'alumni'),
(4, 3, 'Jenis Instansi/Bidang Usaha/Industri?', 'radio2', '[\"Pemerintah\",\"Swasta\",\"Wirausaha\",\"text\"]', 'alumni'),
(5, 3, 'Jabatan/posisi dalam bekerja?', 'radio2', '[\"Administrasi\",\"Operator\",\"Staff IT\",\"Programmer\",\"Tenaga Pendidik\",\"Wiraswasta\",\"text\"]', 'alumni'),
(6, 3, 'Bulan dan tahun mulai bekkerja?', 'text', '', 'alumni'),
(7, 3, 'Dari mana saudara mengatahui atau mendapatkan informasi mengenai adanya pekerjaan?', 'radio2', '[\"Iklan\",\"Internet\",\"Pengumuman di kampus\",\"Koneksi (3,Dosen, Saudara/Keluarga, dll\",\"Info lowongan pada Informasi Lowongan Kerja Online\",\"text\"]', 'alumni'),
(8, 3, 'Berapa rata-rata pendapatan saudara pada pekerjaan sekarang?', 'radio', '[\"< 2.500.000\",\"2.500.000 - 5.000.000\",\"5.000.000 – 7.500.000\",\"> 7.500.000\"]', 'alumni'),
(9, 3, 'Menurut saudara bagaimana kebutuhan instansi tempat saudara bekerja terhadap lulusan dari prodi atau jurusan saudara?', 'radio', '[\"Sangat Tinggi\",\"Tinggi\",\"Rendah\",\"Sangat Rendah\"]', 'alumni'),
(10, 3, 'Secara Umum, apa pertimbangan utama saudara dalam memilih pekerjaan yang terakhir sekarang?', 'radio2', '[\"Gaji Memadai\",\"Ssuai bidang keilmuan\",\"Mendapatkan pengalaman\",\"Mendapatkan\",\"Mendapatkan\",\"text\"]', 'alumni'),
(11, 3, 'Sejauh mana perkejaan saudara yang terakhir/sekarang sesuai dengan harapan ketika pertama kali belajar di UNIVERSITAS ISLAM SULTAN SYARIF KASIM II RIAU?', 'radio', '[\"Sangat sesuai dengan harapan\",\"Sesuai harapan\",\"Kurang sesuai harapan\",\"Tidak sesuai harapan\"]', 'alumni'),
(12, 3, 'Apakah saudara puas dengan pekerjaan saudara terkahir / sekarang?', 'radio', '[\"Sangat Puas\",\"Puas\",\"Tidak Puas\",\"Kurang\"]', 'alumni'),
(13, 4, 'Nama tempat bekerja?(Sesuai dengan form nama perusahaan pertama diatas)', 'text', '', 'alumni'),
(14, 4, 'Jenis Instransi/ bidang usaha/ industri?', 'radio2', '[\"Pemerintah\",\"Swasta\",\"Wirausaha\",\"text\"]', 'alumni'),
(15, 4, 'Jabatan / posisi pekerjaan pertama?', 'radio2', '[\"Administrasi\",\"Operator\",\"Staff IT\",\"Programmer\",\"Tenaga Pendidik\",\"Wiraswasta\",\"text\"]', 'alumni'),
(16, 4, 'Bulan dan tahun mulai bekerja?', 'text', '', 'alumni'),
(17, 4, 'Bulan dan tahun berhenti berkerja?', 'text', '', 'alumni'),
(18, 4, 'Darimana saudara mengetahui atau mendapatkan informasi mengenai adanya pekerjaan pertama ini?', 'radio', '[\"Iklan\",\"Internet\",\"Pengemuman kampus\",\"Teman, saudara, dll\",\"Info lowongan pada web UIN SUSKA RIAU\"]', 'alumni'),
(19, 4, 'Berapa rata-rata pendapatan (seluruhnya) saudara pada pekerjaan pertama ?', 'radio', '[\"< 2.500.000\",\"2.500.000 – 5.000.000\",\"Dst\"]', 'alumni'),
(20, 4, 'Secara umum apa pertimbangan utama saudara dalam memilih pekerjaan pertama ?', 'radio2', '[\"Gaji memadai\",\"Sesuai bidang keilmuan\",\"Mendapat pengetahuan baru\",\"Mendapat pengetahuan baru\",\"Mendapat keterampilan\",\"text\"]', 'alumni'),
(21, 4, 'Berapa lama saudara menunggu untu mendapatkan pekerjaan pertama setelah lulus ?', 'radio', '[\"< 3 bulan\",\"3 bulan – 8 bulan\",\"> 8 bulan\"]', 'alumni'),
(22, 4, 'Faktor yang paling berperan dalam mendapatakan peerjaan pertama saudara ? ?', 'radio2', '[\"IPK / kemampuan akademik\",\"Ekstrkulikuler, organisasi, kelompok studi\",\"Asal perguruan tinggi\",\"Kepribadian\",\"Pengalaman lain : kursus keterampilan, bahasa, TI\",\"text\"]', 'alumni'),
(24, 3, 'Jenis Instansi/Bidang Usaha/Industri?', 'radio2', '[\"Pemerintah\",\"Swasta\",\"Wirausaha\",\"text\"]', 'alumni'),
(25, 5, 'Nama  Responden?', 'text', '', 'user'),
(26, 5, 'Jabatan?', 'text', '', 'user'),
(27, 5, 'Nama Instansi? (nama instansi anda)', 'text', '', 'user'),
(28, 5, 'Alamat?', 'text', '', 'user'),
(29, 5, 'Jumlah  Alumni  Sekolalah  Tinggi  Ilmu  Komputer  Pelita  Indonesia ?', 'text', '', 'user'),
(30, 6, 'Nama  Alumni?\n (sesuai dengan nama form alumni yang bekerja di tempat anda)', 'text', '', 'user'),
(31, 6, 'Jabatan?', 'text', '', 'user'),
(32, 6, 'Nama Instansi? (nama instansi anda)', 'text', '', 'user'),
(33, 6, 'Alamat?', 'text', '', 'user'),
(34, 6, 'Jumlah  Alumni  Sekolalah  Tinggi  Ilmu  Komputer  Pelita  Indonesia ?', 'text', '', 'user'),
(35, 8, 'Pertanyaan dibawah ini adalah faktor yang menentukan seleksi karyawan baru (pilihlah jawaban dibawah ini dengan member tanda silang atau lingkar pada jawaban: SS=Sangat Setuju; S=Setuju; TS=Tidak Setuju; STS=Sangat Tidak Setuju).', 'table', '{\n    \"thead\":[\"No\",\"Indikator\"],\n    \"tbody\":[\n                [\"a\",\"Mempunyai kemampuan akademik\"],\n                [\"b\",\"Menguasai bahasa asing (Inggris,Mandarin,dll)\"],\n                [\"c\",\"Mempunyai kemampuan manajerial\"],\n                [\"d\",\"Faktor kepribadian (wawasan, rasa percaya diri, kemandirian dan motivasi)\"],\n                [\"e\",\"Mempunyai kemampuan komunikasi\"],\n                [\"f\",\"Mempunyai kemampuan adaptasi\"],\n                [\"g\",\"Mempunyai kemampuan komputer\"],\n                [\"h\",\"Mempunyai wawasan yang baik\"],\n                [\"i\",\"Faktor koneksi-persaudaraan\"],\n                [\"j\",\"Faktor relasi-kenalan baik(teman)\"],\n                [\"k\",\"Faktor alumni\"],\n                [\"l\",\"Faktor gender\"],\n                [\"m\",\"Faktor ras\\/suku\"]\n            ],\n    \"radiokey\":[\"SS\",\"S\",\"TS\",\"STS\"],\n    \"radioval\":[\"4\",\"3\",\"2\",\"1\"]\n}', 'user'),
(36, 8, 'Bidang keahlian yang paling membantu keberhasilan mengikuti tes penerimaan pegawai?', 'radio2', '[\"Programming\",\"Analisis dan Perancangan Sistem\",\"Algoritma\",\"Perancangan Grafis\",\"Analisis Laporan Keuangan\",\"Dasar-Dasar Akuntansi\",\"Manajemen Proyek\",\"Sistem informasi\",\"Operation research\",\"Manajemen operas\",\"text\"]', 'user'),
(37, 8, 'Memberikan informasi informasi lowongan kerja ke?', 'radio2', '[\"Program studi,\"Iklan di media cetak / elektronik\",\"Dinas Tenaga Kerja\",\"text\"]', 'user'),
(38, 8, 'Bidang pekerjaan yang dibutuhkan?', 'radio2', '[\"Pemasaran\",\"Keuangan\",\"Personalia\",\"Produksi/Operasi\",\"Research & Development\",\"Sistem Informasi\",\"Analis Keuangan\",\"text\"]', 'user'),
(39, 8, 'Jabatan pertama yang ditempati alumni?', 'radio2', '[\"Klerikal\",\"Setingkat lower Manager\",\"Setingkat MiddleManager\",\"Setingkat Top Manager\",\"Setingkat Staff\",\"text\"]', 'user'),
(40, 8, 'Gaji pertama kali yang diterima oleh alumni?', 'radio', '[\"Dibawah Rp.500.000\",\"Rp.500.000 s/d Rp.1.000.000\",\"Rp.1.000.000 s/d Rp.2.000.000\",\"Rp.2.000.000 s/d Rp.3.000.000\",\"Rp.3.000.000 s/d Rp.4.000.000\",\"Diatas Rp.4.000.000\"]', 'user'),
(41, 9, 'Bidang pekerjaan alumni terakhir?', 'radio2', '[\"Pemasaran\",\"Keuangan\",\"Personalia\",\"Produksi/Operasi\",\"Research & Development\",\"Sistem Informasi\",\"Analis Keuangan\",\"text\"]', 'user'),
(42, 9, 'Bidang ilmu yang paling menunjang karir alumni?', 'radio2', '[\"Programming\",\"Analisis dan perancangan system\",\"Algoritma\",\"Analisis laporan keuangan\",\"Dasar-dasar akuntansi\",\"Manajemen proyek\",\"Sistem informasi\",\"Operation research\",\"Manajemen operasi\",\"text\"]', 'user'),
(43, 9, 'Jabatan terakhir yang ditempati alumni?', 'radio2', '[\"Klerikal\",\"Setingkat lower manager\",\"Setingkat middle manager\",\"Setingkat top manager\",\"Setingkat staff\",\"text\"]', 'user'),
(44, 9, 'Gaji terahkir yang diterima alumni?', 'radio', '[\"Dibawah Rp.500.000\",\"Rp.500.000 s/d Rp.1.000.000\",\"Rp.1.000.000 s/d Rp.2.000.000\",\"Rp.2.000.000 s/d Rp.3.000.000\",\"Rp.3.000.000 s/d Rp.4.000.000\",\"Diatas Rp.4.000.000\"]', 'user'),
(45, 10, 'Pernyataan berikut ini digunakan untuk mengetahui kompetensi alumni di lingkungan kerja. Pilihlah jawaban dengan memberikan lingkaran atau silang pada jawaban : SB= Sangat Baik, B=Baik, C=Cukup Baik, KB=Kurang Baik.', 'table', '{\n    \"thead\":[\"No\",\"Pernyataan\"],\n    \"tbody\":[\n                [\"a\",\"Integritas (Etika dan Moral)\"],\n                [\"b\",\"Keahlian berdasarkan ilmu (Profesianalisme)\"],\n                [\"c\",\"Kemampuan bahasa asing\"],\n                [\"d\",\"Penguasaan teknologi informasi\"],\n                [\"e\",\"Kemampuan Komunikasi\"],\n                [\"f\",\"Kerjasama tim\"],\n                [\"g\",\"Pengembangan diri\"]\n            ],\"radiokey\":[\"SB\",\"B\",\"CB\",\"KB\"],\n    \"radioval\":[\"4\",\"3\",\"2\",\"1\"]\n}', 'user'),
(46, 11, 'Program study yang sekiranya di butuhkan oleh instansi Bapak/Ibu (boleh pilih lebih dari satu)', 'radio2', '[\"S1 sistem Informasi\",\"S1 Teknik Informatika\",\"S1 Manajemen1\",\"S1 Akuntansi\",\"D3 Akuntansi\",\"text\"]', 'user'),
(47, 11, 'Mata kuliah yang sangat menunjang pekerjaan instansi Bapak/Ibu (boleh pilih salah satu)', 'radio2', '[\"Pengetahuan Microsoft Office\",\"Programming\",\"Algoritma\",\"Kalkulus\",\"Sistem Basis Data\",\"Metode Numerik\",\"Analisis dan Perancangan Sistem Informasi\",\"Perancangan Basis Data\",\"Pemrograman  Orientasi Objek\",\"Bahasa Rakitan\",\"Perancangan Basis Data\",\"Pemrograman  Orientasi Objek\",\"Bahasa Rakitan\",\"Jaringan Komputer\",\"Dasar-Dasar Akuntansi\",\"Sistem Inventory\",\"Operation Research\",\"Analisa Laporan Keuangan\",\"Statistika\",\"Etika Bisnis\",\"text\"]', 'user'),
(48, 11, '3. Saran dari instansi, baik yang menyangkut kurikulum /akademik atau lainya untuk pengembangan jurusan Sistem Informasi STIKOM Pelita Indonesia dimasa mendatang', 'text', '', 'user'),
(49, 2, 'Nama?', 'text', '', 'alumni'),
(50, 2, 'Tempat Lahir?', 'text', '', 'alumni'),
(51, 2, 'Tanggal Lahir?', 'date', '', 'alumni'),
(52, 2, 'Jenis Kelamin?', 'radio', '[\"laki-laki\",\"Perempuan\"]', 'alumni'),
(53, 2, 'Alamat Sekarang	?', 'text', '', 'alumni'),
(54, 2, 'No. Telp/Hp	?', 'number', '', 'alumni'),
(55, 2, 'E-mail	?', 'email', '', 'alumni'),
(56, 2, 'Th. Masuk	?', 'number', '', 'alumni'),
(57, 2, 'Th. Lulus	?', 'number', '', 'alumni'),
(58, 2, 'Prodi	?', 'radio', '[\"Teknik Informatika\",\"Sistem Informasi\",\"Teknik Elektro\",\"Teknik Industri\",\"Matematika\"]', 'alumni'),
(59, 2, 'IPK Lulusan	?', 'radio', '[\"2.00-2.49 \",\"2.50-2.99\",\"3.00-3.49\",\"3.50-4.00\"]', 'alumni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_user`, `username`, `password`, `nama`, `akses`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin'),
(2, 'cicierza', 'f3e8ae63d0bd1b7b60b99983336a538d', 'cici', 'alumni'),
(3, 'dwimulya', '1b5e0cb5a1af6695c9a8a22a2a6a3abd', 'dwi mulya', 'alumni'),
(4, 'ezaresdifa', '97ad9c5778c002d087f76ec01f51ed6b', 'eza resdifa', 'alumni'),
(5, 'ratna', 'd41d8cd98f00b204e9800998ecf8427e', 'ratna', 'alumni'),
(6, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'nama', 'alumni'),
(7, 'wirdatul', 'd41d8cd98f00b204e9800998ecf8427e', 'wirdatul hasanah', 'alumni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE `lowongan` (
  `lowongan_id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `file` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`lowongan_id`, `judul`, `isi`, `file`) VALUES
(7, 'Lowongan Kerja: Sehasta Coffee', '<p>1.Barista (Diutamakan Wanita)<br />\r\n2.Kitchen Helper ( Pria / Wanita )<br />\r\npersyaratan :<br />\r\n- Usia maksimal 25 tahun<br />\r\n- Belum menikah<br />\r\n- Berpenampilan menarik<br />\r\n<br />\r\nkirim kan CV &amp; Pasfoto ke :<br />\r\nsehasta.co@gmail.com</p>\r\n', 'Screenshot_2019-10-12 BroSisKerja Indonesia ( brosiskerja) • Instagram photos and videos.png'),
(9, ' Lowongan Kerja : Ana Catering', '<p>Lowongan Kerja :Ana Catering</p>\r\n\r\n<p>Dibutuhkan<br />\r\nWaitress<br />\r\n1. Wanita, usia maks. 25 tahun<br />\r\n2. Pendidikan minimal SMA/SMK Sederajat<br />\r\n3. Bersedia bekerja shift<br />\r\n4. Berpenampilan menarik<br />\r\n5. Aktif dan Komunikatif<br />\r\nBagi yang berminat dan sesuai kriteria, antar lamaran ke :<br />\r\nRSIA Zainab<br />\r\nJl. Ronggowarsito I No. 1 (Gobah), Pekanbaru</p>\r\n\r\n<p>Contact Person : 081277170344<br />\r\nDisclaimer<br />\r\n1. BroSisKerja adalah media penempatan info lowongan kerja. Sama sekali tidak berafiliasi dengan perusahaan/instansi yang beriklan<br />\r\n2. Waspadai perusahaan/instansi yang meminta biaya akomodasi, imbalan, kerjasama agen travel dan reimbursement/refund/sistem penggantian biaya.<br />\r\n3. Laporkan kepada kami jika ada lowongan yang mencurigakan.</p>\r\n', 'Screenshot_2019-10-12 BroSisKerja Indonesia ( brosiskerja) • Instagram photos and videos(1).png'),
(10, 'Lowongan Kerja: CV Sumber Tirta Anugerah', '<p>1. Koordinator Marketing<br />\r\n2. Marketing<br />\r\n3. Kasir<br />\r\n4. Konsultan Produk<br />\r\n5. Helper</p>\r\n\r\n<p><br />\r\n-Pria (1,2,5), Wanita (3,4).<br />\r\n-Usia Maks. 40 Thn (1), 27 Thn (2,3,4), 20 Thn (5) .<br />\r\n-Pendidikan Min. D3/S1 (1,2,3,4), SMA (5).<br />\r\n-Pengalaman Min. 2 Thn sebagai senior marketing (1), Min. 1 Thn. diposisi yang sama (2,3,4).<br />\r\n-Memiliki SIM C dan kendaraan pribadi (1,2,4,5).<br />\r\n-Belum menikah (3,4,5).<br />\r\n-Bersedia untuk ke luar kota (1,2).<br />\r\n-Bersedia menjalani training dan menjalani ikatan-<br />\r\ndinas (5).<br />\r\n-Dapat berkomunikasi dengan baik.<br />\r\n-Disiplin, jujur, pekerja keras, loyal serta-<br />\r\nmemiliki good skill dan good attitude.<br />\r\n-Dapat bekerja di bawah tekanan.<br />\r\n-Berdomisili di Kota Pekanbaru.<br />\r\n<br />\r\nKirimkan lamaran ke :<br />\r\nCV. Sumber Tirta Anugerah<br />\r\nJL. Angkasa No. 18 A - Pekanbaru<br />\r\nAtau email :<br />\r\nfaktagrouphrd17@gmail.com<br />\r\n<br />\r\nCP : 0813 7145 8798 (Chat WA Only)</p>\r\n', 'Screenshot_2019-10-12 BroSisKerja Indonesia ( brosiskerja) • Instagram photos and videos(2).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1570609368),
('m130524_201442_init', 1570609373),
('m190124_110200_add_verification_token_column_to_user_table', 1570609374);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `profil_id` varchar(10) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`profil_id`, `isi`) VALUES
('art', '<p>ini anggaran rumah tangga tes</p>'),
('sdp', '<p>ini susunan dewan pengurus tes</p>'),
('sejarah', '<p>ini sejarah <strong>testing</strong> ini</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `title`
--

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `title`
--

INSERT INTO `title` (`id_title`, `title`) VALUES
(2, 'A. Data Pribadi'),
(3, 'B. Riwayat Pekerjaan Sekarang'),
(4, 'C. Riwayat Pekerjaan Pertama'),
(5, 'A. DATA INSTANSI DAN RESPONDEN'),
(6, 'B. DATA ALUMNI'),
(8, 'C. PENERIMAAN KARYAWAN'),
(9, 'D. INFORMASI KEBERADAAN ALUMNI'),
(10, 'D. KOMPETENSI ALUMNI'),
(11, 'E. SARAN UNTUK PROGRAM STUDI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lvl` enum('Admin','Alumni','User','') COLLATE utf8_unicode_ci NOT NULL,
  `no_reg` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `lvl`, `no_reg`) VALUES
(1, 'alwis', '11AP0uGQrmM3bZhrG7OmYHSfKg1fhLv9', '$2y$13$A5rs5OZkJtpuQyb2mtWYVuCaZtxFK6Cs43ztAWnqeFm8jVQUYt/p6', NULL, 'alwis@gmail.com', 10, 1570609405, 1570609405, 'kbV4SrQ6RDPCFAiEUItiuSmDnlLISX4p_1570609405', 'Admin', ''),
(9, 'gita', 'PLxVqiqIEpC1ozsHYpsk56Bc0t7Y70_G', '$2y$13$A5rs5OZkJtpuQyb2mtWYVuCaZtxFK6Cs43ztAWnqeFm8jVQUYt/p6', NULL, 'gita@gmail.com', 10, 1570861888, 1570861888, 'zDNmR42xtQuQ-ND7zmXqFU0x-DC7x0dE_1570861888', 'Alumni', '20191012gita'),
(12, 'Hany Al', 'wTtQqW36WvNV1LXOrL2pL4kXGWFYmY-X', '$2y$13$AMyNbwOB3L1tUU69HadAnO2nB.dGVdeTdyAuSC0e1JprX4nWV5ANG', NULL, 'hany.cacuke78@gmail.com', 10, 1570882671, 1570882671, '3qR-QVcwjpa25Pe2IPWcvXLdSCr_NTNT_1570882671', 'Alumni', '20191012Hany Al'),
(13, 'Piliang06', 'nb0qg1JTycVrpKDGr2A8Y_lUR1ymV1fi', '$2y$13$JDEjq5mvUQyvIxVrh4YgneWgTHXLuLC2Cb6KtDKcK2uA1o1GbM7Om', NULL, 'Yanandarizky@gmail.com', 10, 1570884305, 1570884305, 'qEkb4HsYeW4Od5ZulCuoLKoFENWEP231_1570884305', 'Alumni', '20191012Piliang06'),
(14, 'Eko selamet', '0crFo6-NToF88VZqQB0LGLocYrhovvw0', '$2y$13$keF9S9dhW6sUYTCm4cLSO.UkBPxLfkX1CWFtv1iy1L5MOBdgcfUTC', NULL, 'Selamet.eko117@gmail.com', 10, 1570884423, 1570884423, 'io3G6bCZ-YRcvjOmBQnn_WHSXfGhzTgT_1570884423', 'Alumni', '20191012Eko selamet'),
(15, 'feggy', 'kdVS8JZk32GfC0D6OEI1AHlTcjK6NKWo', '$2y$13$.eR7uyZgU/.ARVOr8WSm1uExFyTz/BqxOCrOYoM6BFaldWSJu3vmy', NULL, 'feggy.android@gmail.com', 10, 1570884844, 1570884844, 'TPmj-zCZLiCiNHB3KVYtrxiYsaGEE3-w_1570884844', 'Alumni', '20191012feggy'),
(16, 'fauzirahman05', 'P0AEdzk6sA7Ui8va4QD5Vh-c6MkWRCKd', '$2y$13$/rOfzLqWHbaOw66lFdA.lOLJ14AC28VZKr6FeUY.T6phiW6Ud6Ri6', NULL, 'ahmadfauzirahman99@gmail.com', 10, 1570885939, 1570885939, 'pSI6GjTNB5xzBBYVmwqprASlirq0Syzu_1570885939', 'Alumni', '20191012fauzirahman05'),
(17, 'Bobbykurniawan', 'tcjayq4Cbb4d1C_tRHqmpqbRpC30h664', '$2y$13$0Ydtu3Z7w.HJVMyZsgd7WOZf4/6jZGTX72UcgMgS.RAHKeCfcWUGm', NULL, 'Bobby.kurniawan@students.uin-suska.ac.id', 10, 1570886679, 1570886679, 'qAIo5eoQVXuNdPocDDRYEIZSdpDow99P_1570886679', 'Alumni', '20191012Bobbykurniawan'),
(18, 'Mgufindo', 'tuJk8zFcwVLN9PiA_1hcRXP7kIOAi4Ov', '$2y$13$rTxa4uYIslcccwwqX6DS9eWyRRRTeGwb0jY5SzX3/mu1QJKmIDCo2', NULL, 'mgufindo@gmail.com', 10, 1570888031, 1570888031, 'I3110hWX4hCK3hfrZ5HxKK0YUIB-bsow_1570888031', 'Alumni', '20191012Mgufindo'),
(19, 'M.Rifa\'i', 'w6p9VHn7Ocnr6oZwKY-t_qnS7lJZ9upZ', '$2y$13$1nMg1.9qOegSEfdZlvmSpORXf7RJceaLkZGRfFLRT5404VTz38qWq', NULL, 'Muhammad24121997@main.com', 10, 1571043445, 1571043445, 'wjs3djAZ44g4bPmM_RyaCMSaZIyjLm65_1571043445', 'Alumni', '20191014M.Rifa\'i'),
(20, 'Selamet eko kristanto', 'vzCJX3VNgMR2X8-cCMGHPWSojnCJX0-3', '$2y$13$70/Ygn3xturOjoInQRYPt.dlNbPRH2YOpI46orNsmgj5cqMFuwtMG', NULL, 'selametekokristanto@gmail.com', 10, 1571044201, 1571044201, 'mBaHCFdgwdLacknGihiPCWkk-0_VrsKD_1571044201', 'Alumni', '20191014Selamet eko kristanto'),
(21, 'Nurkhairati', 'F8YeWnDfdiPMk2gIcBV-aG90YkquMoG3', '$2y$13$qUnVWZGZDGXvLfE8QuGHu.Pp.ZJqje7qQfE0yeLEM3l9h3PS6xB3G', NULL, 'nurkhairati@gmail.com', 10, 1571110821, 1571110821, 'GdhOcUctVHrRIqBxPVqd4UyYpLU9COV8_1571110821', 'Alumni', '20191015Nurkhairati'),
(22, 'Izza Afkarina', 'k__tvYW6YYPG_0xkJ0ZmiY899q6ppfV2', '$2y$13$vT8dPkhX2hOSwG4IhhsoNuCTTZRczGqBnTOEvkYybu8fSAqwQO2RG', NULL, '11651200141@students.uin-suska.ac.id', 10, 1571150183, 1571150183, '5N_PMtkbRSRd5egrpCH1uFL_KgZiH9CG_1571150183', 'Alumni', '20191015Izza Afkarina'),
(23, 'Muhammad Rifqi Aufa Abdika', 'IDY7tyJRyMAFM_fQ8cJgPbUrTw8zHhD6', '$2y$13$L4GmT5flZ4G9E8s3O1Ffwe0lwnrWHwsB5VCLJ5m1UXlgrfXGLCdhi', NULL, 'm.rifqi.aufa.abdika@students.uin-suska.ac.id', 10, 1571276087, 1571276087, 'ynhgDLjDCrUo9gVI6k0R7yErYyfFBkbQ_1571276087', 'Alumni', '20191017Muhammad Rifqi Aufa Abdika'),
(24, 'jbenastey', 'zh40tmXWrraKm7Zg9BiggQvPUn4RGFg4', '$2y$13$MmEIGMT3Of0oske464j21OkhNEEMkIBYkATqz3nr.i9M3OgVC.4KW', NULL, 'jbenastey@gmail.com', 10, 1571469679, 1571469679, 'z6-IAGPrK05nVCtiG7DRhVYU99EDCRLP_1571469679', 'Alumni', '20191019jbenastey'),
(25, 'Aldyan Firdaus', 'prBfBK0gnP7T9IJ_PYnAxF2t-G8-njdj', '$2y$13$WRjEXxdOpKLtxuJyn13oZemEmi.jL8Li2tHEce0wJtk291R3ERnCG', NULL, 'Aldyanf98@gmail.com', 10, 1571469688, 1571469688, 'V2O6w1AKCbQisKdtDd0Bv_xkr8wrgDml_1571469688', 'Alumni', '20191019Aldyan Firdaus'),
(26, 'Khanza Oktavia', '5_L1JD0-u96HX1E2WiCB7jF-NeusCR-H', '$2y$13$q5YzzH04eZPhNRFJMxjFaulfc1D0OZUTmag8AgDtlJ7rWUeWIvNW2', NULL, 'khanza.ok7@gmail.com', 10, 1571469973, 1571469973, 'N3rKZFMtOan39ILFScEtpUs59CKNt8te_1571469973', 'Alumni', '20191019Khanza Oktavia'),
(27, 'azharsiddiq', 'FU-xDr10XGG9JwOkLBLKm_RVCgzaFoii', '$2y$13$x9zaPr.3HwBebKZzERYmte.lviPrSHU6I8LH7Uj.KAl8AQCKtMLr2', NULL, 'azharsiddiq36@gmail.com', 10, 1571470240, 1571470240, '7-OGqmg4wOGnpScvcld5u3oUDiSft_n5_1571470240', 'Alumni', '20191019azharsiddiq'),
(28, 'Habibsadikin', '15yM8k-W7Z9Q8IgivY7MuMGE0OAlumNw', '$2y$13$YrXImkVmo5FQDxR5xZFNcecGuwsXa1tf.tMwM.nqP7kq8mweXJYjS', NULL, 'Habibsadikin@gmail.com', 10, 1571470431, 1571470431, 'dIv8b6_H4b7d3op_fHBEBkNkRogu6A8H_1571470431', 'Alumni', '20191019Habibsadikin'),
(29, 'REFANI AULIA PALUPI', 'S703-f0tqc-YZGYJyK1rul-Og3HzfaIO', '$2y$13$2TIbeb7.TlGedquVHFNZFOsgdyqkEtQMRcVaP74Wnh/GGdBx64egW', NULL, 'refaniauliapalupi@gmail.cpm', 10, 1571470518, 1571470518, 'ePfMsuvpTHDsErfVDMwxeWigIjfxudkE_1571470518', 'Alumni', '20191019REFANI AULIA PALUPI'),
(30, 'Tiaramessa', '1vM937MTrsG47fJjYEfhUd4u2lpkPTXE', '$2y$13$eXz.0g241zIsLx1VfswZtedT0Gs0QtlNKhJDd968ac5R/NK9yN9yW', NULL, '11651201329@students.uin-suska.ac.id', 10, 1571470773, 1571470773, 'G-hEHORCXmC0q5-fz_qJtbEyM1a4_Z1W_1571470773', 'Alumni', '20191019Tiaramessa'),
(31, 'Finadevn', 'nG8usfRIPp3QNWyVQtTVgERr8BQuSR1u', '$2y$13$Vu.RBEv.0lT8vqwgeVgLSu5Y3MSU2UjTWtT9cNuZNeNtFdqMOmCzC', NULL, 'Fina.deviana@students.uin-suska.ac.id', 10, 1571470789, 1571470789, 'I936rE6dwMrwMD4pg6pwbbclbM-ol2_k_1571470789', 'Alumni', '20191019Finadevn'),
(32, 'zurriyatafatni', 'MEr8KQTK8mNFUeH9mkXiE2G8J6Gb6UVd', '$2y$13$i0DWw2ijj4F1HYQtRV67IugZ0yqd96UJhtF30wnBxSzdyjnOSZjFO', NULL, 'zurriyata@gmail.com', 10, 1571471199, 1571471199, 'CuF1_L744v3z3DV5_abYoIopuBlk8N2Y_1571471199', 'Alumni', '20191019zurriyatafatni'),
(33, 'Adeluthfi07', '-Rs6wNXMo2WkLFJjsllnafzjIimHfyD6', '$2y$13$dyxh.hSofUBYWpfSs9sJ/.pN/lOrsJg0cZ7Q.TUzq7QvE9QwPXEAW', NULL, 'Adeluthfi0710@gmail.com', 10, 1571472982, 1571472982, 'oOyFayqwuXlpKDCxYCo9AlmLVWYF5dtb_1571472982', 'Alumni', '20191019Adeluthfi07'),
(34, 'tiaramessaputri', 'cVfAuwzLyFl7zTg7HqET3klyV7Z9hT8-', '$2y$13$MA0ne8vZU4lAq6mhYvoXk.azzyt/GiEeEKporLdc/gyADPAoveblC', NULL, 'tiaraamessa@gmail.com', 10, 1571473324, 1571473324, 'ADFC4lQEvjiM_UPU_-CLbD8_E7qEm67V_1571473324', 'Alumni', '20191019tiaramessaputri'),
(35, 'fauziihsan', 'NG0nvufITakgf1HR1Dlc4NO1jX6C1bOu', '$2y$13$VqF2F0Fjn1Co5C9JwqK4ZeuqmHTfmG3mGULVci3RoBZ.pqSi/8zi.', NULL, '11651100236@students.uin-suska.ac.id', 10, 1571473738, 1571473738, 'Ow2s-HeSbMaz9Qqy2MG3e4P6oL7dlhAO_1571473738', 'Alumni', '20191019fauziihsan'),
(36, 'y_amryy', 'ZcqG_SDo-9lKt_u_4SdaM87D9jVWsmEx', '$2y$13$QfpdtiKW07qlWSwJpvqgwuvawUfVEkIBR8X3/HusJpM/hKw43h0Z2', NULL, 'aulilamri46@gmail.com', 10, 1571473820, 1571473820, 'X_-Zukdducii1rmNyhz6yEmkx53qn2UD_1571473820', 'Alumni', '20191019y_amryy'),
(37, 'Reski.saputra', 'Nd57HhNgi--nrJjaTUn3uMdqr9tHB7NH', '$2y$13$1GyPzXzuzsy.jV79icX8Zuhf5FsPsFiVUEN/TV5ISLJsevEuTZeei', NULL, 'Reski.saputra@gmail.com', 10, 1571474464, 1571474464, '8H-U_eCtgl6xgILFfmdX9OLsLEvT55Ax_1571474464', 'Alumni', '20191019Reski.saputra'),
(38, 'Aliefalhadi', 'fmP2YaX91qfmw8TzPDPVqIZAOpK6ZHg3', '$2y$13$/ff3p4s9JYVTqKqt5ilMVe3l1ztWgR6Fux/3lnRbEDJZ79Hs7BC.G', NULL, 'aliefalhadi28@gmail.com', 10, 1571476885, 1571476885, 'EsVhFunIgWC8on8BwNNXl0uh0gOTUMUF_1571476885', 'Alumni', '20191019Aliefalhadi'),
(39, 'Muhammad Iqbal', 'VlDXlyTBGhhWn__l0KszIli7GtF4yD1N', '$2y$13$c3cwLSm22DdiIxNdWs.7UegJgA70plasnKDHYmtTtQzDJQC7tvKgK', NULL, '11651100294@students.uin-suska.ac.id', 10, 1571529134, 1571529134, 'gKgBJXqZ3IArI9HEt4Of8tQTaNZrDzJx_1571529134', 'Alumni', '20191019Muhammad Iqbal'),
(40, 'HARTINI', 'gGQfyj9irvTEzgQ8HyeMvjbHMPPvo0NK', '$2y$13$27I64VBMFEKhH2DBuUd5WO8NlRwDkRBwUs5HF4T5A2iwkYIulMSj2', NULL, '11651200010@students.uin-suska.ac.id', 10, 1571565824, 1571565824, '0YoHWZ8neQ1y3tmDksHWQYw9Qx8y3tDN_1571565824', 'Alumni', '20191020HARTINI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Indeks untuk tabel `grafik`
--
ALTER TABLE `grafik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_kuisioner_alumni`
--
ALTER TABLE `hasil_kuisioner_alumni`
  ADD PRIMARY KEY (`id_hasil_kuisioner_alumni`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD PRIMARY KEY (`id_kuisioner`),
  ADD KEY `id_title` (`id_title`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`lowongan_id`);

--
-- Indeks untuk tabel `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`profil_id`);

--
-- Indeks untuk tabel `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id_title`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `grafik`
--
ALTER TABLE `grafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hasil_kuisioner_alumni`
--
ALTER TABLE `hasil_kuisioner_alumni`
  MODIFY `id_hasil_kuisioner_alumni` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `kuisioner`
--
ALTER TABLE `kuisioner`
  MODIFY `id_kuisioner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `lowongan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `title`
--
ALTER TABLE `title`
  MODIFY `id_title` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD CONSTRAINT `kuisioner_ibfk_1` FOREIGN KEY (`id_title`) REFERENCES `title` (`id_title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
