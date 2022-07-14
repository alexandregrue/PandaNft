-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 14 juil. 2022 à 10:23
-- Version du serveur : 10.8.3-MariaDB
-- Version de PHP : 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `panda`
--

-- --------------------------------------------------------

--
-- Structure de la table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `about`
--

INSERT INTO `about` (`id`, `description`) VALUES
(1, 'We are all passionate, like you who read this medium, passionate about technology, crypto-currency and NFT for almost 2 years now.\r\n\r\nWe decided to create a structure on Cronos because we noticed that there was some news missing on the blockchain. ( You will understand by discovering the Pandamap )\r\n\r\nIn the team we are for the moment 6. A recruitment will necessarily be set up. In order to be present as much as possible for the community and for the development of the Roadmap to be done in the best possible conditions.');

-- --------------------------------------------------------

--
-- Structure de la table `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `description`
--

INSERT INTO `description` (`id`, `description`, `title`) VALUES
(1, 'Our consciousness continues to expand, illuminating possibilities where once we only saw limits. We will continue to bring big-brain thinking and next-level utilities to the project to keep our Tribe guessing and the Cronos ecosystem moving forward. Trust the process.', 'Novelty'),
(2, 'Creating an identity means not blending into the mass of NFT projects on Cronos. We have created an identity around this project for all Holders and it is the community that will defend and represent this identity to the rest!', 'Identity'),
(3, 'NFT’s allow a sense of digital identity and belonging, they attract similarly minded individuals who share a common goal and set of ideals but can come from very diverse backgrounds and locations. Transparency, vision, and communication are key to demonstrating to your community where the project is going and why they should be on board.', 'Community');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220314170851', '2022-07-11 18:54:38', 613),
('DoctrineMigrations\\Version20220315174341', '2022-07-11 18:54:39', 120),
('DoctrineMigrations\\Version20220316201921', '2022-07-11 18:54:39', 256),
('DoctrineMigrations\\Version20220711190218', '2022-07-11 19:02:23', 282),
('DoctrineMigrations\\Version20220711190533', '2022-07-11 19:05:36', 286),
('DoctrineMigrations\\Version20220711202532', '2022-07-11 20:25:37', 294),
('DoctrineMigrations\\Version20220712185007', '2022-07-12 18:50:12', 167);

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faq`
--

INSERT INTO `faq` (`id`, `question`, `response`) VALUES
(1, 'Why Cronos :', 'We chose the cronos blockchain because the community is really strong, and it is a stable blockchain that will go far in the future thanks to Crypto.com'),
(2, 'When :', 'The mint will be done at the end of July we hope'),
(3, 'Where :', 'Ebisu\'s Bay or our Website'),
(4, 'Mint is Over. How to join the trip ?', 'Ebisu\'s bay');

-- --------------------------------------------------------

--
-- Structure de la table `road_map`
--

CREATE TABLE `road_map` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `road_map`
--

INSERT INTO `road_map` (`id`, `title`, `date`, `description`) VALUES
(15, NULL, NULL, 'DAO'),
(16, NULL, NULL, 'Charity'),
(17, NULL, NULL, 'Top 5 Holders'),
(18, NULL, NULL, 'Investistment found'),
(19, NULL, NULL, 'Random Airdrop'),
(20, NULL, NULL, 'NFT Messaging'),
(21, NULL, NULL, 'Panda Hut'),
(22, NULL, NULL, 'Auction'),
(23, NULL, NULL, 'Roadmap 2.0');

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`id`, `picture`, `name`, `job`) VALUES
(6, 'bd32d5370648287f36ed3e527562abbd.png', 'Po', 'Founder'),
(7, '0bae2fcfca8efe564162cdc10c97ffd8.png', 'Jacky', 'Co founder'),
(8, '3f35bef7a54a4bcf1fe08d66b2d63224.png', 'Tikitak', 'Dev'),
(9, '8d54af5cbdbb7c5e3eafae850f932640.png', 'Smyte', 'Dev'),
(10, '0de4f0d69f1d2eb6d087a6c37dac4983.png', 'Boris', 'Community Manager'),
(11, 'a2e55108962eb5fb0fc9763c75611d5f.png', 'Algrx', 'Web developper');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'alexandre.grue@hotmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$0/SjAUmuNCcR8cZMj.sF1.K9em7vgxeTqRXusZCJQLZX73E6PE8GK');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `road_map`
--
ALTER TABLE `road_map`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `road_map`
--
ALTER TABLE `road_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
