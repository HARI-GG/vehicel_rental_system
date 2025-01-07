-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 03:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `disp`
--

CREATE TABLE `disp` (
  `id` int(11) NOT NULL,
  `model` varchar(200) NOT NULL,
  `type` enum('2','4') NOT NULL,
  `color` varchar(20) NOT NULL,
  `k_meter` int(200) NOT NULL,
  `deposit` int(11) NOT NULL,
  `ve_no` varchar(10) NOT NULL,
  `seat` int(11) NOT NULL,
  `rent` int(200) NOT NULL,
  `u_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disp`
--

INSERT INTO `disp` (`id`, `model`, `type`, `color`, `k_meter`, `deposit`, `ve_no`, `seat`, `rent`, `u_id`) VALUES
(1, 'P150', '2', 'red', 700, 3000, 'TN28BW2783', 2, 700, 0),
(4, 'MT15', '2', 'Grey', 500, 3000, 'TN37DK4152', 2, 750, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `role`, `name`) VALUES
(1, 'praveen@gmail.com', '12345678', 'admin', 'Praveen'),
(2, 'aswin@gmail.com', '12345678', 'user', 'Aswin'),
(3, 'hari@gmail.com', '12345678', 'user', 'Hari'),
(8, 'mano@gmail.com', '12345678', 'user', 'manoj'),
(9, 'nan@gmail.com', '12345678', 'user', 'nan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disp`
--
ALTER TABLE `disp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disp`
--
ALTER TABLE `disp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
