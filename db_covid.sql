-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 11:56 AM
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
-- Database: `db_covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Pernah berkunjung ke tempat yang terkena Covid-19 '),
(2, 'G002', 'Melakukan kontak dengan orang yang terkena Covid-19'),
(3, 'G003', 'Merasakan demam'),
(4, 'G004', 'Batuk-batuk'),
(5, 'G005', 'Pilek'),
(6, 'G006', 'Sesak napas'),
(7, 'G007', 'Tengorokan Sakit'),
(8, 'G008', 'Dahak kental (kuning-kehijauan)'),
(9, 'G009', 'Anggota tubuh panas'),
(10, 'G010', 'Sinar-x pada paru-paru'),
(11, 'G011', 'Hidung tersumbat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rule`
--

INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`) VALUES
(1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1),
(7, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id` int(5) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `info` longtext NOT NULL,
  `penanganan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id`, `status`, `info`, `penanganan`) VALUES
(1, 'ODP', 'ODP atau Orang Dalam Pengawasan merupakan orang yang diketahui telah memiliki kontak dengan kasus COVID-19 seperti memiliki riwayat perjalanan ke daerah berisiko, atau berkontak langsung dengan penderita Covid-19. ', 'Pada ODP ini di himbau untuk melakukan isolasi mandiri. Jika kondisi ODP mengalami perburukan dan sudah memenuhi kriteria PDP atau hasil laboratoriumnya positif terinfeksi virus Corona, maka ODP tersebut harus dibawa ke rumah sakit.\r\n'),
(2, 'PDP', 'PDP atau Pasien Dalam Pemantauan yaitu pasien yang mengalami beberapa gejala yang\r\nmengindikasikan adanya COVID-19 dari sedang hingga berat seperti batuk, pilek, demam, dan\r\ngangguan napas', 'Terhadap PDP, dilakukan rawat inap terisolasi di rumah sakit, pemeriksaan laboratorium,\r\ndan pemantauan pada orang lain yang memiliki kontak erat dengan PDP tersebut.'),
(3, 'Positif Covid-19', 'Anda positif Covid-19, COVID-19 disebabkan oleh coronavirus, yaitu kelompok virus yang menginfeksi sistem pernapasan. Pada sebagian besar kasus, coronavirus hanya menyebabkan infeksi pernapasan ringan sampai sedang, seperti flu. Akan tetapi, virus ini juga bisa menyebabkan infeksi pernapasan berat, seperti pneumonia, Middle-East Respiratory Syndrome (MERS), dan Severe Acute Respiratory Syndrome (SARS). Gejala umum infeksi COVID-19 antara lain gejala gangguan pernapasan akut seperti demam, batuk dan sesak napas ', 'Pasien positif yang mengalami gejala-gejala yang mengarah ke COVID-19 pasien akan di jemput oleh petugas menggunakan ambulance dan dibawa kerumah sakit rujukan yang menangani COVID-19 ini. Apabila selama 3 hari pasien tidak ada gejala apapun pasien tersebut tetap melakukan karantina mandiri untuk mencegah penularan COVID-19 ini.'),
(4, 'OTG', 'Orang Tanpa Gejala (OTG) adalah orang yang sudah terindikasi positif Covid-19 namun tidak menujukkan gejala. Kategori OTG juga memiliki riwayat kontak berat, baik kontak fisik atau berada dalam ruangan dengan radius satu meter dari pasien COVID-19.', 'Pasien OTG akan di jemput oleh petugas menggunakan ambulance dan dibawa kerumah sakit rujukan yang menangani COVID19 ini. Apabila selama 3 hari pasien tidak ada gejala apapun pasien tersebut tetap melakukan karantina mandiri untuk mencegah penularan COVID-19 ini.'),
(5, 'Sehat Wal Afiat', 'Anda tidak memiliki gejala yang mengindikasikan status ODP, PDP, Positif Covid-19, OTG, Influenza dan Batuk Berdahak', 'Selalu jaga kesehatan, ranjin mencuci tangan dan memperhatikan protokol kesehatan. Harap periksa ke dokter apabila mengalami gejala diluar dari diagnosa Covid-19 ini.'),
(6, 'Influenxa', 'Influenza adalah infeksi virus yang menyerang hidung dan tenggorokan, dengan gejala atau keluhan demam, nyeri kepala, nyeri otot, pilek hidung tersumbat atau berair, batuk, tenggorokan sakit dan seluruh badan terasa tidak enak, biasanya disertai panas. ', 'Influenza dapat sembuh dengan sendirinya yaitu dengan sistem kekebalan tubuh penderita. Adapun yang dapat dilakukan untuk mengobati influenza :\r\na. Istirahat yang cukup\r\nb. Makan dengan teratur dengan buah dan sayu yang cukupr\r\nc. Mengonsumsi vitamin C\r\nd. Olahraga'),
(7, 'Batuk Berdahak', 'Batuk Berdahak merupakan penyakit yang menginfeksi saluran pernapasan yang disebabkan oleh virus dan merupakan salah satu penyakit ringan yang dapat diatasi dengan swamedikasi (pengobatan sendiri).', 'a. Istirahat yang cukup\r\nb. Hindari makanan berminyak\r\nc. Mengonsumsi buah dan sayur\r\nd. Banyak minum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD CONSTRAINT `tb_status_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
