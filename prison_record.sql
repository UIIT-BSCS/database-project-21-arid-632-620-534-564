-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 08:31 AM
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
-- Database: `prison record`
--

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE `crime` (
  `Section_No` int(11) NOT NULL,
  `crime` text NOT NULL,
  `Punishment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crime`
--

INSERT INTO `crime` (`Section_No`, `crime`, `Punishment`) VALUES
(302, 'Murder', 'Death'),
(433, 'robbery', 'fined RS 50\'000'),
(434, 'drug addicts', 'fined RS 6000'),
(435, 'smuggling', 'death'),
(436, 'thefting', 'fined RS 50,000'),
(456, 'cyber crime', 'prison for 2 years'),
(457, 'harrasement', 'prison for 2 years'),
(458, 'street fighting', 'prison for 6 months'),
(459, 'rules breaking', 'fined RS 500'),
(460, 'domestic voilence', 'prison for 2 years');

-- --------------------------------------------------------

--
-- Table structure for table `crime_of_prisoner`
--

CREATE TABLE `crime_of_prisoner` (
  `Criminal_No` int(11) NOT NULL,
  `Section_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crime_of_prisoner`
--

INSERT INTO `crime_of_prisoner` (`Criminal_No`, `Section_No`) VALUES
(109, 436),
(109, 457),
(111, 456),
(115, 436),
(121, 433),
(124, 434),
(137, 434),
(141, 433),
(150, 436),
(199, 436),
(203, 302),
(203, 435),
(212, 436),
(232, 434),
(235, 434),
(237, 434),
(245, 434),
(245, 459),
(315, 436),
(335, 436),
(344, 456),
(381, 433),
(385, 436),
(395, 302),
(399, 302),
(412, 436),
(432, 302),
(433, 302);

-- --------------------------------------------------------

--
-- Table structure for table `fir`
--

CREATE TABLE `fir` (
  `Complaint_No` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Report` text NOT NULL,
  `Report_by` text NOT NULL,
  `Officer_ID` int(11) NOT NULL,
  `City` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fir`
--

INSERT INTO `fir` (`Complaint_No`, `Date`, `Time`, `Report`, `Report_by`, `Officer_ID`, `City`) VALUES
(1, '2018-04-01', '09:05:00', 'Smuggling', 'Talal Ahmad', 291, 'Rawalpindi'),
(2, '2017-04-21', '08:02:00', 'shop lifting', 'mansoor', 202, 'lahore'),
(3, '2016-02-21', '09:51:00', 'vehicle theft', 'shafiq', 243, 'faislabad'),
(4, '2019-12-10', '10:21:00', 'robbery', 'nadir', 251, 'islamabad'),
(5, '2017-07-30', '12:00:00', 'larceny', 'taimoor', 202, 'rawalpindi'),
(6, '2015-11-22', '01:15:00', 'drug addicts', 'hamza', 251, 'lahore'),
(7, '2010-01-01', '06:30:00', 'murder', 'raheem', 243, 'murree'),
(8, '2015-06-19', '11:05:00', 'burglary', 'husnain', 291, 'lahore'),
(9, '2012-10-07', '09:23:00', 'rules breaking', 'sheraz', 202, 'faislabad'),
(10, '2017-07-12', '10:30:00', 'shop lifting', 'ammad', 251, 'karachi'),
(11, '2016-04-18', '02:00:00', 'drug addicts', 'daniyal', 243, 'lahore'),
(12, '2013-06-20', '06:52:00', 'burglary', 'mansoor', 291, 'rawalpindi'),
(13, '2020-01-17', '07:59:00', 'murder', 'ubaid', 243, 'karachi'),
(14, '2002-01-20', '12:42:00', 'murder', 'umer', 291, 'murree'),
(15, '2007-04-21', '02:02:00', 'shop lifting', 'anas', 202, 'islamabad'),
(16, '2012-02-11', '01:22:00', 'larceny', 'mansoor', 251, 'lahore'),
(17, '2011-09-19', '12:32:00', 'cyber crime', 'ehtesham', 243, 'chakwal'),
(18, '2009-01-28', '09:42:00', 'drug addicts', 'shafiq', 291, 'karachi');

-- --------------------------------------------------------

--
-- Table structure for table `guard`
--

CREATE TABLE `guard` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(11) NOT NULL,
  `City` text NOT NULL,
  `Shift` text NOT NULL,
  `Duty_Hours` time NOT NULL,
  `Salary` int(11) NOT NULL,
  `Wing_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guard`
--

INSERT INTO `guard` (`ID`, `Name`, `Age`, `City`, `Shift`, `Duty_Hours`, `Salary`, `Wing_no`) VALUES
(101, 'Jameel Ahmed', 32, 'Talagang', 'Day', '06:00:00', 40000, 432),
(102, 'jamal', 31, 'fatehjhang', 'day', '06:00:00', 45000, 432),
(103, 'ahmed mir', 35, 'lahore', 'night', '06:00:00', 40000, 432),
(104, 'saim jameel', 39, 'karachi', 'night', '06:00:00', 45000, 432),
(105, 'munir mughal', 41, 'rawalpindi', 'day', '06:00:00', 50000, 172),
(106, 'saif', 30, 'fatehjhang', 'day', '06:00:00', 50000, 172),
(107, 'wasif', 38, 'kashmir', 'night', '06:00:00', 49000, 172),
(108, 'umer akmal', 32, 'faislabad', 'night', '06:00:00', 44000, 172),
(109, 'wajahat ali', 36, 'faislabad', 'day', '06:00:00', 47000, 301),
(110, 'ehsan ali', 42, 'islamabad', 'night', '06:00:00', 45000, 301),
(111, 'umer asif', 39, 'rawalpindi', 'day', '06:00:00', 47000, 301),
(112, 'abdullah amir', 42, 'karachi', 'night', '06:00:00', 45000, 301),
(113, 'afaq ahmed', 42, 'karachi', 'night', '06:00:00', 50000, 302),
(114, 'husnain zia', 35, 'lahore', 'night', '06:00:00', 55000, 302),
(115, 'ammar sheikh', 39, 'islamabad', 'day', '06:00:00', 55000, 302),
(116, 'abdul waleed', 42, 'rawalpindi', 'day', '06:00:00', 50000, 302);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `Batch_ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Rank` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Date_Of_Joining` date NOT NULL,
  `Salary` int(11) NOT NULL,
  `Wing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`Batch_ID`, `Name`, `Rank`, `Age`, `Date_Of_Joining`, `Salary`, `Wing`) VALUES
(202, 'Hadi', 'major', 45, '2019-11-05', 45000, 302),
(243, 'Ali', 'comissioner', 48, '2018-10-09', 48000, 301),
(251, 'Hassan', 'dsp', 46, '2019-02-08', 44000, 172),
(291, 'Qasim', 'General', 49, '2011-09-22', 70000, 432);

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

CREATE TABLE `prisoner` (
  `Criminal_No` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` text NOT NULL,
  `City` text NOT NULL,
  `Complaint_No` int(11) NOT NULL,
  `Wing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prisoner`
--

INSERT INTO `prisoner` (`Criminal_No`, `Name`, `Age`, `Gender`, `City`, `Complaint_No`, `Wing`) VALUES
(109, 'Faseeh Awan', 35, 'male', 'karachi', 12, 172),
(111, 'Shoaib Khan', 33, 'male', 'rawalpindi', 17, 302),
(115, 'Faseeh Awan', 35, 'male', 'karachi', 12, 172),
(121, 'khalid', 20, 'male', 'islamabad', 4, 302),
(124, 'Yasir Raja', 25, 'female', 'rawalpindi', 11, 432),
(137, 'Hameedullah ', 43, 'male', 'lahore', 18, 301),
(141, 'ahmed', 29, 'male', 'islamabad', 2, 301),
(150, 'waleed', 30, 'male', 'lahore', 3, 172),
(199, 'Faseeh Awan', 35, 'male', 'karachi', 12, 172),
(203, 'Hamza Khalid', 29, 'Male', 'Rawalpindi', 1, 432),
(212, 'Laraib Ali', 32, 'male', 'faisalabad', 15, 301),
(232, 'Rabia Hashmi', 25, 'female', 'rawalpindi', 11, 172),
(235, 'Laiba Sattar', 23, 'female', 'karachi', 6, 172),
(237, 'Laiba Sattar', 23, 'female', 'karachi', 6, 172),
(245, 'Ayesha Imran', 22, 'female', 'islamabad', 9, 302),
(315, 'Faseeh Awan', 35, 'male', 'karachi', 12, 172),
(335, 'Faseeh Awan', 35, 'male', 'karachi', 12, 172),
(344, 'Tanveer ', 25, 'male', 'rawalpindi', 17, 301),
(381, 'ahmed', 29, 'male', 'islamabad', 2, 301),
(385, 'Faseeh Awan', 35, 'male', 'karachi', 12, 172),
(395, 'Ibraheem ', 44, 'male', 'rawalpindi', 14, 301),
(399, 'Touqeer Khan', 24, 'male', 'faisalabad', 14, 301),
(412, 'Osman Khan', 50, 'male', 'islamabad', 15, 432),
(432, 'Farukh Imran', 32, 'male', 'lahore', 7, 301),
(433, 'Areeb Imtiaz', 30, 'male', 'lahore', 7, 302),
(444, 'Wajeeh Ahmen', 19, 'male', 'tarnol', 10, 432),
(453, 'Waseem ', 30, 'male', 'lahore', 16, 302),
(465, 'Shafique Ali', 33, 'male', 'attock', 13, 302),
(478, 'Shahveer Jaffarey', 24, 'male', 'abbottabad', 16, 301),
(545, 'Ibraheem ', 44, 'male', 'rawalpindi', 14, 301),
(565, 'Shafique Ali', 33, 'male', 'attock', 13, 302),
(595, 'Shafique Ali', 33, 'male', 'attock', 13, 302),
(622, 'Taimoor Ahmad', 44, 'male', 'faisalabad', 13, 301),
(632, 'Muhammad Shawaiz', 36, 'male', 'rawalpindi', 17, 302),
(665, 'Shafique Ahmed', 33, 'male', 'jacobbabad', 8, 302),
(672, 'Taimoor Ahmad', 44, 'male', 'faisalabad', 12, 301),
(874, 'Tauqeer Ahmed', 23, 'male', 'tarnol', 17, 301);

-- --------------------------------------------------------

--
-- Table structure for table `wing`
--

CREATE TABLE `wing` (
  `Wing_No` int(11) NOT NULL,
  `Name` text NOT NULL,
  `No_Of_Guards` int(11) NOT NULL,
  `No_Of_Criminals` int(11) NOT NULL,
  `No_Of_Prisons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wing`
--

INSERT INTO `wing` (`Wing_No`, `Name`, `No_Of_Guards`, `No_Of_Criminals`, `No_Of_Prisons`) VALUES
(172, 'wormwood', 8, 14, 14),
(301, 'the wille', 7, 20, 20),
(302, 'marquette', 7, 15, 15),
(432, 'Falcon', 5, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crime`
--
ALTER TABLE `crime`
  ADD PRIMARY KEY (`Section_No`);

--
-- Indexes for table `crime_of_prisoner`
--
ALTER TABLE `crime_of_prisoner`
  ADD PRIMARY KEY (`Criminal_No`,`Section_No`),
  ADD KEY `Section_No` (`Section_No`);

--
-- Indexes for table `fir`
--
ALTER TABLE `fir`
  ADD PRIMARY KEY (`Complaint_No`),
  ADD KEY `Officer_ID` (`Officer_ID`);

--
-- Indexes for table `guard`
--
ALTER TABLE `guard`
  ADD KEY `Wing_no` (`Wing_no`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`Batch_ID`),
  ADD KEY `Wing` (`Wing`);

--
-- Indexes for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD PRIMARY KEY (`Criminal_No`),
  ADD KEY `Wing` (`Wing`);

--
-- Indexes for table `wing`
--
ALTER TABLE `wing`
  ADD PRIMARY KEY (`Wing_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crime_of_prisoner`
--
ALTER TABLE `crime_of_prisoner`
  ADD CONSTRAINT `crime_of_prisoner_ibfk_1` FOREIGN KEY (`Criminal_No`) REFERENCES `prisoner` (`Criminal_No`),
  ADD CONSTRAINT `crime_of_prisoner_ibfk_2` FOREIGN KEY (`Section_No`) REFERENCES `crime` (`Section_No`);

--
-- Constraints for table `fir`
--
ALTER TABLE `fir`
  ADD CONSTRAINT `fir_ibfk_1` FOREIGN KEY (`Officer_ID`) REFERENCES `officer` (`Batch_ID`),
  ADD CONSTRAINT `fir_ibfk_2` FOREIGN KEY (`Officer_ID`) REFERENCES `officer` (`Batch_ID`);

--
-- Constraints for table `guard`
--
ALTER TABLE `guard`
  ADD CONSTRAINT `guard_ibfk_1` FOREIGN KEY (`Wing_no`) REFERENCES `wing` (`Wing_No`);

--
-- Constraints for table `officer`
--
ALTER TABLE `officer`
  ADD CONSTRAINT `officer_ibfk_1` FOREIGN KEY (`Wing`) REFERENCES `wing` (`Wing_No`),
  ADD CONSTRAINT `officer_ibfk_2` FOREIGN KEY (`Wing`) REFERENCES `wing` (`Wing_No`);

--
-- Constraints for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD CONSTRAINT `prisoner_ibfk_1` FOREIGN KEY (`Wing`) REFERENCES `wing` (`Wing_No`),
  ADD CONSTRAINT `prisoner_ibfk_2` FOREIGN KEY (`Wing`) REFERENCES `wing` (`Wing_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
