-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2020 at 04:30 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `student_id`, `subject_id`, `score`) VALUES
(1, 1, 1, 10),
(2, 2, 1, 9),
(3, 3, 1, 8),
(4, 4, 1, 9),
(5, 5, 1, 7),
(6, 1, 2, 7),
(7, 2, 2, 8),
(8, 3, 2, 9),
(9, 4, 2, 9),
(10, 5, 2, 8),
(11, 1, 3, 9),
(12, 2, 3, 9),
(13, 3, 3, 8),
(14, 4, 3, 7),
(15, 5, 3, 8),
(16, 1, 4, 6),
(17, 2, 4, 7),
(18, 3, 4, 6),
(19, 4, 4, 8),
(20, 5, 4, 9),
(21, 1, 5, 7),
(22, 2, 5, 6),
(23, 3, 5, 6),
(24, 4, 5, 7),
(25, 5, 5, 8),
(26, 1, 6, 8),
(27, 2, 6, 8),
(28, 3, 6, 7),
(29, 4, 6, 6),
(30, 5, 6, 5),
(31, 1, 7, 7),
(32, 2, 7, 6),
(33, 3, 7, 6),
(34, 4, 7, 5),
(35, 5, 7, 8),
(36, 1, 8, 9),
(37, 2, 8, 9),
(38, 3, 8, 8),
(39, 4, 8, 7),
(40, 5, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `birthday`) VALUES
(1, 'Trường', '0000-00-00'),
(2, 'Nam', '0000-00-00'),
(3, 'Liên', '0000-00-00'),
(4, 'Long', '1993-09-15'),
(5, 'Thang4', '1993-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `factor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `factor`) VALUES
(1, 'Math', 2),
(2, 'Physical', 2),
(3, 'Chemical', 2),
(4, 'Biological', 1),
(5, 'History', 1),
(6, 'Geography', 1),
(7, 'Literature', 1),
(8, 'English', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
