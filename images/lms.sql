-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2016 at 11:32 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logoURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(10) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `phone`, `logoURL`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Aikas Nigeria Ltd.', '', '', '9.png', 0, '', '2016-04-23 20:58:13', '2016-04-23 21:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `customerledger`
--

DROP TABLE IF EXISTS `customerledger`;
CREATE TABLE IF NOT EXISTS `customerledger` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(25) NOT NULL,
  `balance` double(25,2) NOT NULL DEFAULT '0.00',
  `carryForward` double(25,2) NOT NULL DEFAULT '0.00',
  `broughtForward` double(25,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lab_no` int(255) NOT NULL,
  `lab_code` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `weight` double(10,2) NOT NULL,
  `height` double(10,2) NOT NULL,
  `blood_pressure` varchar(50) NOT NULL,
  `medical_indication` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `created_by` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `lab_no`, `lab_code`, `age`, `gender`, `weight`, `height`, `blood_pressure`, `medical_indication`, `doctor`, `hospital`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Aminu Mahdi', '08030626837', '', 'aminu.mahdi@gmail.com', 1, 'ZAD4AK', 34, 'male', 82.00, 1.87, '124/89', '', 'Dr. Oz', 'Zankli', '2', '2016-06-30 11:20:57', '2016-06-30 10:20:57'),
(2, 'Isa Usman', '08030626837', '', 'aminu.mahdi@gmail.com', 2, '2ICMJ4', 56, 'male', 89.00, 1.84, '124/89', '', '', '', '1', '2016-06-30 13:48:53', '2016-06-30 12:48:53'),
(3, 'James Milner', '12345677', '', 'james@milner.com', 3, 'YYC6S2', 32, 'male', 76.00, 1.76, '124/89', '', '', '', '1', '2016-06-30 15:59:34', '2016-06-30 14:59:34'),
(4, 'Emmanuel Joseph', '08078457812', '', 'jemmanuel@yahoo.com', 4, 'XNVF7Q', 26, 'male', 65.00, 1.30, '123/79', '', '', '', '2', '2016-07-12 10:39:59', '2016-07-12 09:39:59'),
(5, 'Elizabeth Johnson ', '08030626837', '', 'aminu.mahdi@gmail.com', 5, 'AQ35GT', 89, 'male', 67.00, 1.76, '124/89', '', '', '', '3', '2016-07-12 10:54:36', '2016-07-12 09:54:36'),
(6, 'Aminu Mahdi', '08030626837', '', 'aminu.mahdi@gmail.com', 6, '71SIZO', 34, 'male', 85.00, 1.84, '124/89', '', '', '', '3', '2016-07-12 14:07:55', '2016-07-12 13:07:55'),
(7, 'Hilary Cliton', '165980987', '', 'hilary@whitehouse.com', 7, 'D31YEX', 56, 'female', 81.00, 1.56, '127/87', '', '', '', '1', '2016-07-12 15:32:24', '2016-07-12 14:32:24'),
(8, 'Aliyu Usman', '09023456798', '', 'aminu.mahdi@gmail.com', 8, 'FAHSBP', 34, 'male', 87.00, 1.56, '127/87', '', '', '', '1', '2016-07-12 15:46:59', '2016-07-12 14:46:59'),
(9, 'Emmanuel Akpawan', '08036378573', '', 'emma@emma.com', 9, 'W4DPTA', 60, 'male', 76.00, 1.67, '124/89', '', 'Dr Isa', 'Zankli', '2', '2016-07-14 11:43:50', '2016-07-14 10:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(10) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Chemistry', 'Chemistry', 1, '1', '2016-07-22 20:36:40', '2016-07-22 20:36:40'),
(2, 'Haematology', 'Haematology', 1, '1', '2016-07-22 20:37:57', '2016-07-22 20:37:57'),
(3, 'Microbiology', 'Microbiology', 1, '1', '2016-07-22 20:37:57', '2016-07-22 20:37:57'),
(4, 'Histology', 'Histology', 1, '1', '2016-07-22 20:42:01', '2016-07-22 20:42:01'),
(5, 'Culture', 'Culture', 1, '1', '2016-07-22 20:43:11', '2016-07-22 20:43:11'),
(6, 'Cytology', 'Cytology', 1, '1', '2016-07-22 20:44:09', '2016-07-22 20:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `expensejournal`
--

DROP TABLE IF EXISTS `expensejournal`;
CREATE TABLE IF NOT EXISTS `expensejournal` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `transactionID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(50,2) NOT NULL,
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `expense_date` date NOT NULL,
  `remark` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `approval_status` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `approved_by` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `approval_date` date NOT NULL,
  `payment_status` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `paid_by` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expensejournal`
--

INSERT INTO `expensejournal` (`id`, `transactionID`, `amount`, `description`, `expense_date`, `remark`, `created_by`, `approval_status`, `approved_by`, `approval_date`, `payment_status`, `paid_by`, `payment_date`, `created_at`, `updated_at`) VALUES
(1, 'M5Y33S', 2000.00, 'Refreshment', '2016-06-30', '', '2', 'Pending', '', '0000-00-00', '', '', '0000-00-00', '2016-06-30 13:26:20', '2016-06-30 13:26:20'),
(2, 'RYSJ15', 550.00, 'Office line Recharge Card', '2016-06-30', '', '1', 'Cancelled', '1', '2016-06-30', '', '', '0000-00-00', '2016-06-30 15:26:42', '2016-06-30 15:26:56'),
(3, 'RYSJ15', 5000.00, 'PHCN Bill Payment', '2016-06-30', '', '1', 'Approved', '2', '2016-06-30', 'Paid', '1', '2016-06-30', '2016-06-30 15:26:42', '2016-06-30 15:29:48'),
(4, 'MO1XIV', 200.00, 'Corton Wool', '2016-07-12', '', '4', 'Approved', '3', '2016-07-12', 'Paid', '1', '2016-07-12', '2016-07-12 13:29:48', '2016-07-12 13:30:54'),
(5, 'S6HJYA', 4000.00, 'NEPA Bill July 2016', '2016-07-12', '', '4', 'Pending', '', '0000-00-00', '', '', '0000-00-00', '2016-07-12 14:25:52', '2016-07-12 14:25:52'),
(6, 'S6HJYA', 2000.00, 'Reagent', '2016-07-12', '', '4', 'Approved', '3', '2016-07-12', 'Paid', '1', '2016-07-12', '2016-07-12 14:25:52', '2016-07-12 14:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `inventoryregister`
--

DROP TABLE IF EXISTS `inventoryregister`;
CREATE TABLE IF NOT EXISTS `inventoryregister` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deliveryNo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `unit_cost` double(50,2) NOT NULL,
  `inventory_date` date NOT NULL,
  `created_by` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventoryregister`
--

INSERT INTO `inventoryregister` (`id`, `deliveryNo`, `type`, `product_id`, `quantity`, `unit_cost`, `inventory_date`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'O7UZDF', 'In', '1', 10, 100.00, '2016-06-10', '2', '2016-06-10 10:39:15', '2016-06-10 10:39:15'),
(2, 'FQSW76', 'In', '1', 11, 50.00, '2016-06-10', '2', '2016-06-10 10:43:22', '2016-06-10 10:43:22'),
(3, '4N1SF2', 'In', '2', 100, 100.00, '2016-06-10', '2', '2016-06-10 11:27:24', '2016-06-10 11:27:24'),
(4, '4N1SF2', 'In', '3', 140, 200.00, '2016-06-10', '2', '2016-06-10 11:27:24', '2016-06-10 11:27:24'),
(5, 'DFZT1A', 'In', '1', 79, 50.00, '2016-06-10', '2', '2016-06-10 11:27:59', '2016-06-10 11:27:59'),
(6, 'MRS2WC', 'Out', '2', 2, 0.00, '2016-06-13', '2', '2016-06-13 08:01:13', '2016-06-13 08:01:13'),
(7, 'MRS2WC', 'Out', '3', 10, 0.00, '2016-06-13', '2', '2016-06-13 08:01:13', '2016-06-13 08:01:13'),
(8, 'COD4XZ', 'Out', '2', 3, 0.00, '2016-06-13', '2', '2016-06-13 08:04:27', '2016-06-13 08:04:27'),
(9, 'COD4XZ', 'Out', '3', 5, 0.00, '2016-06-13', '2', '2016-06-13 08:04:27', '2016-06-13 08:04:27'),
(10, '7BWYUY', 'In', '3', 10, 1.00, '2016-06-13', '2', '2016-06-13 08:05:42', '2016-06-13 08:05:42'),
(11, '7BWYUY', 'In', '2', 10, 1.00, '2016-06-13', '2', '2016-06-13 08:05:42', '2016-06-13 08:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_09_11_194533_create_mails_table', 1),
('2015_09_15_073217_create_offices_table', 2),
('2016_01_02_220438_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(20,2) NOT NULL,
  `active` int(10) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`shortname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `shortname`, `description`, `price`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Distilled Water', 'Distilled Water', 'Distilled Water', 0.00, 1, '2', '2016-06-10 10:29:14', '2016-06-10 10:29:14'),
(2, 'Hand Gloves', 'Gloves', 'Hand Gloves', 1000.00, 1, '2', '2016-06-10 11:26:03', '2016-06-10 11:26:03'),
(3, 'Syringe', 'Syringe', 'Syringe', 100.00, 1, '2', '2016-06-10 11:26:34', '2016-06-10 11:26:34'),
(4, 'Paper', 'Paper', 'Paper', 100.00, 1, '3', '2016-07-12 13:52:05', '2016-07-12 13:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(10) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'System Admin', 'System Admin', 1, '1', '2016-05-31 23:00:00', '2016-06-19 23:00:00'),
(2, 'Manager', 'Manager/Administrator', 1, '', '2016-06-09 22:55:57', '2016-06-09 22:55:57'),
(3, 'Reception', 'Reception', 1, '', '2016-06-09 22:56:20', '2016-06-09 22:56:20'),
(4, 'Lab Scientist', 'Laboratory Scientist', 1, '', '2016-06-09 22:56:55', '2016-06-09 22:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `salesjournal`
--

DROP TABLE IF EXISTS `salesjournal`;
CREATE TABLE IF NOT EXISTS `salesjournal` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `salesNo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `invoiceNo` int(25) NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_price` double(10,2) NOT NULL,
  `sold_to` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sold_by` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sales_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sales_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sales_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stockadjustment`
--

DROP TABLE IF EXISTS `stockadjustment`;
CREATE TABLE IF NOT EXISTS `stockadjustment` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `transactionID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `adjustment_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `adjustment_date` date NOT NULL,
  `remark` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `adjusted_by` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `approval_status` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `approved_by` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `approval_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, '1', 100, '2016-06-10 10:39:15', '2016-06-10 11:27:59'),
(2, '2', 105, '2016-06-10 11:27:24', '2016-06-13 08:05:42'),
(3, '3', 135, '2016-06-10 11:27:24', '2016-06-13 08:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `testjournal`
--

DROP TABLE IF EXISTS `testjournal`;
CREATE TABLE IF NOT EXISTS `testjournal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lab_no` varchar(10) NOT NULL,
  `test_id` int(10) NOT NULL,
  `test_price` double(25,2) NOT NULL DEFAULT '0.00',
  `posted_by` varchar(25) NOT NULL,
  `payment_status` varchar(10) NOT NULL,
  `request_date` date NOT NULL,
  `result_status` varchar(25) NOT NULL,
  `result` varchar(255) NOT NULL,
  `result_date` date NOT NULL,
  `result_by` varchar(10) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testjournal`
--

INSERT INTO `testjournal` (`id`, `lab_no`, `test_id`, `test_price`, `posted_by`, `payment_status`, `request_date`, `result_status`, `result`, `result_date`, `result_by`, `remark`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 1000.00, '2', 'Paid', '2016-06-30', 'Posted', 'Positive', '2016-06-30', '1', 'Positive', '2016-06-30 10:20:57', '2016-06-30 13:57:03'),
(2, '1', 2, 350.00, '2', 'Paid', '2016-06-30', 'Posted', 'Negative', '2016-06-30', '1', 'Negative', '2016-06-30 10:20:57', '2016-06-30 13:57:03'),
(3, '2', 2, 350.00, '1', '', '2016-06-30', 'Pending', '', '0000-00-00', '', '', '2016-06-30 11:45:45', '2016-06-30 11:45:45'),
(9, '4', 1, 1000.00, '2', '', '2016-07-12', 'Pending', '', '0000-00-00', '', '', '2016-07-12 09:39:59', '2016-07-12 09:39:59'),
(8, '3', 1, 1000.00, '1', '', '2016-06-30', 'Pending', '', '0000-00-00', '', '', '2016-06-30 14:59:34', '2016-06-30 14:59:34'),
(10, '4', 2, 350.00, '2', '', '2016-07-12', 'Pending', '', '0000-00-00', '', '', '2016-07-12 09:39:59', '2016-07-12 09:39:59'),
(11, '5', 2, 350.00, '3', 'Paid', '2016-07-12', 'Pending', '', '0000-00-00', '', '', '2016-07-12 09:54:36', '2016-07-12 14:41:43'),
(12, '6', 2, 350.00, '3', 'Paid', '2016-07-12', 'Posted', 'positive', '2016-07-12', '3', '', '2016-07-12 13:07:55', '2016-07-12 13:17:42'),
(13, '6', 1, 1000.00, '3', 'Paid', '2016-07-12', 'Posted', 'Item - Positive\r\nItem 2 - 37%\r\nItem 3 - 120/87', '2016-07-12', '3', '80/39', '2016-07-12 13:07:55', '2016-07-12 13:17:42'),
(14, '7', 5, 3000.00, '1', 'Paid', '2016-07-12', 'Posted', 'yES', '2016-07-12', '4', '', '2016-07-12 14:32:24', '2016-07-12 14:39:02'),
(15, '7', 2, 350.00, '1', 'Paid', '2016-07-12', 'Posted', '+2', '2016-07-12', '4', '', '2016-07-12 14:32:24', '2016-07-12 14:39:02'),
(16, '7', 3, 2500.00, '1', 'Paid', '2016-07-12', 'Posted', '+1', '2016-07-12', '4', '', '2016-07-12 14:32:24', '2016-07-12 14:39:02'),
(17, '8', 1, 1000.00, '1', 'Paid', '2016-07-12', 'Posted', 'Positive\r\n', '2016-07-12', '4', '', '2016-07-12 14:46:59', '2016-07-12 14:53:00'),
(18, '8', 2, 350.00, '1', 'Paid', '2016-07-12', 'Posted', '+2', '2016-07-12', '4', '', '2016-07-12 14:46:59', '2016-07-12 14:53:00'),
(19, '8', 3, 2500.00, '1', 'Paid', '2016-07-12', 'Posted', 'Negative', '2016-07-12', '4', '', '2016-07-12 14:46:59', '2016-07-12 14:53:00'),
(20, '9', 2, 350.00, '2', 'Paid', '2016-07-14', 'Pending', '', '0000-00-00', '', '', '2016-07-14 10:43:50', '2016-07-14 10:49:42'),
(21, '9', 5, 3000.00, '2', 'Paid', '2016-07-14', 'Pending', '', '0000-00-00', '', '', '2016-07-14 10:43:50', '2016-07-14 10:49:42'),
(22, '9', 4, 5000.00, '2', 'Paid', '2016-07-14', 'Pending', '', '0000-00-00', '', '', '2016-07-14 10:43:50', '2016-07-14 10:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test_category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test_subcategory_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(10) NOT NULL,
  `price` double(20,2) DEFAULT NULL,
  `active` int(10) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`shortname`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `shortname`, `description`, `test_category_id`, `test_subcategory_id`, `department_id`, `price`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Electrolyte Urea Creatinine', 'Electrolyte Urea Creatinine', 'Electrolyte Urea Creatinine', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 5000.00, 1, '1', '2016-06-08 23:00:00', '2016-06-08 23:00:00'),
(2, 'Electrolyte', 'Electrolyte', 'Electrolyte', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 5000.00, 1, '1', '2016-06-09 23:00:00', '2016-06-09 23:00:00'),
(3, 'Protein (24hr urine)', 'Protein (24hr urine)', 'Protein (24hr urine)', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 1500.00, 1, '1', '2016-06-10 23:00:00', '2016-06-10 23:00:00'),
(4, 'Uric Acid', 'Uric Acid', 'Uric Acid', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 2000.00, 1, '1', '2016-06-11 23:00:00', '2016-06-11 23:00:00'),
(5, 'Uric Acid (24hr urine)', 'Uric Acid (24hr urine)', 'Uric Acid (24hr urine)', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-12 23:00:00', '2016-06-12 23:00:00'),
(6, 'Magnisium', 'Magnisium', 'Magnisium', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-13 23:00:00', '2016-06-13 23:00:00'),
(7, 'Calcium (No Tourniquet)', 'Calcium (No Tourniquet)', 'Calcium (No Tourniquet)', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-14 23:00:00', '2016-06-14 23:00:00'),
(8, 'Phosphate', 'Phosphate', 'Phosphate', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-15 23:00:00', '2016-06-15 23:00:00'),
(9, 'Calculus Analysis', 'Calculus Analysis', 'Calculus Analysis', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-16 23:00:00', '2016-06-16 23:00:00'),
(10, 'LD-H', 'LD-H', 'LD-H', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-17 23:00:00', '2016-06-17 23:00:00'),
(11, 'Albumin', 'Albumin', 'Albumin', 'Renal/Electrolytes/Bones', 'Chemical Pathology', 1, 1500.00, 1, '1', '2016-06-18 23:00:00', '2016-06-18 23:00:00'),
(12, 'LFT (includes protein alb,glb)', 'LFT (includes protein alb,glb)', 'LFT (includes protein alb,glb)', 'Liver/Pancreas', 'Chemical Pathology', 1, 5000.00, 1, '1', '2016-06-19 23:00:00', '2016-06-19 23:00:00'),
(13, 'Liver Enzymes only', 'Liver Enzymes only', 'Liver Enzymes only', 'Liver/Pancreas', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-20 23:00:00', '2016-06-20 23:00:00'),
(14, 'Bilirubin', 'Bilirubin', 'Bilirubin', 'Liver/Pancreas', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(15, 'ALP', 'ALP', 'ALP', 'Liver/Pancreas', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-22 23:00:00', '2016-06-22 23:00:00'),
(16, 'GGT', 'GGT', 'GGT', 'Liver/Pancreas', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-23 23:00:00', '2016-06-23 23:00:00'),
(17, 'AST', 'AST', 'AST', 'Liver/Pancreas', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-24 23:00:00', '2016-06-24 23:00:00'),
(18, 'ALT', 'ALT', 'ALT', 'Liver/Pancreas', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-06-25 23:00:00', '2016-06-25 23:00:00'),
(19, 'Amylase', 'Amylase', 'Amylase', 'Liver/Pancreas', 'Chemical Pathology', 1, 1500.00, 1, '1', '2016-06-26 23:00:00', '2016-06-26 23:00:00'),
(20, 'Lipase', 'Lipase', 'Lipase', 'Liver/Pancreas', 'Chemical Pathology', 1, 4000.00, 1, '1', '2016-06-27 23:00:00', '2016-06-27 23:00:00'),
(21, 'Myoglobin', 'Myoglobin', 'Myoglobin', 'Cardiac', 'Chemical Pathology', 1, 3000.00, 1, '1', '2016-06-28 23:00:00', '2016-06-28 23:00:00'),
(22, 'CK-MB Mass', 'CK-MB Mass', 'CK-MB Mass', 'Cardiac', 'Chemical Pathology', 1, 7500.00, 1, '1', '2016-06-29 23:00:00', '2016-06-29 23:00:00'),
(23, 'Troponin I', 'Troponin I', 'Troponin I', 'Cardiac', 'Chemical Pathology', 1, 7000.00, 1, '1', '2016-06-30 23:00:00', '2016-06-30 23:00:00'),
(24, 'Troponin T', 'Troponin T', 'Troponin T', 'Cardiac', 'Chemical Pathology', 1, 7000.00, 1, '1', '2016-07-01 23:00:00', '2016-07-01 23:00:00'),
(25, 'CK', 'CK', 'CK', 'Cardiac', 'Chemical Pathology', 1, 3000.00, 1, '1', '2016-07-02 23:00:00', '2016-07-02 23:00:00'),
(26, 'Lipid Profile', 'Lipid Profile', 'Lipid Profile', 'Lipids/Cardiac Risk', 'Chemical Pathology', 1, 5000.00, 1, '1', '2016-07-03 23:00:00', '2016-07-03 23:00:00'),
(27, 'Cholesterol', 'Cholesterol', 'Cholesterol', 'Lipids/Cardiac Risk', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-07-04 23:00:00', '2016-07-04 23:00:00'),
(28, 'Triglycerides', 'Triglycerides', 'Triglycerides', 'Lipids/Cardiac Risk', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-07-05 23:00:00', '2016-07-05 23:00:00'),
(29, 'HDL', 'HDL', 'HDL', 'Lipids/Cardiac Risk', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-07-06 23:00:00', '2016-07-06 23:00:00'),
(30, 'LDL', 'LDL', 'LDL', 'Lipids/Cardiac Risk', 'Chemical Pathology', 1, 0.00, 1, '1', '2016-07-07 23:00:00', '2016-07-07 23:00:00'),
(31, 'Glucose Fasting', 'Glucose Fasting', 'Glucose Fasting', 'Diabetes', 'Chemical Pathology', 1, 1000.00, 1, '1', '2016-07-08 23:00:00', '2016-07-08 23:00:00'),
(32, 'Glucose Random', 'Glucose Random', 'Glucose Random', 'Diabetes', 'Chemical Pathology', 1, 1000.00, 1, '1', '2016-07-09 23:00:00', '2016-07-09 23:00:00'),
(33, 'Glucose post prandial (2hrs)', 'Glucose post prandial (2hrs)', 'Glucose post prandial (2hrs)', 'Diabetes', 'Chemical Pathology', 1, 1000.00, 1, '1', '2016-07-10 23:00:00', '2016-07-10 23:00:00'),
(34, 'Glucose Tolerance Test (2hrs)', 'Glucose Tolerance Test (2hrs)', 'Glucose Tolerance Test (2hrs)', 'Diabetes', 'Chemical Pathology', 1, 1000.00, 1, '1', '2016-07-11 23:00:00', '2016-07-11 23:00:00'),
(35, 'Diabates Profile (fbs,hbaic,microlab)', 'Diabates Profile (fbs,hbaic,microlab)', 'Diabates Profile (fbs,hbaic,microlab)', 'Diabetes', 'Chemical Pathology', 1, 5000.00, 1, '1', '2016-07-12 23:00:00', '2016-07-12 23:00:00'),
(36, 'FBC', 'FBC', 'FBC', 'General', 'Haematology', 2, 3000.00, 1, '1', '2016-07-13 23:00:00', '2016-07-13 23:00:00'),
(37, 'ESR', 'ESR', 'ESR', 'General', 'Haematology', 2, 2000.00, 1, '1', '2016-07-14 23:00:00', '2016-07-14 23:00:00'),
(38, 'Haemoglobin', 'Haemoglobin', 'Haemoglobin', 'General', 'Haematology', 2, 3000.00, 1, '1', '2016-07-15 23:00:00', '2016-07-15 23:00:00'),
(39, 'WBC Diff Count', 'WBC Diff Count', 'WBC Diff Count', 'General', 'Haematology', 2, 3000.00, 1, '1', '2016-07-16 23:00:00', '2016-07-16 23:00:00'),
(40, 'Reticulocytes', 'Reticulocytes', 'Reticulocytes', 'General', 'Haematology', 2, 3000.00, 1, '1', '2016-07-17 23:00:00', '2016-07-17 23:00:00'),
(41, 'Hb Electrophoresis/Genetype', 'Hb Electrophoresis/Genetype', 'Hb Electrophoresis/Genetype', 'General', 'Haematology', 2, 1500.00, 1, '1', '2016-07-18 23:00:00', '2016-07-18 23:00:00'),
(42, 'ABO/RH (Blood Grouping)', 'ABO/RH (Blood Grouping)', 'ABO/RH (Blood Grouping)', 'General', 'Haematology', 2, 1000.00, 1, '1', '2016-07-19 23:00:00', '2016-07-19 23:00:00'),
(43, 'Malaria', 'Malaria', 'Malaria', 'General', 'Haematology', 2, 1500.00, 1, '1', '2016-07-20 23:00:00', '2016-07-20 23:00:00'),
(44, 'PVC', 'PVC', 'PVC', 'General', 'Haematology', 2, 1000.00, 1, '1', '2016-07-21 23:00:00', '2016-07-21 23:00:00'),
(45, 'Platelet', 'Platelet', 'Platelet', 'General', 'Haematology', 2, 3000.00, 1, '1', '2016-07-22 23:00:00', '2016-07-22 23:00:00'),
(46, 'PT+INR', 'PT+INR', 'PT+INR', 'Coagulation', 'Haematology', 2, 5000.00, 1, '1', '2016-07-23 23:00:00', '2016-07-23 23:00:00'),
(47, 'PTT', 'PTT', 'PTT', 'Coagulation', 'Haematology', 2, 5000.00, 1, '1', '2016-07-24 23:00:00', '2016-07-24 23:00:00'),
(48, 'Fibrinogen', 'Fibrinogen', 'Fibrinogen', 'Coagulation', 'Haematology', 2, 8000.00, 1, '1', '2016-07-25 23:00:00', '2016-07-25 23:00:00'),
(49, 'D-Dimer', 'D-Dimer', 'D-Dimer', 'Coagulation', 'Haematology', 2, 5100.00, 1, '1', '2016-07-26 23:00:00', '2016-07-26 23:00:00'),
(50, 'Protein C', 'Protein C', 'Protein C', 'Coagulation', 'Haematology', 2, 33300.00, 1, '1', '2016-07-27 23:00:00', '2016-07-27 23:00:00'),
(51, 'Factor Vill', 'Factor Vill', 'Factor Vill', 'Coagulation', 'Haematology', 2, 50000.00, 1, '1', '2016-07-28 23:00:00', '2016-07-28 23:00:00'),
(52, 'Von Willebrad Factor', 'Von Willebrad Factor', 'Von Willebrad Factor', 'Coagulation', 'Haematology', 2, 110000.00, 1, '1', '2016-07-29 23:00:00', '2016-07-29 23:00:00'),
(53, 'Total IgE', 'Total IgE', 'Total IgE', 'Allergy', 'Haematology', 2, 20000.00, 1, '1', '2016-07-30 23:00:00', '2016-07-30 23:00:00'),
(54, 'Food Comprensive Panel', 'Food Comprensive Panel', 'Food Comprensive Panel', 'Allergy', 'Haematology', 2, 20000.00, 1, '1', '2016-07-31 23:00:00', '2016-07-31 23:00:00'),
(55, 'Comprehensive Adult Panel', 'Comprehensive Adult Panel', 'Comprehensive Adult Panel', 'Allergy', 'Haematology', 2, 15000.00, 1, '1', '2016-08-01 23:00:00', '2016-08-01 23:00:00'),
(56, 'Comprehensive Infant Panel', 'Comprehensive Infant Panel', 'Comprehensive Infant Panel', 'Allergy', 'Haematology', 2, 15000.00, 1, '1', '2016-08-02 23:00:00', '2016-08-02 23:00:00'),
(57, 'Comprehensive Respiratory Panel', 'Comprehensive Respiratory Panel', 'Comprehensive Respiratory Panel', 'Allergy', 'Haematology', 2, 15000.00, 1, '1', '2016-08-03 23:00:00', '2016-08-03 23:00:00'),
(58, 'PSA (Total)', 'PSA (Total)', 'PSA (Total)', 'Tumour Markers', 'Haematology', 2, 5000.00, 1, '1', '2016-08-04 23:00:00', '2016-08-04 23:00:00'),
(59, 'PSA (Free)', 'PSA (Free)', 'PSA (Free)', 'Tumour Markers', 'Haematology', 2, 5000.00, 1, '1', '2016-08-05 23:00:00', '2016-08-05 23:00:00'),
(60, 'CEA (G.I.T.,lung, breat', 'CEA (G.I.T.,lung, breat', 'CEA (G.I.T.,lung, breat', 'Tumour Markers', 'Haematology', 2, 10000.00, 1, '1', '2016-08-06 23:00:00', '2016-08-06 23:00:00'),
(61, 'CA 19-9 (G.I.T., pancreas)', 'CA 19-9 (G.I.T., pancreas)', 'CA 19-9 (G.I.T., pancreas)', 'Tumour Markers', 'Haematology', 2, 10000.00, 1, '1', '2016-08-07 23:00:00', '2016-08-07 23:00:00'),
(62, 'CA 125 (ovary)', 'CA 125 (ovary)', 'CA 125 (ovary)', 'Tumour Markers', 'Haematology', 2, 10000.00, 1, '1', '2016-08-08 23:00:00', '2016-08-08 23:00:00'),
(63, 'CA 72-4 (GIT)', 'CA 72-4 (GIT)', 'CA 72-4 (GIT)', 'Tumour Markers', 'Haematology', 2, 10000.00, 1, '1', '2016-08-09 23:00:00', '2016-08-09 23:00:00'),
(64, 'AFP', 'AFP', 'AFP', 'Tumour Markers', 'Haematology', 2, 10000.00, 1, '1', '2016-08-10 23:00:00', '2016-08-10 23:00:00'),
(65, 'Occult Blood (faeces)', 'Occult Blood (faeces)', 'Occult Blood (faeces)', 'Tumour Markers', 'Haematology', 2, 2000.00, 1, '1', '2016-08-11 23:00:00', '2016-08-11 23:00:00'),
(66, 'Bence Jones (urine)', 'Bence Jones (urine)', 'Bence Jones (urine)', 'Tumour Markers', 'Haematology', 2, 45000.00, 1, '1', '2016-08-12 23:00:00', '2016-08-12 23:00:00'),
(67, 'CRP', 'CRP', 'CRP', 'Inflammation/Immune', 'Haematology', 2, 4000.00, 1, '1', '2016-08-13 23:00:00', '2016-08-13 23:00:00'),
(68, 'High Sensitivity CRP', 'High Sensitivity CRP', 'High Sensitivity CRP', 'Inflammation/Immune', 'Haematology', 2, 5000.00, 1, '1', '2016-08-14 23:00:00', '2016-08-14 23:00:00'),
(69, 'Complement C3/C4', 'Complement C3/C4', 'Complement C3/C4', 'Inflammation/Immune', 'Haematology', 2, 12000.00, 1, '1', '2016-08-15 23:00:00', '2016-08-15 23:00:00'),
(70, 'Thyroid Function Test', 'Thyroid Function Test', 'Thyroid Function Test', 'Endocrine-Thyroid', 'Endocrinology', 1, 5000.00, 1, '1', '2016-08-16 23:00:00', '2016-08-16 23:00:00'),
(71, '(TSH,FT3,FT4)', '(TSH,FT3,FT4)', '(TSH,FT3,FT4)', 'Endocrine-Thyroid', 'Endocrinology', 1, 15000.00, 1, '1', '2016-08-17 23:00:00', '2016-08-17 23:00:00'),
(72, 'TSH', 'TSH', 'TSH', 'Endocrine-Thyroid', 'Endocrinology', 1, 6000.00, 1, '1', '2016-08-18 23:00:00', '2016-08-18 23:00:00'),
(73, 'Free T4', 'Free T4', 'Free T4', 'Endocrine-Thyroid', 'Endocrinology', 1, 5000.00, 1, '1', '2016-08-19 23:00:00', '2016-08-19 23:00:00'),
(74, 'FreeT3', 'FreeT3', 'FreeT3', 'Endocrine-Thyroid', 'Endocrinology', 1, 5000.00, 1, '1', '2016-08-20 23:00:00', '2016-08-20 23:00:00'),
(75, 'Semen Analysis', 'Semen Analysis', 'Semen Analysis', 'Endocrine-Reproductive', 'Endocrinology', 1, 5000.00, 1, '1', '2016-08-21 23:00:00', '2016-08-21 23:00:00'),
(76, 'B-HCG Quantitative', 'B-HCG Quantitative', 'B-HCG Quantitative', 'Endocrine-Reproductive', 'Endocrinology', 1, 6000.00, 1, '1', '2016-08-22 23:00:00', '2016-08-22 23:00:00'),
(77, 'Prolactin (rest 15mins)', 'Prolactin (rest 15mins)', 'Prolactin (rest 15mins)', 'Endocrine-Reproductive', 'Endocrinology', 1, 4000.00, 1, '1', '2016-08-23 23:00:00', '2016-08-23 23:00:00'),
(78, 'FSH', 'FSH', 'FSH', 'Endocrine-Reproductive', 'Endocrinology', 1, 4000.00, 1, '1', '2016-08-24 23:00:00', '2016-08-24 23:00:00'),
(79, 'LH', 'LH', 'LH', 'Endocrine-Reproductive', 'Endocrinology', 1, 4000.00, 1, '1', '2016-08-25 23:00:00', '2016-08-25 23:00:00'),
(80, 'Oestradiol (E2)', 'Oestradiol (E2)', 'Oestradiol (E2)', 'Endocrine-Reproductive', 'Endocrinology', 1, 5000.00, 1, '1', '2016-08-26 23:00:00', '2016-08-26 23:00:00'),
(81, 'Progesteron', 'Progesteron', 'Progesteron', 'Endocrine-Reproductive', 'Endocrinology', 1, 4000.00, 1, '1', '2016-08-27 23:00:00', '2016-08-27 23:00:00'),
(82, 'DHEA-S', 'DHEA-S', 'DHEA-S', 'Endocrine-Reproductive', 'Endocrinology', 1, 5000.00, 1, '1', '2016-08-28 23:00:00', '2016-08-28 23:00:00'),
(83, 'Testosterone (total)', 'Testosterone (total)', 'Testosterone (total)', 'Endocrine-Reproductive', 'Endocrinology', 1, 5000.00, 1, '1', '2016-08-29 23:00:00', '2016-08-29 23:00:00'),
(84, 'Testosterone (free)', 'Testosterone (free)', 'Testosterone (free)', 'Endocrine-Reproductive', 'Endocrinology', 1, 5000.00, 1, '1', '2016-08-30 23:00:00', '2016-08-30 23:00:00'),
(85, 'Renin/Aldosterone', 'Renin/Aldosterone', 'Renin/Aldosterone', 'Hypertention/Other Endocrine', 'Endocrinology', 1, 30000.00, 1, '1', '2016-08-31 23:00:00', '2016-08-31 23:00:00'),
(86, 'Cortisol (serum)', 'Cortisol (serum)', 'Cortisol (serum)', 'Hypertention/Other Endocrine', 'Endocrinology', 1, 13000.00, 1, '1', '2016-09-01 23:00:00', '2016-09-01 23:00:00'),
(87, 'Cortisol (24hr urine)', 'Cortisol (24hr urine)', 'Cortisol (24hr urine)', 'Hypertention/Other Endocrine', 'Endocrinology', 1, 13000.00, 1, '1', '2016-09-02 23:00:00', '2016-09-02 23:00:00'),
(88, 'Growth Hormone', 'Growth Hormone', 'Growth Hormone', 'Hypertention/Other Endocrine', 'Endocrinology', 1, 45000.00, 1, '1', '2016-09-03 23:00:00', '2016-09-03 23:00:00'),
(89, 'ACTH', 'ACTH', 'ACTH', 'Hypertention/Other Endocrine', 'Endocrinology', 1, 6000.00, 1, '1', '2016-09-04 23:00:00', '2016-09-04 23:00:00'),
(90, 'Anti Diuretic Hormone (ADH)', 'Anti Diuretic Hormone (ADH)', 'Anti Diuretic Hormone (ADH)', 'Hypertention/Other Endocrine', 'Endocrinology', 1, 45000.00, 1, '1', '2016-09-05 23:00:00', '2016-09-05 23:00:00'),
(91, 'Adrenalin', 'Adrenalin', 'Adrenalin', 'Hypertention/Other Endocrine', 'Endocrinology', 1, 45000.00, 1, '1', '2016-09-06 23:00:00', '2016-09-06 23:00:00'),
(92, 'Nor Adrenalin', 'Nor Adrenalin', 'Nor Adrenalin', 'Hypertention/Other Endocrine', 'Endocrinology', 1, 45000.00, 1, '1', '2016-09-07 23:00:00', '2016-09-07 23:00:00'),
(93, 'ANF+ANI DNA (DS DNA) FEN', 'ANF+ANI DNA (DS DNA) FEN', 'ANF+ANI DNA (DS DNA) FEN', 'Auto-Immune', 'Microbiology', 3, 5000.00, 1, '1', '2016-09-08 23:00:00', '2016-09-08 23:00:00'),
(94, 'Rhematoid Factor (NEPH)', 'Rhematoid Factor (NEPH)', 'Rhematoid Factor (NEPH)', 'Auto-Immune', 'Microbiology', 3, 4000.00, 1, '1', '2016-09-09 23:00:00', '2016-09-09 23:00:00'),
(95, 'H.Pylori AB (IGA)', 'H.Pylori AB (IGA)', 'H.Pylori AB (IGA)', 'Infective', 'Microbiology', 3, 2500.00, 1, '1', '2016-09-10 23:00:00', '2016-09-10 23:00:00'),
(96, 'H.Pylori AB (IGM)', 'H.Pylori AB (IGM)', 'H.Pylori AB (IGM)', 'Infective', 'Microbiology', 3, 2500.00, 1, '1', '2016-09-11 23:00:00', '2016-09-11 23:00:00'),
(97, 'H.Pylori AB (IGG)', 'H.Pylori AB (IGG)', 'H.Pylori AB (IGG)', 'Infective', 'Microbiology', 3, 2500.00, 1, '1', '2016-09-12 23:00:00', '2016-09-12 23:00:00'),
(98, 'TPHA', 'TPHA', 'TPHA', 'Infective', 'Microbiology', 3, 5000.00, 1, '1', '2016-09-13 23:00:00', '2016-09-13 23:00:00'),
(99, 'RPR/VDRL', 'RPR/VDRL', 'RPR/VDRL', 'Infective', 'Microbiology', 3, 1500.00, 1, '1', '2016-09-14 23:00:00', '2016-09-14 23:00:00'),
(100, 'WIDAL', 'WIDAL', 'WIDAL', 'Infective', 'Microbiology', 3, 1500.00, 1, '1', '2016-09-15 23:00:00', '2016-09-15 23:00:00'),
(101, 'Torch Screen', 'Torch Screen', 'Torch Screen', 'Infective', 'Microbiology', 3, 80000.00, 1, '1', '2016-09-16 23:00:00', '2016-09-16 23:00:00'),
(102, 'HEP A', 'HEP A', 'HEP A', 'Hepatitis Test', 'Serology', 3, 3000.00, 1, '1', '2016-09-17 23:00:00', '2016-09-17 23:00:00'),
(103, 'HEP B (SAG)', 'HEP B (SAG)', 'HEP B (SAG)', 'Hepatitis Test', 'Serology', 3, 50000.00, 1, '1', '2016-09-18 23:00:00', '2016-09-18 23:00:00'),
(104, 'HEP BS (AB)', 'HEP BS (AB)', 'HEP BS (AB)', 'Hepatitis Test', 'Serology', 3, 2000.00, 1, '1', '2016-09-19 23:00:00', '2016-09-19 23:00:00'),
(105, 'HEP B E (AG/AB)', 'HEP B E (AG/AB)', 'HEP B E (AG/AB)', 'Hepatitis Test', 'Serology', 3, 2000.00, 1, '1', '2016-09-20 23:00:00', '2016-09-20 23:00:00'),
(106, 'HEP B CORE AB (TOTAL)', 'HEP B CORE AB (TOTAL)', 'HEP B CORE AB (TOTAL)', 'Hepatitis Test', 'Serology', 3, 2000.00, 1, '1', '2016-09-21 23:00:00', '2016-09-21 23:00:00'),
(107, 'HEP B CORE AB (IGM)', 'HEP B CORE AB (IGM)', 'HEP B CORE AB (IGM)', 'Hepatitis Test', 'Serology', 3, 2000.00, 1, '1', '2016-09-22 23:00:00', '2016-09-22 23:00:00'),
(108, 'HEP B S AG (QUATITATIVE)', 'HEP B S AG (QUATITATIVE)', 'HEP B S AG (QUATITATIVE)', 'Hepatitis Test', 'Serology', 3, 2000.00, 1, '1', '2016-09-23 23:00:00', '2016-09-23 23:00:00'),
(109, 'HEP C', 'HEP C', 'HEP C', 'Hepatitis Test', 'Serology', 3, 2000.00, 1, '1', '2016-09-24 23:00:00', '2016-09-24 23:00:00'),
(110, 'HEPATITIS B DNA VIRAL LOAD', 'HEPATITIS B DNA VIRAL LOAD', 'HEPATITIS B DNA VIRAL LOAD', 'Hepatitis Test', 'Serology', 3, 50000.00, 1, '1', '2016-09-25 23:00:00', '2016-09-25 23:00:00'),
(111, 'HEPATITIS C DNA VIRAL LOAD', 'HEPATITIS C DNA VIRAL LOAD', 'HEPATITIS C DNA VIRAL LOAD', 'Hepatitis Test', 'Serology', 3, 50000.00, 1, '1', '2016-09-26 23:00:00', '2016-09-26 23:00:00'),
(112, 'HEPATITIS B VIRUS (HBV) GENOTYPE', 'HEPATITIS B VIRUS (HBV) GENOTYPE', 'HEPATITIS B VIRUS (HBV) GENOTYPE', 'Hepatitis Test', 'Serology', 3, 40000.00, 1, '1', '2016-09-27 23:00:00', '2016-09-27 23:00:00'),
(113, 'HEPATITIS C VIRUS (HCV) RNA', 'HEPATITIS C VIRUS (HCV) RNA', 'HEPATITIS C VIRUS (HCV) RNA', 'Hepatitis Test', 'Serology', 3, 40000.00, 1, '1', '2016-09-28 23:00:00', '2016-09-28 23:00:00'),
(114, 'GENOTYPE', 'GENOTYPE', 'GENOTYPE', 'Hepatitis Test', 'Haematology', 2, 1500.00, 1, '1', '2016-09-29 23:00:00', '2016-09-29 23:00:00'),
(115, 'P24  ZNTIGEN +HIV 1 & 2Ab', 'P24  ZNTIGEN +HIV 1 & 2Ab', 'P24  ZNTIGEN +HIV 1 & 2Ab', 'HIV Tests', 'Serology', 3, 50000.00, 1, '1', '2016-09-30 23:00:00', '2016-09-30 23:00:00'),
(116, 'CDA', 'CDA', 'CDA', 'HIV Tests', 'Serology', 3, 0.00, 1, '1', '2016-10-01 23:00:00', '2016-10-01 23:00:00'),
(117, 'HIV Viral Load', 'HIV Viral Load', 'HIV Viral Load', 'HIV Tests', 'Serology', 3, 35000.00, 1, '1', '2016-10-02 23:00:00', '2016-10-02 23:00:00'),
(118, 'Tissue Site', 'Tissue Site', 'Tissue Site', 'Histology', 'Histology / Cytology', 4, 0.00, 1, '1', '2016-10-03 23:00:00', '2016-10-03 23:00:00'),
(119, 'Tissue Size', 'Tissue Size', 'Tissue Size', 'Histology', 'Histology / Cytology', 4, 0.00, 1, '1', '2016-10-04 23:00:00', '2016-10-04 23:00:00'),
(120, 'PAP-Smear', 'PAP-Smear', 'PAP-Smear', 'Cytology ', 'Histology / Cytology', 6, 8000.00, 1, '1', '2016-10-05 23:00:00', '2016-10-05 23:00:00'),
(121, 'Peritonial Aspirate', 'Peritonial Aspirate', 'Peritonial Aspirate', 'Cytology ', 'Histology / Cytology', 6, 0.00, 1, '1', '2016-10-06 23:00:00', '2016-10-06 23:00:00'),
(122, 'Bronchial Washings', 'Bronchial Washings', 'Bronchial Washings', 'Cytology ', 'Histology / Cytology', 6, 0.00, 1, '1', '2016-10-07 23:00:00', '2016-10-07 23:00:00'),
(123, 'Sputum', 'Sputum', 'Sputum', 'Cytology ', 'Histology / Cytology', 6, 0.00, 1, '1', '2016-10-08 23:00:00', '2016-10-08 23:00:00'),
(124, 'CSF', 'CSF', 'CSF', 'Cytology ', 'Histology / Cytology', 6, 45000.00, 1, '1', '2016-10-09 23:00:00', '2016-10-09 23:00:00'),
(125, 'Urine Microscopy & Urinalysis', 'Urine Microscopy & Urinalysis', 'Urine Microscopy & Urinalysis', 'Urine', 'Microbiology', 5, 1000.00, 1, '1', '2016-10-10 23:00:00', '2016-10-10 23:00:00'),
(126, 'Urine MC&S', 'Urine MC&S', 'Urine MC&S', 'Urine', 'Microbiology', 5, 2500.00, 1, '1', '2016-10-11 23:00:00', '2016-10-11 23:00:00'),
(127, 'Stool Microscopy', 'Stool Microscopy', 'Stool Microscopy', 'Stool', 'Microbiology', 5, 0.00, 1, '1', '2016-10-12 23:00:00', '2016-10-12 23:00:00'),
(128, 'Stoll MC&S', 'Stoll MC&S', 'Stoll MC&S', 'Stool', 'Microbiology', 5, 2500.00, 1, '1', '2016-10-13 23:00:00', '2016-10-13 23:00:00'),
(129, 'Faecal Occult Blood', 'Faecal Occult Blood', 'Faecal Occult Blood', 'Stool', 'Microbiology', 3, 2000.00, 1, '1', '2016-10-14 23:00:00', '2016-10-14 23:00:00'),
(130, 'Helicobacter Pylori Antigen', 'Helicobacter Pylori Antigen', 'Helicobacter Pylori Antigen', 'Stool', 'Microbiology', 3, 0.00, 1, '1', '2016-10-15 23:00:00', '2016-10-15 23:00:00'),
(131, 'CSF MCS', 'CSF MCS', 'CSF MCS', 'CSF CEREBROSPINAL FLUID', 'Microbiology', 3, 0.00, 1, '1', '2016-10-16 23:00:00', '2016-10-16 23:00:00'),
(132, 'CSF Microscopy', 'CSF Microscopy', 'CSF Microscopy', 'CSF CEREBROSPINAL FLUID', 'Microbiology', 3, 0.00, 1, '1', '2016-10-17 23:00:00', '2016-10-17 23:00:00'),
(133, 'Blood Culture MC&S', 'Blood Culture MC&S', 'Blood Culture MC&S', 'Blood', 'Microbiology', 3, 2500.00, 1, '1', '2016-10-18 23:00:00', '2016-10-18 23:00:00'),
(134, 'Blood Microscopy (parasites)', 'Blood Microscopy (parasites)', 'Blood Microscopy (parasites)', 'Blood', 'Microbiology', 3, 1500.00, 1, '1', '2016-10-19 23:00:00', '2016-10-19 23:00:00'),
(135, 'Swab Microscopy', 'Swab Microscopy', 'Swab Microscopy', 'Swab', 'Microbiology', 3, 1000.00, 1, '1', '2016-10-20 23:00:00', '2016-10-20 23:00:00'),
(136, 'Swab MC&S', 'Swab MC&S', 'Swab MC&S', 'Swab', 'Microbiology', 3, 2500.00, 1, '1', '2016-10-21 23:00:00', '2016-10-21 23:00:00'),
(137, 'ECS MC&S', 'ECS MC&S', 'ECS MC&S', 'Swab', 'Microbiology', 3, 2500.00, 1, '1', '2016-10-22 23:00:00', '2016-10-22 23:00:00'),
(138, 'Urethral Swab MC&S', 'Urethral Swab MC&S', 'Urethral Swab MC&S', 'Swab', 'Microbiology', 3, 2500.00, 1, '1', '2016-10-23 23:00:00', '2016-10-23 23:00:00'),
(139, 'HVS MC&S', 'HVS MC&S', 'HVS MC&S', 'Swab', 'Microbiology', 3, 2500.00, 1, '1', '2016-10-24 23:00:00', '2016-10-24 23:00:00'),
(140, 'Sputum MC&S', 'Sputum MC&S', 'Sputum MC&S', 'Sputum', 'Microbiology', 3, 2500.00, 1, '1', '2016-10-25 23:00:00', '2016-10-25 23:00:00'),
(141, 'ZN Smear (Acid Fast Bacilli)', 'ZN Smear (Acid Fast Bacilli)', 'ZN Smear (Acid Fast Bacilli)', 'Sputum', 'Microbiology', 3, 5000.00, 1, '1', '2016-10-26 23:00:00', '2016-10-26 23:00:00'),
(142, 'Aspirate MC&S', 'Aspirate MC&S', 'Aspirate MC&S', 'Fluids', 'Microbiology', 3, 2500.00, 1, '1', '2016-10-27 23:00:00', '2016-10-27 23:00:00'),
(143, 'Aspirate AFP', 'Aspirate AFP', 'Aspirate AFP', 'Fluids', 'Microbiology', 3, 0.00, 1, '1', '2016-10-28 23:00:00', '2016-10-28 23:00:00'),
(144, 'Fluid Chemistry', 'Fluid Chemistry', 'Fluid Chemistry', 'Fluids', 'Microbiology', 3, 0.00, 1, '1', '2016-10-29 23:00:00', '2016-10-29 23:00:00'),
(145, 'Semen MC&S', 'Semen MC&S', 'Semen MC&S', 'Fluids', 'Microbiology', 3, 2500.00, 1, '1', '2016-10-30 23:00:00', '2016-10-30 23:00:00'),
(146, 'Mantoux', 'Mantoux', 'Mantoux', 'TB', 'Microbiology', 3, 5000.00, 1, '1', '2016-10-31 23:00:00', '2016-10-31 23:00:00'),
(147, 'Fungal Microscopy', 'Fungal Microscopy', 'Fungal Microscopy', 'Fungi/Yeast', 'Microbiology', 3, 0.00, 1, '1', '2016-11-01 23:00:00', '2016-11-01 23:00:00'),
(148, 'Fungal Culture', 'Fungal Culture', 'Fungal Culture', 'Fungi/Yeast', 'Microbiology', 3, 0.00, 1, '1', '2016-11-02 23:00:00', '2016-11-02 23:00:00'),
(149, 'Tissue MC&S', 'Tissue MC&S', 'Tissue MC&S', 'Tissue', 'Microbiology', 3, 2500.00, 1, '1', '2016-11-03 23:00:00', '2016-11-03 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `test_categories`
--

DROP TABLE IF EXISTS `test_categories`;
CREATE TABLE IF NOT EXISTS `test_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(10) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_subcategories`
--

DROP TABLE IF EXISTS `test_subcategories`;
CREATE TABLE IF NOT EXISTS `test_subcategories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `test_category_id` int(50) NOT NULL,
  `active` int(10) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_subcategories`
--

INSERT INTO `test_subcategories` (`id`, `name`, `description`, `test_category_id`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Cardiac', 'Cardiac Investigation', 1, 1, '1', '2016-06-09 21:01:13', '2016-06-09 21:32:52'),
(2, 'Diabetics', 'Diabetics', 1, 1, '1', '2016-06-09 22:24:54', '2016-06-09 22:26:43'),
(3, 'Hepatitis Tests', 'Hepatitis Tests', 2, 1, '3', '2016-07-12 13:41:25', '2016-07-12 13:41:25'),
(4, 'HIV tests', 'HIV Tests', 2, 1, '3', '2016-07-12 13:41:56', '2016-07-12 13:41:56'),
(5, 'General', 'General', 3, 1, '3', '2016-07-12 14:21:42', '2016-07-12 14:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `othername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `access` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password_flag` tinyint(2) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(10) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `othername`, `username`, `phone`, `address`, `email`, `role_id`, `access`, `password`, `password_flag`, `created_by`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nafisa', 'Mohammed', '.', 'Nafisa', '09012345677', 'Banex Plaza', 'Nafisa@yahoo.com', '3', '1', '55490cd891a0e41ed5babc203cbb6a98c7424f02', 1, '', 0, NULL, '2016-06-09 22:59:54', '2016-07-12 13:46:09'),
(2, 'Aminu', 'Mahdi', 'Shehu', 'mahdi', '08030626837', 'House 11, Fela Kuti Street, Abuja', 'aminu.mahdi@gmail.com', '1', '1', '02e3c871db62503d8539431c7843e7557c2fde17', 1, '1', 1, '02e3c871db62503d8539431c7843e7557c2fde17', '2016-06-09 23:00:00', '2016-06-09 23:00:00'),
(3, 'Iboro', 'Isong', 'Isong', 'iboro', '08012345678', 'Celib Medical Labs', 'celibmedicallabs@gmail.com', '2', '1', '9a8b4bb7de2edcec238a3dc211d7ba6ee87dd780', 1, '', 0, NULL, '2016-07-12 09:47:58', '2016-07-12 13:25:35'),
(4, 'Patience', 'Patience', 'P', 'patience', '08030626837', 'Banex Plaza', 'patience@yahoo.com', '4', '1', '10bb09f9bddc1654b2d6fd5284236fbc543b40d2', 1, '', 0, NULL, '2016-07-12 13:27:20', '2016-07-12 13:28:54'),
(5, 'Jenifer', 'Jenifer', 'J', 'jenifier', '09023456798', 'Banex Plaza', 'jenifer@yahoo.com', '4', '1', '85a3cd8970773b7c162a4b2de25030a4340d67b5', 1, '', 0, NULL, '2016-07-12 13:48:18', '2016-07-12 13:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `work_unit_types`
--

DROP TABLE IF EXISTS `work_unit_types`;
CREATE TABLE IF NOT EXISTS `work_unit_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(10) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `work_unit_types`
--

INSERT INTO `work_unit_types` (`id`, `name`, `description`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'System', 'System Administration', 1, '', '2016-01-20 08:20:15', '2016-04-23 09:24:20'),
(2, 'Company', 'Company Operations', 1, '', '2016-04-23 23:40:23', '2016-04-24 00:30:32'),
(3, 'Store', 'Store Operations', 1, '', '2016-04-24 07:11:32', '2016-04-24 07:11:32'),
(4, 'Supplier', 'Products Supplier Operations', 0, '', '2016-04-24 18:32:25', '2016-04-24 18:50:17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
