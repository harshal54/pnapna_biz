-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 08:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

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

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fname`, `lname`, `email`, `password`, `image`, `phone`, `city`, `country`, `pin`, `address`, `user_role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prashant', 'Yadav', 'incuberprashant@gmail.com', '4bf407ecf5618636112b8bd6b69b1b44', 'assets/uploads/Admin/Admin30671616495185.jpg', '7610001077', 'jaipur', 'India', '302031', 'jaipur', '1', '2021-03-22 05:34:30', '2021-03-30 04:40:13', NULL),
(2, 'Dilkhush', 'Yadav', 'incuberdilkhush@gmail.com', '4bf407ecf5618636112b8bd6b69b1b44', 'assets/uploads/Admin/admin.jpg', '9829012345', 'jaipur', 'India', '302031', 'jaipur', 'incuberprashant@gmail.com', '2021-03-22 05:35:39', '2021-03-23 00:06:55', NULL);

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

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `modules`, `module_price`, `base_price`, `total_price`, `token`, `status`, `billing_address`, `created_at`, `updated_at`) VALUES
(1, 1, 'Add On Modules', 'null', '295', NULL, '295', 'UI1eLJAqBgopz0EHIgxudrlQLU1YFgGoU', 0, NULL, '2021-07-26 11:18:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `added_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Plumbing', 'plumbing', 1, 1, '2021-07-22 23:35:32', '2021-07-23 00:02:37', NULL),
(2, 'Cleaning', 'cleaning', 1, 1, '2021-07-22 23:36:09', '2021-07-23 00:14:24', '2021-07-23 05:44:24'),
(3, 'demo', 'demo', 1, 1, '2021-07-22 23:38:07', '2021-07-22 23:38:07', NULL),
(4, 't', 't', 1, 0, '2021-07-22 23:39:52', '2021-07-23 00:02:41', NULL),
(5, 'Plumbing', 'plumbing', 1, 0, '2021-07-23 00:13:07', '2021-07-23 00:13:07', NULL),
(6, 'qqqqqqqq', '', 0, 0, NULL, NULL, NULL),
(7, 'demo123', '', 0, 0, NULL, NULL, NULL),
(8, 'demo432', '', 0, 0, NULL, NULL, NULL),
(9, 'category', '', 0, 0, NULL, NULL, NULL),
(10, 'qwertyu', '', 0, 0, NULL, NULL, NULL);

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
  `proposed_industry` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `name`, `email`, `phone`, `subject`, `message`, `best_way_contact`, `variant_name`, `proposed_industry`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, '', 'athinjofs@gmail.com', '', '', 'ghvbn cdvbmjkcvbmjggbn  gfhbn ghbn', '', 0, 'inspection', 0, NULL, NULL, NULL),
(2, NULL, '', 'athinjofs@gmail.com', '', '', 'ghvbn cdvbmjkcvbmjggbn  gfhbn ghbn', '', 0, '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'USA', 1, '2021-07-23 00:30:02', '2021-07-23 00:31:35', NULL),
(2, 'Canada', 1, '2021-07-23 00:31:41', '2021-07-23 00:31:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_chat`
--

CREATE TABLE `marketplace_chat` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplace_chat`
--

INSERT INTO `marketplace_chat` (`id`, `project_id`, `sender_id`, `reciver_id`, `message`, `created_at`) VALUES
(1, 1, 2, 1, 'hello', '16-August-2021'),
(2, 1, 1, 2, 'heya', '16-August-2021'),
(3, 1, 1, 2, 'all well', '16-August-2021'),
(4, 1, 2, 1, 'yes', '16-August-2021'),
(5, 1, 2, 1, 'hiii', '16-August-2021');

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_payment`
--

CREATE TABLE `marketplace_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_details` varchar(255) NOT NULL,
  `pay_date` varchar(255) NOT NULL,
  `post_project` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplace_payment`
--

INSERT INTO `marketplace_payment` (`id`, `user_id`, `payment_details`, `pay_date`, `post_project`) VALUES
(1, 1, 'free', '2021-08-16', '3');

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_project`
--

CREATE TABLE `marketplace_project` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT NULL,
  `posted` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplace_project`
--

INSERT INTO `marketplace_project` (`id`, `user_id`, `heading`, `budget`, `location`, `description`, `skill`, `category`, `address`, `city`, `state`, `zip_code`, `status`, `payment_id`, `posted`) VALUES
(1, 1, 'MARKETING', '2', '1', 'demo', '1', '3', 'Ridhi Sidhi Circle, Surya Nagar, Gopal Pura Mode, Jaipur, Rajasthan', '', '', '', 0, 1, '16-August-2021'),
(2, 1, 'MARKETING', '1', '2', 'asdsadsa', '1', '1', 'Ridhi Sidhi Circle, Surya Nagar, Gopal Pura Mode, Jaipur, Rajasthaasdan', 'Jaipuraaa', 'rajasthanaaa', '302031111', 0, 1, '17-August-2021'),
(3, 1, 'MARKETING', '2', '1', 'demo', '1', '3', 'Ridhi Sidhi Circle, Surya Nagar, Gopal Pura Mode, Jaipur, Rajasthan', '', '', '', 0, 1, '16-August-2021'),
(4, 1, 'MARKETING', '1', '2', 'asdsadsa', '1', '1', 'Ridhi Sidhi Circle, Surya Nagar, Gopal Pura Mode, Jaipur, Rajasthaasdan', 'Jaipuraaa', 'rajasthanaaa', '302031111', 0, 1, '17-August-2021'),
(5, 1, 'MARKETING', '2', '1', 'demo', '1', '3', 'Ridhi Sidhi Circle, Surya Nagar, Gopal Pura Mode, Jaipur, Rajasthan', '', '', '', 0, 1, '16-August-2021'),
(6, 1, 'MARKETING', '1', '2', 'asdsadsa', '1', '1', 'Ridhi Sidhi Circle, Surya Nagar, Gopal Pura Mode, Jaipur, Rajasthaasdan', 'Jaipuraaa', 'rajasthanaaa', '302031111', 0, 1, '17-August-2021'),
(7, 1, 'MARKETING', '2', '1', 'demo', '1', '3', 'Ridhi Sidhi Circle, Surya Nagar, Gopal Pura Mode, Jaipur, Rajasthan', '', '', '', 0, 1, '16-August-2021'),
(8, 1, 'MARKETING', '1', '2', 'asdsadsa', '1', '1', 'Ridhi Sidhi Circle, Surya Nagar, Gopal Pura Mode, Jaipur, Rajasthaasdan', 'Jaipuraaa', 'rajasthanaaa', '302031111', 0, 1, '17-August-2021');

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
(21, 2, 'Zapier', NULL, 'zapier', 'fa fa-star', '#ff4a00', '', '5', 0, 0, NULL, '2021-03-27 11:10:55', NULL),
(22, 1, 'test', 1, 'test_aa', 'fa fa-dashboard', '#00b5a4', '<p>test</p>', '1', 1, 4, NULL, '2021-04-02 03:58:07', '2021-04-02 03:58:07');

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
-- Table structure for table `project_bid`
--

CREATE TABLE `project_bid` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `serviceprovider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `saas_bizsite`
--

CREATE TABLE `saas_bizsite` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 1,
  `websitename` varchar(250) DEFAULT NULL,
  `cpanel_url` varchar(255) DEFAULT NULL,
  `stitle` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `seo_enable` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saas_bizsite`
--

INSERT INTO `saas_bizsite` (`id`, `user_id`, `item_id`, `websitename`, `cpanel_url`, `stitle`, `email`, `username`, `password`, `phone`, `seo_enable`, `status`, `created_at`) VALUES
(2, 4, 1, 'incubersdilkhush@gmail.com', 'dsfcdqwddasd.CPanel.com', NULL, 'incubersdilkhush@gmail.com', 'incubersdilhush', 'kennedy63', '90875434780', 0, 1, '2021-03-02 20:02:01'),
(4, 1, 1, 'incuberprashant@gmail.com', '', NULL, 'incuberprashant@gmail.com', 'prashantyadv', 'kennedy63', '302031761000107', 0, 1, '2021-04-16 10:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_ban`
--

CREATE TABLE `serviceprovider_ban` (
  `id` int(11) NOT NULL,
  `homeowner_id` int(11) NOT NULL,
  `serviceprovider_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE `service_provider` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `professional` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `hr_rate` varchar(255) NOT NULL,
  `project_worked` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_provider`
--

INSERT INTO `service_provider` (`id`, `user_id`, `professional`, `country`, `experience`, `hr_rate`, `project_worked`, `skill`, `description`, `deleted_at`) VALUES
(1, 2, 'Home Cleaner', '1', '2', '22', '2', '1', 'sss', NULL),
(2, 3, 'Home Cleaner', '1', '2', '22', '2', '1', 'sss', NULL),
(3, 4, 'Home Cleaner', '1', '2', '22', '2', '1', 'sss', NULL),
(4, 5, 'Home Cleaner', '1', '2', '22', '2', '1', 'sss', NULL),
(5, 6, 'Home Cleaner', '1', '2', '22', '2', '1', 'sss', NULL),
(6, 7, 'Home Cleaner', '1', '2', '22', '2', '1', 'sss', NULL),
(7, 2, 'Home Cleaner', '1', '2', '22', '2', '1', 'sss', NULL),
(8, 2, 'Home Cleaner', '1', '2', '22', '2', '1', 'sss', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_invites`
--

CREATE TABLE `service_provider_invites` (
  `id` int(11) NOT NULL,
  `service_provider` int(11) NOT NULL,
  `homeowner_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_provider_invites`
--

INSERT INTO `service_provider_invites` (`id`, `service_provider`, `homeowner_id`, `project_id`, `created_at`) VALUES
(9, 2, 1, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `slug`, `added_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'demo12', 'demo12', 1, 1, '2021-07-23 00:14:00', '2021-07-23 00:14:42', NULL),
(2, 'demo1', 'demo1', 1, 1, '2021-07-23 00:14:18', '2021-07-23 00:14:35', '2021-07-23 05:44:35'),
(3, 'sadsada', '', 0, 0, NULL, NULL, NULL),
(4, 'qazxsw', '', 0, 0, NULL, NULL, NULL),
(5, 'qazxsw', '', 0, 0, NULL, NULL, NULL),
(6, 'qwertt', '', 0, 0, NULL, NULL, NULL),
(7, 'ddddd', '', 0, 0, NULL, NULL, NULL),
(8, 'qqqqqqq', '', 0, 0, NULL, NULL, NULL),
(9, 'demo123', '', 0, 0, NULL, NULL, NULL),
(10, 'demo432', '', 0, 0, NULL, NULL, NULL),
(11, '1', '', 0, 0, NULL, NULL, NULL),
(12, 'sadsad', '', 0, 0, NULL, NULL, NULL),
(13, 'skill', '', 0, 0, NULL, NULL, NULL),
(14, 'qwertyu', '', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `link`, `icon`, `added_by`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'facebook', 'https://www.facebook.com/', '<i class=\"fa fa-facebook-square\" aria-hidden=\"true\"></i>', 1, 1, '2021-07-19 00:55:31', '2021-07-19 01:33:23', NULL),
(2, 'twitter', 'https://twitter.com/', '<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>', 1, 0, '2021-07-19 01:05:11', '2021-07-19 01:29:03', NULL);

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

--
-- Dumping data for table `subdomains`
--

INSERT INTO `subdomains` (`id`, `user_id`, `name`, `status`, `expire_date`, `created_at`) VALUES
(1, 1, NULL, 0, NULL, '2021-08-03 16:46:31'),
(2, 2, NULL, 0, NULL, '2021-08-03 16:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `first_name` varchar(122) NOT NULL,
  `last_name` varchar(122) NOT NULL,
  `email` varchar(122) NOT NULL,
  `password` varchar(122) NOT NULL
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
  `password_md5` varchar(100) NOT NULL,
  `verified_at` varchar(20) DEFAULT NULL,
  `account_name` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `marketplace_status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `l_name`, `email`, `password`, `password_md5`, `verified_at`, `account_name`, `phone`, `variant_id`, `status`, `marketplace_status`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Prashant', 'gdf', 'incuberprashant@gmail.com', '$2a$08$qjwSNAWtZBIuKrcPWz37ZefnMK475cZ315d.voG0AJWexePAJkhma', '', '1', NULL, '7610001077', NULL, 1, 1, NULL, NULL, '2021-08-03 16:46:25', '2021-08-11 06:06:02'),
(2, 'admin', 'admin', 'admin@gmail.com', '$2a$08$qjwSNAWtZBIuKrcPWz37ZefnMK475cZ315d.voG0AJWexePAJkhma', '', '1', NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-08-03 16:47:42', NULL),
(3, 'demo', 'demo', 'admin123@gmail.com', '$2a$08$qjwSNAWtZBIuKrcPWz37ZefnMK475cZ315d.voG0AJWexePAJkhma', '', '1', NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-08-03 16:47:42', NULL),
(4, 'admin', 'admin', 'admin@gmail.com', '$2a$08$qjwSNAWtZBIuKrcPWz37ZefnMK475cZ315d.voG0AJWexePAJkhma', '', '1', NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-08-03 16:47:42', NULL),
(5, 'admin', 'admin', 'admin@gmail.com', '$2a$08$qjwSNAWtZBIuKrcPWz37ZefnMK475cZ315d.voG0AJWexePAJkhma', '', '1', NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-08-03 16:47:42', NULL),
(6, 'demo', 'demo', 'admin123@gmail.com', '$2a$08$qjwSNAWtZBIuKrcPWz37ZefnMK475cZ315d.voG0AJWexePAJkhma', '', '1', NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-08-03 16:47:42', NULL),
(7, 'admin', 'admin', 'admin@gmail.com', '$2a$08$qjwSNAWtZBIuKrcPWz37ZefnMK475cZ315d.voG0AJWexePAJkhma', '', '1', NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-08-03 16:47:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_ip`
--

CREATE TABLE `users_ip` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `regionName` varchar(255) NOT NULL,
  `areaCode` varchar(255) NOT NULL,
  `countryCode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `continentName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `currencySymbol` varchar(255) NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `countryName` varchar(255) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `street`, `city`, `state`, `country`, `zip`, `billing_address`, `shipping_address`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);

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

INSERT INTO `variants` (`id`, `variant_name`, `biz_link`, `app_link`, `slug`, `requestSetUp`, `description`, `icon`, `color`, `status`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Free For Life', 'core.pnapna.com', 'core.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-superpowers', '#0eb58e', 1, 0, NULL, NULL, NULL),
(2, 'Lite BIZ', 'lightbiz.pnapna.com', 'pnapnalitebiz.com', 'activateAccount', 'activateAccount', '', 'fa fa-lightbulb-o', '#ad0353', 1, 0, NULL, NULL, NULL),
(3, 'Cleaning', 'cleaning.pnapna.com', 'pnapnacleaning.com', 'activateAccount', 'activateAccount', '', 'fa fa-superpowers', '#0eb58e', 1, 0, NULL, NULL, NULL),
(4, 'Analytic', 'analytic.pnapna.com', 'analytic.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-line-chart', '#c47900', 1, 0, NULL, '2021-04-01 22:43:30', NULL),
(5, 'Mass Mail', 'massmail.pnapna.com', 'massmail.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-envelope', '#ad5dde', 0, 0, NULL, NULL, NULL),
(6, 'Websites', 'websites.pnapna.com', 'websites.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-wordpress', '#bf495a', 0, 0, NULL, NULL, NULL),
(7, 'E Sign', 'esign.pnapna.com', 'esign.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-pencil', '#000dbf', 0, 0, NULL, NULL, NULL),
(8, 'Plumbing', 'plumbing.pnapna.com', 'plumbing.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-cogs', '#ff8400', 2, 0, NULL, NULL, NULL),
(10, 'Paper Mail', 'papermail.pnapna.com', 'papermail.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-paper-plane', '#46cf19', 0, 0, NULL, NULL, NULL),
(11, 'HVAC', 'hvac.pnapna.com', 'hvac.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-sun-o', '#99c251', 0, 0, NULL, NULL, NULL),
(12, 'E Monitoring', 'emonitoring.pnapna.com', 'emonitoring.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-heartbeat', '#ff0026', 0, 0, NULL, NULL, NULL),
(13, 'Desktop', 'desktop.pnapna.com', 'desktop.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-desktop', '#00db6a', 0, 0, NULL, NULL, NULL),
(14, 'Forms', 'forms.pnapna.com', 'forms.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-check-square-o', '#d1ba45', 0, 0, NULL, NULL, NULL),
(15, 'Templates', 'templates.pnapna.com', 'templates.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-columns', '#ed7494', 0, 0, NULL, NULL, NULL),
(16, 'Cloud', 'cloud.pnapna.com', 'cloud.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-cloud', '#0d6efd', 0, 0, NULL, NULL, NULL),
(17, 'Help Desk', 'helpdesk.pnapna.com', 'helpdesk.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-table', '#ffed24', 0, 0, NULL, NULL, NULL),
(18, 'SEO', 'seo.pnapna.com', 'seo.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-google', '#f44336', 0, 0, NULL, NULL, NULL),
(19, 'Inspections', 'inspections.pnapna.com', 'inspections.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-search', '#8cffff', 0, 0, NULL, NULL, NULL),
(20, 'E Demy', 'edemy.pnapna.com', 'edemy.pnapna.in', 'activateAccount', 'activateAccount', '', 'fa fa-book', '#0d6efd', 0, 0, NULL, NULL, NULL);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace_chat`
--
ALTER TABLE `marketplace_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace_payment`
--
ALTER TABLE `marketplace_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace_project`
--
ALTER TABLE `marketplace_project`
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
-- Indexes for table `project_bid`
--
ALTER TABLE `project_bid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saas_bizsite`
--
ALTER TABLE `saas_bizsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceprovider_ban`
--
ALTER TABLE `serviceprovider_ban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_provider_invites`
--
ALTER TABLE `service_provider_invites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdomains`
--
ALTER TABLE `subdomains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_ip`
--
ALTER TABLE `users_ip`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marketplace_chat`
--
ALTER TABLE `marketplace_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marketplace_payment`
--
ALTER TABLE `marketplace_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketplace_project`
--
ALTER TABLE `marketplace_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT for table `project_bid`
--
ALTER TABLE `project_bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saas_bizsite`
--
ALTER TABLE `saas_bizsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `serviceprovider_ban`
--
ALTER TABLE `serviceprovider_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider`
--
ALTER TABLE `service_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_provider_invites`
--
ALTER TABLE `service_provider_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subdomains`
--
ALTER TABLE `subdomains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_ip`
--
ALTER TABLE `users_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
