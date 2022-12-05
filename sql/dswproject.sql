-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 11:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dswproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `enroll` int(11) NOT NULL,
  `bid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`enroll`, `bid`) VALUES
(21803018, 0),
(21803011, 1),
(21803001, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`bid`, `cid`, `cname`, `faculty`) VALUES
(0, 101, 'Data Structures', 'Prantik Biswas'),
(0, 202, 'Database System And Web Design', 'Megha Rathi'),
(0, 303, 'TFCS', 'Tanya'),
(1, 1101, 'Digital Circuits And Design', 'Ankur Bharadwaj'),
(1, 1202, 'Signal And System', 'Aakasah Saxena'),
(2, 2101, 'Immunology', 'Vivek Shaurya'),
(2, 2202, 'Molecular Biology', 'Anmol Verma ');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `enroll` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `sgpa` int(11) NOT NULL,
  `cgpa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`enroll`, `semester`, `sgpa`, `cgpa`) VALUES
(21803001, 1, 9, 9),
(21803001, 2, 9, 9),
(21803011, 1, 8, 8),
(21803011, 2, 10, 9),
(21803018, 1, 10, 10),
(21803018, 2, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `login_ids`
--

CREATE TABLE `login_ids` (
  `enroll` int(11) NOT NULL,
  `passwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_ids`
--

INSERT INTO `login_ids` (`enroll`, `passwd`) VALUES
(21803001, 'chimpanzi'),
(21803011, 'anshMi011'),
(21803013, 'vScode'),
(21803014, 'vermaji'),
(21803015, 'vjHarshit'),
(21803018, 'guptaji');

-- --------------------------------------------------------

--
-- Table structure for table `logsession`
--

CREATE TABLE `logsession` (
  `srno` int(11) NOT NULL,
  `enroll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logsession`
--

INSERT INTO `logsession` (`srno`, `enroll`) VALUES
(3, 21803001),
(4, 21803018),
(5, 21803011),
(6, 21803018),
(7, 21803018),
(8, 21803018),
(9, 21803018),
(10, 21803018),
(11, 21803018),
(12, 21803018),
(13, 21803018),
(14, 21803018),
(15, 21803001);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `bid` int(11) NOT NULL,
  `time` time NOT NULL,
  `mon` varchar(100) DEFAULT NULL,
  `tue` varchar(100) DEFAULT NULL,
  `wed` varchar(100) DEFAULT NULL,
  `thurs` varchar(100) DEFAULT NULL,
  `fri` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`bid`, `time`, `mon`, `tue`, `wed`, `thurs`, `fri`) VALUES
(0, '09:00:00', 'DS-Lec', 'DSW-Lec', 'TFCS-Lec', 'ES-Lec', 'DS-Tut'),
(0, '10:00:00', 'DS-Lab', 'DSW-Lab', 'TFCS-Lec', 'ES-Lab', 'DS-Tut'),
(0, '11:00:00', 'DS-Lab', 'DSW-Lab', 'TFCS-Lec', 'ES-Lab', 'DS-Tut'),
(0, '12:00:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'),
(0, '13:00:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'),
(0, '14:00:00', 'DS-Lec', 'DSW-Lec', 'TFCS-Lec', 'ES-Lec', 'DS-Tut'),
(0, '15:00:00', 'DS-tut', 'DSW-tut', 'TFCS-tut', 'ES-tut', 'DS-Tut'),
(0, '16:00:00', 'DS-Tut', 'DSW-Tut', 'TFCS-Tut', 'ES-Tut', 'DS-Lec'),
(1, '09:00:00', 'DCD-Lec', 'SNS-Lec', 'PRP-Lec', 'DCD-Tut', 'ES-Tut'),
(1, '10:00:00', 'DCD-Lab', 'SNS-Lab', 'PRP-Lab', 'DCD-Tut', 'ES-Tut'),
(1, '11:00:00', 'DCD-Lab', 'SNS-Lab', 'PRP-Lab', 'DCD-Tut', 'ES-Tut'),
(1, '12:00:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'),
(1, '13:00:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'),
(1, '14:00:00', 'DCD-Tut', 'SNS-Tut', 'PRP-Tut', 'DCD-Lec', 'ES-Tut'),
(1, '15:00:00', 'DCD-Tut', 'SNS-Tut', 'PRP-Tut', 'DCD-Tut', 'ES-Lec'),
(2, '09:00:00', 'Microbiology-Lec', 'MolecularBiology-Lec', 'Genetics-Lec', 'Microbiology-Tut', 'Chemistry-Tut'),
(2, '11:00:00', 'Microbiology-Lab', 'MolecularBiology-Lab', 'Genetics-Lab', 'Microbiology-Tut', 'Chemistry-Tut'),
(2, '12:00:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'),
(2, '13:00:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'),
(2, '14:00:00', 'Microbiology-Tut', 'MolecularBiology-Tut', 'Genetics-Tut', 'Microbiology-Lec', 'Chemistry-Tut'),
(2, '15:00:00', 'Microbiology-Tut', 'MolecularBiology-Tut', 'Genetics-Tut', 'Microbiology-Tut', 'Chemistry-Lec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`enroll`),
  ADD UNIQUE KEY `bid` (`bid`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`bid`,`cid`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`enroll`,`semester`);

--
-- Indexes for table `login_ids`
--
ALTER TABLE `login_ids`
  ADD PRIMARY KEY (`enroll`);

--
-- Indexes for table `logsession`
--
ALTER TABLE `logsession`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`bid`,`time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logsession`
--
ALTER TABLE `logsession`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`enroll`) REFERENCES `login_ids` (`enroll`);

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`enroll`) REFERENCES `login_ids` (`enroll`);

--
-- Constraints for table `logsession`
--
ALTER TABLE `logsession`
  ADD CONSTRAINT `logsession_ibfk_1` FOREIGN KEY (`enroll`) REFERENCES `login_ids` (`enroll`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
