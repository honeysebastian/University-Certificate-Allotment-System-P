-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 04:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ucas`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`) VALUES
('ADMIN', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `register_number` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `college_name` varchar(20) NOT NULL,
  `programme_name` varchar(20) NOT NULL,
  `model` varchar(8) NOT NULL,
  `complementarycourse` varchar(20) NOT NULL,
  `open_course` varchar(20) NOT NULL,
  `optional_or_vocational_course` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course_1` varchar(20) NOT NULL,
  `cgpa_1` int(8) NOT NULL,
  `grade_1` varchar(2) NOT NULL,
  `course_2` varchar(20) NOT NULL,
  `cgpa_2` int(8) NOT NULL,
  `grade_2` varchar(2) NOT NULL,
  `course_3` varchar(20) NOT NULL,
  `cgpa_3` int(8) NOT NULL,
  `grade_3` varchar(5) NOT NULL,
  `course_4` varchar(20) NOT NULL,
  `cgpa_4` int(8) NOT NULL,
  `grade_4` varchar(5) NOT NULL,
  `action` varchar(25) NOT NULL,
  `users_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `register_number`, `name`, `college_name`, `programme_name`, `model`, `complementarycourse`, `open_course`, `optional_or_vocational_course`, `address`, `phno`, `gender`, `course_1`, `cgpa_1`, `grade_1`, `course_2`, `cgpa_2`, `grade_2`, `course_3`, `cgpa_3`, `grade_3`, `course_4`, `cgpa_4`, `grade_4`, `action`, `users_id`) VALUES
(7, '21pmc@1288', 'Honey Sebastian', 'Marian college', 'MCA', '1', 'maths', 'Yoga', 'hindi', 'changanasherry', '9995791329', 'female', 'english', 8, 'B', 'german', 8, 'B', 'computer', 8, 'B', 'maths', 8, 'B', 'approved', '19'),
(10, '1111111111', 'Alb', 'a', 'a', '1', 'a1', 'a', 'a', 'a', '5466666666', 'a', 'a', 1, '1a', 'a', 1, '1a', 'a', 1, '1a', 'a', 1, '1a', 'approved', '20'),
(14, 'f', 'f', '4', '444', '4', '4', '44', '4', '4', '4444464546', '4', 'f', 4, '4', '44', 4, '4', '44', 4, '4', '4', 4, '4', 'pending', '20'),
(15, 'gwe', 'r', '3', '3', '33', '3', '3', '3', '333', '3333333333', '3', 'w3', 3, '3', '3', 3, '3', '3', 3, '3', '3', 3, '3', 'pending', '19'),
(16, 't', '1', '1', '1', '1', '1', '1', '1', '1', '1111111111', '1', '1', 11, '1', '1', 11, '1', '1', 11, '1', '1', 11, '1', 'pending', '24'),
(17, 'r', 'r', '3', '3', '3', '3', '33', '33', '33', '3333333333', '33', 'r', 33, '3', '3', 33, '3', '3', 33, '3', '3', 33, '3', 'rejected', '23');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `register_number` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `register_number`, `email`, `password`) VALUES
(19, 'Honey Sebastian', '21pmc@1277', 'honeysebastian2000@gmail.com', 'honey@0000'),
(20, 'Albert John', '21pmc@1245', 'albertjohn@gmail.com', 'albertjohn'),
(21, 'Joseph Sebastian', '21pmc@1280', 'josephspv93@gmail.com', 'joseph@123'),
(22, 'Sneha P Varghese', '21pmc@1288', 'snehaspv34@gmail.com', 'sneha@1234'),
(23, 'Alb', '11111111111', 'alb@gmail.com', 'zxcvbnm789'),
(24, 'albert', '8585858585', 'albertsebastian75@gmail.com', 'qwertyuiop'),
(25, 'ff', 'q1q1q1q1q1', 'q@q', 'zzzzzzzzzz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
