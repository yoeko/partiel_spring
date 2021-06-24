-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2021 at 06:24 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
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
-- Database: `jpagestionensup`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `theme_course` varchar(255) NOT NULL,
  `number_hours` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `themeCourse` varchar(255) NOT NULL,
  `numberHours` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`themeCourse`, `numberHours`) VALUES
('Anglais', 7),
('Informatique', 65),
('Rien', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(3),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `Note`
--

CREATE TABLE `Note` (
  `id` int NOT NULL,
  `value` float NOT NULL,
  `course_themeCourse` varchar(255) DEFAULT NULL,
  `student_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int NOT NULL,
  `value` float NOT NULL,
  `course_themeCourse` varchar(255) DEFAULT NULL,
  `student_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `value`, `course_themeCourse`, `student_id`) VALUES
(1, 12, 'Anglais', 2),
(2, 20, 'Arts', 6),
(3, 12, 'Informatique', 20),
(4, 15, 'Maths', 21),
(5, 17.5, 'Anglais', 6),
(6, 16, 'Arts', 20),
(7, 10, 'Informatique', 21),
(8, 18, 'Maths', 6),
(9, 14, 'Anglais', 20),
(10, 16.5, 'Arts', 21),
(11, 20, 'Informatique', 6),
(12, 7, 'Maths', 20),
(13, 5, 'Arts', 21),
(14, 19, 'Maths', 6),
(15, 13, 'Informatique', 20),
(16, 4, 'Anglais', 21);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthDate` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `mailAddress` varchar(255) DEFAULT NULL,
  `numberPhone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`id`, `address`, `birthDate`, `firstName`, `lastName`, `mailAddress`, `numberPhone`) VALUES
(2, '11 boulevard Montaigut 94000 Créteil', '2020-11-03', 'Ahmadou', 'Lo', 'ahmadou19@gmail.com', '0755234475');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Student_Course`
--

CREATE TABLE `Student_Course` (
  `Student_id` int NOT NULL,
  `courses_themeCourse` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Student_course`
--

CREATE TABLE `Student_course` (
  `Student_id` int NOT NULL,
  `courses_themeCourse` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student_course`
--

INSERT INTO `Student_course` (`Student_id`, `courses_themeCourse`) VALUES
(2, 'Anglais'),
(2, 'Informatique');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `theme_course` varchar(255) NOT NULL,
  `id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_id` bigint NOT NULL,
  `courses_theme_course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `login`, `password`, `profil`) VALUES
(1, 'toto', 'toto', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `enabled` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `profil`, `user_id`, `username`, `role`, `enabled`) VALUES
(1, 'toto', '$2y$07$SWlKSM3V6eXFgTu4b1ks4eFTkAy0XPJEvPKjAh8sfV2imQtHCj96e', 'ADMIN', 1, 'toto', 'D', NULL),
(2, NULL, '$2a$10$nLG5/TyJ4CB3KxfjMOWAD.FNMgdMoxskqw2qfu5qz8W5jZhD/kfHC', NULL, NULL, 'fati', 'R', NULL),
(3, NULL, '$2a$10$pwBvFXlUb9uiYkHo/ly1WuToW2uD5zrJ/Powzcn0WoZrJzi2fwmNG', NULL, NULL, 'jules', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`theme_course`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`themeCourse`);

--
-- Indexes for table `Note`
--
ALTER TABLE `Note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmugpg56w1dfd00m3aoa8sx6fp` (`course_themeCourse`),
  ADD KEY `FK9c10dmjliyhtgsg9n2fv2ukvv` (`student_id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmugpg56w1dfd00m3aoa8sx6fp` (`course_themeCourse`),
  ADD KEY `FK9c10dmjliyhtgsg9n2fv2ukvv` (`student_id`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Student_Course`
--
ALTER TABLE `Student_Course`
  ADD KEY `FKbwm9j0u941p56cdsugy7e9c22` (`courses_themeCourse`),
  ADD KEY `FK1xm2hei9chmwoqf2wfm104nmg` (`Student_id`);

--
-- Indexes for table `Student_course`
--
ALTER TABLE `Student_course`
  ADD KEY `FKbwm9j0u941p56cdsugy7e9c22` (`courses_themeCourse`),
  ADD KEY `FK1xm2hei9chmwoqf2wfm104nmg` (`Student_id`);

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
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Note`
--
ALTER TABLE `Note`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
