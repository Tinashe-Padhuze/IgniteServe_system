-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 11:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fueldelivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `code` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin1', 'admin123', 'admin@mail.com', '', '2024-05-22 08:44:21'),
(2, 'admin2', '0192023a7bbd73250516f069df18b500', 'admin2@mail.com', '', '2024-05-23 18:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `flstat_category`
--

CREATE TABLE `flstat_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flstat_category`
--

INSERT INTO `flstat_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Standard', '2024-05-22 10:25:52'),
(2, 'Premium', '2024-05-22 10:26:24'),
(3, '24-Hour', '2024-05-22 10:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `fuelstation`
--

CREATE TABLE `fuelstation` (
  `fs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `o_hr` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `c_hr` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `o_days` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuelstation`
--

INSERT INTO `fuelstation` (`fs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(0, 2, 'Redan', 'business@redan.co.zw', '0782345678', 'www.redan.co.zw', '7am', '12am', 'Mon-Sat', '123 Bond street, Mt pleasant', '664dc8cd61789.jpg', '2024-05-22 10:28:29'),
(0, 2, 'Redan', 'business@redan.co.zw', '0782345678', 'www.redan.co.zw', '7am', '12am', 'Mon-Sat', '123 Bond street, Mt pleasant', '664dc8f42d830.jpg', '2024-05-22 10:29:08'),
(0, 3, 'Zuva', 'business@zuva.co.zw', '0778906543', 'www.zuva.co.zw', '6am', '12am', '24hr-x7', '52 Birmingham Rd, Southerton, Harare, Zimbabwe ', '664dca536ed23.jpg', '2024-05-22 10:34:59'),
(0, 2, 'Puma', 'business@puma.co.zw', '0714562780', 'www.puma.co.zw', '9am', '10pm', 'Mon-Fri', 'Block 4 Tendeseka Office Park Samora Machel Avenue Eastlea Harare Zimbabwe', '664dd09610753.jpg', '2024-05-22 11:01:42'),
(0, 1, 'Engen', 'business@engen.co.zw', '2638677000326', 'https://www.engen.co.zw', '7am', '3am', 'Mon-Thu', 'Corner Robert Mugabe and Kaguvi Street', '664dd28c00759.jpg', '2024-05-22 11:10:04'),
(0, 1, 'TotalEnergies', 'business@totalenegies.co.zw', '07892567289', 'https://totalenergies.com', '6am', '8pm', 'Mon-Sat', '134, Greendale, Harare', '664de89a5b4b4.jpg', '2024-05-22 12:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_type`
--

CREATE TABLE `fuel_type` (
  `d_id` int(222) NOT NULL,
  `fs_id` int(22) NOT NULL,
  `title` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuel_type`
--

INSERT INTO `fuel_type` (`d_id`, `fs_id`, `title`, `price`, `img`) VALUES
(1, 2, 'petrol', 1.50, ''),
(3, 2, 'petrol', 1.50, '606d75ce105d0'),
(4, 2, 'diesel', 1.00, '606d7491a9d13'),
(4, 2, 'diesel', 1.30, '606d7491a9d13'),
(5, 1, 'diesel', 1.30, '606d7491a9d13'),
(5, 3, 'diesel', 1.30, '606d7491a9d13'),
(5, 4, 'diesel', 1.30, '606d7491a9d13'),
(5, 5, 'diesel', 1.30, '606d7491a9d13'),
(5, 6, 'diesel', 1.30, '606d7491a9d13'),
(6, 1, 'lp gas', 1.20, '606d7600dc54c'),
(6, 2, 'lp gas', 1.20, '606d7600dc54c'),
(7, 2, 'lp gas', 1.20, '606d7600dc54c'),
(8, 3, 'lp gas', 1.20, '606d7600dc54c'),
(9, 4, 'lp gas', 1.20, '606d7600dc54c'),
(10, 5, 'lp gas', 1.20, '606d7600dc54c'),
(11, 6, 'lp gas', 1.20, '606d7600dc54c');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remark` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `f_name` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `l_name` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(0, 'siyanda', 'Tinotenda', 'Chidenge', 'chidengetinotenda@gmail.com', '0786447411', '3c21d2940f02e5b646092dc2ea85fed4', '1112 Jerera extension', 0, '2024-05-22 09:53:38'),
(0, 'Tus', 'Tinashe', 'Padhuze', 'tinashe20@mail.com', '+263786447411', 'a452de6439a565fc6edc94818f951185', '134, Greendale, Harare', 0, '2024-05-23 20:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
