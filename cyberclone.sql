-- -------------------------------------------------------------
-- TablePlus 4.6.4(414)
--
-- https://tableplus.com/
--
-- Database: cyberclone
-- Generation Time: 2022-05-05 19:06:14.7100
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `description`;
CREATE TABLE `description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `road_map`;
CREATE TABLE `road_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `about` (`id`, `description`) VALUES
(1, 'The collection aims to create a Crew of enthusiastic NFT collectors who want to take part in the adventure of building the largest NFT community on Cronos. Once the minting phase is over, the Cyber Clones will be available on the marketplace. Every purchase has a 5% royalties fee. For the first month, 4% will be for the DAO and 1% for the charity organizations. Subsequent months will be 3% for DAO, 1,5% Team, 0.5% Marketing.');

INSERT INTO `description` (`id`, `description`) VALUES
(1, 'CyberClone is a collection of 2000 unique and randomly generated');

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220314170851', '2022-03-14 18:14:10', 78),
('DoctrineMigrations\\Version20220315174341', '2022-03-15 18:43:48', 42),
('DoctrineMigrations\\Version20220316201921', '2022-03-16 21:19:33', 56),
('DoctrineMigrations\\Version20220317111357', '2022-03-17 12:14:06', 37);

INSERT INTO `faq` (`id`, `question`, `response`) VALUES
(1, 'Why Cronos?', 'We chose the Cronos blockchain, because it is a sustainable ecosystem with which we will be able to evolve, supported by the crypto.com organization that is growing rapidly.'),
(2, 'Why CyberClone ?', 'We chose this name because our NFTs are inspired by what humans and machines could do in the future, symbolizing power and accuracy.'),
(3, 'How much does one of those beautiful CyberClone cost ?', 'Price will be chosen a few days before minting goes live depending on CRO price.'),
(4, 'Mint is over, how to become a clone ?', 'You will have the possibility to become a clone by getting a Cyberclone on the partner marketplace (Ebisu’s Bay)'),
(5, 'How many Cyberclone were sold in the presale ?', 'There will be a maximum of 100 WL with a maximum of 5 mints per wallet');

INSERT INTO `road_map` (`id`, `title`, `date`, `description`) VALUES
(1, 'StoryTelling, Launch Discord & Website', 'Stage 1', NULL),
(2, 'Marketing / Partnership', 'Stage 2', 'Our goal is much more than to create a simple collection of NFTs, we want to create a real strong community so that everyone can help each other. So, we have reserved a budget for marketing and communication'),
(3, 'Mint of the 2000 CyberClone and list on available Marketplace', 'Stage 3', NULL),
(4, 'DAO', 'Stage 4', 'Foremost, what is a DAO ?\r\n\r\nDAO are like Internet-based businesses, collectively owned and managed by all their members. As in all businesses, there is built-in liquidity that no one can access without the approval of all members. Decisions are governed by proposals and votes to ensure that every member of the organization has access to the DAO.\r\n\r\nWhat are the advantages of a DAO for Cyber members?\r\n\r\nVoting rights for the future of the project\r\n\r\nA common portfolio where only the DAO community and the project administrators will be able to decide how to use the funds (CRO) for the future of the CyberClone.\r\n\r\nHow to participate in a DAO ?\r\n\r\nYou must have at least 1 CyberClone, if you have your CyberClone you will be eligible for the DAO (it does not have to be listed on a marketplace).\r\n\r\nTo make sure you have a CyberClone, we will set up a bot that will check every 24 hours if you have at least 1 CyberClone, if you sell it you will not be eligible for the DAO'),
(5, 'Staking', 'Stage 5', 'We are going to bring something new to stacking on Cronos, we want to create a real ecosystem with the future implementation of our token.\r\n\r\nWhy create a staking system with our token?\r\n\r\nWe want to reward the crew members with passive income that will allow them to access our ecosystem. The goal is to create a real token with an economy behind.\r\n\r\nWhat is the goal?\r\n\r\nTo create a stable economy around our project, to allow the crew member to earn passive income, to bring liquidity for the continuation of the project (DAO)'),
(6, 'Merchandising', 'Stage 6', 'The basis of a crew is to show that we belong by significant signs, that’s why we will launch a collection of exclusive clothing reserved for crew members to create a sign of belonging to the community'),
(7, 'Gen2 3D', 'Stage 7', 'All Genesis Collection holders will receive an airdrop from our second 3D collection. \r\n\r\nMore information to come'),
(8, 'Launch CyberClone app', 'Stage 8', 'We will create an exclusive IOS and Android application for all Cyberclone owners that will allow you to access a multitude of benefits'),
(9, 'Roadmap 2.0', 'Stage 9', 'More to come…');

INSERT INTO `team` (`id`, `picture`, `name`, `job`) VALUES
(1, '9e8b4657bea5e96d045e5a637b6d4282.jpg', 'Mimran', 'Founder'),
(2, 'cf0e9fee0f3b861d89540961e66c6b83.jpg', 'GOAT', 'Assistant'),
(3, '441e0783dc448529be4ae30bce8f9d20.jpg', 'Cesar', 'Marketing Manager'),
(4, '8ec117060b6467e2606258b28cebb4f6.jpg', 'AlGrx', 'Web Developer'),
(5, 'ed645d86364f6bf8e78954a62ba7e6b3.jpg', 'William', 'Designer'),
(6, '8767a1e758ae566ed13d3f3d19e171ce.jpg', 'Akapasah', 'Designer');

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(3, 'terapsplus@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$0/SjAUmuNCcR8cZMj.sF1.K9em7vgxeTqRXusZCJQLZX73E6PE8GK'),
(4, 'alexandre.grue@hotmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$0/SjAUmuNCcR8cZMj.sF1.K9em7vgxeTqRXusZCJQLZX73E6PE8GK');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;