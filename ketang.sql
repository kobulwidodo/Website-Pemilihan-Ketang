-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Feb 2021 pada 07.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ketang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kandidat`
--

CREATE TABLE `kandidat` (
  `id` int(10) NOT NULL,
  `no_urut` int(10) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `suara` int(100) NOT NULL,
  `foto` varchar(191) NOT NULL,
  `visi` varchar(191) NOT NULL,
  `misi` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kandidat`
--

INSERT INTO `kandidat` (`id`, `no_urut`, `nama`, `suara`, `foto`, `visi`, `misi`) VALUES
(1, 1, 'Catherine - Geo', 0, 'pamungkas.png', '- Lorem ipsum dolor sit amet', '- Lorem ipsum dolor sit amet'),
(2, 2, 'Rozy - Novel', 0, 'pamungkas.png', '- Lorem ipsum dolor sit amet', '- Lorem ipsum dolor sit amet');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kotak_suara`
--

CREATE TABLE `kotak_suara` (
  `id` int(10) NOT NULL,
  `nim` int(100) NOT NULL,
  `pilihan` int(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kotak_suara`
--

INSERT INTO `kotak_suara` (`id`, `nim`, `pilihan`, `waktu`) VALUES
(8, 2020, 2, '2021-01-14 13:13:01'),
(9, 12345, 2, '2021-01-27 14:48:37'),
(10, 12345, 1, '2021-01-27 15:12:51'),
(11, 12345, 1, '2021-01-27 15:18:37'),
(12, 12345, 1, '2021-01-27 15:18:56'),
(13, 12345, 2, '2021-01-28 06:07:34'),
(14, 12345, 100, '2021-01-28 06:08:53'),
(15, 12345, 2, '2021-01-28 06:12:43'),
(16, 12345, 2, '2021-01-28 06:14:48'),
(17, 12345, 1, '2021-01-28 06:24:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nim` varchar(100) NOT NULL,
  `password` varchar(191) NOT NULL,
  `memilih` varchar(191) NOT NULL,
  `panitia` int(10) NOT NULL,
  `kelas` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `nim`, `password`, `memilih`, `panitia`, `kelas`) VALUES
(1, 'Admin', 'fadhilhan01@gmail.com', '12345', 'gwi556qb14', '1', 1, ''),
(6, 'Muhammad Iqbal', 'm_iqbaal@student.ub.ac.id', '205150707111009', '', '', 0, 'a'),
(7, 'Novel Bafagih', 'novelbafagih@student.ub.ac.id', '205150700111016', '', '', 0, 'a'),
(8, 'Aurellia Ristivani Aisha Fitri', 'aurellristivani@student.ub.ac.id', '205150701111010', '', '', 0, 'a'),
(9, 'Imelda Fransisca S', 'imeldafransisca@student.ub.ac.id', '205150707111004', '', '', 0, 'a'),
(10, 'Syafira Alifah', 'syafiralifah@student.ub.ac.id', '205150701111009', '', '', 0, 'a'),
(11, 'Shinta dewi putru wibowo', 'putriwibowo@student.ub.ac.id', '205150700111014', '', '', 0, 'a'),
(12, 'Mohammad Ali Rafli', 'mrafli1212@student.ub.ac.id', '205150707111008', '', '', 0, 'a'),
(13, 'Raihan Fikri Brilliansyach', 'raihanfikri@student.ub.ac.id', '205150701111004', '', '', 0, 'a'),
(14, 'Asya Ismatullah Faris', 'asyafaris15@student.ub.ac.id', '205150700111011', '', '', 0, 'a'),
(15, 'Mikha Aziel Christian Sitepu', 'mikhasitepu@student.ub.ac.id', '205150700111009', '', '', 0, 'a'),
(16, 'Ardhya Khrisna Chandra', 'ardhyachandra@student.ub.ac.id', '205150700111006', '', '', 0, 'a'),
(17, 'Daniel Indra Sasongko', 'danielsas_77@student.ub.ac.id', '205150701111008', '', '', 0, 'a'),
(18, 'Jovial Pattiasina', 'jovial@student.ub.ac.id', '205150707111002', '', '', 0, 'a'),
(19, 'M. Alfian Noor', 'muhammadalfn@student.ub.ac.id', '205150700111015', '', '', 0, 'a'),
(20, 'Geoffrey Edmund Pierre Purba', 'geoffrey.purba@student.ub.ac.id', '205150707111007', '', '', 0, 'a'),
(21, 'Ivana C. Rutchya', 'ivana_rutchya@student.ub.ac.id', '205150701111011', '', '', 0, 'a'),
(22, 'Angga Nasetya Caesara Putra', 'angganasetya@student.ub.ac.id', '205150707111005', '', '', 0, 'a'),
(23, 'Jonathan Tarandung', 'jotarandung@student.ub.ac.id', '205150707111011', '', '', 0, 'a'),
(24, 'A\'inun Sukmawati', 'ainuns2@student.ub.ac.id', '205150701111006', '', '', 0, 'a'),
(25, 'Salsabila Tjahya Kusuma Putri', 'salsabilatjahya@student.ub.ac.id', '205150707111003', '', '', 0, 'a'),
(26, 'Cantika Firalya', 'tikafiralya@student.ub.ac.id', '205150700111004', '', '', 0, 'a'),
(27, 'Yerobal Gustaf Sekeon', 'yerobalg@student.ub.ac.id', '205150700111002', '', '', 0, 'a'),
(28, 'Choirunnizar Ade Kurniawan', 'nizarade@student.ub.ac.id', '205150707111012', '', '', 0, 'a'),
(29, 'Muhammad Davin Fadillah', 'davin.fad@student.ub.ac.id', '205150700111003', '', '', 0, 'a'),
(30, 'Rheza Firmandha', 'rhezafirmandha@student.ub.ac.id', '205150700111007', '', '', 0, 'a'),
(31, 'Andira Mahendra Syahputra', 'andirams13@student.ub.ac.id', '205150700111008', '', '', 0, 'a'),
(32, 'Nanda Riska Dewi', 'nandariskadewi@student.ub.ac.id', '205150700111010', '', '', 0, 'a'),
(33, 'Rizaldi Pardede', 'rizaldipardede@student.ub.ac.id', '205150700111018', '', '', 0, 'a'),
(34, 'LULU YOHANA', 'luluyohana_@student.ub.ac.id', '205150701111005', '', '', 0, 'a'),
(35, 'ANUGRAH DAFFA YANUARDHANA', 'daffayanuardana@student.ub.ac.id', '205150700111013', '', '', 0, 'a'),
(36, 'Rifdah', 'rifdah@student.ub.ac.id', '205150701111007', '', '', 0, 'a'),
(37, 'Catherine Vania', 'catherinevania@student.ub.ac.id', '205150700111001', '', '', 0, 'a'),
(38, 'Muhammad Hasan Nasrullah', 'hnasrul22@student.ub.ac.id', '205150700111012', '', '', 0, 'a'),
(39, 'Anas Bahiyu Sakti', 'anasbs@student.ub.ac.id', '205150701111002', '', '', 0, 'a'),
(40, 'ROZY SETIA IRMAWAN', 'rozy_setia12@student.ub.ac.id', '205150701111001', '', '', 0, 'a'),
(41, 'Jifan Izza Sumendra', 'jifanizza_@student.ub.ac.id', '205150700111005', '', '', 0, 'a'),
(42, 'habil edgar avangsa', 'habiledgar111@student.ub.ac.id', '205150707111006', '', '', 0, 'a'),
(43, 'Fariz Muhammad Rayhan', 'arizmuh_@student.ub.ac.id', '205150701111012', '', '', 0, 'a'),
(44, 'Alfrenanda Yonathan Siregar', 'alfrenanday@student.ub.ac.id', '205150707111001', '', '', 0, 'a'),
(45, 'Audrey Axel Ristyanto', 'ristyanto@student.ub.ac.id', '205150707111010', '', '', 0, 'a'),
(46, 'Muhammad Hanif Ardhiansyah', 'mh.ardhiansyah@student.ub.ac.id', '205150700111017', '', '', 0, 'a'),
(50, 'Lintang Bima Sakti S', 'santosolintang@student.ub.ac.id', '205150707111014', '', '', 0, 'b'),
(51, 'Gheri Jelita', 'gherijelita05@student.ub.ac.id', '205150701111015', '', '', 0, 'b'),
(52, 'Dhia Asyifa Salsabila', 'dhiaasyifa@student.ub.ac.id', '205150700111036', '', '', 0, 'b'),
(53, 'Fritz adriano', 'fritzadriano@student.ub.ac.id', '205150700111030', '', '', 0, 'b'),
(54, 'Rafli Daffa Rahman', 'raflidaffa19@student.ub.ac.id', '205150700111025', '', '', 0, 'b'),
(55, 'Muhammad Ihsan Fauzi', 'Ihsan22_@student.ub.ac.id', '205150701111017', '', '', 0, 'b'),
(56, 'Yanuar Bimantoro Aji', 'bima.aji1380@student.ub.ac.id', '205150700111022', '', '', 0, 'b'),
(57, 'Ferry Setiawan', 'ferryyoyo@student.ub.ac.id', '205150707111015', '', '', 0, 'b'),
(58, 'Vania Sahda Annabelle', 'vaniasahda@student.ub.ac.id', '205150700111028', '', '', 0, 'b'),
(59, 'Raihan Winurputra', 'raihanwinurptr@student.ub.ac.id', '205150701111023', '', '', 0, 'b'),
(60, 'Arima Surani', 'arimasurani@student.ub.ac.id', '205150701111021', '', '', 0, 'b'),
(61, 'Muhammad Ilham Gibran', 'ilhamgibran0102@student.ub.ac.id', '205150707111024', '', '', 0, 'b'),
(62, 'Askenas Salinding', 'askenas@student.ub.ac.id', '205150701111019', '', '', 0, 'b'),
(63, 'Raihan Zahran Firdaus', 'raihanzahran@student.ub.ac.id', '205150700111035', '', '', 0, 'b'),
(64, 'Muhammad Helmy Fadlail Albab', 'helmy _fadlail@student.ub.ac.id', '205150701111018', '', '', 0, 'b'),
(65, 'Maya Setiana', 'mayasetiana@student.ub.ac.id', '205150707111021', '', '', 0, 'b'),
(66, 'Munzir Tamam', 'whysosirius.m7@student.ub.ac.id', '205150700111023', '', '', 0, 'b'),
(67, 'Raihan Alfarisi', 'raihanalfarisi2@student.ub.ac.id', '205150700111029', '', '', 0, 'b'),
(68, 'Laksono Prasetyo', 'laksonopras01@student.ub.ac.id', '205150707111018', '', '', 0, 'b'),
(69, 'Muhammad Abiyyi Rahinda', 'muhammadabiyyi@student.ub.ac.id', '205150700111034', '', '', 0, 'b'),
(70, 'Julina Larasati Pramudita', 'julinalrst@student.ub.ac.id', '205150707111016', '', '', 0, 'b'),
(71, 'Mohammad Herdian Bayu Pratama', 'herdianbayu14@student.ub.ac.id', '205150700111024', '', '', 0, 'b'),
(72, 'Aisyah Maharani', 'aisyahmaharani_@student.ub.ac.id', '205150701111020', '', '', 0, 'b'),
(73, 'Ghina Shofa Raudhatul Jannah', 'ghinashofa@student.ub.ac.id', '205150707111013', '', '', 0, 'b'),
(74, 'Muhammad Devan Ryandra', 'Muhammaddevan@student.ub.ac.id', '205150707111017', '', '', 0, 'b'),
(75, 'Mukhammad Afan Oktafianto', 'afanoktafianto@student.ub.ac.id', '205150700111032', '', '', 0, 'b'),
(76, 'Andi Sekar Ayu Fadilla', 'andisekar@student.ub.ac.id', '205150700111019', '', '', 0, 'b'),
(77, 'Hokman Solideo Hakati', 'hokmansolideo@student.ub.ac.id', '205150700111026', '', '', 0, 'b'),
(78, 'Fauzan Akbar Maulana', 'fauzanakbarm@student.ub.ac.id', '205150707111023', '', '', 0, 'b'),
(79, 'Tharessa fitria', 'tharessafitriaa@student.ub.ac.id', '205150701111014', '', '', 0, 'b'),
(80, 'Leonard Samuel Pakpahan', 'leonspakpahan@student.ub.ac.id', '205150707111019', '', '', 0, 'b'),
(81, 'Anindya Shafa', 'anindyashf@student.ub.ac.id', '205150700111021', '', '', 0, 'b'),
(82, 'Hartati Penta Angelina Sormin', 'hartatisormin@student.ub.ac.id', '205150700111031', '', '', 0, 'b'),
(83, 'Amelia Kartika Wijaya', 'ameliakw@student.ub.ac.id', '205150701111013', '', '', 0, 'b'),
(84, 'Raka Belva Raihansha', 'rakabelva@student.ub.ac.id', '205150700111020', '', '', 0, 'b'),
(85, 'Glenando', 'glenando0511@student.ub.ac.id', '205150707111022', '', '', 0, 'b'),
(86, 'Firda Angzalna Putri', 'firdaangzalna@student.ub.ac.id', '205150701111022', '', '', 0, 'b'),
(87, 'Muhammad alim akmali', 'alim_akmali@student.ub.ac.id', '205150701111016', '', '', 0, 'b'),
(88, 'Naomi Davita Budiman', 'naomi.davita@student.ub.ac.id', '205150700111033', '', '', 0, 'b'),
(89, 'Refano Trinanda Saputra', 'refanotrinanda@student.ub.ac.id', '205150707111020', '', '', 0, 'b'),
(94, 'Muhammad Kanzul Fikri', 'muhammadkanzulf@student.ub.ac.id', '205150700111044', '', '', 0, 'c'),
(95, 'Gilbert Aryaduta Pinem', 'gilbert.pinem@student.ub.ac.id', '205150700111054', '', '', 0, 'c'),
(96, 'Jahzeiah Paskah Tjandra', 'paskahtjandra@student.ub.ac.id', '205150707111026', '', '', 0, 'c'),
(97, 'Sri Indrayani', 'sriindrayani@student.ub.ac.id', '205150701111026', '', '', 0, 'c'),
(98, 'Dhimasdar Agdeli Rizqy Alfathi', 'dhimasalfathi@student.ub.ac.id', '205150707111029', '', '', 0, 'c'),
(99, 'Muhammad Theofany Aulia Anwar', 'theofany007@student.ub.ac.id', '205150707111030', '', '', 0, 'c'),
(100, 'zhafirah hafizh', 'zhafirah23@student.ub.ac.id', '205150707111027', '', '', 0, 'c'),
(101, 'Sofita Hidayatul Maghfiroh', 'Sofitahm@student.ub.ac.id', '205150701111025', '', '', 0, 'c'),
(102, 'Luvita Intan Cahyani', 'luvitaintan@student.ub.ac.id', '205150701111035', '', '', 0, 'c'),
(103, 'Rizqi Wijanarko', 'Rizqiwijanarko@student.ub.ac.id', '205150700111039', '', '', 0, 'c'),
(104, 'Fikri Ahmad Haekal', 'haikala013@student.ub.ac.id', '205150707111025', '', '', 0, 'c'),
(105, 'Rif\'atul ilmi', 'Rifatulilmi@student.ub.ac.id', '205150701111024', '', '', 0, 'c'),
(106, 'Averil Primayuda', 'averilprimayuda@student.ub.ac.id', '205150701111030', '', '', 0, 'c'),
(107, 'Hendra Darmawan', 'Barokah40@student.ub.ac.id', '205150701111027', '', '', 0, 'c'),
(108, 'Muh. Dimas Adiyatma', 'muhdimasadi@student.ub.ac.id', '205150700111051', '', '', 0, 'c'),
(109, 'Eka Bayu Satriawan', 'ekabayus@student.ub.ac.id', '205150700111040', '', '', 0, 'c'),
(110, 'MUHAMMAD NIZAR LABIB', 'm.nizarlabib@student.ub.ac.id', '205150700111043', '', '', 0, 'c'),
(111, 'Septiah Cahyo Budi Laksono', 'claksono14@student.ub.ac.id', '205150700111046', '', '', 0, 'c'),
(112, 'Nazwa Anandia', 'nazwa.anandia@student.ub.ac.id', '205150700111049', '', '', 0, 'c'),
(113, 'Levin Vinnu Husalie', 'Levinjbi@student.ub.ac.id', '205150700111041', '', '', 0, 'c'),
(114, 'Aditya Andrew Prakoso', 'aditya.andrew@student.ub.ac.id', '205150707111031', '', '', 0, 'c'),
(115, 'Gibran Tauchid Wionanda Putra', 'gibrantwp@student.ub.ac.id', '205150701111029', '', '', 0, 'c'),
(116, 'Rimarsa Haninnakhonsa', 'hanakhonsa@student.ub.ac.id', '205150707111032', '', '', 0, 'c'),
(117, 'Muhammad Fauzan Hanif', 'mfauzanhanif14@student.ub.ac.id', '205150707111034', '', '', 0, 'c'),
(118, 'Aufa Azmirania', 'aufa.azmrn@student.ub.ac.id', '205150700111045', '', '', 0, 'c'),
(119, 'Furqan Maulana Pranata', 'furqanmaulana26@student.ub.ac.id', '205150701111034', '', '', 0, 'c'),
(120, 'RIFDA ADRIRESWARA PUTRI', 'rifda.ap@student.ub.ac.id', '205150700111047', '', '', 0, 'c'),
(121, 'Farah Nadiyah Aulia', 'farahnadiyah@student.ub.ac.id', '205150700111038', '', '', 0, 'c'),
(122, 'Primula Juventauricula', 'primulajuve@student.ub.ac.id', '205150700111052', '', '', 0, 'c'),
(123, 'Tri Adi', 'triadilaksamana@student.ub.ac.id', '205150700111037', '', '', 0, 'c'),
(124, 'Aditya Nugraha Perdana', 'aditking2307@student.ub.ac.id', '205150707111028', '', '', 0, 'c'),
(125, 'Salsha Thaulinzky', 'salsha_thlnzky@student.ub.ac.id', '205150701111032', '', '', 0, 'c'),
(126, 'M. Alfi Syahri R.', 'alfisyahri@student.ub.ac.id', '205150700111053', '', '', 0, 'c'),
(127, 'Octavia lintangp', 'Octavialintang@student.ub.ac.id', '205150700111050', '', '', 0, 'c'),
(128, 'Muhammad Nadhif Nabhan', 'nadhifnabhan18@student.ub.ac.id', '205150707111036', '', '', 0, 'c'),
(129, 'Nindy Alya Putri', 'nindyalya_p@gmail.com', '205150701111033', '', '', 0, 'c'),
(130, 'M. Hilmy Faishal Ridho', 'hilmyfaishal1@student.ub.ac.id', '205150700111048', '', '', 0, 'c'),
(131, 'Mathora Fajril Rahmatullah', 'fajrilr@student.ub.ac.id', '205150707111033', '', '', 0, 'c'),
(132, 'Muhammad Ridwan Arif Bowo', 'ridwan_arif@student.ub.ac.id', '205150701111028', '', '', 0, 'c'),
(133, 'Abi Al Qhafari', 'qhafari123@student.ub.ac.id', '205150700111042', '', '', 0, 'c');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kotak_suara`
--
ALTER TABLE `kotak_suara`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kotak_suara`
--
ALTER TABLE `kotak_suara`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
