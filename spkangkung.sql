-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jul 2022 pada 06.43
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkangkung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`) VALUES
('admin', 'admin'),
('Iffanahmad', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_diagnosa`
--

CREATE TABLE `tb_diagnosa` (
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(25) DEFAULT NULL,
  `penyebab` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`kode_diagnosa`, `nama_diagnosa`, `penyebab`, `solusi`) VALUES
('H01', 'Hama Bekicot', 'Lembabnya lahan atau kebun sekitar tanaman kangkung', 'Pengendalian Bekicot dapat dilakukan dengan membuang dan membasmi semua bekicot yang ada pada lahan budi daya kangkung.'),
('H02', 'Hama Ulat Grayak', 'Ulat Grayak yang menggigit bagian pinggir daun', 'Menyemprotkan dengan Insektisida Diazinon 60 EC, dengan dosis 2 cc/liter air. Pada waktu membasmi hama, sebaiknya lahan dikeringkan terlebih dahulu selama 4-5 hari, kemudian diberi air kembali'),
('H03', 'Kudu Daun', 'Kutu daun yang menghisap cairan tanaman', 'Melakukan sanitasi pada lahan dengan memaksimal atau melakukan penyemprotan insektisida berbahan aktif'),
('H04', 'Ulat Keket', 'Kebun terlalu banyak semak atau gulma dan tidak terjaga kebersihannya', 'membersihkan lahan dengan baik, menjaga jarak tanaman agar tidak sesak, dan pergiliran tanaman. Kemudian, lakukan pengendalian dengan pestisida nabati daun sirih, daun nimba, dan gadung.'),
('P01', 'Karat Putih', 'disebabkan oleh jamur Albugo ipomoea Pandurate yang menyerang tanaman', 'memangkas daun tua yang sakit, selanjutnya dilakukan penyemprotan dengan Dithane M-45 apabila dibutuhkan'),
('P02', 'Bercak Daun', 'Penyakit ini disebabkan oleh jamur Cercospora bataciola dan Fusarium sp', 'mencabut tanaman kangkung yang sakit dan melakukan penyemprotan'),
('P03', 'Bakteri', 'Bakteri adalah salah sattu organisme yang membusukan daun, batang, dan akar tumbuhan. Penyebabnya adalah bakteri', 'Menjaga kebersihan tanaman'),
('P04', 'Virus', 'Penyebabnya adalah virus', 'Menjauhkan atau membuang tanaman yang terkena virus dengan tanaman yang masih sehat'),
('P05', 'Alga', 'Disebabkan oleh tanaman alga', 'Membuang tanaman alga dari lahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `kode_gejala` varchar(16) NOT NULL,
  `nama_gejala` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`kode_gejala`, `nama_gejala`, `keterangan`) VALUES
('G001', 'Batang dan daun rusak', ''),
('G002', 'batang dan daun layu', ''),
('G003', 'Batang dan daun busuk', ''),
('G004', 'Daun berlubang', ''),
('G005', 'Pinggir daun bergerigi', ''),
('G006', 'Tanaman kerdil', ''),
('G007', 'Daun melengkung', ''),
('G008', 'Warna daun hijau muda dengan menyilang kuning', ''),
('G009', 'Muncul bercak putih pada permukaan daun', ''),
('G010', 'Muncul bercak kecokelatan hingga kehitaman pada permukaan daun', ''),
('G011', 'Mengeluarkan lendir keruh', ''),
('G012', 'Berbau busuk', ''),
('G013', 'Keluar air pada batang', ''),
('G014', 'Lengket jika disentuh', ''),
('G015', 'Daun Berwarna Kuning Pekat', ''),
('G016', 'Batang mengalami bercak-bercak', ''),
('G017', 'Daun menjadi seperti terbakar', ''),
('G018', 'Bentuk daun menjadi tidak sempurna', ''),
('G019', 'Daun layu', ''),
('G020', 'Bercak bewarna kelabu kehijauan pada daun', ''),
('G021', 'Pada permukaan tumbuh rambut bewarna coklat kemerahan', ''),
('G022', 'Daun dihinggapi lalat', ''),
('G023', 'Batang dan daun kering', ''),
('G024', 'Bercak karat merah pada daun', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id` int(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `hasil_konsultasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_hasil`
--

INSERT INTO `tb_hasil` (`id`, `nama`, `no_hp`, `jk`, `alamat`, `tgl`, `hasil_konsultasi`) VALUES
(234, 'Ade', '081225676993', 'Laki - Laki', 'Cilacap', '20:59 · 16 Juni 2022', 'Hama Bekicot'),
(236, 'Ayu', '0765456775433', 'Perempuan', 'Purwokerto', '21:00 · 16 Juni 2022', 'Hama Ulat Grayak'),
(238, 'Frea', '081225676993', 'Perempuan', 'Purwokerto', '21:00 · 16 Juni 2022', 'Kudu Daun'),
(240, 'Muhammad', '081225676993', 'Laki - Laki', 'Cilacap', '21:01 · 16 Juni 2022', 'Ulat Keket'),
(242, 'Danu', '081225676993', 'Laki - Laki', 'Banjarnegara', '21:01 · 16 Juni 2022', 'Karat Putih'),
(244, 'Brian', '081225676993', 'Laki - Laki', 'Cilacap', '21:02 · 16 Juni 2022', 'Bercak Daun'),
(247, 'Mulan', '081225676993', 'Perempuan', 'Cilacap', '21:03 · 16 Juni 2022', 'Bakteri'),
(249, 'Bagus', '081225676993', 'Laki - Laki', 'Cilacap', '21:04 · 16 Juni 2022', 'Virus'),
(251, 'Rusdi', '081225676993', 'Laki - Laki', 'Cilacap', '21:04 · 16 Juni 2022', 'Alga'),
(358, 'ddrers', '081225676993', 'Laki - Laki', 'Cilacap', '08:42 · 24 Juni 2022', ''),
(359, 'ddrers', '081225676993', 'Laki - Laki', 'Cilacap', '08:42 · 24 Juni 2022', 'Gejala tidak sesuai/penyakit tidak ditemukan!'),
(360, 'ssswww', '081225676993', 'Perempuan', 'Cilacap', '08:42 · 24 Juni 2022', ''),
(361, 'ssswww', '081225676993', 'Perempuan', 'Cilacap', '08:42 · 24 Juni 2022', 'Gejala tidak sesuai/penyakit tidak ditemukan!'),
(362, 'A', '081225676993', 'Laki - Laki', 'Cilacap', '08:43 · 24 Juni 2022', ''),
(363, 'A', '081225676993', 'Laki - Laki', 'Cilacap', '08:43 · 24 Juni 2022', 'Gejala tidak sesuai/penyakit tidak ditemukan!'),
(364, 'Iffan', '081225676993', 'Laki - Laki', 'Cilacap', '08:44 · 24 Juni 2022', ''),
(365, 'Iffan', '081225676993', 'Laki - Laki', 'Cilacap', '08:44 · 24 Juni 2022', 'Gejala tidak sesuai/penyakit tidak ditemukan!'),
(366, 'sssaaa', '081225676993', 'Laki - Laki', 'Cilacap', '08:45 · 24 Juni 2022', ''),
(367, 'sssaaa', '081225676993', 'Laki - Laki', 'Cilacap', '08:45 · 24 Juni 2022', 'Gejala tidak sesuai/penyakit tidak ditemukan!'),
(368, 'vbghfgf', '081225676993', 'Laki - Laki', 'Cilacap', '10:23 · 25 Juni 2022', ''),
(369, 'vbghfgf', '081225676993', 'Laki - Laki', 'Cilacap', '10:23 · 25 Juni 2022', 'Gejala tidak sesuai/penyakit tidak ditemukan!'),
(370, 'ddffff', '081225676993', 'Laki - Laki', 'Cilacap', '15:24 · 27 Juni 2022', ''),
(371, 'ddffff', '081225676993', 'Laki - Laki', 'Cilacap', '15:24 · 27 Juni 2022', 'Gejala tidak sesuai/penyakit tidak ditemukan!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsultasi`
--

CREATE TABLE `tb_konsultasi` (
  `ID` int(11) NOT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `jawaban` varchar(6) DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_konsultasi`
--

INSERT INTO `tb_konsultasi` (`ID`, `kode_gejala`, `jawaban`) VALUES
(1, 'G001', 'Ya'),
(2, 'G002', 'Ya'),
(3, 'G003', 'Tidak'),
(4, 'G004', 'Tidak'),
(5, 'G005', 'Tidak'),
(6, 'G006', 'Tidak'),
(7, 'G008', 'Tidak'),
(8, 'G009', 'Tidak'),
(9, 'G010', 'Ya'),
(10, 'G011', 'Tidak'),
(11, 'G012', 'Tidak'),
(12, 'G016', 'Tidak'),
(13, 'G017', 'Tidak'),
(14, 'G020', 'Tidak'),
(15, 'G021', 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_relasi`
--

CREATE TABLE `tb_relasi` (
  `ID` int(11) NOT NULL,
  `kode_diagnosa` varchar(16) DEFAULT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_relasi`
--

INSERT INTO `tb_relasi` (`ID`, `kode_diagnosa`, `kode_gejala`) VALUES
(287, 'H01', 'G001'),
(288, 'H01', 'G002'),
(289, 'H01', 'G003'),
(290, 'H02', 'G001'),
(291, 'H02', 'G004'),
(292, 'H02', 'G005'),
(293, 'H03', 'G006'),
(294, 'H03', 'G007'),
(295, 'H04', 'G001'),
(296, 'H04', 'G004'),
(297, 'H04', 'G008'),
(298, 'P01', 'G001'),
(299, 'P01', 'G009'),
(300, 'P02', 'G001'),
(301, 'P02', 'G010'),
(316, 'P03', 'G011'),
(317, 'P03', 'G012'),
(318, 'P03', 'G014'),
(319, 'P04', 'G017'),
(320, 'P04', 'G018'),
(321, 'P04', 'G016'),
(322, 'P05', 'G020'),
(323, 'P05', 'G021'),
(324, 'P05', 'G024');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);

--
-- Indeks untuk tabel `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tb_relasi`
--
ALTER TABLE `tb_relasi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT untuk tabel `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_relasi`
--
ALTER TABLE `tb_relasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
