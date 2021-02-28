-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2021 at 08:31 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
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
-- Database: `jpagestionensup3`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `theme_course` varchar(255) NOT NULL,
  `number_hours` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`theme_course`, `number_hours`) VALUES
('Histoire', 25),
('Java', 35),
('Linux', 40),
('Maths', 45);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mail_address` varchar(255) DEFAULT NULL,
  `number_phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `address`, `birth_date`, `first_name`, `last_name`, `mail_address`, `number_phone`) VALUES
(1, 'Nantes', '2020-12-31', 'Jean', 'Marc', 'n@yahoo.com', '1223344334'),
(2, 'Nantes', NULL, 'Fati', 'Fatimata', 'n@yahoo.fr', '1223344334'),
(5, 'Paris', '2021-01-31', 'Mamadou', 'Coulibaly', 'mama@coul.fr', '0567453457'),
(7, 'Paris', '2021-02-01', 'Mamadou Coulibaly', 'Juju', 'ju@jaja@com', '3234342323');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `theme_course` varchar(255) NOT NULL,
  `id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_id` bigint NOT NULL,
  `courses_theme_course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_id`, `courses_theme_course`) VALUES
(1, 'Histoire'),
(1, 'Java'),
(2, 'Java'),
(1, 'Linux'),
(1, 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `profil`) VALUES
(1, 'toto', 'toto', 'D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`theme_course`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`theme_course`,`id`),
  ADD KEY `FKejxd3gw3729i0mnf9q3e0jq78` (`id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_id`,`courses_theme_course`),
  ADD KEY `FKfehdbq602a6un9cuy6hogmtgf` (`courses_theme_course`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `FKejxd3gw3729i0mnf9q3e0jq78` FOREIGN KEY (`id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `FKqtvv7c0g3drka3qhom5p972eg` FOREIGN KEY (`theme_course`) REFERENCES `course` (`theme_course`);

--
-- Constraints for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `FKfehdbq602a6un9cuy6hogmtgf` FOREIGN KEY (`courses_theme_course`) REFERENCES `course` (`theme_course`),
  ADD CONSTRAINT `FKiqufqwgb6im4n8xslhjvxmt0n` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
