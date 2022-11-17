-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 08:59 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pnapna_biz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `modules` longtext DEFAULT NULL,
  `module_price` varchar(100) DEFAULT NULL,
  `base_price` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `billing_address` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `best_way_contact` varchar(255) NOT NULL,
  `variant_name` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa fa-home',
  `color` varchar(50) NOT NULL DEFAULT '#00b5a4',
  `description` text NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `rating` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `variant_id`, `name`, `added_by`, `slug`, `icon`, `color`, `description`, `price`, `status`, `rating`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'Private Chat', NULL, 'privateChat', 'fa fa-comments', '#2196f3', '', '5', 1, 3, NULL, '2021-03-27 11:10:55', NULL),
(2, 2, 'WhatsApp Chat', NULL, 'whatsapp', 'fab fa-whatsapp', '#00e676', '', '5', 1, 2, NULL, '2021-03-27 11:10:55', NULL),
(3, 2, 'Zoom Meeting Manager', NULL, 'zoomMeet', 'fa fa-phone', '#42c7ff', '', '5', 1, 3, NULL, '2021-03-27 11:10:55', NULL),
(4, 2, 'Telegram Chat', NULL, 'telegramChat', 'fab fa-telegram', '#1e92c3', '', '5', 1, 1, NULL, '2021-03-27 11:10:55', NULL),
(5, 2, 'Mailbox', NULL, 'mailbox', 'fa fa-envelope-square', '#005598', '', '5', 1, 4, NULL, '2021-03-27 11:10:55', NULL),
(6, 2, 'WhiteBoard', NULL, 'whiteBoard', 'fa fa-clone', '#565656', '', '5', 1, 2, NULL, '2021-03-27 11:10:55', NULL),
(7, 2, 'Quickbooks', NULL, 'quickbooks', 'fa fa-book', '#2b9b1b', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(8, 2, 'Human Resources Management', NULL, 'hrm', 'fa fa-user-circle', '#607d8b', '', '5', 1, 4, NULL, '2021-03-27 11:10:55', NULL),
(9, 2, 'Appointly', NULL, 'appointly', 'fa fa-calendar-check', '#006158', '', '5', 1, 4, NULL, '2021-03-27 11:10:55', NULL),
(10, 2, 'Account Planning', NULL, 'accPlanning', 'fa fa-address-card', '#a78a80', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(11, 2, 'Goals', NULL, 'goals', 'fa fa-bullseye', '#ff7245', '', '5', 1, 2, NULL, '2021-03-27 11:10:55', NULL),
(12, 2, 'Mention', NULL, 'mention', 'fa fa-tag', '#00b5a4', '', '5', 1, 3, NULL, '2021-03-27 11:10:55', NULL),
(13, 2, 'Menu Setup', NULL, 'menuSetup', 'fa fa-bars', '#3e3e3e', '', '5', 1, 3, NULL, '2021-03-27 11:10:55', NULL),
(14, 2, 'Email Builder', NULL, 'emailBuilder', 'fa fa-envelope', '#ff9800', '', '5', 1, 2, NULL, '2021-03-27 11:10:55', NULL),
(15, 2, 'vWork247 Shop', NULL, 'shop', 'fa fa-shopping-cart', '#da6a90', '', '5', 1, 2, NULL, '2021-03-27 11:10:55', NULL),
(16, 2, 'Recruitment', NULL, 'recruitment', 'fas fa-rss', '#397592', '', '5', 1, 3, NULL, '2021-03-27 11:10:55', NULL),
(17, 2, 'Theme Style', NULL, 'themeStyle', 'fab fa-themeisle', '#6623dc', '', '5', 1, 2, NULL, '2021-03-27 11:10:55', NULL),
(18, 2, 'Timesheet Management', NULL, 'timesheet', 'fa fa-user-circle', '#795548', '', '5', 1, 2, NULL, '2021-03-27 11:10:55', NULL),
(19, 2, 'Custom Email & SMS Notifications', NULL, 'customEmail', 'fa fa-bell', '#ff5722', '', '5', 1, 2, NULL, '2021-03-27 11:10:55', NULL),
(20, 2, 'Database Backup', NULL, 'dbBackup', 'fa fa-database', '#505050', '', '5', 1, 3, NULL, '2021-03-27 11:10:55', NULL),
(21, 2, 'Zapier', NULL, 'zapier', 'fa fa-star', '#ff4a00', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(22, 0, 'Analytic', NULL, 'analytic', 'fa fa-chart-bar', '#1b61d1', '', '5', 0, 2, NULL, '2021-03-27 11:10:55', NULL),
(23, 0, 'Mass Mail', NULL, 'massmail', 'fa fa-envelope', '#ad51a0', '', '5', 0, 3, NULL, '2021-03-27 11:10:55', NULL),
(24, 0, 'Websites', NULL, 'websites', 'fab fa-wordpress-simple', '#ff4a00', '', '5', 0, 3, NULL, '2021-03-27 11:10:55', NULL),
(25, 0, 'E Sign', NULL, 'esign', 'fa fa-pen-fancy', '#7cd44c', '', '5', 0, 3, NULL, '2021-03-27 11:10:55', NULL),
(26, 0, 'Paper Mail', NULL, 'papermail', 'fa fa-paper-plane', '#e3db46', '', '5', 0, 2, NULL, '2021-03-27 11:10:55', NULL),
(27, 0, 'E Monitoring', NULL, 'emonitoring', 'fa fa-heartbeat', '#de0735', '', '5', 0, 2, NULL, '2021-03-27 11:10:55', NULL),
(28, 0, 'Desktop', NULL, 'desktop', 'fa fa-desktop', '#7731f7', '', '5', 0, 2, NULL, '2021-03-27 11:10:55', NULL),
(29, 0, 'Forms', NULL, 'forms', 'fab fa-wpforms', '#af97db', '', '5', 0, 2, NULL, '2021-03-27 11:10:55', NULL),
(30, 0, 'Templates', NULL, 'templates', 'fa fa-atom', '#e39f5b', '', '5', 0, 3, NULL, '2021-03-27 11:10:55', NULL),
(31, 0, 'Cloud', NULL, 'cloud', 'fa fa-cloud', '#2bb1ff', '', '5', 0, 3, NULL, '2021-03-27 11:10:55', NULL),
(32, 0, 'Help Desk', NULL, 'helpdesk', 'fa fa-hands-helping', '#00b865', '', '5', 0, 3, NULL, '2021-03-27 11:10:55', NULL),
(33, 0, 'SEO', NULL, 'seo', 'fa fa-mail-bulk', '#e39700', '', '5', 0, 3, NULL, '2021-03-27 11:10:55', NULL),
(34, 0, 'E Demy', NULL, 'edemy', 'fa fa-book-reader', '#7700ed', '', '5', 0, 2, NULL, '2021-03-27 11:10:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `business_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `payment_gross` float(10,2) DEFAULT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `item_details` longtext DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `verify_sign` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `plan_price` varchar(255) NOT NULL,
  `variant_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subdomains`
--

CREATE TABLE `subdomains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `expire_date` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `verified_at` varchar(20) DEFAULT NULL,
  `account_name` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `shipping_address` text NOT NULL,
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_modules`
--

CREATE TABLE `user_modules` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(11) NOT NULL,
  `variant_name` varchar(255) NOT NULL,
  `biz_link` varchar(255) NOT NULL,
  `app_link` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL DEFAULT 'activateAccount',
  `requestSetUp` varchar(100) NOT NULL DEFAULT 'activateAccount',
  `core_price` varchar(10) NOT NULL DEFAULT '99',
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT 'fa fa-check-circle',
  `color` varchar(100) NOT NULL DEFAULT '#0d6efd',
  `status` int(11) NOT NULL DEFAULT 0,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `variant_name`, `biz_link`, `app_link`, `slug`, `requestSetUp`, `core_price`, `free`, `description`, `icon`, `color`, `status`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Free For Life', 'core.pnapna.com', 'core.pnapna.in', 'core', 'activateAccount', '0', 1, '', 'fab fa-superpowers', '#0eb58e', 1, 0, NULL, NULL, NULL),
(2, 'Lite BIZ', 'lightbiz.pnapna.com', 'pnapnalitebiz.com', 'litebiz', 'activateAccount', '99', 0, '', 'fa fa-lightbulb-o', '#ad0353', 1, 0, NULL, NULL, NULL),
(3, 'Cleaning', 'cleaning.pnapna.com', 'pnapnacleaning.com', 'cleaning', 'activateAccount', '99', 0, '', 'fa fa-columns', '#4c75d4', 1, 0, NULL, NULL, NULL),
(8, 'Plumbing', 'plumbing.pnapna.com', 'plumbing.pnapna.in', 'plumbing', 'activateAccount', '99', 0, '', 'fa fa-cogs', '#ff8400', 2, 0, NULL, NULL, NULL),
(11, 'HVAC', 'hvac.pnapna.com', 'hvac.pnapna.in', 'hvac', 'activateAccount', '99', 0, '', 'fa fa-sun-o', '#99c251', 0, 0, NULL, NULL, NULL),
(19, 'Inspections', 'inspections.pnapna.com', 'inspections.pnapna.in', 'inspections', 'activateAccount', '99', 0, '', 'fa fa-search', '#8cffff', 0, 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdomains`
--
ALTER TABLE `subdomains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_modules`
--
ALTER TABLE `user_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdomains`
--
ALTER TABLE `subdomains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_modules`
--
ALTER TABLE `user_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
