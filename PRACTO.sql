-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2016 at 09:11 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PRACTO`
--

-- --------------------------------------------------------

--
-- Table structure for table `Clinic`
--

CREATE TABLE `Clinic` (
  `name` varchar(40) NOT NULL,
  `id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Clinic`
--

INSERT INTO `Clinic` (`name`, `id`, `city`, `state`, `address`, `rating`, `contact`) VALUES
('AIG Clinic', 1, 'delhi', '', 'GK1', 5, 35673865),
('Apolo', 2, 'bangalore', 'karnataka', 'banergattha road ', 5, 181224564),
('Homyo', 3, 'bangalore', 'karnataka', 'Jp nagar ', 2, 181224534),
('apolo', 4, 'delhi', 'delhi', 'Jp nagar ', 2, 1113454334),
('apolo', 5, 'Jaipur', 'Rajasthan', 'Jagatnagar', 2, 1113454334),
('', 6, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `Name` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `speciality` varchar(200) NOT NULL,
  `address` varchar(400) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `experience` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`Name`, `id`, `contact`, `speciality`, `address`, `city`, `state`, `experience`, `fees`, `rating`) VALUES
('agam', 21, 2147483647, 'cardio', 'JP nagar', 'bangalore', 'krk', 10, 300, 5),
('alice', 22, 2147483647, 'cardio', 'JP nagar', 'bangalore', 'krk', 3, 3500, 3),
(' Dr. john', 24, 836273642, 'ortho', 'HSR layout', 'bangalore', 'krk', 5, 350, 3),
(' Dr. Reeta', 25, 2147483647, 'MD', 'Jaya nagar', 'bangalore', 'krk', 4, 300, 5),
('agam', 26, 2147483647, 'Dermatology', 'Panduranagar', 'Bangalore', 'Karnataka', 15, 450, 4),
('riya', 27, 2147483647, 'Neurology', '', '', '', 5, 5000, 5),
('priya', 28, 2147483647, 'Neurology', '', '', '', 5, 5000, 5),
('priya', 30, 2147483647, 'ortho', 'GK2', 'delhi', '', 5, 500, 5),
('jeenat', 33, 8288909910, 'dentist', 'GK1', 'delhi', '', 5, 500, 5),
('AIG Clinic', 34, 35673865, '', 'GK1', 'delhi', '', 0, 0, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Clinic`
--
ALTER TABLE `Clinic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Clinic`
--
ALTER TABLE `Clinic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Doctor`
--
ALTER TABLE `Doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
