-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 23 mai 2023 à 23:13
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `biowebsite`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'Hair'),
(2, 'Body'),
(3, 'Face'),
(7, 'Makeup');

-- --------------------------------------------------------

--
-- Structure de la table `category_seq`
--

CREATE TABLE `category_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Déchargement des données de la table `category_seq`
--

INSERT INTO `category_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(50001, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(16);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `description`, `image_name`, `name`, `price`, `category_id`) VALUES
(1, 'REPAIRING HAIR MASK: helps repair damaged hair to smoothness whilst providing deep nourishment. For naturally soft & glowing hair', 'HerbalEssenceMask.jpg', 'Mask Argan Oil Repair, 450ml.', 200, 1),
(3, 'Nourishing Banana Hair Mask Treatment experience up to 4 times less breakage after just one use , and it has an incredibly melting texture to instantly absorb into hair with no weigh down.', 'banane.jpeg', 'Food Banana Hair Mask 390ml', 120, 1),
(6, 'INTENSIVELY HYDRATES DRY SKIN: the ultimate moisturizer for dry, rough skin, this rich, botanical formula transforms skin to appear more luminous\r\nMAXIMUM COVERAGE: just a small dab can nurture skin, ensuring every part of your body is hydrated and moistu', 'Weleda.jpg', 'Weleda Skin Food Original', 170, 2),
(8, 'Lengthening Mascara: This volumizing washable mascara formula is infused with bamboo extract and fibers for long, full and lightweight lashes that don\'t flake or smudge\r\n', '71e5-Rxbp7L._SL1500_.jpg', 'Maybelline Lash Sensational Sky High', 90, 7),
(52, 'Deep conditioning creamy hair mask for dull, stressed out hair Vegan. Curly Girl Method compatible and suitable for colour-treated and relaxed hair.', 'Coconutcream.jpg', 'Hair Mask -BB Naturals Coconut Cream Deep Conditioning 250 ML', 220, 1),
(102, 'Dehydrated skin doesn\'t equal oily skin. Here\'s how to deal with excess sebum and shine, according to two top dermatologists.', 'WhatsApp Image 2023-05-21 at 17.44.49.jpg', 'The Ordinary Niacinamide 10% + Zinc 1% 30ml', 160, 3),
(103, 'If you\'re prone to acne, dullness, and hyperpigmentation, here\'s a prime pick for you. The itty-bitty granules in Bioderma\'s Exfoliating Gel physically exfoliate until they burst with salicylic and glycolic acid, which chemically exfoliate away impurities', 'SebiumBIODERMA.jpg', 'Bioderma Sebium Exfoliating Gel', 150, 3);

-- --------------------------------------------------------

--
-- Structure de la table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Déchargement des données de la table `product_seq`
--

INSERT INTO `product_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(50001, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `roles_seq`
--

CREATE TABLE `roles_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Déchargement des données de la table `roles_seq`
--

INSERT INTO `roles_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`) VALUES
(1, 'admin@gmail.com', 'Admin', 'ensah', '$2a$10$moTjfAVBJzNS32q7NPPVh.iAGDbZSkjZJBkdxT5ZLKQ3R1Vh/y9Fi'),
(4, 'sanae@gmail.com', 'sanae', 'errahimi', '$2a$10$7gkxXV6Ccq28Y02XXIniLuQDdiCn6804r7nuQ/2CxnbsFFJyGmmJK'),
(5, 'meriyemelhajoui@gmail.com', 'meriyem', 'El hajoui', '$2a$10$UbKsPYR6KTmH05TThCDEYOgR5gWlyd87dHx4iEvS1UdtbluRPXF7S'),
(9, 'imane@gmail.com', 'imane', 'elhajoui', '$2a$10$wkVNo1w6WLF3XrcQDwLy5udqqbDN0tWzIfbOo77iWA1Rgf9GwFgyS'),
(13, 'hiba@gmail.com', 'hiba', 'habbouch', '$2a$10$8TNzQmKCWcp.hGAMevQd1urLUirXzZlCOhFHm1IP6Tx1wf4oxhhqW'),
(14, 'rimajabri@gmail.com', 'rima', 'jabri', '$2a$10$TpAYbJ3RVw01d6V1R4VGmeFZKE/D0DQR5QvnEd69aVNfv1No/gmQ6');

-- --------------------------------------------------------

--
-- Structure de la table `users_seq`
--

CREATE TABLE `users_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Déchargement des données de la table `users_seq`
--

INSERT INTO `users_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(4, 2),
(5, 2),
(9, 2),
(13, 2),
(14, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Index pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`),
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Contraintes pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKt7e7djp752sqn6w22i6ocqy6q` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
