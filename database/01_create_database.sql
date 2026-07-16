-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2026 at 05:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: db_kasir
--
CREATE DATABASE IF NOT EXISTS db_kasir DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE db_kasir;

-- --------------------------------------------------------

--
-- Table structure for table barang
--

CREATE TABLE barang (
  id_barang int(11) NOT NULL,
  id_kategori int(11) NOT NULL,
  nama_barang varchar(100) NOT NULL,
  harga decimal(10,2) NOT NULL,
  stok int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table barang
--

INSERT INTO barang (id_barang, id_kategori, nama_barang, harga, stok) VALUES
(1, 1, 'Nasi Goreng', 20000.00, 20),
(2, 2, 'Es Teh', 5000.00, 50),
(3, 3, 'Keripik Kentang', 10000.00, 30),
(4, 1, 'Nasi Goreng', 20000.00, 20),
(5, 2, 'Es Teh', 5000.00, 50),
(6, 3, 'Keripik Kentang', 10000.00, 30);

-- --------------------------------------------------------

--
-- Table structure for table detail_penjualan
--

CREATE TABLE detail_penjualan (
  id_detail int(11) NOT NULL,
  id_penjualan int(11) NOT NULL,
  id_barang int(11) NOT NULL,
  jumlah int(11) NOT NULL,
  harga decimal(10,2) NOT NULL,
  subtotal decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table detail_penjualan
--

INSERT INTO detail_penjualan (id_detail, id_penjualan, id_barang, jumlah, harga, subtotal) VALUES
(1, 1, 1, 1, 20000.00, 20000.00),
(2, 1, 2, 3, 5000.00, 15000.00);

-- --------------------------------------------------------

--
-- Table structure for table kategori
--

CREATE TABLE kategori (
  id_kategori int(11) NOT NULL,
  nama_kategori varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table kategori
--

INSERT INTO kategori (id_kategori, nama_kategori) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Snack');

-- --------------------------------------------------------

--
-- Table structure for table penjualan
--

CREATE TABLE penjualan (
  id_penjualan int(11) NOT NULL,
  id_user int(11) NOT NULL,
  tanggal date NOT NULL,
  total decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table penjualan
--

INSERT INTO penjualan (id_penjualan, id_user, tanggal, total) VALUES
(1, 2, '2026-07-14', 35000.00);

-- --------------------------------------------------------

--
-- Table structure for table user
--

CREATE TABLE `user` (
  id_user int(11) NOT NULL,
  nama_user varchar(100) NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  level enum('Admin','Kasir') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table user
--

INSERT INTO user (id_user, nama_user, username, password, level) VALUES
(1, 'Admin', 'admin', '12345', 'Admin'),
(2, 'Danang', 'danang', '12345', 'Kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table barang
--
ALTER TABLE barang
  ADD PRIMARY KEY (id_barang),
  ADD KEY fk_barang_kategori (id_kategori);

--
-- Indexes for table detail_penjualan
--
ALTER TABLE detail_penjualan
  ADD PRIMARY KEY (id_detail),
  ADD KEY fk_detail_penjualan (id_penjualan),
  ADD KEY fk_detail_barang (id_barang);

--
-- Indexes for table kategori
--
ALTER TABLE kategori
  ADD PRIMARY KEY (id_kategori);

--
-- Indexes for table penjualan
--
ALTER TABLE penjualan
  ADD PRIMARY KEY (id_penjualan),
  ADD KEY fk_penjualan_user (id_user);

--
-- Indexes for table user
--
ALTER TABLE user
  ADD PRIMARY KEY (id_user),
  ADD UNIQUE KEY username (username);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table barang
--
ALTER TABLE barang
  MODIFY id_barang int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table detail_penjualan
--
ALTER TABLE detail_penjualan
  MODIFY id_detail int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table kategori
--
ALTER TABLE kategori
  MODIFY id_kategori int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table penjualan
--
ALTER TABLE penjualan
  MODIFY id_penjualan int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table user
--
ALTER TABLE user
  MODIFY id_user int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table barang
--
ALTER TABLE barang
  ADD CONSTRAINT fk_barang_kategori FOREIGN KEY (id_kategori) REFERENCES kategori (id_kategori);

--
-- Constraints for table detail_penjualan
--
ALTER TABLE detail_penjualan
  ADD CONSTRAINT fk_detail_barang FOREIGN KEY (id_barang) REFERENCES barang (id_barang),
  ADD CONSTRAINT fk_detail_penjualan FOREIGN KEY (id_penjualan) REFERENCES penjualan (id_penjualan);

--
-- Constraints for table penjualan
--
ALTER TABLE penjualan
  ADD CONSTRAINT fk_penjualan_user FOREIGN KEY (id_user) REFERENCES `user` (id_user);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
