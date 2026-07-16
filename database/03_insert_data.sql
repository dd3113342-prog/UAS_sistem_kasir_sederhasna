-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2026 at 06:04 AM
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

--
-- Dumping data for table detail_penjualan
--

INSERT INTO detail_penjualan (id_detail, id_penjualan, id_barang, jumlah, harga, subtotal) VALUES
(1, 1, 1, 1, 20000.00, 20000.00),
(2, 1, 2, 3, 5000.00, 15000.00);

--
-- Dumping data for table kategori
--

INSERT INTO kategori (id_kategori, nama_kategori) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Snack');

--
-- Dumping data for table penjualan
--

INSERT INTO penjualan (id_penjualan, id_user, tanggal, total) VALUES
(1, 2, '2026-07-14', 35000.00);

--
-- Dumping data for table user
--

INSERT INTO user (id_user, nama_user, username, password, level) VALUES
(1, 'Admin', 'admin', '12345', 'Admin'),
(2, 'Danang', 'danang', '12345', 'Kasir');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
