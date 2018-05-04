-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2018 at 10:12 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'mobile', 'test1', NULL, NULL),
(2, 'network', 'test2', NULL, NULL),
(3, 'science', 'test3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `body`, `created_at`, `updated_at`, `user_id`) VALUES
(9, 9, 'Amazing !', '2018-05-04 06:07:20', '2018-05-04 06:07:20', 10),
(10, 12, 'Amazing !', '2018-05-04 06:07:39', '2018-05-04 06:07:39', 10),
(11, 9, 'Great !!!', '2018-05-04 06:08:12', '2018-05-04 06:08:12', 9),
(12, 12, 'Great !!!', '2018-05-04 06:08:23', '2018-05-04 06:08:23', 9),
(13, 13, 'Great !!!', '2018-05-04 06:08:34', '2018-05-04 06:08:34', 9),
(14, 9, 'Wow', '2018-05-04 06:08:59', '2018-05-04 06:08:59', 10),
(15, 13, 'Wow', '2018-05-04 06:09:11', '2018-05-04 06:09:11', 10),
(16, 12, 'Wow', '2018-05-04 06:09:29', '2018-05-04 06:09:29', 10),
(17, 9, 'thanks', '2018-05-04 06:10:17', '2018-05-04 06:10:17', 5),
(18, 12, 'thanks', '2018-05-04 06:10:30', '2018-05-04 06:10:30', 5),
(19, 13, 'thanks', '2018-05-04 06:10:41', '2018-05-04 06:10:41', 5),
(20, 9, 'Not at all', '2018-05-04 06:11:12', '2018-05-04 06:11:12', 5),
(21, 12, 'Not at all', '2018-05-04 06:11:22', '2018-05-04 06:11:22', 5),
(22, 13, 'Not at all', '2018-05-04 06:11:34', '2018-05-04 06:11:34', 5);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `like`, `created_at`, `updated_at`) VALUES
(75, 5, 9, 1, '2018-05-04 06:02:19', '2018-05-04 06:02:19'),
(76, 5, 11, 0, '2018-05-04 06:03:49', '2018-05-04 06:03:49'),
(77, 5, 12, 0, '2018-05-04 06:04:43', '2018-05-04 06:04:43'),
(78, 5, 13, 1, '2018-05-04 06:05:28', '2018-05-04 06:05:28'),
(79, 9, 9, 1, '2018-05-04 06:05:54', '2018-05-04 06:05:54'),
(80, 9, 12, 1, '2018-05-04 06:05:57', '2018-05-04 06:05:57'),
(81, 9, 13, 1, '2018-05-04 06:06:00', '2018-05-04 06:06:00'),
(82, 10, 9, 0, '2018-05-04 06:06:58', '2018-05-04 06:06:58'),
(83, 10, 12, 1, '2018-05-04 06:07:00', '2018-05-04 06:07:00'),
(84, 10, 13, 1, '2018-05-04 06:07:03', '2018-05-04 06:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_27_045255_create_posts_table', 1),
(5, '2018_04_28_072425_add_urls_to_posts', 2),
(6, '2018_04_28_230859_create_comments_table', 3),
(7, '2018_04_29_011200_create_categories_table', 4),
(8, '2018_04_29_011708_add_category_id_to_posts', 5),
(9, '2018_04_30_003333_create_roles_table', 6),
(10, '2018_04_30_003728_create_user_role_table', 7),
(11, '2018_05_01_074543_create_likes_table', 8),
(12, '2018_05_03_104713_add_user_id_to_comments', 9),
(13, '2018_05_04_065125_create_settings_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `urls` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `urls`, `category_id`) VALUES
(9, 'test', 'test test test test test test test test test test test', '2018-05-04 06:02:00', '2018-05-04 06:02:00', '1525420920.jpg', 1),
(12, 'test2', 'test2 test2 test2 test2 test2 test2 test2 test2', '2018-05-04 06:04:31', '2018-05-04 06:04:31', '1525421071.jpg', 2),
(13, 'test3', 'test3 test3 test3 test3 test3 test3 test3 test3', '2018-05-04 06:05:17', '2018-05-04 06:05:17', '1525421117.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'this is Admin', NULL, NULL),
(2, 'Editor', 'this is Editor', NULL, NULL),
(3, 'User', 'this is user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'stop_comment', '0', '', 5, NULL, NULL),
(2, 'stop_register', '0', '', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'admin', 'admin@admin.com', '$2y$10$nYUBDXI6MBbVqnEz25GGWusZ64ehvQEFZgqkNth1T7csComkF1yTO', 'jzBjqCBQQdJtJFbTnQ8R16fMLIXKArxF0XLi8Ze9GUF7m7zJvuzvRa7oMEhT', '2018-04-29 03:40:15', '2018-04-29 03:40:15'),
(9, 'aeditor', 'editor@editor.com', '$2y$10$Yw4oVwEeTpEbZVHI677nP.OxFYN1eK5ZvC7vBvynLEDe9WUmZuHFe', '453GGbaSEZ2T3kB5pAgqESGinzzdlJkzPcAifuBMpxfgGDj6gexK4WIx6YCT', '2018-05-04 06:05:50', '2018-05-04 06:05:50'),
(10, 'user', 'user@user.com', '$2y$10$ujyoU1CIifiEkz93UdyyFeTYhRLXWmjPIQ2ooCLZ4kWBVqJSV56Cu', 'WCpKpXhDg1OQz9cVLOaKfPiSQQjI0Jkvdj4R6BHT0brAhhceJlxb58g1Z0Oe', '2018-05-04 06:06:47', '2018-05-04 06:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`) VALUES
(1, 5, 1),
(23, 6, 3),
(24, 6, 2),
(25, 8, 2),
(29, 9, 2),
(30, 10, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
