-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 06:09 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` int(10) UNSIGNED NOT NULL,
  `security_ques` varchar(45) NOT NULL,
  `answer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `name`, `password`, `security_ques`, `answer`) VALUES
('fv', 'ff', 111, 'What is your mother toungue?', 'ff'),
('tharu', 'tharushi', 123, 'What is your nick name?', 't');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` int(10) UNSIGNED NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int(8) UNSIGNED NOT NULL,
  `stock` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `edition`, `publisher`, `price`, `stock`) VALUES
(90, 'magul kama', 1, 'martin sir', 400, 2),
(91, 'mam', 1, 'aaa', 123, 1),
(411, 'hathpana', 1, 'martin wickramasinghr', 299, 1),
(581, 'taththa', 1, 'gggg', 899, 5),
(604, 'madolduwa', 5, 'sarasavi', 200, 2),
(724, 'madolduwa', 2, 'maftin', 22200, 3),
(801, 'amma', 1, 'kumar', 2000, 2),
(841, 'ape gama', 1, 'sarasavi', 123, 11);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` int(5) UNSIGNED NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(5) UNSIGNED NOT NULL,
  `stock` int(5) UNSIGNED NOT NULL,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `doi`) VALUES
(841, 'ape gama', 1, 'sarasavi', 123, 12, 684, 'Sduni', 'Liyanage', 'HNDA', 'Anuradapura', '1st', '3rd', '2023-12-02'),
(411, 'hathpana', 1, 'martin wickramasinghr', 299, 2, 198, 'tharushika', 'sewwandi', 'HNDIT', 'anuradhapura', '1st', '1st', '2023-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `returntbl`
--

CREATE TABLE `returntbl` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returntbl`
--

INSERT INTO `returntbl` (`stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `doi`, `doreturn`) VALUES
(334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd', 724, 'madolduwa', '2', 'maftin', 22200, 2, '2023-11-23', '2023-12-02'),
(706, 'rrr', 'ddd', 'HNDIT', 'anuradhapura', '1st', '1st', 581, 'taththa', '1', 'gggg', 899, 4, '2023-12-12', '2013-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `f_name`, `course`, `branch`, `year`, `semister`) VALUES
(198, 'tharushika', 'sewwandi', 'HNDIT', 'anuradhapura', '1st', '1st'),
(596, 'tt', 'ttt', 'HNDIT', 'tt', '1st', '1st'),
(684, 'Sduni', 'Liyanage', 'HNDA', 'Anuradapura', '1st', '3rd'),
(706, 'rrr', 'ddd', 'HNDIT', 'anuradhapura', '1st', '1st');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
