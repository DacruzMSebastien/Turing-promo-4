-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 04 Mars 2018 à 14:07
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `movies_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `lastname` varchar(60) CHARACTER SET utf8 NOT NULL,
  `firstname` varchar(60) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `authors`
--

INSERT INTO `authors` (`id`, `lastname`, `firstname`) VALUES
(1, 'Nolan', 'Christopher'),
(2, 'Spielberg', 'Steven'),
(3, 'Jeunet', 'Jean-Pierre'),
(4, 'Scorsese', 'Martin'),
(5, 'Hitchcock', 'Alfred'),
(6, 'Eastwood', 'Clint'),
(7, 'Kubrick', 'Stanley'),
(8, 'Lavandier', 'Yves');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `release_date` int(4) NOT NULL,
  `id_author` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `release_date`, `id_author`) VALUES
(1, 'Tarantella', 1989, 1),
(2, 'Larceny', 1996, 1),
(3, 'Doodlebu', 1997, 1),
(4, 'Memento', 2000, 1),
(5, 'Insomnia', 2002, 1),
(6, 'Batman Begins', 1996, 1),
(7, 'Le prestige', 1997, 1),
(8, 'E.T L\'extra Terrestre', 1982, 2),
(9, 'Indiana Jones et le temple maudit', 1984, 2),
(10, 'Jurassic Park', 1993, 2),
(11, 'Delicatessen', 1991, 3),
(12, 'Le fabuleux destin d\'Amélie poulain', 2001, 3),
(13, 'Taxi Driver', 1976, 4),
(14, 'New York, New york', 1977, 4),
(15, 'Le affranchis', 1990, 4),
(16, 'Fenêtre sur cour', 1954, 5),
(17, 'Million Dollar Baby', 2004, 6),
(18, 'Orange mécanique', 1972, 7),
(19, 'Tintin en amérique', 1931, 59);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
