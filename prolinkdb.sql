-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 03 sep. 2024 à 18:10
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `prolinkdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `legal_form` varchar(255) NOT NULL,
  `core_business` varchar(255) NOT NULL,
  `parent_company` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `activity_code` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `nif_pdf` varchar(255) DEFAULT NULL,
  `rc_pdf` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `company_name`, `legal_form`, `core_business`, `parent_company`, `country`, `registration_number`, `tax_id`, `website`, `address`, `activity_code`, `logo`, `nif_pdf`, `rc_pdf`, `created_at`, `updated_at`) VALUES
(2, 3, 'Uxo', 'Auto entrepreneur', 'Client', 'Uxo', 'Algérie', 'BEFJGJFJIDCks', NULL, 'https://medialgeria.com', 'Cité Zerhouni Mokhtar, villa 243, Route Nationale 24, Mohammadia Alger', 'vfvfv', 'logos/KQwLiko42vw2Ppr7U7kz3g5EzX4YbGDTMVsf6NaL.jpg', 'nif_pdfs/IUdS3axcitOobTRsKfBElTXCfW09IHIZrB5FI4oJ.pdf', 'rc_pdfs/b2hatovyeObeNPQtWfZlOmsgxdEf4ORVz4lImFOL.pdf', '2024-08-18 10:43:32', '2024-08-18 10:43:32'),
(3, 4, 'amel Benelhadj', 'Auto entrepreneur', 'Client', 'Moi meme', 'Algérie', 'BEFJGJFJIDCks', NULL, 'https://medialgeria.com', 'Cité Zerhouni Mokhtar, villa 243, Route Nationale 24, Mohammadia Alger', 'vfvfv', 'logos/fNMZR4WLxD57NxycZsCKkdDqZYbDKgWnHdj4YwGo.jpg', 'nif_pdfs/pNqeigVQGORz5JkX9qhtgip9xrU6YhLo5myfFRQY.pdf', 'rc_pdfs/Fnc6pOMZpiKaSfU6dSAGWUfglnz97tqvXHMdSYwA.pdf', '2024-08-18 17:39:24', '2024-08-18 17:39:24'),
(4, 5, 'amel Benelhadj', 'Auto entrepreneur', 'Client', 'Moi meme', 'Algérie', 'BEFJGJFJIDCks', NULL, 'https://medialgeria.com', 'Cité Zerhouni Mokhtar, villa 243, Route Nationale 24, Mohammadia Alger', 'vfvfv', 'logos/uhn3aDbz1GOp3Lzr9iPIMqIF4C6sSsoI9Bxekj8j.jpg', 'nif_pdfs/0KuoovNjxvBzpbI1uIXYsAygw0GV4gT6n1p1SVBi.pdf', 'rc_pdfs/gJienTX7SXNngJ9YfA7zp3FoGtFyXH9AY0OS5LcL.pdf', '2024-08-18 17:43:23', '2024-08-18 17:43:23');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2024_08_16_234054_create_companies_table', 3),
(7, '2024_08_17_193731_create_companies_table', 4),
(8, '2024_08_17_194516_create_companies_table', 5),
(9, '2024_08_17_194838_remove_acceptance_of_terms_column', 6),
(10, '2024_08_17_200040_add_phone_number_to_users_table', 7),
(11, '2024_08_17_200603_add_position_to_users_table', 8),
(12, '2024_08_18_112656_create_permission_tables', 9),
(13, '2024_08_19_203946_create_role_user_table', 10),
(14, '2024_08_19_204355_modify_roles_table', 11);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage users', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38'),
(2, 'manage company', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38'),
(3, 'manage departments', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38'),
(4, 'manage publications', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38'),
(5, 'manage subscriptions', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38'),
(6, 'view notifications', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38'),
(7, 'use messaging', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'YourAppName', '0b598fa1c7d04ffebda620374ea94fd641aae872a333d6b70d0e2bc728051d09', '[\"*\"]', NULL, NULL, '2024-08-10 22:59:57', '2024-08-10 22:59:57'),
(2, 'App\\Models\\User', 6, 'YourAppName', '706f703f5d62096ebc13f41834202a5f5ffb028fdbd59064b367f3d264587b36', '[\"*\"]', NULL, NULL, '2024-08-16 22:01:57', '2024-08-16 22:01:57'),
(3, 'App\\Models\\User', 6, 'YourAppName', '738d191e3914fa5fc334fec66f02fd490b4411b41f2250aa303065063af54b6d', '[\"*\"]', NULL, NULL, '2024-08-16 22:07:37', '2024-08-16 22:07:37'),
(4, 'App\\Models\\User', 7, 'YourAppName', '7e17af224c9d59563acfc14d76dd63d370c8663ac6d16e66957c62f0a62045f4', '[\"*\"]', NULL, NULL, '2024-08-17 19:08:05', '2024-08-17 19:08:05'),
(5, 'App\\Models\\User', 3, 'YourAppName', 'fd2a24fb5ce9ae1ba440195346e23788094320f5ab2db2ef52f396ba3642a075', '[\"*\"]', NULL, NULL, '2024-08-18 10:43:46', '2024-08-18 10:43:46'),
(6, 'App\\Models\\User', 3, 'YourAppName', '8d5e0df5a0f38b10a6dd10865e3f506d029aa119cf5c667c41fc7917fc0db9ff', '[\"*\"]', NULL, NULL, '2024-08-20 15:16:01', '2024-08-20 15:16:01'),
(7, 'App\\Models\\User', 3, 'YourAppName', '045065275d4d02c7998f6dad5bfee1d935964d88bbd3d87799d5f6ff22d8de34', '[\"*\"]', NULL, NULL, '2024-08-20 16:49:58', '2024-08-20 16:49:58'),
(8, 'App\\Models\\User', 3, 'YourAppName', '8a4d9b1188d2b1b8cf8c3d19ec312dd3c1eafaca0914dc33892e856f992a0177', '[\"*\"]', NULL, NULL, '2024-08-20 17:43:07', '2024-08-20 17:43:07'),
(9, 'App\\Models\\User', 3, 'YourAppName', 'b880f629200b6a1496c950dd61a4529a996a54f2d5e1962937f3512f7ef722d2', '[\"*\"]', NULL, NULL, '2024-08-20 18:48:27', '2024-08-20 18:48:27'),
(10, 'App\\Models\\User', 3, 'YourAppName', '5470acca2d38a94f3e9fa1c747df39774bac3896b71880cdc309cd6518141bf6', '[\"*\"]', NULL, NULL, '2024-08-20 19:18:15', '2024-08-20 19:18:15');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin entreprise', 'web', '2024-08-18 10:34:10', '2024-08-18 10:34:10'),
(2, 'admin technique', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38'),
(3, 'manager department', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38'),
(4, 'staff department', 'web', '2024-08-18 17:29:38', '2024-08-18 17:29:38');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4);

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone_number`, `position`) VALUES
(3, 'Amel Benelhadj', 'amel.benelhadj14@gmail.com', NULL, '$2y$12$cfisIchRERw5ejDeDNWet.pSF7gnl8vfmbaaZxvaS8Cs3L2qtlqYG', NULL, '2024-08-18 10:43:32', '2024-08-18 10:43:32', '+213553746921', 'Vente'),
(4, 'Amel Benelhadj', 'benlahtreche@gmail.com', NULL, '$2y$12$aS1bY2f0yAReB3TF96kcGetieaWRa4eWUsXyIpt3hJr6ypL9wy0lO', NULL, '2024-08-18 17:39:24', '2024-08-18 17:39:24', '+213553746921', 'Vente'),
(5, 'Amel Benelhadj', 'Amel@gmail.com', NULL, '$2y$12$LVd8x9DpSI/57FU4OT4QMe3NXDXfNnFFkhpLIZCZTFFoDYVztEnE.', NULL, '2024-08-18 17:43:23', '2024-08-18 17:43:23', '+213553746921', 'Vente');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
