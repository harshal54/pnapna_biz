-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 01:01 PM
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

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fname`, `lname`, `email`, `password`, `image`, `phone`, `city`, `country`, `pin`, `address`, `user_role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Incubers', 'Jaipur', 'incubersjaipur@gmail.com', '4bf407ecf5618636112b8bd6b69b1b44', 'assets/uploads/admin/Admin76601616411070.png', '7610001077', 'jaipur', 'India', '302031', 'jaipur', '1', '2021-03-22 00:04:30', '2021-03-22 00:04:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `tag_line` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `play_time` int(11) NOT NULL DEFAULT 6,
  `redirecting_link` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `title`, `tag_line`, `description`, `file_type`, `file_name`, `play_time`, `redirecting_link`, `status`, `created_at`, `modified_at`) VALUES
(1, 'title', 'tag', 'Des', 'video', 'Cheerios-Cereal.mp4', 10, 'https://www.cheerios.com/', 1, '2021-09-23 14:26:35', NULL),
(2, 'title', 'tag', 'Des', 'video', 'Koko-Crunch-Cereal.mp4', 10, 'https://www.nestle.in/brands/koko-krunch', 1, '2021-09-23 14:26:55', NULL),
(3, 'title', 'tag', 'Des', 'video', 'Soap.mp4', 13, 'https://shop.shajgoj.com/product/ribana-saffron-goats-milk-soap/', 1, '2021-09-23 14:26:55', NULL),
(4, 'title', 'tag', 'Des', 'video', 'Ace-hill.mp4', 15, 'https://www.drinkacehill.com/', 1, '2021-09-23 14:26:55', NULL),
(5, 'title', 'tag', 'Des', 'video', 'Boom-chicka-pop.mp4', 21, 'https://www.boomchickapop.com/', 1, '2021-09-23 14:26:55', NULL),
(6, 'title', 'tag', 'Des', 'video', 'Davids-perfume.mp4', 12, 'https://www.davidsperfume.com/', 1, '2021-09-23 14:26:55', NULL),
(7, 'title', 'tag', 'Des', 'video', 'Hell-energy-drink.mp4', 16, 'https://www.hellenergy.com/en/', 1, '2021-09-23 14:26:55', NULL),
(8, 'title', 'tag', 'Des', 'video', 'HERSHEYS-Milkshake.mp4', 13, 'https://www.thehersheycompany.com/en_in/milk-shake-index.html', 0, '2021-09-23 14:26:55', NULL),
(9, 'title', 'tag', 'Des', 'video', 'iwc-schaffhausen.mp4', 10, 'https://www.iwc.com/int/en/home.html', 1, '2021-09-23 14:26:55', NULL),
(10, 'title', 'tag', 'Des', 'video', 'Philadelphia.mp4', 15, 'https://www.philadelphia.co.uk/', 1, '2021-09-23 14:26:55', NULL),
(11, 'title', 'tag', 'Des', 'video', 'Pringles.mp4', 12, 'https://www.pringles.com/us/home.html', 1, '2021-09-23 14:26:55', NULL),
(12, 'title', 'tag', 'Des', 'video', 'Red-bull.mp4', 19, 'https://www.redbull.com/', 1, '2021-09-23 14:26:55', NULL),
(13, 'title', 'tag', 'Des', 'video', 'Red-bull-edition.mp4', 13, 'https://www.redbull.com/in-en/energydrink/red-bull-editions', 1, '2021-09-23 14:26:55', NULL),
(14, 'title', 'tag', 'Des', 'video', 'Sneak.mp4', 17, 'https://us.sneakenergy.com/products/stealth', 1, '2021-09-23 14:26:55', NULL),
(15, 'title', 'tag', 'Des', 'video', 'Social-Lite-soda.mp4', 14, 'https://www.sociallitevodka.com/', 1, '2021-09-23 14:26:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_a_demo`
--

CREATE TABLE `book_a_demo` (
  `id` int(11) NOT NULL,
  `date` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `captured_emails`
--

CREATE TABLE `captured_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `quick_email` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
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
(1, 'General', 'general', 1, 1, '2021-07-22 23:35:32', '2021-09-01 06:38:19', NULL),
(2, 'Cleaning', 'cleaning', 1, 1, '2021-07-22 23:36:09', '2021-07-23 00:14:24', '2021-07-23 05:44:24'),
(3, 'Virtual Assistant', 'virtual-assistant', 1, 1, '2021-07-22 23:38:07', '2021-08-05 08:19:18', NULL),
(4, 'Maid Services', 'maid-services', 1, 1, '2021-07-22 23:39:52', '2021-08-05 08:19:44', NULL),
(5, 'Commercial Cleaning', 'commercial-cleaning', 1, 1, '2021-07-23 00:13:07', '2021-08-05 08:20:28', NULL),
(6, 'Electrician', 'electrician', 1, 1, '2021-08-05 08:21:02', '2021-08-05 08:21:02', NULL),
(7, 'HVAC', 'HVAC', 1, 1, '2021-08-05 08:21:17', '2021-08-05 08:21:17', NULL),
(8, 'Gardener', 'gardener', 1, 1, '2021-08-05 08:21:42', '2021-09-01 06:36:00', '2021-09-01 06:36:00'),
(9, 'Web Freelancer', 'web-freelancer', 1, 1, '2021-08-05 08:22:11', '2021-08-05 08:22:11', NULL),
(10, 'Photographer', 'photographer', 1, 1, '2021-08-05 08:22:26', '2021-08-05 08:22:26', NULL),
(11, 'Plumbing', 'plumbing', 1, 1, '2021-08-05 08:23:27', '2021-08-05 08:23:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_link` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `competitor_image` varchar(255) NOT NULL,
  `competitor_content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `feature` longtext NOT NULL,
  `pnapna_features` longtext NOT NULL,
  `competitor_features` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `variant_id`, `page_name`, `page_link`, `status`, `competitor_image`, `competitor_content`, `created_at`, `updated_at`, `deleted_at`, `feature`, `pnapna_features`, `competitor_features`) VALUES
(1, 3, 'PnaPna Cleaning Vs ZenMaid', 'cleaning-versus-zenmaid', 0, 'uploads/CMS/CMS12581632130202.png', 'ZenMaid was started in 2013 by former maid services owners who managed & ran their company in less than an hour a day with the help of custom developed technology', '2021-09-20 04:00:02', '2021-09-20 06:11:52', NULL, '[\"Price per month\",\"Calendar(tasks, meetings, calls)\",\"Customer Relationship Management(CRM)\",\"Sales process (and quotations)\",\"Project management\",\"Invoicing\",\"Support tickets\",\"Extranet\",\"Email integration(Office 365, iCloud, Gmail)\",\"Voice over IP\",\"Mobile app\",\"Marketplace (100+ integration with business software applications)\",\"Open API\",\"Free trial\",\"Online on-boarding\",\"Support\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"1\",\"1\",\"0\",\"1\",\"0\",\"1\",\"0\",\"0\",\"1\",\"0\",\"1\",\"0\",\"0\",\"1\",\"1\",\"1\"]'),
(2, 3, 'PnaPna Cleaning Vs Maidly', 'cleaning-versus-maidly', 0, 'uploads/CMS/CMS92701632130551.png', 'We offer commercial cleaning services for retail spaces, schools, churches, medical facilities, office buildings, and more. We customize our services to meet your specific needs. Ask us about daily, weekly, and bi-weekly weekly service', '2021-09-20 04:05:51', '2021-09-20 06:21:28', NULL, '[\"Price per month\",\"Calendar(tasks, meetings, calls)\",\"Customer Relationship Management(CRM)\",\"Sales process (and quotations)\",\"Project management\",\"Invoicing\",\"Support tickets\",\"Extranet\",\"Email integration(Office 365, iCloud, Gmail)\",\"Voice over IP\",\"Mobile app\",\"Marketplace (100+ integration with business software applications)\",\"Open API\",\"Free trial\",\"Online on-boarding\",\"Support\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"0\",\"1\",\"0\",\"0\",\"1\",\"0\",\"1\",\"1\",\"0\",\"1\"]'),
(3, 3, 'PnaPna Cleaning Vs Launch27', 'cleaning-versus-launch27', 0, 'uploads/CMS/CMS39891632130654.png', 'Launch27 is a sleek, powerful online booking system that allows potential customers to buy your maid services directly from your website. The entire booking engine can be customized to match your existing housekeeping website and can be integrated in mere seconds, giving customers a seamless buying experience from start to finish. Launch27 also has its own built-in calendar to show you upcoming jobs and appointment times', '2021-09-20 04:07:34', '2021-09-20 06:21:34', NULL, '[\"Price per month\",\"Calendar(tasks, meetings, calls)\",\"Customer Relationship Management(CRM)\",\"Sales process (and quotations)\",\"Project management\",\"Invoicing\",\"Support tickets\",\"Extranet\",\"Email integration(Office 365, iCloud, Gmail)\",\"Voice over IP\",\"Mobile app\",\"Marketplace (100+ integration with business software applications)\",\"Open API\",\"Free trial\",\"Online on-boarding\",\"Support\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"1\",\"1\",\"0\",\"1\",\"0\",\"1\",\"0\",\"1\",\"0\",\"0\",\"1\",\"0\",\"1\",\"1\",\"0\",\"1\"]'),
(4, 3, 'PnaPna Cleaning Vs MaidService', 'cleaning-versus-maidservice', 0, 'uploads/CMS/CMS86461632130708.png', 'MaidService.com offers comprehensive reviews on cleaning companies in your area. Quickly compare a variety of companies to find out who provides the services and budget that meet your needs. Search today to maintain a clean, healthy home.Maid services are also called cleaning and janitorial services. You can find maid services companies that offer both residential and commercial services', '2021-09-20 04:08:28', '2021-09-20 06:21:41', NULL, '[\"Price per month\",\"Calendar(tasks, meetings, calls)\",\"Customer Relationship Management(CRM)\",\"Sales process (and quotations)\",\"Project management\",\"Invoicing\",\"Support tickets\",\"Extranet\",\"Email integration(Office 365, iCloud, Gmail)\",\"Voice over IP\",\"Mobile app\",\"Marketplace (100+ integration with business software applications)\",\"Open API\",\"Free trial\",\"Online on-boarding\",\"Support\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"0\",\"1\"]'),
(5, 2, 'PnaPna Vs BITRIX24', 'pnapna-versus-bitrix24', 0, 'uploads/CMS/CMS47091632130764.png', 'BITRIX24 is a basic German cloud-based CRM solution for SMEs and larger enterprises', '2021-09-20 04:09:24', '2021-09-20 06:21:45', NULL, '[\"Price per month\",\"Calendar(tasks, meetings, calls)\",\"Customer Relationship Management(CRM)\",\"Sales process (and quotations)\",\"Project management\",\"Invoicing\",\"Support tickets\",\"Extranet\",\"Email integration(Office 365, iCloud, Gmail)\",\"Voice over IP\",\"Mobile app\",\"Marketplace (100+ integration with business software applications)\",\"Open API\",\"Free trial\",\"Online on-boarding\",\"Support\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\"]'),
(6, 2, 'PnaPna Lite BIZ Vs HubSpot', 'pnapna-versus-hubspot', 0, 'uploads/CMS/CMS92421632130816.png', 'Sales Hub is built on the HubSpot CRM platform where customer data, tools, and teams come together to create a single source-of-truth for unprecedented sales rep efficiency. When using the full CRM platform, reps can get richer insights, warmer leads, and aligned enablement materials to help them operate at max efficiency. Plus, tap into our expansive ecosystem of app and solutions partners to craft an exceptional end-to-end customer experience', '2021-09-20 04:10:16', '2021-09-20 06:21:51', NULL, '[\"Price per month\",\"Calendar(tasks, meetings, calls)\",\"Customer Relationship Management(CRM)\",\"Sales process (and quotations)\",\"Project management\",\"Invoicing\",\"Support tickets\",\"Extranet\",\"Email integration(Office 365, iCloud, Gmail)\",\"Voice over IP\",\"Mobile app\",\"Marketplace (100+ integration with business software applications)\",\"Open API\",\"Free trial\",\"Online on-boarding\",\"Support\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\"]'),
(7, 2, 'PnaPna Vs Asana', 'pnapna-versus-asana', 0, 'uploads/CMS/CMS18551632130895.png', 'Asana helps teams orchestrate their work, from small projects to strategic initiatives .Global customers such as Allbirds, Sephora, Sky, Spotify, Viessmann, and Woolworths rely on Asana to manage everything from company objectives to digital transformation to product launches and marketing campaigns', '2021-09-20 04:11:35', '2021-09-20 06:21:56', NULL, '[\"Price per month\",\"Calendar(tasks, meetings, calls)\",\"Customer Relationship Management(CRM)\",\"Sales process (and quotations)\",\"Project management\",\"Invoicing\",\"Support tickets\",\"Extranet\",\"Email integration(Office 365, iCloud, Gmail)\",\"Voice over IP\",\"Mobile app\",\"Marketplace (100+ integration with business software applications)\",\"Open API\",\"Free trial\",\"Online on-boarding\",\"Support\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"0\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\"]'),
(8, 2, 'PnaPna Vs Trello', 'pnapna-versus-trello', 0, 'uploads/CMS/CMS33531632130961.png', 'Spreadsheets, emails, and never-ending notifications are major teamwork blockers that affect today’s business teams—no matter their size. Project assignments, tasks, and daily to-do’s get lost, transparency gets trumped, and people lose productivity in the shuffle', '2021-09-20 04:12:41', '2021-09-20 06:21:10', NULL, '[\"Price per month\",\"Calendar(tasks, meetings, calls)\",\"Customer Relationship Management(CRM)\",\"Sales process (and quotations)\",\"Project management\",\"Invoicing\",\"Support tickets\",\"Extranet\",\"Email integration(Office 365, iCloud, Gmail)\",\"Voice over IP\",\"Mobile app\",\"Marketplace (100+ integration with business software applications)\",\"Open API\",\"Free trial\",\"Online on-boarding\",\"Support\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '[\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"1\",\"0\",\"1\",\"0\",\"1\",\"1\",\"0\",\"1\"]');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `free_consultation`
--

CREATE TABLE `free_consultation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(11) NOT NULL,
  `industry_name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL DEFAULT 'activateAccount',
  `description` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT 'fa fa-check-circle',
  `color` varchar(100) NOT NULL DEFAULT '#0d6efd',
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `industry_name`, `link`, `slug`, `description`, `icon`, `color`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ATM <br> Machines', 'none', 'none', '', 'fa fa-search', '#0eb58e', 0, NULL, NULL, NULL),
(2, 'Audio <br> Visual (AV)', 'none', 'none', '', 'fa fa-search', '#ad0353', 0, NULL, NULL, NULL),
(3, 'Alarm <br> & Security', 'none', 'none', '', 'fa fa-search', '#4c75d4', 0, NULL, NULL, NULL),
(8, 'Desktop <br> Laptop', 'none', 'none', '', 'fa fa-search', '#ff8400', 0, NULL, NULL, NULL),
(11, 'Electricians', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(19, 'Fiber Optic <br> Cabling', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(23, 'Kiosk', 'none', 'none', '', 'fa fa-search', '#0eb58e', 0, NULL, NULL, NULL),
(24, 'Low Voltage <br> Cabling', 'none', 'none', '', 'fa fa-search', '#ad0353', 0, NULL, NULL, NULL),
(25, 'Merchandising <br> Resets', 'none', 'none', '', 'fa fa-search', '#4c75d4', 0, NULL, NULL, NULL),
(26, 'Networking', 'none', 'none', '', 'fa fa-search', '#ff8400', 0, NULL, NULL, NULL),
(27, 'Point of <br> Sale', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(28, 'Printer', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(29, 'Server', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(30, 'Retail Fixtures <br> and Displays', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(31, 'Telecom', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(32, 'Appliance <br> Repair', 'none', 'none', '', 'fa fa-search', '#ff8400', 0, NULL, NULL, NULL),
(33, 'Carpet <br> Cleaning', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(34, 'Chimney Sweep <br> Services', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(35, 'Commercial <br> Cleaning', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(36, 'Dog <br> Walking', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(37, 'Electrical <br> Contracting', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(38, 'Elevator <br> Services', 'none', 'none', '', 'fa fa-search', '#4c75d4', 0, NULL, NULL, NULL),
(39, 'Fence <br> Services', 'none', 'none', '', 'fa fa-search', '#ff8400', 0, NULL, NULL, NULL),
(40, 'Flooring', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(41, 'Garage Door <br> Services', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(42, 'General Contracting', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(43, 'Handyman', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(44, 'HVAC', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(45, 'Installation Services', 'none', 'none', '', 'fa fa-search', '#ff8400', 0, NULL, NULL, NULL),
(46, 'Irrigation Services', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(47, 'Janitorial Services', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(48, 'Junk Removal', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(49, 'Landscaping', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(50, 'Lawn Care', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(51, 'Locksmith Services', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(52, 'Mechanical Contracting', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(53, 'Painting', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(54, 'Pest Control', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(55, 'Plumbing', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(56, 'Pool & Spa Services', 'none', 'none', '', 'fa fa-search', '#ff8400', 0, NULL, NULL, NULL),
(57, 'Pressure Washing', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(58, 'Property Maintenance', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(59, 'Residential Cleaning', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(60, 'Restoration', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(61, 'Roofing', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(72, 'Snow Removal', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(73, 'Tree Care', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(74, 'Well Water Services', 'none', 'none', '', 'fa fa-search', '#8cffff', 0, NULL, NULL, NULL),
(75, 'Window Cleaning', 'none', 'none', '', 'fa fa-search', '#99c251', 0, NULL, NULL, NULL),
(76, 'Cleaning', 'pnapnacleaning.com', 'none', '', 'fa fa-broom', '#00cc48', 1, NULL, NULL, NULL),
(77, 'Freelancer', 'pnapnalitebiz.com', 'none', '', 'fab fa-superpowers', '#ad0353', 2, NULL, NULL, NULL),
(78, 'Small Business', 'pnapnacore.com', 'none', '', 'fa fa-check-circle', '#0d6efd', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_text`) VALUES
(1, 'I have a business website of my own that I shall use and will integrate the plugins myself'),
(2, 'I have a business website of my own but I want you to integrate the plugins for me'),
(3, 'I shall create my website myself and will integrate the plugins my self'),
(4, 'I shall create my website myself and will integrate the plugins my self'),
(5, 'I want you to create a website for me with the plugins.'),
(6, 'I do not need any website and I shall continue with your integrated site only');

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
  `project_complete` int(11) NOT NULL DEFAULT 0,
  `zip_code` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT NULL,
  `posted` varchar(255) NOT NULL
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
(1, 2, 'Private Chat', NULL, 'privateChat', 'fa fa-comments', '#2196f3', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(2, 2, 'WhatsApp Chat', NULL, 'whatsapp', 'fab fa-whatsapp', '#00e676', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(3, 2, 'Zoom Meeting', NULL, 'zoomMeet', 'fa fa-phone', '#42c7ff', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(4, 2, 'Telegram Chat', NULL, 'telegramChat', 'fab fa-telegram', '#1e92c3', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(5, 2, 'Mailbox', NULL, 'mailbox', 'fa fa-envelope-square', '#005598', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(6, 2, 'WhiteBoard', NULL, 'whiteBoard', 'fa fa-clone', '#565656', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(7, 2, 'Quickbooks', NULL, 'quickbooks', 'fa fa-book', '#2b9b1b', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(8, 2, 'Human Resources Management', NULL, 'hrm', 'fa fa-user-circle', '#607d8b', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(9, 2, 'Appointly', NULL, 'appointly', 'fa fa-calendar-check', '#006158', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(10, 2, 'Account Planning', NULL, 'accPlanning', 'fa fa-address-card', '#a78a80', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(11, 2, 'Goals', NULL, 'goals', 'fa fa-bullseye', '#ff7245', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(12, 2, 'Mention', NULL, 'mention', 'fa fa-tag', '#00b5a4', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(13, 2, 'Menu Setup', NULL, 'menuSetup', 'fa fa-bars', '#3e3e3e', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(14, 2, 'Email Builder', NULL, 'emailBuilder', 'fa fa-envelope', '#ff9800', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(15, 2, 'vWork247 Shop', NULL, 'shop', 'fa fa-shopping-cart', '#da6a90', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(16, 2, 'Recruitment', NULL, 'recruitment', 'fas fa-rss', '#397592', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(17, 2, 'Theme Style', NULL, 'themeStyle', 'fab fa-themeisle', '#6623dc', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(18, 2, 'Timesheet Management', NULL, 'timesheet', 'fa fa-user-circle', '#795548', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(19, 2, 'Custom Email & SMS Notifications', NULL, 'customEmail', 'fa fa-bell', '#ff5722', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(20, 2, 'Database Backup', NULL, 'dbBackup', 'fa fa-database', '#505050', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(21, 2, 'Zapier', NULL, 'zapier', 'fa fa-star', '#ff4a00', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(22, 0, 'Analytic', NULL, 'analytic', 'fa fa-chart-bar', '#1b61d1', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(23, 0, 'Mass Mail', NULL, 'massmail', 'fa fa-envelope', '#ad51a0', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(24, 0, 'Websites', NULL, 'websites', 'fab fa-wordpress-simple', '#ff4a00', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(25, 0, 'E Sign', NULL, 'esign', 'fa fa-pen-fancy', '#7cd44c', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(26, 0, 'Paper Mail', NULL, 'papermail', 'fa fa-paper-plane', '#e3db46', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(27, 0, 'E Monitoring', NULL, 'emonitoring', 'fa fa-heartbeat', '#de0735', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(28, 0, 'Desktop', NULL, 'desktop', 'fa fa-desktop', '#7731f7', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(29, 0, 'Forms', NULL, 'forms', 'fab fa-wpforms', '#af97db', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(30, 0, 'Templates', NULL, 'templates', 'fa fa-atom', '#e39f5b', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(31, 0, 'Cloud', NULL, 'cloud', 'fa fa-cloud', '#2bb1ff', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(32, 0, 'Help Desk', NULL, 'helpdesk', 'fa fa-hands-helping', '#00b865', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(33, 0, 'SEO', NULL, 'seo', 'fa fa-mail-bulk', '#e39700', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(34, 0, 'E Demy', NULL, 'edemy', 'fa fa-book-reader', '#7700ed', '', '5', 0, 5, NULL, '2021-03-27 11:10:55', NULL),
(35, 3, 'Private Chat', NULL, 'privateChat', 'fa fa-comments', '#2196f3', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(36, 3, 'WhatsApp Chat', NULL, 'whatsapp', 'fab fa-whatsapp', '#00e676', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(37, 3, 'Zoom Meeting', NULL, 'zoomMeet', 'fa fa-phone', '#42c7ff', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(38, 3, 'Mailbox', NULL, 'mailbox', 'fa fa-envelope-square', '#005598', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(39, 3, 'WhiteBoard', NULL, 'whiteBoard', 'fa fa-clone', '#565656', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(40, 3, 'Human Resources Management', NULL, 'hrm', 'fa fa-user-circle', '#607d8b', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(41, 3, 'Mention', NULL, 'mention', 'fa fa-tag', '#00b5a4', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(42, 3, 'Recruitment', NULL, 'recruitment', 'fas fa-rss', '#397592', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(43, 8, 'Private Chat', NULL, 'privateChat', 'fa fa-comments', '#2196f3', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(44, 8, 'WhatsApp Chat', NULL, 'whatsapp', 'fab fa-whatsapp', '#00e676', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(45, 8, 'Zoom Meeting', NULL, 'zoomMeet', 'fa fa-phone', '#42c7ff', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(46, 8, 'Mailbox', NULL, 'mailbox', 'fa fa-envelope-square', '#005598', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(47, 8, 'WhiteBoard', NULL, 'whiteBoard', 'fa fa-clone', '#565656', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(48, 8, 'Human Resources Management', NULL, 'hrm', 'fa fa-user-circle', '#607d8b', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(49, 8, 'Mention', NULL, 'mention', 'fa fa-tag', '#00b5a4', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL),
(50, 8, 'Recruitment', NULL, 'recruitment', 'fas fa-rss', '#397592', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `partnership_enrollment`
--

CREATE TABLE `partnership_enrollment` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `bussiness_name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `zipcode` varchar(15) DEFAULT NULL,
  `trade_type` varchar(100) DEFAULT NULL,
  `partner_type` varchar(100) DEFAULT NULL,
  `social_media` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `membership_info` varchar(255) DEFAULT NULL,
  `any_other_info` text DEFAULT NULL,
  `detail_info` text DEFAULT NULL,
  `is_user` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `plan_name` varchar(50) NOT NULL,
  `plan_amount` varchar(10) NOT NULL,
  `total_amount` varchar(50) NOT NULL,
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

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `product_id`, `plan_name`, `plan_amount`, `total_amount`, `item_name`, `txn_id`, `payer_id`, `business_id`, `receiver_id`, `payment_gross`, `currency_code`, `payer_email`, `item_details`, `payment_mode`, `payment_status`, `verify_sign`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Medium Teams', '129', '154', 'Add On Modules', 'txID1-692691', 'incubersdilkhush@gmail.com', 'BizID-1', 'PnaPna', 0.00, '$', 'incubersdilkhush@gmail.com', '[{\"id\":\"40\",\"name\":\"Human Resources Management\",\"slug\":\"hrm\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"35\",\"name\":\"Private Chat\",\"slug\":\"privateChat\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"42\",\"name\":\"Recruitment\",\"slug\":\"recruitment\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"36\",\"name\":\"WhatsApp Chat\",\"slug\":\"whatsapp\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"37\",\"name\":\"Zoom Meeting\",\"slug\":\"zoomMeet\",\"price\":\"5\",\"status\":\"0\"}]', NULL, 'Completed', 'vSign1-132282', '2022-10-27 16:03:40', NULL);

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

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan_name`, `plan_price`, `variant_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'aa', '1222', '1', '2021-08-19 05:56:17', '2021-08-19 05:56:17', NULL),
(2, 'aa', '1222', '1', '2021-08-19 05:56:37', '2021-08-19 05:56:37', NULL),
(3, 'life', '5000', '1', '2021-09-01 06:35:12', '2021-09-01 06:35:12', NULL);

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
-- Table structure for table `providers_analysis`
--

CREATE TABLE `providers_analysis` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `p_enrollment_images`
--

CREATE TABLE `p_enrollment_images` (
  `id` int(11) NOT NULL,
  `enrollment_id` tinyint(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
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
  `user_id` int(11) DEFAULT NULL,
  `professional` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `hr_rate` varchar(255) DEFAULT NULL,
  `project_worked` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `instagram_id` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `verification_status` tinyint(4) DEFAULT NULL,
  `verification_detail` text DEFAULT NULL,
  `verified` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'Any', 'Any', 1, 1, '2021-07-23 00:14:00', '2021-08-05 08:23:47', NULL),
(2, 'demo1', 'demo1', 1, 1, '2021-07-23 00:14:18', '2021-07-23 00:14:35', '2021-07-23 05:44:35'),
(3, 'Communication', 'communication', 1, 1, '2021-08-05 08:24:09', '2021-08-05 08:24:09', NULL),
(4, 'Dusting', 'dusting', 1, 1, '2021-08-05 08:24:25', '2021-08-05 08:24:25', NULL),
(5, 'Sweep and mop floors', 'sweet- and-mop-floors', 1, 1, '2021-08-05 08:24:51', '2021-08-05 08:24:51', NULL),
(6, 'Deep cleaning', 'deep-cleaning', 1, 1, '2021-08-05 08:25:13', '2021-08-05 08:25:13', NULL);

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
(2, 'twitter', 'https://twitter.com/', '<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>', 1, 0, '2021-07-19 01:05:11', '2021-09-01 06:08:47', NULL),
(3, 'demo', 'gg', 'kk', 1, 1, '2021-08-19 06:18:21', '2021-08-19 06:18:46', '2021-08-19 06:18:46'),
(4, 'instagram', 'www.instagram.come', 'fa fa-instagram', 1, 0, '2021-09-01 06:41:34', '2021-09-01 06:41:41', '2021-09-01 06:41:41');

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
(1, 1, 'incubersdil', 1, NULL, '2022-10-27 15:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `password_md5` varchar(255) NOT NULL,
  `verified_at` varchar(20) DEFAULT NULL,
  `UID` varchar(255) DEFAULT NULL,
  `account_name` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `marketplace_status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `fp_token` varchar(51) DEFAULT NULL,
  `ban` int(11) NOT NULL DEFAULT 0,
  `wpsite` int(11) NOT NULL DEFAULT 0,
  `pnapna_scope` tinyint(1) NOT NULL DEFAULT 0,
  `pnapna_cal` tinyint(1) NOT NULL DEFAULT 0,
  `pnapna_podium` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `l_name`, `email`, `password`, `password_md5`, `verified_at`, `UID`, `account_name`, `phone`, `variant_id`, `status`, `marketplace_status`, `image`, `fp_token`, `ban`, `wpsite`, `pnapna_scope`, `pnapna_cal`, `pnapna_podium`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dilkhush', 'Yadav', 'incubersdilkhush@gmail.com', '$2a$08$4qInRpdqkQGIqmofN641GOqj7mh6Ep7pzGqOFm4DQbA8Y5z9r8ZZ.', '88c7863f3c65033d094d64c38a107d36', '2022-10-27 11:50:06', NULL, 'incubersdil', NULL, 3, 1, 2, NULL, NULL, 0, 0, 0, 0, 0, NULL, '2022-10-27 15:19:37', '2022-10-27 12:23:39');

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
  `shipping_address` text DEFAULT NULL,
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `street`, `city`, `state`, `country`, `zip`, `billing_address`, `shipping_address`, `updated_at`) VALUES
(1, 1, 'Township Schools', 'Piscataway', 'NJ', 'USA', '30201', 'Piscataway Township Schools, Piscataway, NJ, USA\r\n412\r\nst 1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_modules`
--

CREATE TABLE `user_modules` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `modules` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_modules`
--

INSERT INTO `user_modules` (`id`, `user_id`, `payment_id`, `modules`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"id\":\"40\",\"name\":\"Human Resources Management\",\"slug\":\"hrm\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"35\",\"name\":\"Private Chat\",\"slug\":\"privateChat\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"42\",\"name\":\"Recruitment\",\"slug\":\"recruitment\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"36\",\"name\":\"WhatsApp Chat\",\"slug\":\"whatsapp\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"37\",\"name\":\"Zoom Meeting\",\"slug\":\"zoomMeet\",\"price\":\"5\",\"status\":\"0\"}]', 0, '2022-10-27 16:03:40', '2022-10-27 12:33:40');

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
(1, 'Free For Life/Core', 'pnapna.com/en/core', 'pnapna.in/core', 'core', 'activateAccCore', '0', 1, '', 'fab fa-superpowers', '#0eb58e', 1, 0, NULL, '2021-09-14 07:50:03', NULL),
(2, 'Lite BIZ', 'pnapna.com/en/litebiz', 'pnapna.in/litebiz', 'litebiz', 'activateAccount', '99', 0, '', 'fa fa-lightbulb-o', '#ad0353', 0, 0, NULL, NULL, NULL),
(3, 'Cleaning', 'pnapna.com/en/cleaning', 'pnapna.in/cleaning', 'cleaning', 'activateAccCleaning', '99', 0, '', 'fa fa-broom', '#4c75d4', 1, 0, NULL, NULL, NULL),
(8, 'Plumbing', 'pnapna.com/en/plumbing', 'pnapna.in/plumbing', 'plumbing', 'activateAccPlumbing', '99', 0, '', 'fa fa-wrench', '#ff8400', 1, 0, NULL, '2021-09-14 07:49:42', NULL),
(11, 'HVAC', 'pnapna.com/en/hvac', 'pnapna.in/hvac', 'hvac', 'activateAccount', '99', 0, '', 'fa fa-sun-o', '#99c251', 0, 0, NULL, '2021-09-14 07:49:55', NULL),
(19, 'Inspections', 'pnapna.com/en/inspections', 'pnapna.in/inspections', 'inspections', 'activateAccount', '99', 0, '', 'fa fa-search', '#8cffff', 0, 0, NULL, '2021-09-01 06:16:03', '2021-09-01 06:16:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_a_demo`
--
ALTER TABLE `book_a_demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captured_emails`
--
ALTER TABLE `captured_emails`
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
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_consultation`
--
ALTER TABLE `free_consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partnership_enrollment`
--
ALTER TABLE `partnership_enrollment`
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
-- Indexes for table `providers_analysis`
--
ALTER TABLE `providers_analysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_enrollment_images`
--
ALTER TABLE `p_enrollment_images`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `book_a_demo`
--
ALTER TABLE `book_a_demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captured_emails`
--
ALTER TABLE `captured_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `free_consultation`
--
ALTER TABLE `free_consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marketplace_chat`
--
ALTER TABLE `marketplace_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace_payment`
--
ALTER TABLE `marketplace_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace_project`
--
ALTER TABLE `marketplace_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partnership_enrollment`
--
ALTER TABLE `partnership_enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_bid`
--
ALTER TABLE `project_bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers_analysis`
--
ALTER TABLE `providers_analysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_enrollment_images`
--
ALTER TABLE `p_enrollment_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saas_bizsite`
--
ALTER TABLE `saas_bizsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceprovider_ban`
--
ALTER TABLE `serviceprovider_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider`
--
ALTER TABLE `service_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider_invites`
--
ALTER TABLE `service_provider_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subdomains`
--
ALTER TABLE `subdomains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_ip`
--
ALTER TABLE `users_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_modules`
--
ALTER TABLE `user_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
