-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 30 avr. 2021 à 15:22
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jpagestionensup`
--

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `theme_course` varchar(255) COLLATE utf8_bin NOT NULL,
  `number_hours` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`theme_course`, `number_hours`) VALUES
('Anglais', 36),
('Informatique', 40),
('Management', 20),
('Droit des affaires', 25);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(37),
(37);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `levelsrepartition`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `levelsrepartition` (
`moinsBon` decimal(22,0)
,`Moyens` decimal(22,0)
,`Bons` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `value` float NOT NULL,
  `course_themeCourse` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `value`, `course_themeCourse`, `student_id`) VALUES
(1, 12, 'Arts', 6),
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
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `birth_date` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mail_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `number_phone` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `address`, `birth_date`, `first_name`, `last_name`, `mail_address`, `number_phone`) VALUES
(30, '11 Rue Gérard De Nerval', '2021-04-10', 'Cédric', 'Nozerand', 'cedric.nozerand@gmail.com', '0601293069'),
(31, 'dans la tour effel', '2021-04-23', 'Benjamin', 'boutrois', 'ben@yahoo.fr', '0102030405'),
(32, 'guyancourt', '2021-04-14', 'Giovanni', 'jesaisplus', 'gio@gmail.com', '0102030405');

-- --------------------------------------------------------

--
-- Structure de la table `student_course`
--

CREATE TABLE `student_course` (
  `theme_course` varchar(255) COLLATE utf8_bin NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_id` int(20) NOT NULL,
  `courses_theme_course` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `student_courses`
--

INSERT INTO `student_courses` (`student_id`, `courses_theme_course`) VALUES
(30, 'Anglais'),
(30, 'Informatique'),
(32, 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `profil` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `profil`) VALUES
(1, 'admin', 'admin', 'D');

-- --------------------------------------------------------

--
-- Structure de la vue `levelsrepartition`
--
DROP TABLE IF EXISTS `levelsrepartition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `levelsrepartition`  AS  (select sum(case when `a`.`moyenne` < 7 then 1 end) AS `moinsBon`,sum(case when `a`.`moyenne` between 7 and 14 then 1 end) AS `Moyens`,sum(case when `a`.`moyenne` > 14 then 1 end) AS `Bons` from (select `note`.`student_id` AS `student_id`,avg(`note`.`value`) AS `moyenne` from `note` group by `note`.`student_id`) `a`) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmugpg56w1dfd00m3aoa8sx6fp` (`course_themeCourse`),
  ADD KEY `FK9c10dmjliyhtgsg9n2fv2ukvv` (`student_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`theme_course`,`id`);

--
-- Index pour la table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_id`,`courses_theme_course`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
