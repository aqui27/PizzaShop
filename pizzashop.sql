-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2023 at 06:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', '2023-10-25 17:15:41', '2023-10-25 17:15:41'),
(2, 'Drinks', '2023-10-25 17:15:51', '2023-10-25 17:15:51'),
(3, 'Burger', '2023-10-25 17:15:58', '2023-10-25 17:15:58'),
(4, 'Pasta', '2023-10-25 17:16:20', '2023-10-25 17:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_10_22_010427_create_sessions_table', 1),
(8, '2023_10_22_010524_create_sessions_table', 2),
(9, '2023_10_22_083533_create_sessions_table', 3),
(10, '2023_10_23_020913_create_categories_table', 3),
(11, '2023_10_23_151203_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Chicken Caprese', 'Tender grilled chicken breast topped with ripe tomatoes, fresh mozzarella, basil, and balsamic glaze, creating a delightful Chicken Caprese masterpiece.', '1698287865.jpg', 'Pizza', '20', '499', NULL, '2023-10-25 17:27:38', '2023-10-25 18:37:45'),
(2, 'Pepperoni Pizza', 'Our Pepperoni Pizza is a testament to the enduring popularity of this beloved classic. Crafted with care and precision, it features a perfect blend of zesty tomato sauce, generous layers of premium mozzarella cheese, and a mouthwatering array of pepperoni slices.', '1698287888.jpg', 'Pizza', '20', '399', NULL, '2023-10-25 18:33:04', '2023-10-25 18:38:08'),
(3, 'Pizza Di Mare', 'Dive into the ocean of flavors with our Frutti Di Mare Pizza. This Italian classic is a seafood lover\'s dream come true. Our signature crust is generously topped with a delectable combination of fresh and succulent seafood, including shrimp, mussels, and calamari, all swimming in a rich, flavorful tomato sauce.', '1698287834.jpg', 'Pizza', '20', '299', NULL, '2023-10-25 18:36:26', '2023-10-25 18:37:14'),
(4, 'Cheese Burger', 'The Cheese Burger is a timeless classic that never goes out of style. Our juicy, perfectly grilled beef patty is generously topped with a slice of melty cheese, resulting in a harmonious blend of savory and creamy flavors. It\'s a satisfying indulgence that\'s bound to please any burger enthusiast.', '1698288980.jpg', 'Burger', '20', '79', NULL, '2023-10-25 18:56:21', '2023-10-25 18:56:21'),
(5, 'Mushroom Burger', 'Our Mushroom Burger is a delightful twist on the traditional burger. Featuring a succulent beef patty, it\'s elevated with a savory sautéed mushroom medley. The earthy, umami-rich mushrooms add a depth of flavor that complements the juicy patty, creating a burger experience that\'s both hearty and gourmet.', '1698289060.jpg', 'Burger', '20', '89', NULL, '2023-10-25 18:57:40', '2023-10-25 18:57:40'),
(6, 'Garden Burger', 'The Garden Burger is a wholesome and flavorful option for those seeking a meatless alternative. Our house-made veggie patty, packed with fresh vegetables and hearty grains, is served on a soft bun. Topped with crisp lettuce, ripe tomatoes, and a savory sauce, it\'s a plant-based delight that satisfies your taste buds and your appetite.', '1698289117.jpeg', 'Burger', '200', '99', NULL, '2023-10-25 18:58:37', '2023-10-25 18:58:37'),
(7, 'Masala Pasta', 'Our Masala Pasta is a fusion of Italian and Indian flavors, creating a unique and spicy twist on the traditional pasta. Al dente pasta is tossed in a rich, aromatic masala sauce, featuring a medley of spices, herbs, and vegetables. It\'s a flavorful journey that brings together the best of both culinary worlds.', '1698290231.jpg', 'Pasta', '56', '299', NULL, '2023-10-25 19:17:12', '2023-10-25 19:17:12'),
(8, 'Spaghetti Alle Vongole', 'Spaghetti Alle Vongole is a seafood lover\'s dream. This Italian classic combines perfectly cooked spaghetti with fresh clams, garlic, white wine, and a hint of chili flakes. It\'s a taste of the Mediterranean coast that\'s both elegant and delicious.', '1698290302.jpg', 'Pasta', '67', '299', NULL, '2023-10-25 19:18:22', '2023-10-25 19:18:22'),
(9, 'Spaghetti Bolognese', 'Our Spaghetti Bolognese is a hearty and comforting dish. Al dente spaghetti is generously coated with a rich, slow-cooked Bolognese sauce, featuring a blend of ground meat, tomatoes, and aromatic herbs. It\'s a timeless Italian favorite that promises a satisfying and flavorful dining experience.', '1698290342.jpg', 'Pasta', '78', '299', NULL, '2023-10-25 19:19:02', '2023-10-25 19:19:02'),
(10, 'Lemon Juice', 'Our Lemon Juice is a thirst-quenching delight. Made from freshly squeezed lemons, it delivers a perfect balance of sweet and tangy. With a refreshing citrus punch, it\'s a go-to choice for those seeking a revitalizing and zesty beverage.', '1698290785.jpg', 'Drinks', '29', '39', NULL, '2023-10-25 19:26:25', '2023-10-25 19:26:25'),
(11, 'Pineapple Juice', 'Our Pineapple Juice is a tropical escape in a glass. It\'s a pure, naturally sweet concoction that captures the essence of ripe pineapples. Sipping on this juice is like taking a mini-vacation to a sun-soaked island, making it a delightful choice for those craving a taste of the tropics.', '1698290860.jpg', 'Drinks', '56', '49', NULL, '2023-10-25 19:27:40', '2023-10-25 19:27:40'),
(12, 'Soda Drinks', 'Our Soda Drinks selection is a bubbly medley of options that cater to all tastes. From classic colas to fruit-infused varieties, these soda drinks offer effervescence and sweetness in every sip. Whether you\'re looking for a fizzy refreshment or a sugary soda fix, our selection ensures there\'s something for everyone\'s thirst and craving.', '1698290901.jpg', 'Drinks', '78', '49', NULL, '2023-10-25 19:28:21', '2023-10-25 19:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BdqGHwKSF04ktlcvDOoxOn91pBXfGGt9VxN2wcS1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.47', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnp4TzBpT2dxeGVsQndHZnJKZjdFc1I4dnMzeDlHeGJmeDNwVk5NbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fX0=', 1698293291);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'KHAMERRON', 'admin@gmail.com', '1', '1234567898', 'Nahfkherhrg', NULL, '$2y$10$6SUUYOYGAhOVDo2qeSfSB.xnmrkP6eVucBjDWLi61oms6li.jJPFi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-25 17:13:43', '2023-10-25 17:13:43'),
(2, 'Elena', 'user@gmail.com', '0', '3452347697', 'Nabua Camarines Sur', NULL, '$2y$10$KKwgx21XdeC.7XGtEcIsHOTc1zjIyY6VDxHXykrxOjnXI4kveSYUy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-25 19:38:40', '2023-10-25 19:38:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
