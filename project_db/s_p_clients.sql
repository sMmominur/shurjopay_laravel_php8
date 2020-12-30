-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 06:02 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surjopay_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `s_p_clients`
--

CREATE TABLE `s_p_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_tx_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrument` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_p_clients`
--

INSERT INTO `s_p_clients` (`id`, `amount`, `txt_id`, `bank_tx_id`, `return_url`, `instrument`, `sp_code`, `client_ip`, `status`, `created_at`, `updated_at`) VALUES
(1, '45', 'NOK5fec0696c8b77', '', '{\"txID\":\"NOK5fec0696c8b77\",\"bankTxID\":{},\"bankTxStatus\":\"CANCEL\",\"txnAmount\":\"45\",\"spCode\":\"001\",\"spCodeDes\":\"Cancel\",\"paymentOption\":{}}', '', '001', '127.0.0.1', 'Failed', NULL, NULL),
(2, '100', 'NOK5fec07333d14c', '', '{\"txID\":\"NOK5fec07333d14c\",\"bankTxID\":{},\"bankTxStatus\":\"CANCEL\",\"txnAmount\":\"100\",\"spCode\":\"001\",\"spCodeDes\":\"Cancel\",\"paymentOption\":\"bkash_api\"}', 'bkash_api', '001', '127.0.0.1', 'Failed', NULL, NULL),
(3, '1', 'NOK5fec07d9a9ae9', '7LU0M97XJ0', '{\"txID\":\"NOK5fec07d9a9ae9\",\"bankTxID\":\"7LU0M97XJ0\",\"bankTxStatus\":\"SUCCESS\",\"txnAmount\":\"1\",\"spCode\":\"000\",\"spCodeDes\":\"Approved\",\"paymentOption\":\"bkash_api\"}', 'bkash_api', '000', '127.0.0.1', 'Success', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_p_clients`
--
ALTER TABLE `s_p_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `s_p_clients`
--
ALTER TABLE `s_p_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
