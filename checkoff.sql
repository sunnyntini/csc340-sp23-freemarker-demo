-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 03:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `checkoff`
--

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `goal_id` bigint(20) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `target` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`goal_id`, `detail`, `status`, `target`, `title`) VALUES
(52, 'Learn the basics of Client Side Development', 'pending', '2023-01-01 00:00:00', 'Learn FrontendDev'),
(53, 'Learn the basics of server side development', 'pending', '2023-01-01 00:00:00', 'Learn Backend Dev');

-- --------------------------------------------------------

--
-- Table structure for table `goal_seq`
--

CREATE TABLE `goal_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goal_seq`
--

INSERT INTO `goal_seq` (`next_val`) VALUES
(151);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` bigint(20) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `goal_number` bigint(20) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `detail`, `goal_number`, `status`, `title`) VALUES
(0, 'gtgtgt', 0, 'pending', 'xxxwewewe'),
(1, 'some details', 1, 'pending', 'newt'),
(2, 'Learn how HTML and DOM manipulation works', 52, 'pending', 'Learn HTML'),
(3, 'Learn how to style web pages', 52, 'pending', 'Learn CSS'),
(4, 'practice creating REST APIs in Spring Boot', 53, 'pending', 'Learn Spring Boot '),
(5, 'Learn how to map entities', 53, 'pending', 'Learn Database Mgt'),
(52, 'We are trying out stuff', 2, 'pending', 'This is a sample');

-- --------------------------------------------------------

--
-- Table structure for table `task_seq`
--

CREATE TABLE `task_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_seq`
--

INSERT INTO `task_seq` (`next_val`) VALUES
(151);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`goal_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
