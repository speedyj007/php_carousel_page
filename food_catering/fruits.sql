-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2020 at 10:37 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id4823917_mysql_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE `fruits` (
  `id` int(100) UNSIGNED NOT NULL,
  `img` blob NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fruits`
--

INSERT INTO `fruits` (`id`, `img`, `name`, `logo`, `price`) VALUES
(1, 0x6275666665742d3331353639312e6a7067, 'Buffet 2.5 kg', 'C', 3.58),
(2, 0x636172726f742d6a756963652d313632333135375f313932302e6a7067, 'Carrot 1 pcs', 'C', 2.99),
(3, 0x636172726f74732d323130363832355f313932302e6a7067, 'carrot 5 pcs', 'C', 3.99),
(4, 0x6361737365726f6c652d646973682d323737363733355f313932302e6a7067, 'dishes pack of 1', 'D', 10.25),
(5, 0x63657265616c2d313434343439355f313932302e6a7067, 'Cereal 250g 1 pc', 'C', 0.58),
(6, 0x66726573682d6a616c6562692d3831383331365f313932302e6a7067, 'Fresh Jalebi 25pcs', 'D', 5.25),
(7, 0x66726965642d726963652d323039383033375f313932302e6a7067, 'Fried Rice 1 kg', 'F', 2.58),
(8, 0x696e6469612d313438313439385f313932302e6a7067, 'Indian Dry Nuts', 'C', 3.65),
(9, 0x6f6e696f6e2d62756c62732d38343732325f313932302e6a7067, 'Yellow Onions', 'C', 0.99),
(10, 0x706f7461746f65732d3431313937355f313932302e6a7067, 'potatoes 1 kg', 'C', 2.58);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
