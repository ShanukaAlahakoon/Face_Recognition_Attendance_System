-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2025 at 10:28 AM
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
-- Database: `new11`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `attendanceID` int(11) NOT NULL,
  `studentRegistrationNumber` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `attendanceStatus` varchar(100) DEFAULT NULL,
  `dateMarked` date DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `venueId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`attendanceID`, `studentRegistrationNumber`, `course`, `attendanceStatus`, `dateMarked`, `unit`, `venueId`) VALUES
(50, 'FOE.CV.004', 'FOE.CV', 'Present', '2025-07-01', 'CVU1', '8'),
(51, 'FOS.CS.006', 'FOS.CS', 'Present', '2025-07-03', 'CSU1', '7'),
(52, 'FOS.CS.004', 'FOS.CS', 'Present', '2025-07-03', 'CSU1', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `facultyID` varchar(50) DEFAULT NULL,
  `courseCode` varchar(50) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`id`, `name`, `facultyID`, `courseCode`, `dateCreated`) VALUES
(28, 'Computer Science', 'FOS', 'FOS.CS', '2025-05-25'),
(29, 'Civil Engineering', 'FOE', 'FOE.CV', '2025-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `tblfaculty`
--

CREATE TABLE `tblfaculty` (
  `id` int(11) NOT NULL,
  `facultyName` varchar(255) DEFAULT NULL,
  `facultyCode` varchar(50) DEFAULT NULL,
  `dateRegistered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfaculty`
--

INSERT INTO `tblfaculty` (`id`, `facultyName`, `facultyCode`, `dateRegistered`) VALUES
(5, 'Faculty of Science', 'FOS', '2025-05-25'),
(6, 'Faculty of Engineering', 'FOE', '2025-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbllecturer`
--

CREATE TABLE `tbllecturer` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(50) DEFAULT NULL,
  `facultyCode` varchar(50) DEFAULT NULL,
  `courseCode` varchar(50) NOT NULL,
  `dateCreated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbllecturer`
--

INSERT INTO `tbllecturer` (`id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `facultyCode`, `courseCode`, `dateCreated`) VALUES
(1, 'John', 'cena', 'john@gmail.com', 'john', '07142253456', 'FOS', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `registrationNumber` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `faculty` varchar(10) DEFAULT NULL,
  `courseCode` varchar(20) DEFAULT NULL,
  `studentImage` varchar(300) DEFAULT NULL,
  `dateRegistered` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `firstName`, `lastName`, `registrationNumber`, `email`, `faculty`, `courseCode`, `studentImage`, `dateRegistered`) VALUES
(55, 'Isuru', 'Prasad', 'FOS.CS.002', 'isuru@gmail.com', 'FOS', 'FOS.CS', NULL, '2025-05-25 19:50:36'),
(56, 'Dinuka', 'Sampath', 'FOS.CS.003', 'dinuka@gmail.com', 'FOS', 'FOS.CS', NULL, '2025-05-25 19:52:50'),
(57, 'kaveesha', 'Bandara', 'FOS.CS.004', 'kaveesha@gmail.com', 'FOS', 'FOS.CS', NULL, '2025-05-26 13:10:29'),
(59, 'Nuwan', 'Bandara', 'FOS.CS.006', 'nuwan@gmail.com', 'FOS', 'FOS.CS', NULL, '2025-05-27 10:55:49'),
(60, 'Amal', 'Perera', 'FOS.CS.007', 'amal@gmail.com', 'FOS', 'FOS.CS', NULL, '2025-05-27 10:57:00'),
(61, 'dddd', 'dddd', 'FOE.CV.002', 'dd@gmail.com', 'FOE', 'FOE.CV', NULL, '2025-05-27 11:47:43'),
(62, 'Imanjana ', 'Sandeepa', 'FOE.CV.003', 'imanjana@gmail.com', 'FOE', 'FOE.CV', NULL, '2025-05-27 11:51:31'),
(63, 'Kalana', 'Dhakshitha', 'FOE.CV.004', 'kalana@gmail.com', 'FOE', 'FOE.CV', NULL, '2025-07-01 13:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblunit`
--

CREATE TABLE `tblunit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `unitCode` varchar(50) DEFAULT NULL,
  `courseID` varchar(50) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblunit`
--

INSERT INTO `tblunit` (`id`, `name`, `unitCode`, `courseID`, `dateCreated`) VALUES
(8, 'Introduction', 'CSU1', 'FOS.CS', '2025-05-25'),
(9, 'Basic ', 'CVU1', 'FOE.CV', '2025-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `tblvenue`
--

CREATE TABLE `tblvenue` (
  `id` int(11) NOT NULL,
  `className` varchar(50) DEFAULT NULL,
  `facultyCode` varchar(50) DEFAULT NULL,
  `currentStatus` varchar(50) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `classification` varchar(50) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvenue`
--

INSERT INTO `tblvenue` (`id`, `className`, `facultyCode`, `currentStatus`, `capacity`, `classification`, `dateCreated`) VALUES
(7, 'FOS LH01', 'FOS', 'Available', 50, 'Lecture Hall', NULL),
(8, 'FOE LH01', 'FOE', 'Available', 100, 'Lecture Hall', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`attendanceID`),
  ADD KEY `studentRegistrationNumber` (`studentRegistrationNumber`),
  ADD KEY `course` (`course`),
  ADD KEY `unit` (`unit`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courseCode` (`courseCode`),
  ADD KEY `facultyID` (`facultyID`);

--
-- Indexes for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facultyCode` (`facultyCode`);

--
-- Indexes for table `tbllecturer`
--
ALTER TABLE `tbllecturer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registrationNumber` (`registrationNumber`),
  ADD KEY `courseCode` (`courseCode`);

--
-- Indexes for table `tblunit`
--
ALTER TABLE `tblunit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unitCode` (`unitCode`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `tblvenue`
--
ALTER TABLE `tblvenue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facultyCode` (`facultyCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `attendanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbllecturer`
--
ALTER TABLE `tbllecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tblunit`
--
ALTER TABLE `tblunit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblvenue`
--
ALTER TABLE `tblvenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD CONSTRAINT `tblattendance_ibfk_1` FOREIGN KEY (`studentRegistrationNumber`) REFERENCES `tblstudents` (`registrationNumber`),
  ADD CONSTRAINT `tblattendance_ibfk_2` FOREIGN KEY (`course`) REFERENCES `tblcourse` (`courseCode`),
  ADD CONSTRAINT `tblattendance_ibfk_3` FOREIGN KEY (`unit`) REFERENCES `tblunit` (`unitCode`);

--
-- Constraints for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD CONSTRAINT `tblstudents_ibfk_1` FOREIGN KEY (`courseCode`) REFERENCES `tblcourse` (`courseCode`);

--
-- Constraints for table `tblunit`
--
ALTER TABLE `tblunit`
  ADD CONSTRAINT `tblunit_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `tblcourse` (`courseCode`);

--
-- Constraints for table `tblvenue`
--
ALTER TABLE `tblvenue`
  ADD CONSTRAINT `tblvenue_ibfk_1` FOREIGN KEY (`facultyCode`) REFERENCES `tblfaculty` (`facultyCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
