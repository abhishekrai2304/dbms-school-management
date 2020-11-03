-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 03:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--
CREATE Database onlinecourse;
use onlinecourse;
-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-10-24 16:21:18', '29-10-2020 03:31:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `dept_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`, `dept_id`) VALUES
(6, 'c102', 'Hindi', '102', 80, '2020-10-26 04:14:09', NULL, 9),
(7, 'c101', 'Eng', '101', 80, '2020-10-26 05:47:48', NULL, NULL),
(13, 'c105', 'Marathi', '105', 90, '2020-11-01 09:18:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(4, '10806121', '715948', 4, 7, 6, 5, 2, '2020-10-21 10:19:41'),
(5, '12345', '131863', 4, 7, 6, 6, 1, '2020-10-25 05:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(9, 'Hindi', '2020-10-26 04:08:59'),
(11, 'Marathi', '2020-10-26 04:09:11'),
(12, 'Science', '2020-10-26 04:09:32'),
(13, 'Social Studies', '2020-10-26 04:09:42'),
(14, 'Physical Training', '2020-10-26 04:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `code` varchar(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `phonenum` varchar(10) NOT NULL,
  `courseName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`code`, `name`, `gender`, `phonenum`, `courseName`) VALUES
('f101', 'suresh', 'male', '897558178', 'eng');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2020-02-09 19:04:04'),
(6, 'level 2', '2020-02-09 19:04:12'),
(7, 'level 3', '2020-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(8, 'Year 1 SEM 1', '2020-10-26 04:01:30', NULL),
(9, 'Year 1 SEM 2', '2020-10-26 04:01:40', NULL),
(10, 'Year 2 SEM 1', '2020-10-26 04:01:48', NULL),
(11, 'Year 2 SEM 2', '2020-10-26 04:01:57', NULL),
(13, 'Year 3 SEM 1', '2020-10-26 04:02:35', NULL),
(14, 'Year 3 SEM 2', '2020-10-26 04:02:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2019', '2020-10-29 18:16:51'),
(2, '2020', '2020-10-29 18:27:41'),
(3, '2021', '2020-10-30 10:01:54'),
(4, '2022', '2020-10-30 10:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('10806121', 'logo.jpg', 'f925916e2754e5e03f75dd58a5733251', 'Prajjwal Datir', '715948', '', '', '', '7.25', '2020-02-11 19:38:32', '21-05-2020 03:20:40 PM'),
('12345', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Abhishek Rai', '131863', '', '', '', '0.00', '2020-08-25 05:50:51', ''),
('125966', '', 'f925916e2754e5e03f75dd58a5733251', 'Chandu Jare', '385864', '', '', '', '0.00', '2020-02-11 19:48:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-15 20:05:58', NULL, 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-15 20:07:18', NULL, 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-23 21:08:46', NULL, 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-24 20:26:15', NULL, 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-24 21:27:11', NULL, 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-24 21:28:19', NULL, 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-24 21:29:30', NULL, 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-24 21:30:39', NULL, 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-24 21:32:12', NULL, 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-24 21:51:50', NULL, 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-26 09:41:24', NULL, 1),
(12, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-28 09:20:05', NULL, 1),
(13, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-28 09:20:23', NULL, 1),
(14, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-28 09:49:06', NULL, 1),
(15, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-29 10:19:15', NULL, 1),
(16, '12345', 0x3a3a3100000000000000000000000000, '2020-10-29 15:51:42', NULL, 1),
(17, '10806121', 0x3a3a3100000000000000000000000000, '2020-11-01 09:49:21', NULL, 1),
(18, '10806121', 0x3a3a3100000000000000000000000000, '2020-11-01 13:51:02', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
