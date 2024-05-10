-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 10 mai 2024 à 15:38
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `datenaiss` varchar(10) NOT NULL,
  `lieunaiss` varchar(10) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `noteCC` decimal(2,2) NOT NULL,
  `noteexam` decimal(2,2) NOT NULL,
  `moyenne` decimal(2,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `email`, `password`, `datenaiss`, `lieunaiss`, `adress`, `noteCC`, `noteexam`, `moyenne`) VALUES
(1, 'bahi', 'nardjes', 'naedjesna@gmail.com', 'qwerty', '2024-05-11', '', 'annaba', '0.00', '0.00', '0.00'),
(8, 'benammar', 'ahlem', 'benammarahlem@gmail.com', 'asdfgh', '2024-05-31', '', 'el bouni ', '0.00', '0.00', '0.00'),
(9, 'bettayeb', 'hanane', 'bettayeb-hanane20@gmail.com', 'azerty', '2024-05-24', '', 'el bouni ', '0.00', '0.00', '0.00'),
(10, 'bouledroua', 'fatma', 'bouledrouafatma@gmail.com', 'zahra', '2024-05-16', '', 'el bouni ', '0.00', '0.00', '0.00'),
(11, 'bouzid', 'rayan', 'bouzid23@gmail.com', 'rayan', '2024-05-15', '', 'el bouni ', '0.00', '0.00', '0.00'),
(12, 'bahi', 'nardjes', 'naedjesna@gmail.com', 'qwerty', '2024-05-01', '', 'annaba', '0.00', '0.00', '0.00'),
(18, 'bahi', 'nardjes', 'naedjesna@gmail.com', '123', '2024-05-01', '', 'annaba', '0.00', '0.00', '0.00'),
(20, 'bahi', 'nardjes', 'naedjesna@gmail.com', '123', '2024-05-01', '', 'annaba', '0.00', '0.00', '0.00'),
(21, 'bahi', 'nardjes', 'naedjesna@gmail.com', '123', '2024-05-01', '', 'annaba', '0.00', '0.00', '0.00'),
(22, 'nardjes', 'bahi', 'nardjes@gmail.com', 'azerty', '2024-05-02', '', 'annaba', '0.00', '0.00', '0.00'),
(23, 'bahi', 'nardjes', 'qwer@gmail.com', 'azerty', '2024-05-03', '', 'annaba', '0.00', '0.00', '0.00'),
(24, 'bahi', 'nardjes', 'qwer@gmail.com', 'azerty', '2024-05-03', '', 'annaba', '0.00', '0.00', '0.00'),
(25, 'bahi', 'nardjes', 'qwer@gmail.com', 'azerty', '2024-05-03', '', 'annaba', '0.00', '0.00', '0.00'),
(26, 'bahi', 'nardjes', 'qwer@gmail.com', 'azerty', '2024-05-03', '', 'annaba', '0.00', '0.00', '0.00'),
(27, 'bahi', 'nardjes', 'qwer@gmail.com', 'qwerty', '2024-05-03', '', 'annaba', '0.00', '0.00', '0.00'),
(28, 'nardjes', 'bahi', 'nardjes@gmail.com', 'azerty', '2024-05-03', '', 'annaba', '0.00', '0.00', '0.00'),
(29, 'nardjes', 'bahi', 'nardjes@gmail.com', 'azerty', '2024-05-03', '', 'annaba', '0.00', '0.00', '0.00'),
(30, 'bahi', 'nardjes', 'naedjesna@gmail.com', 'azerty', '2024-05-10', '', 'annaba', '0.00', '0.00', '0.00'),
(31, 'bahi', 'nardjes', 'naedjesna@gmail.com', 'azertyuiop', '2024-05-02', '', 'annaba', '0.00', '0.00', '0.00'),
(32, 'bahi', 'nardjes', 'naedjesna@gmail.com', 'qwerty', '2002-05-23', '', 'annaba', '0.00', '0.00', '0.00'),
(33, 'bahi', 'nardjes', 'naedjesna@gmail.com', 'qwerty', '2002-05-14', '', 'el bouni ', '0.00', '0.00', '0.00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
