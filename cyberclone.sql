-- -------------------------------------------------------------
-- TablePlus 4.6.4(414)
--
-- https://tableplus.com/
--
-- Database: cyberclone
-- Generation Time: 2022-06-18 12:05:35.4140
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Launch Discord & Website', 'Stage 1', 'stage1'),
(2, 'Marketing / Partnership', 'Stage 2', 'Our goal is much more than to create a simple collection of NFTs, we want to create a real strong community so that everyone can help each other. So, we have reserved a budget for marketing and communication'),
(3, 'Mint of the 2000 CyberClone and list on available Marketplace ebisu\'s bay !', 'Stage Mint', NULL),
(4, 'DAO', 'Stage 3', 'Foremost, what is a DAO ?\r\n\r\nDAO are like Internet-based businesses, collectively owned and managed by all their members. As in all businesses, there is built-in liquidity that no one can access without the approval of all members. Decisions are governed by proposals and votes to ensure that every member of the organization has access to the DAO.\r\n\r\nWhat are the advantages of a DAO for Cyber members?\r\n\r\nVoting rights for the future of the project\r\n\r\nA common portfolio where only the DAO community and the project administrators will be able to decide how to use the funds (CRO) for the future of the CyberClone.\r\n\r\nHow to participate in a DAO ?\r\n\r\nYou must have at least 1 CyberClone, if you have your CyberClone you will be eligible for the DAO (it does not have to be listed on a marketplace).\r\n\r\nTo make sure you have a CyberClone, we will set up a bot that will check every 24 hours if you have at least 1 CyberClone, if you sell it you will not be eligible for the DAO'),
(5, 'Staking', 'Stage 4', 'Tokenomics is under development and will soon be unveiled'),
(6, 'Raffle hosting', 'Stage 5', 'Create your own raffles from different projects on Cronos! Anyone will be able to create a raffle for a list of tokens.\r\n\r\nWe will charge a 5% commission (2.5% for CyberClone holders) on the proceeds, which will go into CyberClone’s cash flow for raffles and auctions.\r\n\r\nIf projects would like to have their token added as currency for auctions, contact the development team.\r\nYou will be able to create and participate in raffles soon.'),
(7, 'Swap NFTs', 'Stage 6', 'CyberSwap is going to be a peer-to-peer exchange service that allows you to exchange up to 6 NFT in one transaction and will allow you to include CRO in your exchange offer. Simply enter the address you want to trade with, select the CyberClone you want and make your offer.\r\n\r\nWe will then support as many projects as possible in our CyberSwap (You will need to have at least 1 CyberClone in your wallet to use CyberSwap)\r\n\r\nCyberSwap FAQ:\r\n- The NFT and CRO (if any) are withdrawn from an escrow account at the time of initiation.\r\n- The initiator will have to pay X CyberClone Token at the time of the transaction.\r\n- There will be a cancellation fee of X CyberClone Token.\r\n- No fee if the offer is rejected.'),
(8, 'Trading Post', 'Stage 7', 'Have you always wanted a place where you can mark NFTs in your den to trade?\r\nWould you be willing to trade your CyberClone for 4 NFTs? Or maybe you want to see if any Mad Meerkat owners would be open to a trade? Well, this place is coming soon!\r\n\r\nThis is the Trade Post: a way to list NFTs to trade with other users. All you’ll need to do is go to your den, click on the NFT and list it with a little note about what you’re looking for.\r\nIt’s that easy.\r\n\r\nYou’ll be able to see all the verified collection listings in the Trading Post, as well as their contact information. You can even make an offer directly from the listing using our Ding! service.\r\n\r\nYou will need to have at least 1 CyberClone to have access.'),
(9, 'NFT Messaging', 'Stage 8', 'Have you ever seen a Clone so beautiful that you knew you had to have it, but you had no way to get in touch with the owner of the Clone? Ding Clone solves this problem.\r\n\r\nDing is a messaging service that will allow you to send NFT messages to any address/portfolio linked to .cro or twitter. It will cost X CyberClone Token. CyberClone holders will be able to add custom backgrounds in your ding.\r\n\r\n(It’s a smart idea to leave a discord or twitter handle in your message so the person you’re trying to get in touch with can get back to you, but if you forget, every Den has a mailbox section where all your dings will be showcased with a quick reply button that lets you send a ding right back to the original sender.\r\n\r\nIf you don’t have a den, never fear, your wallet address still shows up in the dings metadata.)\r\n\r\nYou will need to have at least 1 CyberClone to have access.'),
(10, 'Gen2 3D', 'Stage 9', 'All Genesis Collection holders will receive an airdrop from our second 3D collection.\nMore information to come.'),
(11, 'Merchandising', 'Stage 10', 'The basis of a team is to show that we belong by significant signs, that’s why we will launch a collection of exclusive clothing reserved for Clone members to create a sign of belonging to the community.'),
(12, 'Launch CyberClone app', 'Stage 11', 'We will create an exclusive IOS and Android application for all Cyberclone owners that will allow you to access a multitude of benefits.\r\n\r\nFor the future, we want to create an application for Cyberclone members :\r\n\r\n-  This will allow the exchange between gangs.\r\n-  Interacting with the community.\r\n-  Mini games will also be present, such as Poker, Machine a cro… A lottery will be organized every week to win advantages and big prizes.\r\n-  You can also exchange your Clone, your ideas.\r\n-  Contests will also be prepared to win prizes.\r\n-  You will be able to win achievements! In your collection more you have Cyberclone more your title will be high! it will allow the collector to have precious titles which will allow a good number of advantages.\r\n\r\nAnd the little extra ?\r\n\r\n-  There will also be a section hunting trophy! in which will be arranged your nft in 3D! and contemplate your collection!'),
(13, 'And after? Roadmap 2.0 …', 'Stage 12', NULL);

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