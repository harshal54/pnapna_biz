-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 09:57 AM
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
(1, 'Prashant', 'Yadav', 'incuberprashant@gmail.com', '4bf407ecf5618636112b8bd6b69b1b44', 'assets/uploads/admin/Admin76601616411070.png', '7610001077', 'jaipur', 'India', '302031', 'jaipur', '1', '2021-03-22 00:04:30', '2021-03-22 00:04:30', NULL);

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
(1, 'This is title 1', 'This is tagline 1', 'This is description  1', 'video', 'Cheerios_Cereal.mp4', 10, 'https://www.cheerios.com/', 1, '2021-09-23 14:26:35', NULL),
(2, 'This is title 2', 'This is tagline 2', 'This is description 2', 'video', 'Koko_Crunch_Cereal.mp4', 10, 'https://www.nestle.in/brands/koko-krunch', 1, '2021-09-23 14:26:55', NULL),
(3, 'This is title 3', 'This is tagline 3', 'This is description 3', 'video', 'Ribana_Soap.mp4', 13, 'https://shop.shajgoj.com/product/ribana-saffron-goats-milk-soap/', 1, '2021-09-23 14:26:55', NULL);

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
(2, 3, 'Add On Modules', 'null', '0', NULL, '0', 'UI35yY7mDaGVuGE2RNWD8pTWULm1Iksva', 0, NULL, '2021-09-14 11:26:15', NULL),
(3, 2, 'Add On Modules', '[{\"id\":\"40\",\"name\":\"Human Resources Management\",\"slug\":\"hrm\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"35\",\"name\":\"Private Chat\",\"slug\":\"privateChat\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"42\",\"name\":\"Recruitment\",\"slug\":\"recruitment\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"39\",\"name\":\"WhiteBoard\",\"slug\":\"whiteBoard\",\"price\":\"5\",\"status\":\"0\"}]', '419', NULL, '419', 'UI2vfNDtUh204CCoKLK8WUNwAWsrS9Qeg', 0, NULL, '2021-09-18 11:38:47', NULL);

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
(1, 'General', 'general', 1, 1, '2021-07-22 23:35:32', '2021-08-05 08:23:17', NULL),
(2, 'Cleaning', 'cleaning', 1, 1, '2021-07-22 23:36:09', '2021-07-23 00:14:24', '2021-07-23 05:44:24'),
(3, 'Virtual Assistant', 'virtual-assistant', 1, 1, '2021-07-22 23:38:07', '2021-08-05 08:19:18', NULL),
(4, 'Maid Services', 'maid-services', 1, 1, '2021-07-22 23:39:52', '2021-08-05 08:19:44', NULL),
(5, 'Commercial Cleaning', 'commercial-cleaning', 1, 1, '2021-07-23 00:13:07', '2021-08-05 08:20:28', NULL),
(6, 'Electrician', 'electrician', 1, 1, '2021-08-05 08:21:02', '2021-08-05 08:21:02', NULL),
(7, 'HVAC', 'HVAC', 1, 1, '2021-08-05 08:21:17', '2021-08-05 08:21:17', NULL),
(8, 'Gardener', 'gardener', 1, 1, '2021-08-05 08:21:42', '2021-08-05 08:21:42', NULL),
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

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `name`, `email`, `phone`, `subject`, `message`, `best_way_contact`, `variant_name`, `proposed_industry`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Dilkhush Yadav', 'dilkhush727@gmail.com', '', 'New Ticket', 'Testing', '', 0, NULL, 0, NULL, NULL, NULL),
(2, NULL, 'Mayank', 'incubersmayank@gmail.com', '', 'My plan of OVZ Box 1 is going to expire', 'qrf', '', 0, NULL, 0, NULL, NULL, NULL),
(3, NULL, 'Dilkhush727 727', 'dilkhush727@gmail.com', '', 'Mohan Nagar, MN-26, Jaipur, Rajasthan, 302018', 'qr454gtweg', '', 0, NULL, 0, NULL, NULL, NULL);

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

--
-- Dumping data for table `marketplace_payment`
--

INSERT INTO `marketplace_payment` (`id`, `user_id`, `payment_details`, `pay_date`, `post_project`) VALUES
(1, 2, 'free', '2021-08-07', '3');

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
  `status` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `posted` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplace_project`
--

INSERT INTO `marketplace_project` (`id`, `user_id`, `heading`, `budget`, `location`, `description`, `skill`, `category`, `status`, `payment_id`, `posted`) VALUES
(1, 2, 'BirthDay', '12', '1', 'Test Project Description', '1', '1', NULL, 1, '7-August-2021');

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
(42, 3, 'Recruitment', NULL, 'recruitment', 'fas fa-rss', '#397592', '', '5', 1, 5, NULL, '2021-03-27 11:10:55', NULL);

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
(1, 2, 1, 'Medium Teams', '399', '439', 'Add On Modules', 'txID1-348110', 'incubersdilkhush@gmail.com', 'BizID-1', 'PnaPna', 0.00, '$', 'incubersdilkhush@gmail.com', '[{\"id\":\"40\",\"name\":\"Human Resources Management\",\"slug\":\"hrm\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"38\",\"name\":\"Mailbox\",\"slug\":\"mailbox\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"41\",\"name\":\"Mention\",\"slug\":\"mention\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"35\",\"name\":\"Private Chat\",\"slug\":\"privateChat\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"42\",\"name\":\"Recruitment\",\"slug\":\"recruitment\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"36\",\"name\":\"WhatsApp Chat\",\"slug\":\"whatsapp\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"39\",\"name\":\"WhiteBoard\",\"slug\":\"whiteBoard\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"37\",\"name\":\"Zoom Meeting\",\"slug\":\"zoomMeet\",\"price\":\"5\",\"status\":\"0\"}]', NULL, 'Completed', 'vSign1-919664', '2021-08-17 18:34:59', NULL),
(2, 2, 2, 'Small Teams', '199', '239', 'Add On Modules', 'txID1-721503', 'incubersdilkhush@gmail.com', 'BizID-1', 'PnaPna', 0.00, '$', 'incubersdilkhush@gmail.com', '[{\"id\":\"40\",\"name\":\"Human Resources Management\",\"slug\":\"hrm\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"38\",\"name\":\"Mailbox\",\"slug\":\"mailbox\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"41\",\"name\":\"Mention\",\"slug\":\"mention\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"35\",\"name\":\"Private Chat\",\"slug\":\"privateChat\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"42\",\"name\":\"Recruitment\",\"slug\":\"recruitment\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"36\",\"name\":\"WhatsApp Chat\",\"slug\":\"whatsapp\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"39\",\"name\":\"WhiteBoard\",\"slug\":\"whiteBoard\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"37\",\"name\":\"Zoom Meeting\",\"slug\":\"zoomMeet\",\"price\":\"5\",\"status\":\"0\"}]', NULL, 'Completed', 'vSign1-971145', '2021-08-20 12:53:56', NULL),
(3, 1, 3, 'Small Teams', '199', '199', 'Add On Modules', 'txID1-553166', 'incubersdilkhush@gmail.com', 'BizID-1', 'PnaPna', 0.00, '$', 'incubersdilkhush@gmail.com', 'null', NULL, 'Completed', 'vSign1-525474', '2021-08-20 14:54:45', NULL),
(4, 3, 1, 'Free for Life', '0', '0', 'Add On Modules', 'txID3-998472', 'dilkhush256@gmail.com', 'BizID-3', 'PnaPna', 0.00, '$', 'dilkhush256@gmail.com', 'null', NULL, 'Completed', 'vSign3-835314', '2021-09-13 18:43:33', NULL);

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

--
-- Dumping data for table `project_bid`
--

INSERT INTO `project_bid` (`id`, `project_id`, `serviceprovider_id`) VALUES
(1, 1, 1);

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
  `user_id` int(11) NOT NULL,
  `professional` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `hr_rate` varchar(255) NOT NULL,
  `project_worked` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_provider`
--

INSERT INTO `service_provider` (`id`, `user_id`, `professional`, `country`, `experience`, `hr_rate`, `project_worked`, `skill`, `description`) VALUES
(1, 1, 'Cleaner', '2', '3', '13', '22', '4', 'Test Description');

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
(2, 'twitter', 'https://twitter.com/', '<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>', 1, 1, '2021-07-19 01:05:11', '2021-08-05 04:20:06', NULL);

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
(1, 1, NULL, 1, NULL, '2021-08-07 18:09:31'),
(2, 2, NULL, 0, NULL, '2021-08-07 18:58:41'),
(3, 3, 'dilkhush256', 1, NULL, '2021-09-13 12:48:38'),
(4, 4, NULL, 0, NULL, '2021-10-05 12:34:44');

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
  `password_md5` varchar(255) NOT NULL,
  `verified_at` varchar(20) DEFAULT NULL,
  `account_name` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `marketplace_status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `l_name`, `email`, `password`, `password_md5`, `verified_at`, `account_name`, `phone`, `variant_id`, `status`, `marketplace_status`, `image`, `wpsite`, `pnapna_scope`, `pnapna_cal`, `pnapna_podium`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dilkhush', 'Yadav', 'incubersdilkhush@gmail.com', '$2a$08$fSDZqLqfDEdEeoOM23vd5.CO9ajz8Atq3FrXaxy77A4324ur7hniK', '', '2021-08-07 14:39:43', 'incdilkhush', NULL, 1, 1, 2, NULL, 0, 1, 0, 0, NULL, '2021-08-07 18:09:24', '2021-09-13 09:11:29'),
(2, 'Dilkhush727', '727', 'dilkhush727@gmail.com', '$2a$08$MUR5Nvpz7NdcS5n/Iq88L.bMwt5c6klXSfirEyUhR6JmfgFgs8O5y', '', '2021-08-07 15:30:28', 'woih4506097', '8003389727', 3, 1, 1, NULL, 0, 0, 0, 0, NULL, '2021-08-07 18:58:36', '2021-08-07 15:42:59'),
(3, 'Dilkhush256', 'Yadav', 'dilkhush256@gmail.com', '$2a$08$MUR5Nvpz7NdcS5n/Iq88L.bMwt5c6klXSfirEyUhR6JmfgFgs8O5y', '73a1a7cb3a1e80cac43749d559f86d0d', '2021-09-13 09:18:55', 'dilkhush256', NULL, 1, 1, 2, NULL, 0, 0, 0, 0, NULL, '2021-09-13 12:48:31', '2021-09-13 09:19:16'),
(4, 'Dilkhush', 'Yadav', 'dilkhushyadav@gmail.com', '$2a$08$RbkUjnZKrNYd2Y5JCO/pxOJy63Q41YHDC3mMzfoVvTIXSNi16UAQy', '27557c60b013ef19f9490b9d4de7314f', '2021-10-05 09:05:32', NULL, NULL, NULL, 1, 2, NULL, 0, 0, 0, 0, NULL, '2021-10-05 12:34:41', NULL);

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
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);

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
(1, 1, 1, '[{\"id\":\"40\",\"name\":\"Human Resources Management\",\"slug\":\"hrm\",\"price\":\"5\",\"status\":\"1\"},{\"id\":\"38\",\"name\":\"Mailbox\",\"slug\":\"mailbox\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"41\",\"name\":\"Mention\",\"slug\":\"mention\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"35\",\"name\":\"Private Chat\",\"slug\":\"privateChat\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"42\",\"name\":\"Recruitment\",\"slug\":\"recruitment\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"36\",\"name\":\"WhatsApp Chat\",\"slug\":\"whatsapp\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"39\",\"name\":\"WhiteBoard\",\"slug\":\"whiteBoard\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"37\",\"name\":\"Zoom Meeting\",\"slug\":\"zoomMeet\",\"price\":\"5\",\"status\":\"0\"}]', 0, '2021-08-17 18:34:59', '2021-08-17 03:04:59'),
(2, 1, 2, '[{\"id\":\"40\",\"name\":\"Human Resources Management\",\"slug\":\"hrm\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"38\",\"name\":\"Mailbox\",\"slug\":\"mailbox\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"41\",\"name\":\"Mention\",\"slug\":\"mention\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"35\",\"name\":\"Private Chat\",\"slug\":\"privateChat\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"42\",\"name\":\"Recruitment\",\"slug\":\"recruitment\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"36\",\"name\":\"WhatsApp Chat\",\"slug\":\"whatsapp\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"39\",\"name\":\"WhiteBoard\",\"slug\":\"whiteBoard\",\"price\":\"5\",\"status\":\"0\"},{\"id\":\"37\",\"name\":\"Zoom Meeting\",\"slug\":\"zoomMeet\",\"price\":\"5\",\"status\":\"0\"}]', 0, '2021-08-20 12:53:56', '2021-08-20 09:23:56'),
(3, 1, 3, 'null', 0, '2021-08-20 14:54:45', '2021-08-20 11:24:45'),
(4, 3, 4, 'null', 0, '2021-09-13 18:43:33', '2021-09-13 03:13:33');

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
(1, 'Free For Life/Core', 'pnapnacore.com', 'pnapnacore.com', 'core', 'activateAccCore', '0', 1, '', 'fab fa-superpowers', '#0eb58e', 1, 0, NULL, NULL, NULL),
(2, 'Lite BIZ', 'pnapnalitebiz.com', 'pnapnalitebiz.com', 'litebiz', 'activateAccount', '99', 0, '', 'fa fa-lightbulb-o', '#ad0353', 0, 0, NULL, NULL, NULL),
(3, 'Cleaning', 'pnapnacleaning.com', 'pnapnacleaning.com', 'cleaning', 'activateAccCleaning', '99', 0, '', 'fa fa-broom', '#4c75d4', 1, 0, NULL, NULL, NULL),
(8, 'Plumbing', 'plumbing.pnapna.com', 'plumbing.pnapna.in', 'plumbing', 'activateAccount', '99', 0, '', 'fa fa-wrench', '#ff8400', 0, 0, NULL, NULL, NULL),
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
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marketplace_chat`
--
ALTER TABLE `marketplace_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace_payment`
--
ALTER TABLE `marketplace_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketplace_project`
--
ALTER TABLE `marketplace_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_bid`
--
ALTER TABLE `project_bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subdomains`
--
ALTER TABLE `subdomains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_ip`
--
ALTER TABLE `users_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_modules`
--
ALTER TABLE `user_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
