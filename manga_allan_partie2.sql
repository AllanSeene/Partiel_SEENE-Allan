-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:33
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `manga_allan`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Date de naissance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `Nom`, `Date de naissance`) VALUES
(1, 'Miura Kentarou', 11071966),
(2, 'Araki Hirohiko', 7061960),
(3, 'Inoue Takehiko', 12011967),
(4, 'Oda Eiichiro', 1011975),
(5, 'Urasawa Naoki', 2011960);

-- --------------------------------------------------------

--
-- Structure de la table `mangas`
--

CREATE TABLE `mangas` (
  `id` int(11) NOT NULL,
  `Titre` varchar(50) NOT NULL,
  `Année de publication` int(11) NOT NULL,
  `Note de satisfaction` int(11) NOT NULL,
  `Description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mangas`
--

INSERT INTO `mangas` (`id`, `Titre`, `Année de publication`, `Note de satisfaction`, `Description`) VALUES
(4, 'Berserk', 1989, 9, 'Guts, a former mercenary now known as the Black Swordsman...'),
(5, 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 2004, 9, 'In the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars...'),
(6, 'Vagabond', 2015, 9, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions...'),
(7, 'One piece', 1997, 9, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line...'),
(8, 'Monster', 2001, 9, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf...');

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `Nom`, `Description`) VALUES
(1, 'Guts', 'Guts is the protagonist of the story. He is a tall, muscular man with a huge sword called the Dragon Slayer...\r\n'),
(2, 'Casca', 'Casca was the only female soldier in the original Band of the Hawk and is behind only to Guts and Griffith in swordsmanship...'),
(3, 'Gyro', 'Born Julius Caesar Zeppeli, but more commonly referred to as \"Gyro Zeppeli.\"\r\n\r\nGyro has a cocky and flamboyant personality, appearing to have a high opinion of himself...'),
(4, 'Diego', 'Dio\'s alternate universe counterpart in Part 7 of JoJo\'s Bizarre Adventure, Steel Ball Run. under the name of Diego Brando (commonly referred to by his nickname Dio by other characters)...'),
(5, 'Musashi', 'Miyamoto Musashi (1584 – 1645) or Shinmen Takezo (his birth name) at a very young age embarked on a journey to become the strongest samurai only after being exiled from his own village.'),
(6, 'Kojirou', 'The legendary archrival of Miyamoto Musashi. Raised by Kanemaki Jisai, after he is found as a baby in casket, floating on the ocean...'),
(7, 'Zoro', 'Zoro was the first crew member to be recruited by Luffy. Zoro is a skilled swordsman who fights with his own unique sword style known as santoryu (three katana fighting style)...'),
(8, 'Sanji', 'Sanji uses an array of powerful and varied kicking moves when he fights. His cooking skills are world class, and he was mentored in both cooking and fighting by Chef \"Red Leg\" Zeff of the Baratie. He was born in the North Blue, but grew up in the East Blue...'),
(9, 'Johan', 'Johan Liebert is the namesake \"monster\" of the story and the mystery of his past is the focus of the plot. He has been called a monster, the next Adolf Hitler and even the devil himself...'),
(10, 'Anna', 'Johan\'s twin sister and the only unharmed survivor of the night when both her parents and her brother were shot in what appeared to be a botched burglary...');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
