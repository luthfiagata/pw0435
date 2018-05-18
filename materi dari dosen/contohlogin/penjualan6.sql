-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2017 at 04:26 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan6`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `KodeBrg` char(5) NOT NULL,
  `NamaBrg` varchar(50) NOT NULL,
  `HargaBrg` int(11) NOT NULL,
  `JumlahBrg` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `KodeCus` char(5) NOT NULL,
  `NamaCus` varchar(50) NOT NULL,
  `AlamatCus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`KodeCus`, `NamaCus`, `AlamatCus`) VALUES
('AB1', 'andi', 'amikom'),
('AB10', 'Nama', 'Amikom'),
('AB2', 'coba', 'alamat'),
('AB3', 'mantap', 'aaaaa'),
('AB4', 'nama Saya adalah saya', 'amikom '),
('AB6', 'saya', 'jogja'),
('AB7', 'dia', 'jog'),
('AB9', 'Test', 'testtest'),
('ds', 'ds', 'ds'),
('gfg', 'gfg', 'fgg'),
('u7', 'u7', 'u7');

-- --------------------------------------------------------

--
-- Table structure for table `itembeli`
--

CREATE TABLE `itembeli` (
  `NoNota` char(5) NOT NULL,
  `KodeBrg` char(5) NOT NULL,
  `Jumlah` int(11) DEFAULT '0',
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `NoNota` char(5) NOT NULL,
  `KodeCus` char(5) NOT NULL,
  `TglNota` date DEFAULT NULL,
  `TotNota` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(2, 'admin', '1234'),
(3, 'hengky', '8579');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KodeBrg`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`KodeCus`);

--
-- Indexes for table `itembeli`
--
ALTER TABLE `itembeli`
  ADD KEY `NoNota` (`NoNota`),
  ADD KEY `KodeBrg` (`KodeBrg`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`NoNota`),
  ADD KEY `KodeCus` (`KodeCus`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `itembeli`
--
ALTER TABLE `itembeli`
  ADD CONSTRAINT `itembeli_ibfk_1` FOREIGN KEY (`NoNota`) REFERENCES `nota` (`NoNota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itembeli_ibfk_2` FOREIGN KEY (`KodeBrg`) REFERENCES `barang` (`KodeBrg`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`KodeCus`) REFERENCES `customer` (`KodeCus`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
