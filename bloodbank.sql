-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2017 at 06:47 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks_registeres`
--

CREATE TABLE `banks_registeres` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(40) NOT NULL,
  `bank_address` varchar(60) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks_registeres`
--

INSERT INTO `banks_registeres` (`bank_id`, `bank_name`, `bank_address`, `phone`, `email`) VALUES
(1, 'Law college square branch ', 'Law College square,Nagpur', 1234567890, 'lawcollege@gmail.com'),
(2, 'Dr.Dua clinic', 'kadbi chowk Nagpur', 1234556709, 'dua@gmail.con'),
(3, 'Dr Verma clinic', 'Sadar,Nagpur', 1346811111, 'verma@gmail.com'),
(4, 'Life Donor Blood Bank', 'Gittikhadan,Nagpur', 1081091021, 'lifedonor@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `blood_grp`
--

CREATE TABLE `blood_grp` (
  `blood_id` int(11) NOT NULL,
  `blood_grp` varchar(5) NOT NULL,
  `price_per_bottle` int(5) NOT NULL,
  `stock` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_grp`
--

INSERT INTO `blood_grp` (`blood_id`, `blood_grp`, `price_per_bottle`, `stock`) VALUES
(1, 'A+', 1000, 100),
(2, 'A-', 1000, 80),
(3, 'AB+', 1000, 10),
(4, 'AB-', 1000, 2),
(5, 'B+', 500, 10),
(6, 'B-', 500, 0),
(7, 'O+', 500, 100),
(8, 'O-', 1000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(40) NOT NULL,
  `d_address` varchar(60) NOT NULL,
  `d_phone` bigint(11) NOT NULL,
  `d_email` varchar(30) NOT NULL,
  `d_weight` int(3) NOT NULL,
  `d_dob` date NOT NULL,
  `blood_id` int(11) NOT NULL,
  `pincode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`d_id`, `d_name`, `d_address`, `d_phone`, `d_email`, `d_weight`, `d_dob`, `blood_id`, `pincode`) VALUES
(1, 'Simran Chawla', 'Block no. 241 main bazar Jaripatka Nagpur', 2147483647, 'simranchawla8241@gmail.com', 50, '1996-06-21', 1, 440014),
(2, 'Myra Chawla', 'Block no. 241 main bazar Jaripatka Nagpur', 1234567890, 'myra@gmail.com', 30, '2000-07-19', 5, 440013),
(3, 'Jeet', 'Block no. 241 main bazar Jaripatka Nagpur', 1234567890, 'jeet@gmail.com', 40, '2005-09-28', 5, 440014),
(4, 'Meet ', 'Block no. 241 main bazar Jaripatka Nagpur', 1234567890, 'meet123@gmail.com', 40, '2000-05-21', 5, 440014),
(5, 'parag', 'PLOT NO 24, SHIV COLONY,VIDYA NAGAR, BHUSAWAL', 2147483647, 'patilparag962gmail.com', 60, '1996-12-04', 7, 425201),
(7, 'Gaurav Mundhada', 'b hostel rcoem', 9303303300, 'gofaltuu@gmail.com', 100, '1997-02-07', 8, 441103);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `blood_id` int(11) NOT NULL,
  `t_date` date NOT NULL,
  `t_qty` int(5) NOT NULL,
  `Branch` varchar(50) NOT NULL,
  `type` varchar(1) NOT NULL,
  `t_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`blood_id`, `t_date`, `t_qty`, `Branch`, `type`, `t_id`) VALUES
(5, '2017-04-12', 10, 'Dr Verma clinic', 'p', 1),
(8, '2017-04-13', 5, 'Dr Verma clinic', 'p', 2),
(3, '2017-04-05', 10, 'Dr Verma clinic', 's', 3),
(7, '2017-04-30', 20, 'Dr Verma clinic', 'p', 4),
(7, '0000-00-00', 20, 'Dr.Dua clinic', 's', 5),
(2, '2017-04-24', 20, 'Life Donor Blood Bank', 'p', 6),
(4, '2017-04-12', 20, 'Dr Verma clinic', 's', 7),
(4, '2017-04-05', 2, 'Dr Verma clinic', 's', 8),
(4, '2017-04-05', 2, 'Dr Verma clinic', 's', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks_registeres`
--
ALTER TABLE `banks_registeres`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `blood_grp`
--
ALTER TABLE `blood_grp`
  ADD PRIMARY KEY (`blood_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `blood_id` (`blood_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `blood_id` (`blood_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks_registeres`
--
ALTER TABLE `banks_registeres`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `blood_grp`
--
ALTER TABLE `blood_grp`
  MODIFY `blood_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `donor`
--
ALTER TABLE `donor`
  ADD CONSTRAINT `donor_ibfk_1` FOREIGN KEY (`blood_id`) REFERENCES `blood_grp` (`blood_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`blood_id`) REFERENCES `blood_grp` (`blood_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
