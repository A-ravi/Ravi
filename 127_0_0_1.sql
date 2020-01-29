-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 04:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sih2020`
--
CREATE DATABASE IF NOT EXISTS `sih2020` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sih2020`;

-- --------------------------------------------------------

--
-- Table structure for table `clgadmin`
--

CREATE TABLE `clgadmin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clgadmin`
--

INSERT INTO `clgadmin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `uv_college`
--

CREATE TABLE `uv_college` (
  `id` int(11) NOT NULL,
  `clgname` varchar(30) NOT NULL,
  `clgreg` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  `district` varchar(15) NOT NULL,
  `city` varchar(20) NOT NULL,
  `principalname` varchar(20) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `mobileno` int(11) NOT NULL,
  `website` varchar(15) NOT NULL,
  `university` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uv_college`
--

INSERT INTO `uv_college` (`id`, `clgname`, `clgreg`, `address`, `district`, `city`, `principalname`, `emailid`, `mobileno`, `website`, `university`) VALUES
(1, 'MIT', 'MIT@123', 'Beed by pass', 'Aurangabad', 'auranga', 'N.G patil', 'mit.asia@gmail.com', 1235644123, 'www.mit.asia.co', 'Dr.BATU'),
(2, 'MIT', 'MIT@2121', 'BEED by pass', 'Aurangabad', 'aurangabad', 'N.G patil', 'mit.asia@gmail.com', 1235644123, 'www.mit.asia.co', 'Dr.BATU');

-- --------------------------------------------------------

--
-- Table structure for table `uv_student`
--

CREATE TABLE `uv_student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `class` varchar(15) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `v_student`
--

CREATE TABLE `v_student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `class` varchar(15) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `v_student`
--

INSERT INTO `v_student` (`id`, `name`, `roll_no`, `class`, `branch`, `contact`, `email`, `address`) VALUES
(1, 'Rv', 111, 'FY-2', 'CSE', 987654321, 'homebrew.rv@gmail.com', 'beed by pass aurangabad'),
(2, 'homebrew', 205, 'FY-4', 'CSE', 2055022050, 'homebrew@gmail.com', 'room number 205'),
(3, 'Ravi', 0, 'FY-2', 'CSE', 1234567890, 'homebrew,rv@gmail.com', 'shivaji nagar aurangabad'),
(4, 'Ravi', 224, 'FY-2', 'CSE', 1234567890, 'homebrew,rv@gmail.com', 'shivaji nagar aurangabad'),
(5, 'tushar', 314, 'FY-3', 'CSE', 1234567890, 'homebrew.tushar@gmail.com', 'big bazaar aurangabad'),
(6, 'tushar', 314, 'FY-3', 'CSE', 1234567890, 'homebrew.tushar@gmail.com', 'big bazaar aurangabad'),
(7, 'Ravi', 0, '', '', 0, '', ''),
(8, 'Ravi', 224, 'FY-2', 'CSE', 1234567890, 'homebrew.rv@gmail.com', 'shivaji nagar aurangabad'),
(9, 'Ravi', 224, 'FY-2', 'CSE', 1234567890, 'homebrew.rv@gmail.com', 'big bazaar aurangabad'),
(10, 'tushar', 314, 'FY-3', 'CSE', 1234567890, 'homebrew.tushar@gmail.com', 'big bazaar aurangabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clgadmin`
--
ALTER TABLE `clgadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uv_college`
--
ALTER TABLE `uv_college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uv_student`
--
ALTER TABLE `uv_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_student`
--
ALTER TABLE `v_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clgadmin`
--
ALTER TABLE `clgadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uv_college`
--
ALTER TABLE `uv_college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uv_student`
--
ALTER TABLE `uv_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `v_student`
--
ALTER TABLE `v_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
