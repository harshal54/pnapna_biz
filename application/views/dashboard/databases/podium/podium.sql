-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2021 at 08:17 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `podium`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `id` int NOT NULL,
  `add_on_name` varchar(255) NOT NULL,
  `unique_name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `installed_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `purchase_code` varchar(100) NOT NULL,
  `module_folder_name` varchar(255) NOT NULL,
  `project_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ad_config`
--

CREATE TABLE `ad_config` (
  `id` int NOT NULL,
  `section1_html` longtext,
  `section1_html_mobile` longtext,
  `section2_html` longtext,
  `section3_html` longtext,
  `section4_html` longtext,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alexa_info`
--

CREATE TABLE `alexa_info` (
  `id` int NOT NULL,
  `domain_name` varchar(250) NOT NULL,
  `reach_rank` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `country_rank` varchar(150) DEFAULT NULL,
  `traffic_rank` varchar(150) DEFAULT NULL,
  `user_id` int NOT NULL,
  `checked_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alexa_info_full`
--

CREATE TABLE `alexa_info_full` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_name` varchar(250) NOT NULL,
  `alexa_rank` varchar(150) DEFAULT NULL COMMENT 'alexa_info',
  `card_geography_country` varchar(150) DEFAULT NULL COMMENT 'alexa_info',
  `bounce_rate` varchar(255) DEFAULT NULL COMMENT 'alexa_info',
  `alexa_rank_spend_time` varchar(255) DEFAULT NULL COMMENT 'alexa_info',
  `site_search_traffic` varchar(255) NOT NULL,
  `total_sites_linking_in` varchar(255) NOT NULL,
  `total_keyword_opportunities_breakdown` varchar(255) NOT NULL,
  `keyword_opportunitites_values` text NOT NULL,
  `similar_sites` text NOT NULL,
  `similar_site_overlap` text NOT NULL,
  `keyword_top` text NOT NULL,
  `top_keywords` text NOT NULL,
  `search_traffic` text NOT NULL,
  `share_voice` text NOT NULL,
  `keyword_gaps` text NOT NULL,
  `keyword_gaps_trafic_competitor` text NOT NULL,
  `keyword_gaps_search_popularity` text NOT NULL,
  `easyto_rank_keyword` text NOT NULL,
  `easyto_rank_relevence` text NOT NULL,
  `easyto_rank_search_popularity` text NOT NULL,
  `buyer_keyword` text NOT NULL,
  `buyer_keyword_traffic_to_competitor` text NOT NULL,
  `buyer_keyword_organic_competitor` text NOT NULL,
  `optimization_opportunities` text NOT NULL,
  `optimization_opportunities_search_popularity` text NOT NULL,
  `optimization_opportunities_organic_share_of_voice` text NOT NULL,
  `refferal_sites` text NOT NULL,
  `refferal_sites_links` text NOT NULL,
  `top_keywords_search_traficc` text NOT NULL,
  `top_keywords_share_of_voice` text NOT NULL,
  `site_overlap_score` text NOT NULL,
  `similar_to_this_sites` text NOT NULL,
  `similar_to_this_sites_alexa_rank` text NOT NULL,
  `card_geography_countryPercent` text NOT NULL,
  `site_metrics` text NOT NULL,
  `site_metrics_domains` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `searched_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int NOT NULL DEFAULT '0' COMMENT '0 means all',
  `is_seen` enum('0','1') NOT NULL DEFAULT '0',
  `seen_by` text NOT NULL COMMENT 'if user_id = 0 then comma seperated user_ids',
  `last_seen_at` datetime NOT NULL,
  `color_class` varchar(50) NOT NULL DEFAULT 'primary',
  `icon` varchar(50) NOT NULL DEFAULT 'fas fa-bell',
  `status` enum('published','draft') NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `antivirus_scan_info`
--

CREATE TABLE `antivirus_scan_info` (
  `id` int NOT NULL,
  `domain_name` varchar(250) NOT NULL,
  `google_status` varchar(100) DEFAULT NULL,
  `macafee_status` varchar(100) DEFAULT NULL,
  `norton_status` varchar(100) DEFAULT NULL,
  `scanned_at` datetime NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backlink_generator`
--

CREATE TABLE `backlink_generator` (
  `id` int NOT NULL,
  `url` text NOT NULL,
  `domain_name` varchar(250) NOT NULL,
  `response_code` varchar(50) DEFAULT NULL,
  `status` enum('successful','failed') NOT NULL DEFAULT 'successful',
  `user_id` int NOT NULL,
  `generated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backlink_search`
--

CREATE TABLE `backlink_search` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_name` varchar(250) NOT NULL,
  `backlink_count` varchar(100) NOT NULL,
  `searched_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bitly_url_shortener`
--

CREATE TABLE `bitly_url_shortener` (
  `id` int NOT NULL,
  `long_url` text,
  `short_url` text,
  `short_url_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `google_safety_api` text,
  `moz_access_id` varchar(100) DEFAULT NULL,
  `moz_secret_key` varchar(100) DEFAULT NULL,
  `mobile_ready_api_key` varchar(100) NOT NULL,
  `virus_total_api` varchar(255) NOT NULL,
  `bitly_access_token` varchar(255) NOT NULL,
  `rebrandly_api_key` varchar(255) NOT NULL,
  `facebook_app_id` varchar(255) NOT NULL,
  `facebook_app_secret` varchar(255) NOT NULL,
  `access` enum('only_me','all_users') NOT NULL DEFAULT 'only_me'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config_proxy`
--

CREATE TABLE `config_proxy` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `proxy` varchar(100) DEFAULT NULL,
  `port` varchar(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `admin_permission` varchar(100) NOT NULL DEFAULT 'only me',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_port` varchar(100) NOT NULL,
  `smtp_user` varchar(100) NOT NULL,
  `smtp_type` enum('Default','tls','ssl') NOT NULL DEFAULT 'Default',
  `smtp_password` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `deleted` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_smtp_config`
--

CREATE TABLE `email_smtp_config` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `email_address` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_host` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_port` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_type` enum('Default','tls','ssl') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Default',
  `status` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `deleted` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_template_management`
--

CREATE TABLE `email_template_management` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `template_type` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fas fa-folder-open',
  `tooltip` text NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_template_management`
--

INSERT INTO `email_template_management` (`id`, `title`, `template_type`, `subject`, `message`, `icon`, `tooltip`, `info`) VALUES
(1, 'Signup Activation', 'signup_activation', '#APP_NAME# | Account Activation', '<p>To activate your account please perform the following steps :</p>\r\n<ol>\r\n<li>Go to this url : #ACTIVATION_URL#</li>\r\n<li>Enter this code : #ACCOUNT_ACTIVATION_CODE#</li>\r\n<li>Activate your account</li>\r\n</ol>', 'fas fa-skating', '#APP_NAME#,#ACTIVATION_URL#,#ACCOUNT_ACTIVATION_CODE#', 'When a new user open an account'),
(2, 'Reset Password', 'reset_password', '#APP_NAME# | Password Recovery', '<p>To reset your password please perform the following steps :</p>\r\n<ol>\r\n<li>Go to this url : #PASSWORD_RESET_URL#</li>\r\n<li>Enter this code : #PASSWORD_RESET_CODE#</li>\r\n<li>reset your password.</li>\r\n</ol>\r\n<h4>Link and code will be expired after 24 hours.</h4>', 'fas fa-retweet', '#APP_NAME#,#PASSWORD_RESET_URL#,#PASSWORD_RESET_CODE#', 'When a user forget login password'),
(3, 'Change Password', 'change_password', 'Change Password Notification', 'Dear #USERNAME#,<br/> \r\nYour <a href=\"#APP_URL#\">#APP_NAME#</a> password has been changed.<br>\r\nYour new password is: #NEW_PASSWORD#.<br/><br/> \r\nThank you,<br/>\r\n<a href=\"#APP_URL#\">#APP_NAME#</a> Team', 'fas fa-key', '#APP_NAME#,#APP_URL#,#USERNAME#,#NEW_PASSWORD#', 'When admin reset password of any user'),
(4, 'Subscription Expiring Soon', 'membership_expiration_10_days_before', 'Payment Alert', 'Dear #USERNAME#,\r\n<br/> Your account will expire after 10 days, Please pay your fees.<br/><br/>\r\nThank you,<br/>\r\n<a href=\"#APP_URL#\">#APP_NAME#</a> Team', 'fas fa-clock', '#APP_NAME#,#APP_URL#,#USERNAME#', '10 days before user subscription expires'),
(5, 'Subscription Expiring Tomorrow', 'membership_expiration_1_day_before', 'Payment Alert', 'Dear #USERNAME#,<br/>\r\nYour account will expire tomorrow, Please pay your fees.<br/><br/>\r\nThank you,<br/>\r\n<a href=\"#APP_URL#\">#APP_NAME#</a> Team', 'fas fa-stopwatch', '#APP_NAME#,#APP_URL#,#USERNAME#', '1 day before user subscription expires'),
(6, 'Subscription Expired', 'membership_expiration_1_day_after', 'Subscription Expired', 'Dear #USERNAME#,<br/>\r\nYour account has been expired, Please pay your fees for continuity.<br/><br/>\r\nThank you,<br/>\r\n<a href=\"#APP_URL#\">#APP_NAME#</a> Team', 'fas fa-user-clock', '#APP_NAME#,#APP_URL#,#USERNAME#', 'Subscription is already expired of a user'),
(7, 'Paypal Payment Confirmation', 'paypal_payment', 'Payment Confirmation', 'Congratulations,<br/> \r\nWe have received your payment successfully.<br/>\r\nNow you are able to use #PRODUCT_SHORT_NAME# system till #CYCLE_EXPIRED_DATE#.<br/><br/>\r\nThank you,<br/>\r\n<a href=\"#SITE_URL#\">#APP_NAME#</a> Team', 'fab fa-paypal', '#APP_NAME#,#CYCLE_EXPIRED_DATE#,#PRODUCT_SHORT_NAME#,#SITE_URL#', 'User pay through Paypal & gets confirmation'),
(8, 'Paypal New Payment', 'paypal_new_payment_made', 'New Payment Made', 'New payment has been made by #PAID_USER_NAME#', 'fab fa-cc-paypal', '#PAID_USER_NAME#', 'User pay through Paypal & admin gets notified'),
(9, 'Stripe Payment Confirmation', 'stripe_payment', 'Payment Confirmation', 'Congratulations,<br/>\r\nWe have received your payment successfully.<br/>\r\nNow you are able to use #APP_SHORT_NAME# system till #CYCLE_EXPIRED_DATE#.<br/><br/>\r\nThank you,<br/>\r\n<a href=\"#APP_URL#\">#APP_NAME#</a> Team', 'fab fa-stripe-s', '#APP_NAME#,#CYCLE_EXPIRED_DATE#,#PRODUCT_SHORT_NAME#,#SITE_URL#', 'User pay through Stripe & gets confirmation'),
(10, 'Stripe New Payment', 'stripe_new_payment_made', 'New Payment Made', 'New payment has been made by #PAID_USER_NAME#', 'fab fa-cc-stripe', '#PAID_USER_NAME#', 'User pay through Stripe & admin gets notified');

-- --------------------------------------------------------

--
-- Table structure for table `expired_domain_list`
--

CREATE TABLE `expired_domain_list` (
  `id` int NOT NULL,
  `domain_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `auction_type` enum('pre_release','pending_delete','public_auction') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `auction_end_date` datetime DEFAULT NULL,
  `sync_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `facebook_rx_config`
--

CREATE TABLE `facebook_rx_config` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `app_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fb_simple_support_desk`
--

CREATE TABLE `fb_simple_support_desk` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `ticket_title` text NOT NULL,
  `ticket_text` longtext NOT NULL,
  `ticket_status` enum('1','2','3') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1' COMMENT '1=> Open. 2 => Closed, 3 => Resolved',
  `display` enum('0','1') NOT NULL DEFAULT '1',
  `support_category` int NOT NULL,
  `last_replied_by` int NOT NULL,
  `last_replied_at` datetime NOT NULL,
  `last_action_at` datetime NOT NULL COMMENT 'close resolve reopen etc',
  `ticket_open_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fb_support_category`
--

CREATE TABLE `fb_support_category` (
  `id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fb_support_category`
--

INSERT INTO `fb_support_category` (`id`, `category_name`, `user_id`, `deleted`) VALUES
(1, 'Billing', 1, '0'),
(2, 'Technical', 1, '0'),
(3, 'Query', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `fb_support_desk_reply`
--

CREATE TABLE `fb_support_desk_reply` (
  `id` int NOT NULL,
  `ticket_reply_text` longtext NOT NULL,
  `ticket_reply_time` datetime NOT NULL,
  `reply_id` int NOT NULL COMMENT 'ticket_id',
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE `forget_password` (
  `id` int NOT NULL,
  `confirmation_code` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `success` int NOT NULL DEFAULT '0',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_domain_info`
--

CREATE TABLE `ip_domain_info` (
  `id` int NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `domain_name` varchar(250) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `searched_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_same_site`
--

CREATE TABLE `ip_same_site` (
  `id` int NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `website` longtext,
  `user_id` int NOT NULL,
  `searched_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_v6_check`
--

CREATE TABLE `ip_v6_check` (
  `id` int NOT NULL,
  `domain_name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ipv6` varchar(200) DEFAULT NULL,
  `searched_at` datetime NOT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `is_ipv6_support` varchar(10) NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_position`
--

CREATE TABLE `keyword_position` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_name` varchar(250) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `proxy` text,
  `google_position` varchar(100) DEFAULT NULL,
  `google_top_site_url` longtext,
  `bing_position` varchar(100) DEFAULT NULL,
  `bing_top_site_url` text,
  `yahoo_position` varchar(100) DEFAULT NULL,
  `yahoo_top_site_url` text,
  `searched_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_position_report`
--

CREATE TABLE `keyword_position_report` (
  `id` int NOT NULL,
  `keyword_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `google_position` varchar(100) NOT NULL,
  `bing_position` varchar(100) NOT NULL,
  `yahoo_position` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_position_set`
--

CREATE TABLE `keyword_position_set` (
  `id` int NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `website` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `language` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int NOT NULL,
  `add_date` datetime NOT NULL,
  `last_scan_date` date NOT NULL,
  `deleted` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_suggestion`
--

CREATE TABLE `keyword_suggestion` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `google_suggestion` text,
  `bing_suggestion` text,
  `yahoo_suggestion` text,
  `wiki_suggestion` text,
  `amazon_suggestion` text,
  `searched_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `link_analysis`
--

CREATE TABLE `link_analysis` (
  `id` int NOT NULL,
  `url` text NOT NULL,
  `user_id` int NOT NULL,
  `external_link_count` varchar(50) DEFAULT NULL,
  `internal_link_count` varchar(50) DEFAULT NULL,
  `nofollow_count` varchar(50) DEFAULT NULL,
  `do_follow_count` varchar(50) DEFAULT NULL,
  `external_link` longtext,
  `internal_link` longtext,
  `searched_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_config`
--

CREATE TABLE `login_config` (
  `id` int NOT NULL,
  `app_name` varchar(100) DEFAULT NULL,
  `api_key` varchar(250) DEFAULT NULL,
  `google_client_id` text,
  `google_client_secret` varchar(250) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial` int NOT NULL,
  `module_access` varchar(255) NOT NULL,
  `have_child` enum('1','0') NOT NULL DEFAULT '0',
  `only_admin` enum('1','0') NOT NULL DEFAULT '1',
  `only_member` enum('1','0') NOT NULL DEFAULT '0',
  `add_ons_id` int NOT NULL,
  `is_external` enum('0','1') NOT NULL DEFAULT '0',
  `header_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `icon`, `url`, `serial`, `module_access`, `have_child`, `only_admin`, `only_member`, `add_ons_id`, `is_external`, `header_text`) VALUES
(1, 'Dashboard', 'fa fa-fire', 'dashboard', 1, '', '0', '0', '0', 0, '0', ''),
(2, 'System', 'fas fa-laptop-code', '', 9, '', '1', '0', '0', 0, '0', 'Administration'),
(3, 'Subscription', 'fas fa-coins', '', 13, '', '1', '1', '0', 0, '0', ''),
(12, 'Analysis Tools', 'fas fa-chart-bar', 'menu_loader/analysis_tools', 17, '1,2,3,4,5,6,7,8', '0', '0', '0', 0, '0', 'SEO Tools'),
(14, 'Utlities', 'fas fa-ellipsis-h', 'menu_loader/utlities', 25, '12,13', '0', '0', '0', 0, '0', ''),
(15, 'URL Shortner', 'fas fa-cut', 'menu_loader/url_shortner', 29, '18', '0', '0', '0', 0, '0', ''),
(16, 'Keyword Tracking', 'fas fa-map-marker-alt', 'menu_loader/keyword_position_tracking', 33, '16', '0', '0', '0', 0, '0', ''),
(17, 'Security Tools', 'fa fa-shield', 'menu_loader/security_tools', 37, '10', '0', '0', '0', 0, '0', ''),
(19, 'Code Minifier', 'fa fa-object-group', 'menu_loader/code_minifier', 45, '17', '0', '0', '0', 0, '0', ''),
(20, 'Widgets', 'fas fa-puzzle-piece', 'native_widgets/get_widget', 54, '14', '0', '0', '0', 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu_child_1`
--

CREATE TABLE `menu_child_1` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial` int NOT NULL,
  `icon` varchar(255) NOT NULL,
  `module_access` varchar(255) NOT NULL,
  `parent_id` int NOT NULL,
  `have_child` enum('1','0') NOT NULL DEFAULT '0',
  `only_admin` enum('1','0') NOT NULL DEFAULT '1',
  `only_member` enum('1','0') NOT NULL DEFAULT '0',
  `is_external` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_child_1`
--

INSERT INTO `menu_child_1` (`id`, `name`, `url`, `serial`, `icon`, `module_access`, `parent_id`, `have_child`, `only_admin`, `only_member`, `is_external`) VALUES
(1, 'Settings', 'admin/settings', 1, 'fas fa-sliders-h', '', 2, '0', '1', '0', '0'),
(2, 'Social Apps & APIs', 'social_apps/index', 5, 'fas fa-hands-helping', '', 2, '0', '0', '0', '0'),
(3, 'Cron Job', 'cron_job/index', 9, 'fas fa-clipboard-list', '', 2, '0', '1', '0', '0'),
(4, 'Language Editor', 'multi_language/index', 13, 'fas fa-language', '', 2, '0', '1', '0', '0'),
(5, 'Add-on Manager', 'addons/lists', 17, 'fas fa-plug', '', 2, '0', '1', '0', '0'),
(6, 'Check Update', 'update_system/index', 21, 'fas fa-leaf', '', 2, '0', '1', '0', '0'),
(7, 'Package Manager', 'payment/package_manager', 1, 'fas fa-shopping-bag', '', 3, '0', '1', '0', '0'),
(8, 'User Manager', 'admin/user_manager', 5, 'fas fa-users', '', 3, '0', '1', '0', '0'),
(9, 'Announcement', 'announcement/full_list', 9, 'far fa-bell', '', 3, '0', '1', '0', '0'),
(10, 'Payment Accounts', 'payment/accounts', 13, 'far fa-credit-card', '', 3, '0', '1', '0', '0'),
(11, 'Earning Summary', 'payment/earning_summary', 17, 'fas fa-tachometer-alt', '', 3, '0', '1', '0', '0'),
(12, 'Transaction Log', 'payment/transaction_log', 27, 'fas fa-history', '', 3, '0', '1', '0', '0'),
(17, 'Theme Manager', 'themes/lists', 19, 'fas fa-palette', '', 2, '0', '1', '0', '0'),
(18, 'Native API', 'native_api/index', 5, 'fas fa-home', '', 2, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `menu_child_2`
--

CREATE TABLE `menu_child_2` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial` int NOT NULL,
  `icon` varchar(255) NOT NULL,
  `module_access` varchar(255) NOT NULL,
  `parent_child` int NOT NULL,
  `only_admin` enum('1','0') NOT NULL DEFAULT '1',
  `only_member` enum('1','0') NOT NULL DEFAULT '0',
  `is_external` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int NOT NULL,
  `module_name` varchar(250) DEFAULT NULL,
  `add_ons_id` int NOT NULL,
  `extra_text` varchar(50) NOT NULL DEFAULT 'month',
  `limit_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `bulk_limit_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES
(1, 'Visitor Analysis', 0, '', '1', '1', '0'),
(2, 'Website Analysis', 0, 'Month', '1', '1', '0'),
(3, 'Social Network Analysis', 0, '', '1', '1', '0'),
(4, 'Rank & Index Analysis', 0, 'Month', '1', '1', '0'),
(5, 'Domain Analysis', 0, 'Month', '1', '1', '0'),
(6, 'IP Analysis', 0, 'Month', '1', '1', '0'),
(7, 'Link Analysis', 0, 'Month', '1', '1', '0'),
(8, 'Keyword Analysis', 0, 'Month', '1', '1', '0'),
(10, 'Security Tools', 0, 'Month', '1', '1', '0'),
(12, 'Plagiarism Check', 0, 'Month', '1', '1', '0'),
(13, 'Utilities', 0, '', '1', '1', '0'),
(14, 'Native Widget', 0, '', '1', '1', '0'),
(15, 'Native API', 0, 'Month', '1', '1', '0'),
(16, 'Keyword Position Tracking', 0, '', '1', '1', '0'),
(17, 'Code Minifier', 0, '', '1', '1', '0'),
(18, 'URL Shortener', 0, 'Month', '1', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `moz_info`
--

CREATE TABLE `moz_info` (
  `id` int NOT NULL,
  `url` text NOT NULL,
  `mozrank_subdomain_normalized` varchar(150) NOT NULL,
  `mozrank_subdomain_raw` varchar(150) NOT NULL,
  `mozrank_url_normalized` varchar(150) NOT NULL,
  `mozrank_url_raw` varchar(150) NOT NULL,
  `http_status_code` varchar(150) NOT NULL,
  `domain_authority` varchar(150) NOT NULL,
  `page_authority` varchar(150) NOT NULL,
  `external_equity_links` varchar(150) NOT NULL,
  `links` varchar(150) NOT NULL,
  `user_id` int NOT NULL,
  `checked_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `native_api`
--

CREATE TABLE `native_api` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `api_key` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `native_widgets`
--

CREATE TABLE `native_widgets` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_name` varchar(250) NOT NULL,
  `domain_code` varchar(250) NOT NULL,
  `js_code` text NOT NULL,
  `table_name` text NOT NULL,
  `add_date` date NOT NULL,
  `dashboard` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int NOT NULL,
  `package_name` varchar(250) NOT NULL,
  `module_ids` varchar(250) NOT NULL,
  `monthly_limit` text,
  `bulk_limit` text,
  `price` varchar(20) NOT NULL DEFAULT '0',
  `validity` int NOT NULL,
  `validity_extra_info` varchar(255) NOT NULL DEFAULT '1,M',
  `is_default` enum('0','1') NOT NULL DEFAULT '0',
  `visible` enum('0','1') NOT NULL DEFAULT '1',
  `highlight` enum('0','1') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `package_name`, `module_ids`, `monthly_limit`, `bulk_limit`, `price`, `validity`, `validity_extra_info`, `is_default`, `visible`, `highlight`, `deleted`) VALUES
(1, 'Trial', '9,17,5,6,8,16,7,15,14,12,4,10,3,18,13,1,2', '{\"9\":\"0\",\"17\":\"0\",\"5\":\"0\",\"6\":\"0\",\"8\":\"0\",\"16\":\"0\",\"7\":\"0\",\"15\":\"0\",\"14\":\"0\",\"12\":\"0\",\"4\":\"0\",\"10\":\"0\",\"3\":\"0\",\"18\":\"0\",\"13\":\"0\",\"1\":\"1\",\"2\":\"5\"}', '{\"9\":\"0\",\"17\":\"0\",\"5\":\"0\",\"6\":\"0\",\"8\":\"0\",\"16\":\"0\",\"7\":\"0\",\"15\":\"0\",\"14\":\"0\",\"12\":\"0\",\"4\":\"0\",\"10\":\"0\",\"3\":\"0\",\"18\":\"0\",\"13\":\"0\",\"1\":\"1\",\"2\":\"5\"}', 'Trial', 7, '1,W', '1', '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `page_status`
--

CREATE TABLE `page_status` (
  `id` int NOT NULL,
  `url` text NOT NULL,
  `user_id` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `http_code` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total_time` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `namelookup_time` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `connect_time` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `speed_download` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `check_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_config`
--

CREATE TABLE `payment_config` (
  `id` int NOT NULL,
  `paypal_email` varchar(250) NOT NULL,
  `paypal_payment_type` enum('manual','recurring') NOT NULL DEFAULT 'manual',
  `paypal_mode` enum('live','sandbox') NOT NULL DEFAULT 'live',
  `stripe_secret_key` varchar(150) NOT NULL,
  `stripe_publishable_key` varchar(150) NOT NULL,
  `currency` enum('USD','AUD','BRL','CAD','CZK','DKK','EUR','HKD','HUF','ILS','JPY','MYR','MXN','TWD','NZD','NOK','PHP','PLN','GBP','RUB','SGD','SEK','CHF','VND','BDT') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `manual_payment` enum('no','yes') NOT NULL DEFAULT 'no',
  `manual_payment_instruction` text,
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_error_log`
--

CREATE TABLE `paypal_error_log` (
  `id` int NOT NULL,
  `call_time` datetime DEFAULT NULL,
  `ipn_value` text,
  `error_log` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rebrandly_url_shortener`
--

CREATE TABLE `rebrandly_url_shortener` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `long_url` text NOT NULL,
  `short_url` text NOT NULL,
  `short_url_id` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `domainId` varchar(255) NOT NULL,
  `slashtag` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `search_engine_index`
--

CREATE TABLE `search_engine_index` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `google_index` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bing_index` varchar(20) DEFAULT NULL,
  `yahoo_index` varchar(20) DEFAULT NULL,
  `checked_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_info`
--

CREATE TABLE `social_info` (
  `id` int NOT NULL,
  `domain_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` varchar(222) NOT NULL,
  `reddit_score` varchar(222) DEFAULT NULL,
  `reddit_up` varchar(222) DEFAULT NULL,
  `reddit_dowon` varchar(222) DEFAULT NULL,
  `linked_in_share` varchar(222) DEFAULT NULL,
  `buffer_share` varchar(222) DEFAULT NULL,
  `fb_like` varchar(222) DEFAULT NULL,
  `fb_share` varchar(222) DEFAULT NULL,
  `fb_comment` varchar(222) DEFAULT NULL,
  `fb_comment_plugin` varchar(255) NOT NULL,
  `google_plus_count` varchar(222) DEFAULT NULL,
  `xing_share_count` varchar(222) DEFAULT NULL,
  `pinterest_pin` varchar(255) NOT NULL,
  `search_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int NOT NULL,
  `verify_status` varchar(200) NOT NULL,
  `first_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `paypal_email` varchar(200) NOT NULL,
  `receiver_email` varchar(200) NOT NULL,
  `country` varchar(100) NOT NULL,
  `payment_date` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_id` varchar(150) NOT NULL,
  `paid_amount` int NOT NULL,
  `user_id` int NOT NULL,
  `cycle_start_date` date NOT NULL,
  `cycle_expired_date` date NOT NULL,
  `package_id` int NOT NULL,
  `stripe_card_source` text NOT NULL,
  `paypal_txn_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history_manual`
--

CREATE TABLE `transaction_history_manual` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `package_id` int NOT NULL,
  `transaction_id` varchar(150) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `paid_currency` char(4) NOT NULL,
  `additional_info` longtext NOT NULL,
  `filename` varchar(255) NOT NULL,
  `status` enum('0','1') DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `update_list`
--

CREATE TABLE `update_list` (
  `id` int NOT NULL,
  `files` text NOT NULL,
  `sql_query` text NOT NULL,
  `update_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usage_log`
--

CREATE TABLE `usage_log` (
  `id` bigint NOT NULL,
  `module_id` int NOT NULL,
  `user_id` int NOT NULL,
  `usage_month` int NOT NULL,
  `usage_year` year NOT NULL,
  `usage_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `password` varchar(99) NOT NULL,
  `address` text NOT NULL,
  `user_type` enum('Member','Admin') NOT NULL,
  `status` enum('1','0') NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `purchase_date` datetime NOT NULL,
  `last_login_at` datetime NOT NULL,
  `activation_code` varchar(20) DEFAULT NULL,
  `expired_date` datetime NOT NULL,
  `bot_status` enum('0','1') NOT NULL DEFAULT '1',
  `package_id` int NOT NULL,
  `deleted` enum('0','1') NOT NULL,
  `brand_logo` text,
  `brand_url` text,
  `vat_no` varchar(100) DEFAULT NULL,
  `currency` enum('USD','AUD','CAD','EUR','ILS','NZD','RUB','SGD','SEK','BRL') NOT NULL DEFAULT 'USD',
  `time_zone` varchar(255) DEFAULT NULL,
  `company_email` varchar(200) DEFAULT NULL,
  `paypal_email` varchar(100) NOT NULL,
  `paypal_subscription_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `last_payment_method` varchar(50) NOT NULL,
  `last_login_ip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `address`, `user_type`, `status`, `add_date`, `purchase_date`, `last_login_at`, `activation_code`, `expired_date`, `bot_status`, `package_id`, `deleted`, `brand_logo`, `brand_url`, `vat_no`, `currency`, `time_zone`, `company_email`, `paypal_email`, `paypal_subscription_enabled`, `last_payment_method`, `last_login_ip`) VALUES
(1, '{{name}}', '{{email}}', '', '{{password}}', '', 'Admin', '1', '', '0000-00-00 00:00:00', '2021-04-29 07:57:14', NULL, '0000-00-00 00:00:00', '1', 0, '0', '', NULL, NULL, 'USD', '', NULL, '', '0', '', '157.38.11.252');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_info`
--

CREATE TABLE `user_login_info` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `login_time` datetime NOT NULL,
  `login_ip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login_info`
--

INSERT INTO `user_login_info` (`id`, `user_id`, `user_name`, `user_email`, `login_time`, `login_ip`) VALUES
(1, 1, 'Incuber Services LLP', 'incubersjaipur@gmail.com', '2021-04-05 06:05:21', '183.83.42.0'),
(2, 1, 'Incuber Services LLP', 'incubersjaipur@gmail.com', '2021-04-12 07:33:16', '183.83.42.221'),
(3, 1, 'Incuber Services LLP', 'incubersjaipur@gmail.com', '2021-04-29 07:56:28', '27.58.78.99'),
(4, 1, 'Incuber Services LLP', 'incubersjaipur@gmail.com', '2021-04-29 07:57:14', '157.38.11.252');

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `id` int NOT NULL,
  `version` varchar(255) NOT NULL,
  `current` enum('1','0') NOT NULL DEFAULT '1',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`id`, `version`, `current`, `date`) VALUES
(1, '6.1.7', '1', '2021-04-05 06:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `virustotal`
--

CREATE TABLE `virustotal` (
  `id` int NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `response_code` varchar(50) NOT NULL,
  `permalink` tinytext NOT NULL,
  `verbose_msg` varchar(255) NOT NULL,
  `positives` int NOT NULL,
  `total` int NOT NULL,
  `scans` longtext NOT NULL,
  `scanned_at` datetime NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_analysis_domain_list`
--

CREATE TABLE `visitor_analysis_domain_list` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_name` varchar(200) NOT NULL,
  `domain_code` varchar(50) NOT NULL,
  `js_code` text NOT NULL,
  `add_date` date NOT NULL,
  `dashboard` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_analysis_domain_list_data`
--

CREATE TABLE `visitor_analysis_domain_list_data` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_list_id` int NOT NULL,
  `domain_code` varchar(50) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `country` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `org` varchar(250) NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `longitude` varchar(250) NOT NULL,
  `postal` varchar(250) NOT NULL,
  `os` varchar(250) NOT NULL,
  `device` varchar(250) NOT NULL,
  `browser_name` varchar(200) NOT NULL,
  `browser_version` varchar(200) NOT NULL,
  `date_time` datetime NOT NULL,
  `referrer` varchar(200) NOT NULL,
  `visit_url` text NOT NULL,
  `cookie_value` varchar(200) NOT NULL,
  `session_value` varchar(200) NOT NULL,
  `is_new` int NOT NULL,
  `last_scroll_time` datetime NOT NULL,
  `last_engagement_time` datetime NOT NULL,
  `browser_rawdata` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `website_analysis_info`
--

CREATE TABLE `website_analysis_info` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `search_at` datetime NOT NULL,
  `screenshot` longtext,
  `domain_name` varchar(250) NOT NULL,
  `alexa_rank` varchar(150) DEFAULT NULL COMMENT 'alexa_info',
  `card_geography_country` varchar(150) DEFAULT NULL COMMENT 'alexa_info',
  `bounce_rate` varchar(255) DEFAULT NULL COMMENT 'alexa_info',
  `alexa_rank_spend_time` varchar(255) DEFAULT NULL COMMENT 'alexa_info',
  `site_search_traffic` varchar(255) NOT NULL,
  `total_sites_linking_in` varchar(255) NOT NULL,
  `total_keyword_opportunities_breakdown` varchar(255) NOT NULL,
  `keyword_opportunitites_values` text NOT NULL,
  `similar_sites` text NOT NULL,
  `similar_site_overlap` text NOT NULL,
  `keyword_top` text NOT NULL,
  `top_keywords` text NOT NULL,
  `search_traffic` text NOT NULL,
  `share_voice` text NOT NULL,
  `keyword_gaps` text NOT NULL,
  `keyword_gaps_trafic_competitor` text NOT NULL,
  `keyword_gaps_search_popularity` text NOT NULL,
  `easyto_rank_keyword` text NOT NULL,
  `easyto_rank_relevence` text NOT NULL,
  `easyto_rank_search_popularity` text NOT NULL,
  `buyer_keyword` text NOT NULL,
  `buyer_keyword_traffic_to_competitor` text NOT NULL,
  `buyer_keyword_organic_competitor` text NOT NULL,
  `optimization_opportunities` text NOT NULL,
  `optimization_opportunities_search_popularity` text NOT NULL,
  `optimization_opportunities_organic_share_of_voice` text NOT NULL,
  `refferal_sites` text NOT NULL,
  `refferal_sites_links` text NOT NULL,
  `top_keywords_search_traficc` text NOT NULL,
  `top_keywords_share_of_voice` text NOT NULL,
  `site_overlap_score` text NOT NULL,
  `similar_to_this_sites` text NOT NULL,
  `similar_to_this_sites_alexa_rank` text NOT NULL,
  `card_geography_countryPercent` text NOT NULL,
  `site_metrics` text NOT NULL,
  `site_metrics_domains` text NOT NULL,
  `status` varchar(100) NOT NULL COMMENT 'alexa_info',
  `title` text,
  `h1` text COMMENT 'meta tag info',
  `h2` text COMMENT 'meta tag info',
  `h3` text COMMENT 'meta tag info',
  `h4` text COMMENT 'meta tag info',
  `h5` text COMMENT 'meta tag info',
  `h6` text COMMENT 'meta tag info',
  `blocked_by_robot_txt` varchar(20) DEFAULT NULL COMMENT 'meta tag info',
  `meta_tag_information` text COMMENT 'meta tag info',
  `blocked_by_meta_robot` varchar(20) DEFAULT NULL COMMENT 'meta tag info',
  `nofollowed_by_meta_robot` varchar(20) DEFAULT NULL COMMENT 'meta tag info',
  `one_phrase` text COMMENT 'meta tag info',
  `two_phrase` text COMMENT 'meta tag info',
  `three_phrase` text COMMENT 'meta tag info',
  `four_phrase` text COMMENT 'meta tag info',
  `total_words` int NOT NULL DEFAULT '0',
  `dmoz_listed_or_not` varchar(150) DEFAULT NULL,
  `fb_total_share` varchar(150) DEFAULT NULL,
  `fb_total_like` varchar(150) DEFAULT NULL,
  `fb_total_comment` varchar(150) DEFAULT NULL,
  `google_back_link_count` varchar(150) DEFAULT NULL,
  `yahoo_back_link_count` varchar(150) DEFAULT NULL,
  `bing_back_link_count` varchar(150) DEFAULT NULL,
  `google_index_count` varchar(150) DEFAULT NULL,
  `google_page_rank` varchar(150) DEFAULT NULL,
  `bing_index_count` varchar(150) DEFAULT NULL,
  `yahoo_index_count` varchar(150) DEFAULT NULL,
  `whois_is_registered` varchar(150) DEFAULT NULL,
  `whois_tech_email` varchar(150) DEFAULT NULL,
  `whois_admin_email` varchar(150) DEFAULT NULL,
  `whois_name_servers` varchar(150) DEFAULT NULL,
  `whois_created_at` date NOT NULL,
  `whois_changed_at` date NOT NULL,
  `whois_expire_at` date NOT NULL,
  `whois_registrar_url` varchar(150) DEFAULT NULL,
  `whois_registrant_name` varchar(150) DEFAULT NULL,
  `whois_registrant_organization` varchar(150) DEFAULT NULL,
  `whois_registrant_street` varchar(150) DEFAULT NULL,
  `whois_registrant_city` varchar(150) DEFAULT NULL,
  `whois_registrant_state` varchar(150) DEFAULT NULL,
  `whois_registrant_postal_code` varchar(150) DEFAULT NULL,
  `whois_registrant_email` varchar(150) DEFAULT NULL,
  `whois_registrant_country` varchar(150) DEFAULT NULL,
  `whois_registrant_phone` varchar(150) DEFAULT NULL,
  `whois_admin_name` varchar(150) DEFAULT NULL,
  `whois_admin_street` varchar(150) DEFAULT NULL,
  `whois_admin_city` varchar(150) DEFAULT NULL,
  `whois_admin_postal_code` varchar(150) DEFAULT NULL,
  `whois_admin_country` varchar(150) DEFAULT NULL,
  `whois_admin_phone` varchar(150) DEFAULT NULL,
  `googleplus_share_count` varchar(150) DEFAULT NULL,
  `pinterest_pin` varchar(150) DEFAULT NULL,
  `stumbleupon_total_view` varchar(150) DEFAULT NULL,
  `stumbleupon_total_comment` varchar(150) DEFAULT NULL,
  `stumbleupon_total_like` varchar(150) DEFAULT NULL,
  `stumbleupon_total_list` varchar(150) DEFAULT NULL,
  `linkedin_share_count` varchar(150) DEFAULT NULL,
  `buffer_share_count` varchar(150) DEFAULT NULL,
  `reddit_score` varchar(150) DEFAULT NULL,
  `reddit_ups` varchar(150) DEFAULT NULL,
  `reddit_downs` varchar(150) DEFAULT NULL,
  `xing_share_count` varchar(150) DEFAULT NULL,
  `moz_subdomain_normalized` varchar(150) DEFAULT NULL,
  `moz_subdomain_raw` varchar(150) DEFAULT NULL,
  `moz_url_normalized` varchar(150) DEFAULT NULL,
  `moz_url_raw` varchar(150) DEFAULT NULL,
  `moz_http_status_code` varchar(150) DEFAULT NULL,
  `moz_domain_authority` varchar(150) DEFAULT NULL,
  `moz_page_authority` varchar(150) DEFAULT NULL,
  `moz_external_equity_links` varchar(150) DEFAULT NULL,
  `moz_links` varchar(150) DEFAULT NULL,
  `ipinfo_isp` varchar(150) DEFAULT NULL,
  `ipinfo_ip` varchar(150) DEFAULT NULL,
  `ipinfo_city` varchar(150) DEFAULT NULL,
  `ipinfo_region` varchar(150) DEFAULT NULL,
  `ipinfo_country` varchar(150) DEFAULT NULL,
  `ipinfo_time_zone` varchar(150) DEFAULT NULL,
  `ipinfo_longitude` varchar(150) DEFAULT NULL,
  `ipinfo_latitude` varchar(150) DEFAULT NULL,
  `macafee_status` varchar(150) DEFAULT NULL,
  `norton_status` varchar(150) DEFAULT NULL,
  `google_safety_status` varchar(150) DEFAULT NULL,
  `avg_status` varchar(150) DEFAULT NULL,
  `similar_site` text,
  `loadingexperience_metrics` text NOT NULL,
  `originloadingexperience_metrics` text NOT NULL,
  `lighthouseresult_configsettings` text NOT NULL,
  `lighthouseresult_audits` longtext NOT NULL,
  `lighthouseresult_categories` text NOT NULL,
  `sites_in_same_ip` longtext,
  `completed_step_count` int NOT NULL,
  `completed_step_string` longtext NOT NULL,
  `screenshot_error` text NOT NULL,
  `google_api_error` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website_analysis_info`
--

INSERT INTO `website_analysis_info` (`id`, `user_id`, `search_at`, `screenshot`, `domain_name`, `alexa_rank`, `card_geography_country`, `bounce_rate`, `alexa_rank_spend_time`, `site_search_traffic`, `total_sites_linking_in`, `total_keyword_opportunities_breakdown`, `keyword_opportunitites_values`, `similar_sites`, `similar_site_overlap`, `keyword_top`, `top_keywords`, `search_traffic`, `share_voice`, `keyword_gaps`, `keyword_gaps_trafic_competitor`, `keyword_gaps_search_popularity`, `easyto_rank_keyword`, `easyto_rank_relevence`, `easyto_rank_search_popularity`, `buyer_keyword`, `buyer_keyword_traffic_to_competitor`, `buyer_keyword_organic_competitor`, `optimization_opportunities`, `optimization_opportunities_search_popularity`, `optimization_opportunities_organic_share_of_voice`, `refferal_sites`, `refferal_sites_links`, `top_keywords_search_traficc`, `top_keywords_share_of_voice`, `site_overlap_score`, `similar_to_this_sites`, `similar_to_this_sites_alexa_rank`, `card_geography_countryPercent`, `site_metrics`, `site_metrics_domains`, `status`, `title`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `blocked_by_robot_txt`, `meta_tag_information`, `blocked_by_meta_robot`, `nofollowed_by_meta_robot`, `one_phrase`, `two_phrase`, `three_phrase`, `four_phrase`, `total_words`, `dmoz_listed_or_not`, `fb_total_share`, `fb_total_like`, `fb_total_comment`, `google_back_link_count`, `yahoo_back_link_count`, `bing_back_link_count`, `google_index_count`, `google_page_rank`, `bing_index_count`, `yahoo_index_count`, `whois_is_registered`, `whois_tech_email`, `whois_admin_email`, `whois_name_servers`, `whois_created_at`, `whois_changed_at`, `whois_expire_at`, `whois_registrar_url`, `whois_registrant_name`, `whois_registrant_organization`, `whois_registrant_street`, `whois_registrant_city`, `whois_registrant_state`, `whois_registrant_postal_code`, `whois_registrant_email`, `whois_registrant_country`, `whois_registrant_phone`, `whois_admin_name`, `whois_admin_street`, `whois_admin_city`, `whois_admin_postal_code`, `whois_admin_country`, `whois_admin_phone`, `googleplus_share_count`, `pinterest_pin`, `stumbleupon_total_view`, `stumbleupon_total_comment`, `stumbleupon_total_like`, `stumbleupon_total_list`, `linkedin_share_count`, `buffer_share_count`, `reddit_score`, `reddit_ups`, `reddit_downs`, `xing_share_count`, `moz_subdomain_normalized`, `moz_subdomain_raw`, `moz_url_normalized`, `moz_url_raw`, `moz_http_status_code`, `moz_domain_authority`, `moz_page_authority`, `moz_external_equity_links`, `moz_links`, `ipinfo_isp`, `ipinfo_ip`, `ipinfo_city`, `ipinfo_region`, `ipinfo_country`, `ipinfo_time_zone`, `ipinfo_longitude`, `ipinfo_latitude`, `macafee_status`, `norton_status`, `google_safety_status`, `avg_status`, `similar_site`, `loadingexperience_metrics`, `originloadingexperience_metrics`, `lighthouseresult_configsettings`, `lighthouseresult_audits`, `lighthouseresult_categories`, `sites_in_same_ip`, `completed_step_count`, `completed_step_string`, `screenshot_error`, `google_api_error`) VALUES
(1, 0, '2021-04-12 09:05:41', NULL, 'righttohand.com', 'No data', '[]', 'No data', 'No data', 'No data', 'No data', 'No data', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', 'success', NULL, '[]', '[]', '[]', '[]', '[]', '[]', 'No', '{\"title\":\"\"}', 'No', 'No', '[]', '[]', '[]', '[]', 0, NULL, '0', '0', '0', '0', '0', '0', '0', NULL, '0', '0', 'No', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Unknown ', 'untested', 'undefined API', NULL, '', '', '', '', '', '', '[]', 21, '<a href=\'#\' class=\'list-group-item text-primary\'>1.  MOZ Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>2.  Mobile Friendly Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>3.  Backlink Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>4.  Alexa Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>5.  Facebook Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>6.  Pinterest Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>7.  Stumbleupon Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>8.  Buffer Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>9.  Google Index Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>10.  Reddit Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>11.  Xing Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>12.  Bing Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>13.  Yahoo Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>14.  Metatag Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>15.  Whois Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>16.  IP Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>17.  Site\'s in same IP - Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>18.  Macafee Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>19.  Norton Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>20.  Google Safety Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>21.  Similar Site Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a>', 'Lighthouse returned error: FAILED_DOCUMENT_REQUEST. Lighthouse was unable to reliably load the page you requested. Make sure you are testing the correct URL and that the server is properly responding to all requests. (Details: net::ERR_CONNECTION_FAILED)', 'Lighthouse returned error: FAILED_DOCUMENT_REQUEST. Lighthouse was unable to reliably load the page you requested. Make sure you are testing the correct URL and that the server is properly responding to all requests. (Details: net::ERR_CONNECTION_FAILED)');
INSERT INTO `website_analysis_info` (`id`, `user_id`, `search_at`, `screenshot`, `domain_name`, `alexa_rank`, `card_geography_country`, `bounce_rate`, `alexa_rank_spend_time`, `site_search_traffic`, `total_sites_linking_in`, `total_keyword_opportunities_breakdown`, `keyword_opportunitites_values`, `similar_sites`, `similar_site_overlap`, `keyword_top`, `top_keywords`, `search_traffic`, `share_voice`, `keyword_gaps`, `keyword_gaps_trafic_competitor`, `keyword_gaps_search_popularity`, `easyto_rank_keyword`, `easyto_rank_relevence`, `easyto_rank_search_popularity`, `buyer_keyword`, `buyer_keyword_traffic_to_competitor`, `buyer_keyword_organic_competitor`, `optimization_opportunities`, `optimization_opportunities_search_popularity`, `optimization_opportunities_organic_share_of_voice`, `refferal_sites`, `refferal_sites_links`, `top_keywords_search_traficc`, `top_keywords_share_of_voice`, `site_overlap_score`, `similar_to_this_sites`, `similar_to_this_sites_alexa_rank`, `card_geography_countryPercent`, `site_metrics`, `site_metrics_domains`, `status`, `title`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `blocked_by_robot_txt`, `meta_tag_information`, `blocked_by_meta_robot`, `nofollowed_by_meta_robot`, `one_phrase`, `two_phrase`, `three_phrase`, `four_phrase`, `total_words`, `dmoz_listed_or_not`, `fb_total_share`, `fb_total_like`, `fb_total_comment`, `google_back_link_count`, `yahoo_back_link_count`, `bing_back_link_count`, `google_index_count`, `google_page_rank`, `bing_index_count`, `yahoo_index_count`, `whois_is_registered`, `whois_tech_email`, `whois_admin_email`, `whois_name_servers`, `whois_created_at`, `whois_changed_at`, `whois_expire_at`, `whois_registrar_url`, `whois_registrant_name`, `whois_registrant_organization`, `whois_registrant_street`, `whois_registrant_city`, `whois_registrant_state`, `whois_registrant_postal_code`, `whois_registrant_email`, `whois_registrant_country`, `whois_registrant_phone`, `whois_admin_name`, `whois_admin_street`, `whois_admin_city`, `whois_admin_postal_code`, `whois_admin_country`, `whois_admin_phone`, `googleplus_share_count`, `pinterest_pin`, `stumbleupon_total_view`, `stumbleupon_total_comment`, `stumbleupon_total_like`, `stumbleupon_total_list`, `linkedin_share_count`, `buffer_share_count`, `reddit_score`, `reddit_ups`, `reddit_downs`, `xing_share_count`, `moz_subdomain_normalized`, `moz_subdomain_raw`, `moz_url_normalized`, `moz_url_raw`, `moz_http_status_code`, `moz_domain_authority`, `moz_page_authority`, `moz_external_equity_links`, `moz_links`, `ipinfo_isp`, `ipinfo_ip`, `ipinfo_city`, `ipinfo_region`, `ipinfo_country`, `ipinfo_time_zone`, `ipinfo_longitude`, `ipinfo_latitude`, `macafee_status`, `norton_status`, `google_safety_status`, `avg_status`, `similar_site`, `loadingexperience_metrics`, `originloadingexperience_metrics`, `lighthouseresult_configsettings`, `lighthouseresult_audits`, `lighthouseresult_categories`, `sites_in_same_ip`, `completed_step_count`, `completed_step_string`, `screenshot_error`, `google_api_error`) VALUES
(2, 0, '2021-04-29 08:13:30', 'data:image/jpeg;base64,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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf/9k=', 'befitcrm.com', 'No data', '[]', 'No data', 'No data', 'No data', 'No data', 'No data', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', 'success', NULL, '[\"Welcome to nginx!\"]', '[]', '[]', '[]', '[]', '[]', 'No', '{\"title\":\"Welcome to nginx!\"}', 'No', 'No', '{\"nginx\":3,\"support\":2,\"page\":1,\"web\":1,\"server\":1,\"successfully\":1,\"installed\":1,\"working\":1,\"configuration\":1,\"required\":1,\"online\":1,\"documentation\":1,\"refer\":1,\"nginxorg\":1,\"Commercial\":1,\"nginxcom\":1}', '{\" Welcome to\":1,\" Commercial support\":1,\" documentation and\":1,\" and support\":1,\" support please\":1,\" please refer\":1,\" refer to\":1,\" to nginxorg\":1,\" nginxorg Commercial\":1,\" support is\":1,\" For online\":1,\" is available\":1,\" available at\":1,\" at nginxcom\":1,\" nginxcom Thank\":1,\" Thank you\":1,\" you for\":1,\" for using\":1,\" online documentation\":1,\" required For\":1}', '{\" Welcome to nginx\":1,\" Commercial support is\":1,\" documentation and support\":1,\" and support please\":1,\" support please refer\":1,\" please refer to\":1,\" refer to nginxorg\":1,\" to nginxorg Commercial\":1,\" nginxorg Commercial support\":1,\" support is available\":1,\" For online documentation\":1,\" is available at\":1,\" available at nginxcom\":1,\" at nginxcom Thank\":1,\" nginxcom Thank you\":1,\" Thank you for\":1,\" you for using\":1,\" for using nginx\":1,\" online documentation and\":1,\" required For online\":1}', '{\" Welcome to nginx If\":1,\" Commercial support is available\":1,\" documentation and support please\":1,\" and support please refer\":1,\" support please refer to\":1,\" please refer to nginxorg\":1,\" refer to nginxorg Commercial\":1,\" to nginxorg Commercial support\":1,\" nginxorg Commercial support is\":1,\" support is available at\":1,\" For online documentation and\":1,\" is available at nginxcom\":1,\" available at nginxcom Thank\":1,\" at nginxcom Thank you\":1,\" nginxcom Thank you for\":1,\" Thank you for using\":1,\" you for using nginx\":1,\" for using nginx\":1,\" online documentation and support\":1,\" required For online documentation\":1}', 43, NULL, '0', '0', '0', '0', '0', '0', '0', NULL, '0', '0', 'Yes', 'Select Contact Domain Holder link at https://www.godaddy.com/whois/results.aspx?domain=befitcrm.com', 'Select Contact Domain Holder link at https://www.godaddy.com/whois/results.aspx?domain=befitcrm.com', 'NS3.DIGITALOCEAN.COM', '2021-04-27', '2021-04-27', '2022-04-27', 'http://www.godaddy.com', '', '', '', '', 'Rajasthan', '', 'Select Contact Domain Holder link at https://www.godaddy.com/whois/results.aspx?domain=befitcrm.com', 'IN', '', '', '', '', '', '', '', NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', 'AS14061 DigitalOcean, LLC', '164.90.182.43', 'Frankfurt am Main', 'Hesse', 'GERMANY (Deutschland)', 'Europe/Berlin', '8.6842', '50.1155', 'Unknown ', 'safe', 'undefined API', NULL, '', '{\"initial_url\":\"http:\\/\\/befitcrm.com\\/\"}', '', '{\"emulatedFormFactor\":\"mobile\",\"formFactor\":\"mobile\",\"locale\":\"en-US\",\"onlyCategories\":[\"performance\"],\"channel\":\"lr\"}', '{\"performance-budget\":{\"id\":\"performance-budget\",\"title\":\"Performance budget\",\"description\":\"Keep the quantity and size of network requests under the targets set by the provided performance budget. [Learn more](https:\\/\\/developers.google.com\\/web\\/tools\\/lighthouse\\/audits\\/budgets).\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\"},\"largest-contentful-paint\":{\"id\":\"largest-contentful-paint\",\"title\":\"Largest Contentful Paint\",\"description\":\"Largest Contentful Paint marks the time at which the largest text or image is painted. [Learn more](https:\\/\\/web.dev\\/lighthouse-largest-contentful-paint\\/)\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0.7\\u00a0s\",\"numericValue\":650},\"max-potential-fid\":{\"id\":\"max-potential-fid\",\"title\":\"Max Potential First Input Delay\",\"description\":\"The maximum potential First Input Delay that your users could experience is the duration of the longest task. [Learn more](https:\\/\\/web.dev\\/lighthouse-max-potential-fid\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"20\\u00a0ms\",\"numericValue\":16},\"uses-passive-event-listeners\":{\"id\":\"uses-passive-event-listeners\",\"title\":\"Uses passive listeners to improve scrolling performance\",\"description\":\"Consider marking your touch and wheel event listeners as `passive` to improve your page\'s scroll performance. [Learn more](https:\\/\\/web.dev\\/uses-passive-event-listeners\\/).\",\"score\":1,\"scoreDisplayMode\":\"binary\",\"details\":{\"headings\":[],\"type\":\"table\",\"items\":[]}},\"uses-optimized-images\":{\"id\":\"uses-optimized-images\",\"title\":\"Efficiently encode images\",\"description\":\"Optimized images load faster and consume less cellular data. [Learn more](https:\\/\\/web.dev\\/uses-optimized-images\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"warnings\":[],\"numericValue\":0},\"redirects\":{\"id\":\"redirects\",\"title\":\"Avoid multiple page redirects\",\"description\":\"Redirects introduce additional delays before the page can be loaded. [Learn more](https:\\/\\/web.dev\\/redirects\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"numericValue\":0},\"duplicated-javascript\":{\"id\":\"duplicated-javascript\",\"title\":\"Remove duplicate modules in JavaScript bundles\",\"description\":\"Remove large, duplicate JavaScript modules from bundles to reduce unnecessary bytes consumed by network activity. \",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"details\":{\"items\":[],\"headings\":[],\"overallSavingsMs\":0,\"type\":\"opportunity\",\"overallSavingsBytes\":0},\"numericValue\":0},\"network-rtt\":{\"id\":\"network-rtt\",\"title\":\"Network Round Trip Times\",\"description\":\"Network round trip times (RTT) have a large impact on performance. If the RTT to an origin is high, it\'s an indication that servers closer to the user could improve performance. [Learn more](https:\\/\\/hpbn.co\\/primer-on-latency-and-bandwidth\\/).\",\"score\":null,\"scoreDisplayMode\":\"informative\",\"displayValue\":\"0\\u00a0ms\",\"numericValue\":0},\"estimated-input-latency\":{\"id\":\"estimated-input-latency\",\"title\":\"Estimated Input Latency\",\"description\":\"Estimated Input Latency is an estimate of how long your app takes to respond to user input, in milliseconds, during the busiest 5s window of page load. If your latency is higher than 50 ms, users may perceive your app as laggy. [Learn more](https:\\/\\/web.dev\\/estimated-input-latency\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"10\\u00a0ms\",\"numericValue\":12.8},\"preload-lcp-image\":{\"id\":\"preload-lcp-image\",\"title\":\"Preload Largest Contentful Paint image\",\"description\":\"Preload the image used by the LCP element in order to improve your LCP time. [Learn more](https:\\/\\/web.dev\\/optimize-lcp\\/#preload-important-resources).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"details\":{\"headings\":[],\"overallSavingsMs\":0,\"items\":[],\"type\":\"opportunity\"},\"numericValue\":0},\"total-byte-weight\":{\"id\":\"total-byte-weight\",\"title\":\"Avoids enormous network payloads\",\"description\":\"Large network payloads cost users real money and are highly correlated with long load times. [Learn more](https:\\/\\/web.dev\\/total-byte-weight\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"Total size was 1\\u00a0KiB\",\"numericValue\":654},\"final-screenshot\":{\"id\":\"final-screenshot\",\"title\":\"Final Screenshot\",\"description\":\"The last screenshot captured of the pageload.\",\"score\":null,\"scoreDisplayMode\":\"informative\",\"details\":{\"data\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj\\/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj\\/wAARCAHyARgDASIAAhEBAxEB\\/8QAHAABAAIDAQEBAAAAAAAAAAAAAAUGAwQHAgEI\\/8QANBAAAgICAQMDAwIFBAIDAQAAAAECAwQRBQYSIRMxQRQiUQdxFSMyYYEzQlKRFiQXYpLB\\/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAECAwT\\/xAAnEQEAAgIABAQHAAAAAAAAAAAAAQIDEQQSMUETFDJRU2GRsdHh8P\\/aAAwDAQACEQMRAD8A\\/VIAAAAAAAA2Dmv68XZ3F9N8X1FxkMi23heToyrKaN91tLfZOOl77UgOlbX5QbSW29L+5+W+guO6uj1vxXC8nLPvx62+qnOcpKM5zoSVDf4V2l2\\/hM+2dWdY8\\/0V1TRzXIwvnfw+ROzjljThfiXxmklHVMUo6etSnJvw0\\/cD9Rg4pg9T8+urcvCyeWyMGWHCmHG8OsBShyMXQpd0rnFtbnteJLt7fPuVnA6\\/63lwPL5FHJ5Odlx4OWbcpcZGv+G5qsUVTFdn3eN\\/bLuf27+QP0iD8839RfqHx3JcirOfuzKOP5DjF2PjKo\\/UV5MYOyDaXiMO5+V5\\/LJTpfrDrHO\\/VCeHyufRh4i5G\\/FlxFtEu50RT9Oytqre3pPudna9+y8AdyBxPrLL57iv1ztycLkc549nT0p4WD6KlRlZEJT1RvXhtpS7tqXnW9aRu\\/o51T1BzXPTxuR5O\\/lsKXGVZWRZbgrH+jy5SalQtRjta86e2te\\/kDr4OI871H1rR1pyluJylseIwefwsCGB9DXKNtF1cO9+p292k5N73\\/n8Q\\/CdedU5XXeFxvKcnkQsy8vkKcniJ8dGFdFVUJel2WuG578NtSYH6GTTW001+UD8zY3UfXVXSmDHh+Rs4yGF0lHlpU18ZU1bkRusThpw+3cYx8L\\/AKLJyXW\\/VUOv+M4+jkMiPT+VZhvOzI8fCX0Ns65N46l26am1Hcmm4b1sDuqe\\/YFB\\/SHFuxcPqZX5f1Pqc9m2Vvum+yDs+2P3Jey+F4\\/BfgAAAAAAAAAAAAAAAAAAAAAAAAAAAAFe6s5Ozj8jhoU5leO8rLdLjNx\\/m\\/yrJKPn8yjH28gWEaKbV1Bn8R0PxPL8pX9ZK2MJZcqveCsT7XFJeV3uEX+E2\\/g0o9e3Vcjk42diYtKx0\\/W\\/nvux1GyqDlamtRjJWOUXvzGDf7Bf9eRrXsVDK6v10jLm8VYbreVZRCdmQo1OEbpVqak2k9qO9J+d+CCl+pd3o5NscHFca41\\/Y8jtnBSlXH1ZxlqSr1Z3baX2pNvz4Dpg0t7+Sm53Uub\\/AAHp7kqJYFEMzMhTkzncp0qDU1uM148yUdP+6RCYHW\\/LU8HC7Px8WzIjRVkxmr1XGyM1fpTlKOoeafL9kpe\\/jyHTQkl7FNs6wnX0RDnP\\/Qc5ZNeO5TucKI918anJz8+F3b2trx7kPP8AUqyvkOPxvpMa6eTROcq67n3NxrusU4bW5VyVPhpf7l+zDpRAcd0b09x3PX81h8TjV8rdKcp5Om57m9ya37bfvrWyqVfqPdLJpoVXGWxlkyp+qry0qLdRpl21ylpOf85+N\\/7Pnfiz9U85LD4FZ\\/F5OH2wy66LLb5fyoL1VXZ3P409pv4aAsYOb5PW\\/KcXjOzMx8K6m+22NGQrnGFcY3qvusbSSjqS15\\/Cb87U1y3U+dRwXCZmDh4luTyO24zyG64JY9lzanFPu\\/09L487AtwOc5v6gXfxGWLVRjRUoKSh638+K7a5dzjprtfqNJ\\/\\/AFf+MtnXefjPIlfxVVyi1KinFtlK62HrW1NKLityXpqevbXd+PIdBBVOe6pu4vieKy6cOGZPkI9lUaZtxdzj3Rinr+lpTblr\\/b7Fa5j9Rc1cbZPFxcbHldg25WO7b1GycGrHVOEZf1PthCTjp\\/1NfHkOoAgukOas5vCyLbXhz9G701bh3erVYu2Mtxlpb13af90ydAAAAAAAAAAAAAAAAAAAAAABD9R89j8DXjTyoScb7PTUu6MIxet+ZSaS\\/C8+WTBD9S2cJXixn1D9L9PDc08lJx8Lz7gQU+seN5azHw4cZmZnrZMI0xSh2zlFTsUtuSS16Len59vB7y\\/1B4mjFptVGVbO3x6UILuUlGUpQfn+qPa01+WkbdeZ0phZsZ1vAqyO6VsZxgl2y++Le9eG9Wr+\\/wB2t+TSyeS6UspzYzxMSyuPdn69OMfWm4ycrFvXnUXuT0vPv5AlY9RV3cTy+dXh3xx8CFklO3tStcE29JNta18pe44LqXF5i3MrqpnC3FjuyEpR737\\/AOzfck9eG1p\\/B5nzXTlUMzAndjRjqfr0dnie5KM1rX3Pc4ppb8yX5NzhsbiZ0yzeKx6FHITjKyFfa5JN7T+fffgCK4\\/rbjs3EsuhVYowrnbKKlCTiouCaai32y+9fa9Nef7GWrqyq\\/0PpeOzLvqbLK8bTrXrKHd3yW5LSXb86b2v76heCzuk+WxI3WcPi4dEe62p3qmTnqKlJ6hKTWowi2paf2r8G5lZfSMc+vE+jxr78nKlF+nj9yVyhObcnrw9d3\\/68+4GDK654XLxrPWwr7MWm+txssUYVbjOTjNzbSjqVe\\/u17x\\/J55PrqFijj8bgOy+eU8WcbbIKUIqFk5ScVLu041S17J7TTPWFy3RWfwkOQsqwaactQttrsq01KUO\\/wC5a+FNtv28vyTGFDpmX1WXi04GsScpXXKtJVyipxl518JzXj8v8gQ2Z1LicIsfH4jBj23L17PUb226+9Pe229JLz+ETvT\\/AC+Bl3ZXHcfjTp+jUvWg4pRrk7JrX7vtlL9mm\\/dEfTb0djRjCFGBTFpz1LH7e3w152vDaTST90vBr3dUcHwsL8rB78t511uRfKOo9vp0qUm3LSS7FDW\\/fa868ge8Pr3FvxbbpcfmuFVblKVcYyU5qmNzhFb7m+2a90lsyU9bUWV5V6xP\\/TpoqtjdHIqkrJWWSgoLUtN7j40\\/Pt7+DYjkdKxslgKvCg3NQdfo6i5vtp0nrTfmEPH9kYLpdHRqlXKjBlCNKm4wo7tV+o2n4X\\/NSf7psCFj1nxizsfmlgy9HIr1G2bfqxjKqElFRb1FuTjF+y8e5LLrevJycSjCwb5TndTC+VmoxpjZZOEX77k265Na38b9zzRyPSFmPKrHxcJ4dMa16noxjSq51pqSk\\/Gu3X9zI8royiWLlyhgQnU2qrJU6lX2tSbfjcUvUUtvWu7fyBucx1hgcVzP8Nvrtna6pWbqcZaca5WdrW9xbjCTW9bNDL63hGN1VHF5Lz6H\\/NqscEqo\\/wAp9zal52ro+Ft+\\/wCDf5xdOYfKxyeWxcRZdsPtvsrjKctr0+1L+ptqTXhe20SF\\/B8RnThkX8diWz36inOpN71Fb9vxCH\\/5X4AlEkl4WgAAAAAAAAAAAAAAAAAAAAAAACO5nhsPmFiLPg7I41yvhHek5JNLf5XnevykSJEc9xMuVtwt2yhVTOc5KM5Rbbg1H299Np6fjwBGf+C8R6OPRGWUseqmul1ep4s9Pu7JS8bcl3ye9+Xre9GTl+k+Hyr7MvKlbRdbj\\/QzthZ2udUk4+m\\/ym5J6\\/KTRVp9G87j8NKqM68y6MJ7rs5CzUrHCKV0f5a1LcW+1+Nyb7tknidNc+siSuzaVjwstsrkr5uc1ZlK\\/Uo9ul2x3Bab8a9l4AluX6Rxsyv1MS+ePnVysnRdL71XOdldjl27W\\/NUdLevfezb6Z4+HG0\\/RvkbMvJorUb02ku6UpT7+34b7n8+yRWOP6K5PCyuFms+dsMXEoquby7E43R36li3GXf37XhuP9K\\/xIdD9PcpwNuRLL+il9R6SulC+yyU3Ctxdm5RX3Sl5a+NvywJDP6RwMviMLj425OPViVyqrsplFTcJVuuSbaae4v8bM\\/\\/AI3hxWP6c765U5UsuMoyW3KUHCSe17OMmibAFUl0JxHp46rd0J0V11Qm+ybUYVqtLU4teyW\\/HuiYjwmHHhcni9TeLkO5zTl5\\/mSlKWn+8nokwBW8vpHFzVNZ2bn5EbUlapzgla477W9RXmPd41r2W9nvN6Q4zMoyabvX7MiqdM9T19s6VS9eP+MV\\/ksIApr6I9bksi7K5K36Xv8AUxKaYKLxp+tC7u7m33Pvgn5Wvda0br6N47+Gyw1Zk9slSnNyjKTdVkrItpx7X90nva1\\/YsoAqtfQvEx4qXGTlk2cfOqNU6JzWpKMe3baSe3F68PRmn0dx12PmV5VuXfPLqupvunNd81ZCEJN6SW+2uCXj4LIAIbqDp3D52LWZKaTr9KSUYSUo7T01OLXul8ErjUwxsaqivu7K4KEe57ekteWZAAAAAAAAAAAAAAAAAAAAAAAAAAIfqPnquDjiO3HtyJ5NjrhGudcPKi5eXZKK9l+SYNDksTDuvxMjNlGP003KvvaUW3Fx87\\/AHA0\\/wDyrhVByt5Cipxkq3Gcv9z3pL4fmMl42tpo3MrmOPxcunFyMquu+5Jwg\\/nfhb\\/G34W\\/d+xA8fwHETy8bKrz8i54uTOONXOcUqpVympVxXam0m5e+39q8m9yPFcdyWbDOnnzjXKVddlddkPTulCTlBNtN7Um\\/Ca387AxXdacMsCOZiZMMvHfdudUkkkqpW7bk0tOMfD9vJty6p4SLyFLkaE6H2zW3vfd26X\\/ACfd40t+fBFy6J4bI4x4CvyJU148cSXbbHuUY0SpW\\/Hv2Tb\\/AH0z7y3S\\/CZtFDyMqcHR6ltVinB9rc1ZKWpJp61rymtN\\/uBLcp1FxnG8NHk78qDxbId9Lg9u77XLUUvfwm\\/2Wzwup+HTcbc6mq2NaslXKXlJqL1\\/d\\/dHwvP3L8ojbeJ4vn+C42rH5G+qFFT9G+n067JVyg65bi4dumm\\/aK+NaMGb0vwv1eLK7ksiqd1ndhwVsEo3qMf5kNx8y7a14e17+PIE9HqDipY1l\\/11KqrbjOUnrtar9Rpp+zUPu\\/Y18bq3gcl2+hymNL0oSsn92u2Mdbb\\/AO0\\/2afyiPt6RwcyWRffyudfVepO9d9XbOx0ulzbUPD7NLSaX2rx7n3M6V4TKrvV983HLnN\\/6sdOThXB9vj3Spi\\/nzv9gN+PVnBydShyVEpWf0pbb93HT\\/D7otaevK17mvi9bcHkcZi5scqUIZOL9XXXOtxnKHY5Nfju0n438GPj+n+JqoUVlztc3Xa3L063L07HYn2xjFJbfnx7f38mrh9B8ZjWYsnnZt1WJTGiNdrqaUIQcIpyUFJJRlrw1v3e3tuzEx1Eji9YcNfjfUSylTS1BxdnhtSgp7aXlaT8t617+3kkOP5zjORzLsXBzab8ilyU4Qe2nGXbL\\/prT\\/BX6+j+Njj6r5XNU7K1CV6sq7p1KtV9v9GtOMF5S343sl+E4Hj+PlTfgTnKMPqOz71KOrrfVn8fEvC\\/t+SaH2zqjha45Dnn1RePYqrItPuUnvS1rb32vWvfTGP1NxeVyWJhYWTDJsyI98ZVPuio9nen3e3lNP8AyjQ4fonj+Ky5ZFWRl2zdkJr1HDx2OxxW1FOX+rLbk2342z3wPR+Hwl2I8PLzXj4se2rHslBwT9NVuW+1S21FfOt78ASUOe4uzMliwzapXxt9BxW\\/9TzuKfs2u17Xxo159WcFCUYz5TGj3VK5Ny0nBw709+39O5fsm\\/g0cvovDyORuz1mZlOZO5XQtqjVF1yW\\/b7Pu8Sa+\\/uen4fyR9\\/6e02YluNHk8tURphVjVyjBquUaPRVkvG5S7W\\/G1Hz7eEBYaup+FtlRGHI0d98uyEW9NvaWmn7eWl5921+Tzg9UcTn8rXx+Fk+vdZXOyMq4tw1FpNd3tv7kaC6KwpZUcm7Mzrb5ThPInKUF9T2TU4KaUUkoyitdvb8p72SeHwOPhZGBbj3Xx+kpnjqO4tWQk0\\/u8b8OKa1oCWAAAAAAAAAAAAAAAAAAAAACsdb8JbzcMGEHgxqqnY7Z5lHrQipVyjtR7o+fPvss5A9UcZPkLOPs+joz6Me2U7MW5rtnuDSflNNpv5Arv8A8eSi8H0uUU4Y9k7P51Lm\\/N7ui4tTWpJtJt7T0nr4MON+nOTU6bJ8piSvhkK5zWE9f0qL1F2OKbS92ml8JGzPguoXPMhi2RwqZ1zjTCrIahXBwgoVxiklFxkpPuX\\/APfHurpvna75xXI3vGsss71LLm5Kv6mEq0n7pqrvi9fn59wN7pHpF9PfxJSzI5P1UYwjP0pRnpOb3NuTUpfzH5Sjv5\\/tFQ\\/Taim7jnj5OPCjFw6sWdX0zSbgppzh2zSi5epLuTUtniXTnVFNdkKOStlXLs7ozyZTk+2y72ba19kqfnz2v\\/O3jcDzlNFc8nMysuf1Cdlf1koOdKpUUtrwn3\\/c9e\\/5+ANa39OqZ5dt312O8SdKqdcsdvs1Sqmk1NR7Go7cWn5be\\/xPdRdMUcvi8ZVhzow68OcpV9lKajCdU632aa7Wu\\/uTW9OK8MrOd031RZTVRjX11VK2+Uu296lCy+yTjNez\\/lyivbe9+Sf5niuYlhcDXxdyhZiOCvg7HGuaSinvtal409PevymBr09I5GF0dznE0W4lmRyNUq4qul49Ne6Y1eI7lrxHuf5bfsQ+T0jynfujCwa1bleoqYanXRDuql9sn2uLbhJ+IS3v49zNdx\\/VEcrHjl\\/UX4zdVDjRlSi5uP1LlOUkl2p91K\\/eKRhxeJ6suy+SgsrIqspmq432XyVdsXhVLthHWv8AWcn3\\/lSX5R3w8TfD6WZrFur5X0hzNddMvoeHnkVaSttulLaVdkO1r09uL9Tyt\\/Gvkz1dPdR0dP2cLCHHzx7IyTnflTnZY9xa732fclppr5i0vGtvNZ0zzWZi58czIvdTSeJjLNnuGrXLtlJf1PWtN71vXwSnVXEcpn4nH\\/wu2eNZTXJTas3NNqOl3P3Xhp+U2t+V7nW3G5LTudJ4cK\\/X0fykoZUs7C46VllLjGWPPudb9SdjjCEopdsnJRcXJbW\\/PktfRXGZ3FcRXRmyohuy+10119vbKy+di01JpJKaWlvTXuyP5vjeoMrpfj8TGshXnxX\\/ALFlV04tPtenFuT+db25f59zVy+G6o7M2NearYSjX6Kd0oyi5uDu9teV2ScPOvva9l555eJvlry26b2sUiJ2vDsgpqDnFTftHfljvh3uHdHvS7nHflL8nOIdNdTrFwbrbqLuRpp7J2Tte5SdSg3tabfu\\/dHzF6Y6kjn4uRZkzd0Y1Vu95T2q45M5yjOKWp7ql2r8N\\/22edp0mEozipQalFraae0z6UfpXguoON5mqXIZrngVVQrrqrn9iiqYRcWn896lLaXz7\\/BqZ3T\\/AFHm8vnW5NieC74W1Y9eVKKahkRlFp73FutPfstvwvGwOhgL2AAAAAAAAAAAAAAAAAAAAAAAK91fyOVg140cPKqxp2eo3Odanvtg2lpv5lpf5LCaXLclx3F48b+VzMXEpb7VZkWRhHf42zeO0UtuY2kxuFAfVnI3StryLFC5OLnQqnCNS9aCjqaf3brcpPz48ppaaPsureWo4mu15FF+bOFNnpqjSj3Qk7I\\/1eHHSa29t6j\\/ALlq\\/cfl8fyELLePux8iEZKM51SUltxUkm1\\/9ZRf7NG36cP+Mf8Ao9fmcXw\\/76fv592OWfdTuW6sqhbhRxc3sx3KUbr\\/AKd2SckouK7F5UXt7l7LWvBD4vVnK5VvpLLppi0nO2ePr059ljlXHbXdFONaU\\/Z9z9\\/jomLZjZWPXfjSrtpsipQnDTUl+UzL6cP+Mf8AozXPirXXJ9vws1me6sdJ81lZdtlGfN5M5Sg4W00NQjupSlGTW0tS7kt\\/t7lpPiUYp6SSMGDm42fjxvwroX0S\\/psg9xf7P5PNktFrbiNNRGobAB4uuqogp3WRri5RgnJ6TlJpJfu20v8AJhXsAAAeLrqqYxldZCClJQTk9bk3pL923o9gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAi+o+Mny2FRixnCNX1NNt3d\\/uhCxTcV+7il+zZKACgZ\\/R\\/KK3JyuPvx\\/qsy215andOKtrnbFqKfbJRca4Rjvtfz+dnivovmKuLwo18jB8ji1VwhdO+xqMo1z3rx5TslFeV\\/Qv8AB0IAUqHTedxHQHIcRgXTyM1VOrCuU9SWklT3eyio6jtLxqO\\/d6MOd0pzN+bjTXIwcYxqtlf6tkZ13xsnOxxgvDjZuEPL+2EWlvZewBU+P4Xl5cJyuPyN2PHKycaOLSqrp2QhGNfb3OTin3OUpt6Xtoir+iM15sasS+rE46qcVW6siyNjo7YxlRpLUY\\/1y2m33OPto6CAK11HxPKSw8anpyzHqdVd0F9RdNdspQajPaUnLTben7\\/kgl0fzMc26dGdGqhzckp5U7Zy1CxQXd2JqKlKuXb92u3w\\/wA9CAHMOb6S5aGW8TBjPI43Jk04\\/VTiqNxpj6zbe5TXba9e33J72WbqXp3L5jk6L45XpUY0avRjG2cX3etGdsml4b7K4xjv\\/lL2+bSAOYcF0z1Hd9Rl5M44WT2qEYzvnL17I1Wr1Zpb13Tti2vhVR1vwSNfRnJUZzeJyCqwo5UbfS9e1u2rsqhOuTftvslPa23Jryl3bvwAw4X1DxavrY0xyNffGmTlBP8As2k3\\/wBGYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP\\/Z\",\"type\":\"screenshot\",\"timing\":341,\"timestamp\":1102412735060}},\"uses-long-cache-ttl\":{\"id\":\"uses-long-cache-ttl\",\"title\":\"Uses efficient cache policy on static assets\",\"description\":\"A long cache lifetime can speed up repeat visits to your page. [Learn more](https:\\/\\/web.dev\\/uses-long-cache-ttl\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0 resources found\",\"numericValue\":0},\"first-cpu-idle\":{\"id\":\"first-cpu-idle\",\"title\":\"First CPU Idle\",\"description\":\"First CPU Idle marks the first time at which the page\'s main thread is quiet enough to handle input.  [Learn more](https:\\/\\/web.dev\\/first-cpu-idle\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0.7\\u00a0s\",\"numericValue\":650},\"largest-contentful-paint-element\":{\"id\":\"largest-contentful-paint-element\",\"title\":\"Largest Contentful Paint element\",\"description\":\"This is the largest contentful element painted within the viewport. [Learn More](https:\\/\\/web.dev\\/lighthouse-largest-contentful-paint\\/)\",\"score\":null,\"scoreDisplayMode\":\"informative\",\"displayValue\":\"1 element found\",\"details\":{\"headings\":[{\"key\":\"node\",\"text\":\"Element\",\"itemType\":\"node\"}],\"type\":\"table\",\"items\":[{\"node\":{\"path\":\"1,HTML,1,BODY,2,P\",\"lhId\":\"page-0-P\",\"boundingRect\":{\"height\":132,\"top\":233,\"left\":210,\"right\":770,\"bottom\":365,\"width\":560},\"selector\":\"body > p\",\"snippet\":\"<p>\",\"nodeLabel\":\"For online documentation and support please refer to nginx.org.\\nCommercial supp\\u2026\",\"type\":\"node\"}}]}},\"non-composited-animations\":{\"id\":\"non-composited-animations\",\"title\":\"Avoid non-composited animations\",\"description\":\"Animations which are not composited can be janky and increase CLS. [Learn more](https:\\/\\/web.dev\\/non-composited-animations)\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\",\"details\":{\"items\":[],\"type\":\"table\",\"headings\":[]}},\"total-blocking-time\":{\"id\":\"total-blocking-time\",\"title\":\"Total Blocking Time\",\"description\":\"Sum of all time periods between FCP and Time to Interactive, when task length exceeded 50ms, expressed in milliseconds. [Learn more](https:\\/\\/web.dev\\/lighthouse-total-blocking-time\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0\\u00a0ms\",\"numericValue\":0},\"uses-rel-preload\":{\"id\":\"uses-rel-preload\",\"title\":\"Preload key requests\",\"description\":\"Consider using `<link rel=preload>` to prioritize fetching resources that are currently requested later in page load. [Learn more](https:\\/\\/web.dev\\/uses-rel-preload\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"numericValue\":0},\"user-timings\":{\"id\":\"user-timings\",\"title\":\"User Timing marks and measures\",\"description\":\"Consider instrumenting your app with the User Timing API to measure your app\'s real-world performance during key user experiences. [Learn more](https:\\/\\/web.dev\\/user-timings\\/).\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\"},\"resource-summary\":{\"id\":\"resource-summary\",\"title\":\"Keep request counts low and transfer sizes small\",\"description\":\"To set budgets for the quantity and size of page resources, add a budget.json file. [Learn more](https:\\/\\/web.dev\\/use-lighthouse-for-performance-budgets\\/).\",\"score\":null,\"scoreDisplayMode\":\"informative\",\"displayValue\":\"1 request \\u2022 1 KiB\"},\"long-tasks\":{\"id\":\"long-tasks\",\"title\":\"Avoid long main-thread tasks\",\"description\":\"Lists the longest tasks on the main thread, useful for identifying worst contributors to input delay. [Learn more](https:\\/\\/web.dev\\/long-tasks-devtools\\/)\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\",\"details\":{\"items\":[],\"headings\":[],\"type\":\"table\"}},\"dom-size\":{\"id\":\"dom-size\",\"title\":\"Avoids an excessive DOM size\",\"description\":\"A large DOM will increase memory usage, cause longer [style calculations](https:\\/\\/developers.google.com\\/web\\/fundamentals\\/performance\\/rendering\\/reduce-the-scope-and-complexity-of-style-calculations), and produce costly [layout reflows](https:\\/\\/developers.google.com\\/speed\\/articles\\/reflow). [Learn more](https:\\/\\/web.dev\\/dom-size\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"8 elements\",\"numericValue\":8},\"interactive\":{\"id\":\"interactive\",\"title\":\"Time to Interactive\",\"description\":\"Time to interactive is the amount of time it takes for the page to become fully interactive. [Learn more](https:\\/\\/web.dev\\/interactive\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0.7\\u00a0s\",\"numericValue\":650},\"uses-responsive-images\":{\"id\":\"uses-responsive-images\",\"title\":\"Properly size images\",\"description\":\"Serve images that are appropriately-sized to save cellular data and improve load time. [Learn more](https:\\/\\/web.dev\\/uses-responsive-images\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"numericValue\":0},\"unused-javascript\":{\"id\":\"unused-javascript\",\"title\":\"Remove unused JavaScript\",\"description\":\"Remove unused JavaScript to reduce bytes consumed by network activity. [Learn more](https:\\/\\/web.dev\\/unused-javascript\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"details\":{\"type\":\"opportunity\",\"overallSavingsBytes\":0,\"items\":[],\"overallSavingsMs\":0,\"headings\":[]},\"numericValue\":0},\"cumulative-layout-shift\":{\"id\":\"cumulative-layout-shift\",\"title\":\"Cumulative Layout Shift\",\"description\":\"Cumulative Layout Shift measures the movement of visible elements within the viewport. [Learn more](https:\\/\\/web.dev\\/cls\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0\",\"details\":{\"items\":[{\"finalLayoutShiftTraceEventFound\":false}],\"type\":\"debugdata\"},\"numericValue\":0},\"uses-webp-images\":{\"id\":\"uses-webp-images\",\"title\":\"Serve images in next-gen formats\",\"description\":\"Image formats like JPEG 2000, JPEG XR, and WebP often provide better compression than PNG or JPEG, which means faster downloads and less data consumption. [Learn more](https:\\/\\/web.dev\\/uses-webp-images\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"warnings\":[],\"numericValue\":0},\"unminified-css\":{\"id\":\"unminified-css\",\"title\":\"Minify CSS\",\"description\":\"Minifying CSS files can reduce network payload sizes. [Learn more](https:\\/\\/web.dev\\/unminified-css\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"numericValue\":0},\"unused-css-rules\":{\"id\":\"unused-css-rules\",\"title\":\"Remove unused CSS\",\"description\":\"Remove dead rules from stylesheets and defer the loading of CSS not used for above-the-fold content to reduce unnecessary bytes consumed by network activity. [Learn more](https:\\/\\/web.dev\\/unused-css-rules\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"numericValue\":0},\"offscreen-images\":{\"id\":\"offscreen-images\",\"title\":\"Defer offscreen images\",\"description\":\"Consider lazy-loading offscreen and hidden images after all critical resources have finished loading to lower time to interactive. [Learn more](https:\\/\\/web.dev\\/offscreen-images\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"warnings\":[],\"numericValue\":0},\"mainthread-work-breakdown\":{\"id\":\"mainthread-work-breakdown\",\"title\":\"Minimizes main-thread work\",\"description\":\"Consider reducing the time spent parsing, compiling and executing JS. You may find delivering smaller JS payloads helps with this. [Learn more](https:\\/\\/web.dev\\/mainthread-work-breakdown\\/)\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0.1\\u00a0s\",\"numericValue\":78.63199999999996},\"first-contentful-paint-3g\":{\"id\":\"first-contentful-paint-3g\",\"title\":\"First Contentful Paint (3G)\",\"description\":\"First Contentful Paint 3G marks the time at which the first text or image is painted while on a 3G network. [Learn more](https:\\/\\/developers.google.com\\/web\\/tools\\/lighthouse\\/audits\\/first-contentful-paint).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"1250\\u00a0ms\",\"numericValue\":1250},\"network-requests\":{\"id\":\"network-requests\",\"title\":\"Network Requests\",\"description\":\"Lists the network requests that were made during page load.\",\"score\":null,\"scoreDisplayMode\":\"informative\"},\"full-page-screenshot\":{\"id\":\"full-page-screenshot\",\"title\":\"Full-page screenshot\",\"description\":\"A full-height screenshot of the final rendered page\",\"score\":null,\"scoreDisplayMode\":\"informative\",\"details\":{\"type\":\"full-page-screenshot\",\"screenshot\":{\"width\":980,\"height\":1743,\"data\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv\\/bAEMAGxIUFxQRGxcWFx4cGyAoQisoJSUoUTo9MEJgVWVkX1VdW2p4mYFqcZBzW12FtYaQnqOrratngLzJuqbHmairpP\\/bAEMBHB4eKCMoTisrTqRuXW6kpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpP\\/AABEIBs8D1AMBIgACEQEDEQH\\/xAAaAAEAAwEBAQAAAAAAAAAAAAAAAwQFAgEG\\/8QARhABAAICAQIDBQUFAwoGAQUAAAECAxEEEiEFEzEUIkFRYQYycYGhFSORscFCUtEkNFRic4KTsuHxFjM1Q3LwJjZjkqLC\\/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAECAwT\\/xAAlEQEAAgECBAcBAAAAAAAAAAAAAQIREjEDQVGhEyFhcYHh8NH\\/2gAMAwEAAhEDEQA\\/APpgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABS53ivE4GStOTe1ZtG41WZWOPnx8nBTNit1UvG4kEozbeO+H15E4JzT1xfo+7Ot716r2fNTj4b5ss6pSNzIJBS4PivE5+S2PjXta1Y6p3WY7LoAK3P5dODxL8m9bWrTW4r6950CyKPhXiePxPHkvix3pFJ1PVpeAAAAAAAAAAAAAEHK5nH4cVnkZa44t6b+LvBmx8jFXLhvF6W9LR8QSAAAAAAAAAADH4f2hwcvm04tMOStrTMbnWu3\\/ZsAAAAAAzcPjnAz8iuDHltOS1umI6J9QaQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMD7X8fr4eLPEd8d9T+E\\/9Yg+z\\/NjH4Bmvaf836u36x+stTxXj+1eG8jDrczSZj8Y7x+sPiMHMth4PJ40emea\\/lqdgrzF5ics71NtdX1fV+N87zPs5iyRPvcjpif5z\\/JSjw\\/\\/APEvM17\\/AF+d+Xp\\/Luyc3Mtl4HH4s71htafx3r\\/qD6L7H8fo4mbkTHfJbpj8I\\/7\\/AKOud9obV5U8Xw\\/B5+SJ1udzEz9Ij1XvD8FuL4Jjx0jWSMUz\\/vTG\\/wCcvkvBo5dub08HLTHmms6m+u8fH1iQbE\\/aHn8TPWniHCrWs\\/3Yms6+m5na99oMtM32fy5cc9VLxS0T846oZ3M8I8b50UjlZsOTo3094jW\\/whY52DJxfslODLatr01EzWdx98HP2N\\/zbk\\/\\/ADj+STxP7SV42e3H4uKMt6zqbTPaJ+UfNF9kd+x8rp+91Rr+DL+zcUt41i83vOrTXf8Ae0DQ\\/wDEfiPHmLcvgRXHP+ram\\/znbX8W8VxeGYa2tWb5L\\/cpE639Z+i7mrivitXNFZx696L+mvq+R+102\\/alIn08qNfxkFj\\/AMQ+KTjnPXhU8iP7XRbX8dtfwfxfF4nS0RXy81O9qb32+cLPGri\\/ZmKvbyvJj8NafJ\\/ZabftinT6TS3V+Gv8dA1Od9o8nD8RycecFJx0tETbc70rZvtTyq5YmnFpXFPpF97mPxU\\/EY39prRPePPp\\/Rtfa6sT4XjnXeMsa\\/hIIc\\/2oicNZ4nGtfLNd36vSn8PVJ4L9oL87kxxuRjpS9oma2pvU6+Gpd\\/ZGI\\/ZV51\\/7s\\/yhh+GRFftLSKxqIzWiP1B9P4t4ti8MxVm1Zvkv92kTrf1n6Mm3jnjEYfafYKRg9dzS3p8\\/VS+1c2nxb3vSMden8O\\/9dtD2X7QZ+P0+14LYr01qIrqazH\\/AMQafg\\/iuPxTDaYr0ZKfepvf5w0GB9n\\/AAnleHczJfPbH02x61W253uG+D5H7V8nLk5cYL4unHin3L6n3txG0ngvivMxYeNxacObYerp8zpn0m3efl8U32y\\/8ri\\/jb+jS+zv\\/onG\\/C3\\/ADSCHxnx3H4dfycdPNza3MTOor+LPn7Q+J4Irk5HBrXFb0maWrv8JmWfyve+01ozfdnkxE7\\/ALu4\\/o+n+0EUnwbk9etdMa\\/HcaBP4dz8XiPGjNi3HfVqz61lafMfYybdXLj+zqv8e76cGN454zl8Mz48ePFS8Xr1btM\\/NQz\\/AGp5E4624\\/FrEREddrxMxv460j+2P+ecf\\/Zz\\/NtYaVt9naVmI1PFjt\\/ugj8D8Z\\/acXpkpFM1I3MV9Jj5ovGfH68DN7PgxxkyxHvTae1f8WV9kP8A1TJ\\/sZ\\/5qq2Tp\\/8AEtvaNdHtXvdXprq\\/kDRj7SeIY8PmZuBEVn7t+m1a\\/q1vBPEr+J8bJlyY60mt+nVZ+kIftTMfse\\/f1vXX8UH2P\\/zDN\\/tf6QCHwzxPFn8Ypx6+H8bHM2tHmUpEWjUT\\/gueOeM5fDM+PHjxUvF69W7TPzYXgf8A+o8f\\/wA7\\/wDLZa+2P+ecf\\/Zz\\/MEmf7U8icdbcfi1iIiOu14mY38daaXgfjP7Ti9MlIpmpG5ivpMfNJhpW32dpWYjU8WO3+6wfsh\\/6pk\\/2M\\/81QaHO8e5Xh\\/O8jkcWnRE7i1Zn3q\\/OFnxXx3FwuPivg6c18sdVY326fnLj7VV4s+HROadZYn91r138fyfLeHezzzsMcyZ8jq97\\/78tg+18I5fJ5vG8\\/kYa4q2+5Eb3MfN8p4XT\\/8AIcVflmn9NvuK6isdOta7afMcDwvmYvtD598Fq4YyXnr3Gtd9A+oAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAfJ8j7Lcu2fJbFlwRjm0zWJtO4jfb4PrAEEcWkcH2T+x5fl\\/lrT5rD9leXGak5cuCccWjqiLTuY33+D6wAfOeIfZu88meR4fmjFMz1dMzMdM\\/SYfRgPmJ8L8ezV8vLzNU+O8k9\\/4Q0s\\/heW3gMeH48lJyRER1W3EdrbaoDK8A8MzeGYctM9sdpvaJjomZ\\/nCl4l9m75OTPI4OWuO0z1TW0zGp+cTD6IB8vbwXxnlxGPlcyPK+O8kz+nxa3jPhFPE8Vfe6M1Pu212\\/CWkA+VjwfxuuH2WvIr5HprzJ1r+G9NXwTwanhlbXveMme8am0ekR8oaoD53leA8rN4xPMrkwxjnJW+pmd6jX0+jR8d4GXxHhVw4bUraLxbd5mI1qflH1aIDO8D4GXw7hTgzWpa03m26TMxrUfP8GdxPAeVh8YjmWyYZxxktfUTO9Tv6fV9EAzfGPCMfidKz1eXmp92+t9vlLJx+E+O8avlYOVEY49IjJOo\\/jD6gBj+C+F8rh58vI5fIjLkyV6fWbfrLYAGd434Z+0+NWlbxTJSd1mfT8JZfA8I8Y4uTFT2mtePW8WtWuSdTG+\\/wfSgMTxvwH2\\/L7Rx71x5tatFvS3\\/VQyeDeNcqtcPI5NZxR\\/eybj\\/q+qAU\\/C\\/DsfhvF8nHPVaZ3e8\\/2pXABieP+DcjxLPiyYL4qxSup65mPj9IaOLjXp4XTizNeuMMY9\\/DfTpaAYPgXgnJ8N5l82a+K1ZxzXVJmZ3uJ+MfRx434VxOXzJtXl4sHJtETal57W+r6FleKeB4PEs8Zr5clLxWK9ta0D5zxHw6nC4sTl51M2XcRTHSd6j4y2\\/sjS1fDclpjUWyzr69oc4vspxa2icmfLePlGo23MOLHgxVxYqxSlY1ER8AYHh3gPK4vi1OXkyYZxxa06rM77xMfL6p\\/H\\/BuR4lnxZMF8VYpXU9czHx+kNsBVxca9PC6cWZr1xhjHv4b6dMvwLwTk+G8y+bNfFas45rqkzM73E\\/GPo3gHzvP8D5\\/iPP87kZsNcW9RWtpma1+nb1WPF\\/AMfLwYo4kUxZMUdMb9Jr9W0AoeD8fmcTi+Ry748kU7UtS0zOvlO4Z\\/E8J8Vxc\\/Hmy82L4q33NfNvO4\\/DTfAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVuTzacbNjxWx5bWydqzWu4mfl+hbl\\/5X7Pjw5Mk1112rrVN+m9z\\/JB4hMRz\\/D9zH\\/mW\\/wCSUfF42GfGebknHHXWaTE\\/KZidg1BT8Vpf2XzsW\\/MwWjLWI+OvWPzjahmz3z8Pm+I4rWisxGPFMesUifetH6\\/wBtjKriwcXxHh14WojLFvMittxautxM\\/nrv8AVWtmrX7OTWckRfzJrqbd9+Z6A3h5btWe\\/T29fkxeHjji8jjRmw48mS8zFOTjyzM3nU97R\\/3Btj53i4cvI4tOT1cemfq3bNbJaL1tE94mNflpNlx35fiHLplpgvOOYikZck1mtdR3jUfj3BuIa8nHbHmvWZmMU2rbt8Y9XnBi9eHhrkyVy3isRN6zuLfXbM4fG49MXPvFKxlpky1jv3iNA1sGWM+DHmrExXJWLRE+veNvceTrteOi9eidbtGon6wxsXGxcfi+GcjFE1y3tjra3VMzMTXvH4O70vmjn465a0meTXUXtMRb3az07+oNkZ3hc46ZeRhjjRx8lOmbxS\\/VWd71r5OfEcePN4nw8eaf3c0ybr1aifu+vzBpjCi+LBg5mGlIy8ac9MeKs3mKxMxG438IiXvGjLxeZycWHyot7NN4x4ZmaxaJ7dp+INwfP1rwq4vD8mHJW3IyZcc3t17tb57\\/ADdWw5OZyOb5kYJyUyTWtsmS1bY667TGo7fPYN5HyM2Pj4b5ss6pSNzOtuMOWtMXHx5c1LZb0jUxP35iO8wreO0i\\/hHI3G9V3ALWfkVwWw1tEz5t+iNfCdTP9EzJ53G48V4WLDERjvyYmei09\\/dt8UOeLcGfEcfDiaRGCuStYn7s94mY\\/KAbgx+Hxpx8nj5sU8bHWd7nHlmZyxr6x3n4rXje\\/wBl5tTMfd7xP+tALwyrcenC8TwRxqzWcuPJ1x1TPVMa1M7+PdR1xJ8O4+fzK25mTJj67Tf35t1RuNf0B9BXJ1ZL06Lx0a96Y7Tv5fN2xebaYr4z3ntjrr6e6l9mxcXxDg2wxNZy9VckzaZ646Znvv17wDVGFE1jm+y9dv2fOX1+Hmevl7\\/u7\\/Xs270i9LUt6WjUg6Hz2LNmnHizTa2vDoimSP7076bfwrG\\/zdZJyW4vEmZr5fKz2yX67TWs73NYmY+GtA2eXyK8XjXz3iZrSNzEeqZg8nBfj+HeIVmcNaTSsxixXmYpO\\/Xv6b\\/os+Tg43inEji9rZIv5urTPVXXrP567g1RU8Tx2zcXy6ZaUmbV7XtqL9\\/u7j5szJl8jhc3Hh48cbNTo6+jJ1V6Zn1ifh238AbwyeHxrYeXjyY\\/ZsVLVmJriyTPmfKe\\/rr5ouB4dj5Hg2O8Tfz74vdvN5nU\\/D9YgG2Mnici\\/iGemaIn\\/J8Xev8A+7PrH5a\\/VU4eHJm42HlRbj0zdUWtmtkt1733ie34xoH0LjLk8qnV0Xv3iNUjcs7i8XFn53MyZeu0488dMdcxET01nek3jMzHh9pidfvMf\\/PUF4YviGLp5HI5OXHi5WGsRus5em+LUd9fz+E92vjtFsVLV3FZrExv10DsYfFxxxc\\/HnPix5rZL6pyseWZm0zv1j\\/vDnJmrX7PcmtskReMmSupt331z2BvDLyY8XK8WzYuXq1aY6zipadRO97nXz9HEYuNm8Q9ny2i+CmGs4aTfdZ7zufrMdga4xM+OuTn4uNjjDk49cO8dcuSemZ6p389zHb8HU8XLPCx4PPwX6c0zGKck9Nq\\/wBzfr22DZRcrkU4uC2W8TMRqNVjczMzqIhkxSubi2wYcePj3pyI68NsszTJOt9MTH5Tr6Is9MGTh5MPssYbY+Tji1Iv1V3Mx6T+Eg3MGS2THFr4rYp\\/u2mN\\/pLnk8ivHjHNomevJXHGvnM6U61x8bxfHjrrHj9mt0xvtvqiVSLxkw9VbRas+JRqYnca6oBr4uRXLmzYqxMThmItM\\/HcRPb+KZkXwXz5fFK451lrkpfHP+tFKzCTw\\/P+0eVPMiJjHjpFKRP96dTb+HaP4g0MuTy4rPRe3VaK+7G9b+M\\/R2o+KzMU42p1\\/lOP\\/mVPZMPJv4lfNWbWpkno96fd9yO8fUGyjvmx0zY8Vp1fJvpjXrr1ZNseTlYOFlnyuRPs8Wvgy36eqZiPe\\/n6o4x8TlZfDbTh6MdvNr02tvWvhv499g3kOTkVx8jDgmJm2Xq1MekajbK5lMPIz560xcescekVnJlvO47bjUR6fi7417Zb+D3vabWtivMzPx92AaXF5FeVgjNSJiszMan17TMf0TPnotf9n8HF7vlZM+SL9dprWfetqJmPqkzY8vD4nM6L4sVLdHuYbzPlxM6tb6dv5A18nIrj5OHBMT1ZYtMT8I1r\\/FMyK4OJx\\/F+HXixSJmmSbRW2\\/hGp\\/m1wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQ5eLx814vmwYsl47Ra9ImYSRSlb2vFaxa2uqYjvOvmp+Icq\\/HvSKZuPj6o9MkTNp\\/CIQx4nmycPjZcWLHOTNmnFMWmYiNdXf5\\/AGhyKXyYMlMd4pe1ZiLa3r6vMGHHx+PjwViOilYrET8VOvPy4Paq8yuObYMcZInHvVonfbv8AHshy25luT4fbkxhrW2bcVpvdfdt2mZ9QaODicfjzacGDHjm3rNKxG3k8LizktknjYZvb71ppG5ec\\/NfjcPLnx1i1scdWp+Uev6bV58SiOdbFNY8mMcz5nztEdUx\\/\\/Gdgvz3jUocPD42C83w8fFjvP9qtIiVSvN5WWONix0xVz5cXm3m++mkdvh8Z7vL+JZ6cbJvFSeRizVxWrE+7bcxqY\\/KQXLcPiWzebbj4ZyevVNI29z8Tj8iYnPgx5Jj0m9YnTO5ebJg5PCzc6cWOK3yTukzMRHRPz+KTlZ8tvDrZ8+GsVtkp0Y5mdxE2iNzqfX46BpVrWlYrWsVrHaIiNRCKeLx5zTmnBjnJMam\\/TG5j8VW\\/J5uTl8jBxq4IjD0+9k333G9ahzHiOXPh4ns9KRm5NZt7++mkR6+nr6gv+Vj6aV8unTTU1jpjVdemvk5vx8GStq3w47VvO7RNYnqn5yg4XIz5c3Iw8iMfVhtWN03qdxv4rgI8ODDx6dGHFTHX11WukHK4OPlcnDky1pemOtomlq7id6\\/wZtqYsniPN83h8jk6yRETjntX3Y7fehpcfL08ueJWnTjx4a3jfrG5mNfoCb2fD5HkeTTyta6OmOn+Bh43Hwf+Tgx451rdaxHZRt4jm9lx5KYqWvfkTh6ZnUa3Mev5I81vEY8R4tZtgra1MnaOqaz6ev8A9+YJcfh2SeRS+bJgmKX6\\/wB1h6Jvb4Tadyt5uHxs94vm4+LJaPSbUiZUKTzP2lzo40Yer93Npyb1vp9IiHV\\/F\\/8AJuJevl478ms23kmemkR6+nqC57LX2yvI39zH0UrrtXv3n+Se0Ras1tETExqYn4sr9q5PZM961xZcmG9KxNNxW8WmI\\/L1loceeRNbTyYxVnfuxjmZ1H12Bj4vHxViuPBjpWLdcRWkRq3pv8UnRSLzfor1zGptrvMKd+Tys3KzYeJXFEYdRa2Tc7mY3qNfT4uZ5PMzZ74MFcFbYa1nJN9zHVMb1Gv5gs4+HxcOTzMXGxUv\\/erSIlLelMlZpkrW9Z9YtG4Z37RzZcfE8jFSL57XraLzOqzWJ36fWEPN5fKnw\\/n4r+XXNgiN2pvU1mPh8pBrdNLXi\\/TW1q7iLa7xv1UJ8OyZM8WzXwdEXi8+Xh6b31O4iZ389OcWKvD5XDxTgwUtbzJ3iiaxGoj+P5ubeIcyeJHNpTBGC1o6aTvq1NoiJ36fkDSthxW6+rFSfM7X3WPe\\/H5upx0tatppWZp92Zj0+HZBh5FsnN5OCYiK4opMT8Z3E\\/4KlfEeRfjcO+PFjtk5F5rqZmIjUT8fyBoez4fJ8nycflf3OmOn5+iRm8nl8njxjrkzcPHkmJmazFrTPf4RHdBfmcnl08OzYJpjnJktE1nepmItH8O0\\/oDWjDiit6xjprJMzeOmPe367+ZbDivi8q2OlsetdE1jWvwUcnI9n5l75qVm2PieZa1d99T6RBTl8vHPHvyaYfKz2isRTfVSZ9N79f0Bapw+Ljx2x04+KtLferFI1b8fm9w8Xj8e1rYMGPHNvWaViNqF+dzZxcrNjx4PL417xMWmeq0V\\/k08d4yY63j0tETAPMuLHmpNMuOuSk\\/2bRuHOLj4cGOceLFTHSfWtaxESzvbp43EyZKY6U3yr45taZmte8+9P8P1XeFlyZsc2vkwZI37t8M7iQdYeHxcF5vh4+LHafWa0iJS0pTHSKY61pWO0VrGohT5HJ5Uc72XjY8U\\/uvM6skzGu+vh6q+bxTJGfJirk42O2LUW8zfvW1uda9I+oNOmOmPq8ula9U9VumNbn5z9Uc8Lizm86eNinJvfX0Rvf4qlfEM3KnBTi0pW+TF5tpy7mKxvWtR6zv+TyviGeMFrZKY+uvKjBPTvWtxG\\/1Bo1pSk2mta1m07tMRrc\\/UvSmSvTetbV9dWjcK2bkWjmTxumJpOC2Tfx3ExGv1VcXMzV4\\/h+PjYce8+OZ1a0xFdRE+vefiC9k4fFy5fNycfFfJ\\/etSJlOys3iWXHm9ntk42LLSsWva+5rMz6REOqeJZeRi41cGPHGfNNt9UzNaxXtM\\/Ofhr8QXMXD4uHJOTFx8VL\\/G1aREluFxb5LZLcbDa9u1rTSJmVXwzzfbuf53R5nXTfRvX3I+bRBFn42DkREZ8OPLr066xOnmTicbLSuPJgxXpX7tZpExH4JgEOTicfJirivgx2x1+7WaxqPweTw+LbDGGePinHHeKdEaj8k4CCeHxpwxhnj4pxRO4p0RqPydU42CmKMVMOOuOJ3FYrGt\\/PSUBFn42DkREZ8NMsVncddYnT2OPhivTGHHERbr1FY+98\\/xSAOJxxXrtjrWt7+ttes67b+aPhcaOJxaYYnqmse9b+9M95n+KcBzelL6661tqYtG43qY9JeRjxx16pWOud27fe\\/H5uwEGTh8XLWlcnHxXrSNViaRPTHyh1k42DLijFkw47Y49KzWJiPySgILcPi3vW9uPitakarM0jtDuuHFXo6cdI8uNU1WPdj6fJIAjnBhnFOKcVPLn1p0xr5+jnFxePhpamLBjpW33orWIifxTAIMPD42CYnDx8WOY3qa0iJjfqnAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFPPxM1uZ7Tx89cdpp5dovTq7b327x83GLw2ceLBSc\\/VOLPOabTXXVvfb9V8BUy8CubNyL3vuufFGKaxHprfff5oqcDk2yce2fl1yRgtusRi11dpjvO\\/Xu0AHN6Rkpalo3W0TEx9GbPg1Z8Mrw5z26ot1Tl6e8\\/Ce2\\/7s6agCpyeJe2bHn42SuLLSs096vVW1Z+ExuPkjjw2ZwTW+bqy3zVzXv0+sxMdoj4RqNL4CtyuHXk5sF76muKbTNJruLbiY\\/qhnw23st+LGefK662xxNdzSImJ1vfeO35L4CDDxvK5XIz9e\\/O6e2vTUaUM3EjhcTiRGfJXJg3WuWmGb9p9d1jfZrAMvw7DnvTm5JyZK2zzqmS9Om3auurp+W\\/SPo0cVbVxUre\\/XaKxE21rc\\/N2Ar8fjeTn5GXr6vOvFta1rURH9EfI4ma3L9p4+euK008u0Wp1RMb3Ex3jv3lcAUMfhs04+HFOebTiz+dNpr97vM6\\/VLy+LkzZsObDljHlxdUR1V6omJ1vtuPlC0Ar4ONOLkZ8036pzdO41rWo0rV8Mti4\\/Friz9ObjRMVyTTcTE+sTG\\/6tEBSycPPyONfFyOTW02tW0TXHqK6mJ1rf0+a6AKWTh5q8nJn4vIrinLrrrfH1RuI1uO8fB5bhcima2bj8mtb5K1rlm+Pqi0xGuqO8aleAUsXh1cPsnTknXHm0zuO95tE7n6d5285Hh3nxzI83p9qrWv3d9Oo18+68Agy8bzeVgz9evJ6vd167jTGyYbzSODx8vItSMkRGO2CYisRbfe8x3iPh+T6ABSy8PP7XfPx+RGLzaxW8TTq9N6mO\\/wBXODw7ysXDp53V7Nabb6fvbiY+fb1XwFLNw83tluTx89cc3pFLxbH1do3qY7xr1R18Mvj4mDFTkfvcGSclclqbiZmZ3Exv\\/WaICnbg+bltkz5Iv14PJvEV1vv3n1R4+Bnm2CvI5MZMWCYtSsU1MzHpNp38GgApxwdcXl4PM\\/zi1530\\/d6o\\/VZxU8vFSm99NYjfzdgKVeHmw4r1wcitbWzWyTNse4mLTM6mN\\/X1d8Hh+yzlva1bXy2i1uivTWO2u0LQCD2b\\/Lvauv8A9ry+nX13vaG\\/Dz05GTLxORXHGWYm9b4+qN61uO8LoCjl4WecmLPi5UVz1p0XtbHuLx6+m+3dX43CyZuJysOTJauT2mb1yTX1mNTE6+XZrAKOLhZ\\/ap5HI5NclpxTj6a4+mI3MTv1+j3DwPK9i\\/e79lpNPu\\/e3ER8+3ougKebiZfarcni564r3rFb1vTqrbXpPrHfu5y8PPeMGSOTHtOGbe\\/OP3bRPrGt\\/h8fgvAKWDhZsUcq08rqzZ9e\\/FNdExXUdtrWKtq4qVvfrtFYiba1ufm7AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABR5XJ5Mc3HxuNXFu2ObzOTfwmI+H4u\\/ap42KLc++KtrW1WMcTO\\/y9dgtivHO408aeRGavlRPTNvlO9an5OuPysPKi04MkXis6mY9ATCtyOfxuNfozZdW1vUVmdR8516Q9zc3jYK47ZM1YjJG6T69X4AsChyPEafs\\/JyeLet5pMV7xPadxGpj1+Ka3JjHnzRkvSMeLHF59eqI795+nYFkVcPiHEz5oxYs0WvMbjtOp\\/CfSTJ4hxcWWcd80RaJ1PaZis\\/WfSPzBaBm8vxbDSOjj5K3yeZWk+7Mx3tET39Ng0hW5HP4vGydGXLq0RuYiJnUfOden5us\\/L4+ClL5MsRF\\/u67zb8Ij1BOIMfM4+Xy+jJE+ZMxXtPeY9XuTl4McZZvkiPJ1OTt93foCYUv2rwdzHtFdx39J7\\/AIfP8kuPm8bJx7ciuWvlV3FrT21+OwWBXw87jZuvoyd6R1Wi1ZrMR89THo4xeJcPNlpjx54ta\\/3e06n8\\/Tf0BbFHjeJYs\\/KzcfvFqX6K9p97tv5dvikxeI8TNkrjpl9633d1mOr8JmO4LQo8fxLFn5Obj+l6X6K9p97tv5dnVOfipw8WfPlp+8jt0RMxafpHqC4K8c7jTxp5PnV8qJ1Np+E71qfkcfncbk5LUw5YtasbmNTHb5xv1gFgR582Pj4pyZbdNY+Opn+SPDzePnre2PJvy43aJiYmPynuCwKmLxLh5stMePPFrX+72nU\\/n6b+jjneJ4ONjzVjJE56UmYr0zMROu29egLwjwXnJgx3n1tWJnX4IZ8Q4sZvK833uro7VmY6vlv02C0Io5GKaZbxeOnFMxeflMd5R5fEOLh6PMzRE3r11jUzNo+kAsit7fxfZq8jz6xitPTFp9N\\/0e8fm8fkzeMOTc0+9ExMTH17gsCrh8Q4mfLGPFmi1p309piLa+U+k\\/k8v4lw6Xmk569dZmJrETMxMevYFsU\\/DfEMfPwVvWOm813aup7fnrul5PM4\\/FmsZ8kUm++mNTMzr5fxBOKPI8QpPAnk8W9b6vWneJ7btETEx8+6Xkc7jce\\/RlyatEbmIrNtR8516fmCyK+bm8fBWlr5O2SN16azbcfl+J7bxvZ45HnV8qZ1E\\/Oflr139AWBXpzuNfDfNGWIpjnVptE11+UvePy8HJm0YrzNq+tZrNZj8pBOIuRycPGrW2fJXHW09MTb03rf9EU+I8SMVcnm7reZiuqzMzr11GtgtDO5vimPFxceXBetpy3ilbTWZiO\\/eZiO\\/b5Ja87Fhw4\\/aM0XveOqOjHbvHz6e8wC4K9+dxcePHkvnpFMkTNLTPaUmHNjz4q5cVuqlvSdAkFHg+J4eXOSN9M1vaI3E66Yn13pLg8Q4vIyRjxZYtaY3ETEx1R9N+v5AsjjLlphxWyZLdNKxuZ+SLDzeNnyzjxZYtfW9anvHzj5\\/ksVmYzgWBVyeI8THe1LZoiazqZ6ZmIn5b1p1bkRTNmi96RTHSLz67iO\\/ef4Lot0FgVsXP4ubLGLHmi1pjcdp1P4T8XfteDyr5fMiKY56bTPwn5Gm0chMPIncbV45\\/FnN5UZY6urp9J1v5b9NpETOwsivl53FxZJx5M1a3iYia\\/Hu5y+I8TDe1b5tTT72qzMR+M60sUtPIWgGQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABm8vh05Xi2Lz8HmYow27zXcRO4\\/X1eZsNODy+Nmx4Lez0pekxjrNuiZmJ3qO\\/wle5HJw8akXz5K0iZ1G\\/jP0+bnj8zj8qbVw5YtavrXUxMflIMvNhy5+NzMtcN4pnz4ppSazuYiaxM6+upbT0BmeZPC5\\/Lvlw5b1zdNqWx45tvVddPb0\\/6ouJxc2G3hlcmOd465JtqNxTfpG\\/0bADG5mDLavicVxXnrvimuqz73au9fNJzMOW2XxKa47zF+LFa6rPvTq3aPnPdqgM\\/Niv1eGzXHb3L+9qPux0THf5KMYfKpyOPyZ5vv3vOsVOquSLTv11Pz+Mt4BHFZ8iKVmYnp1Ez6x2YsWv+zOPwo4ueM2K+OL6xz0xq0bnfx+bbw5aZ8UZMduqlvSXmfNj4+K2XLOqV1udb+OgZ8ZJ4XK5nm4MuTzrRek0xzbqjpiOnt6enxQ8fDl4E8LLnx3vWnHnHborNpx2mYn0j+DaAZnKzTbLw+ZGDN5eO9otHlz1RE11E9PrpW5FcvIweKXrx80ebFOiLUmJtqPhDcAUuRjtPinCvFJmtK5Im0R2jcRpS5PGz3pzOimTtyq5Yisam9Yiu9b9f+jaAZGOlMt8uSk83JkjBesTmx9MRv4ekbl1bDk\\/Z\\/hlYx26sd8U2jp711Hffyary1q0rNrTEViNzM\\/CAZ2G+Tj8zmY\\/KyTfLfrxW6Jms+7HrPpHeFKvm57cO145uTNXNS2XrpNaU+fw03q2i9YtWYmsxuJj4uYy0nNOHq\\/eRXqmPoClxrTg8Q5WK+PJ++yRelopM1mOmI9fSPRT4lMnFxeHZ8uHJNMeG2O8RSZtSZ1316\\/DTcAYmXDlzcfmZq4ckVz58U0pNZ6piJrEzr8l7LjtPi\\/HyRSemMN4m2u0d66ja6Ap+KXz041ZwdcbvEZJx16rVp8ZiFHBjtblcq9Kcq1LcbprbNWd2nc+m\\/5NpBfmYMdclrX7Y7RS3ae0zrX84BRthyfs\\/wAMrGO3Vjvim0dPeuo77+SG9r4OL4hxZ4+e+XLbJas0xzMWi0dp36fT8m2jtmx0zUw2n38kTNY16xGt\\/wAwecaJrxsUTExMUiJifwZVZyYc\\/TwvaY6su7YMuH3NTPvTFtdo9Z9WtnzY+PjnJlnVYmI3rfeZ1H6ykBjXvfBj8R488fPe+a17Y+jHMxaJrHx9CuWOLzuLOTHknXD1MVpNpidx8IbKPycftEZ9fvIp0b38N7\\/oDGy1vj4vn5MV6xl51ctceve1uPh8516fVNlx5PEM\\/IyYceTHX2W2GLZKzSbWmflPfUf1aOamHPkpiyTE3pMZYrvv2ntP8UwMjrtyo4ODHx8uO+HJW1+rHNYpFY7xv479Oy14Zjtj9qm1JrNuReY3Gtx8JXQGf4NaacLHxr48lMmGvTbqpMR6\\/CfSXPiGWuDxThXtW9oimX7lZtP9n4Qv+bTzvK6vf6erX09HlsOO+fHmmPfxxMVnfpE63\\/IGTlw5s3G5mauHJWM+fFalJr72omsTOvh6TL3Jjtg53KnLbl1pltFqWw06otGojU9p79myAx79eCnFw19rxcSMc\\/cpu\\/V8ItqJ12R4cMRwr+dj5lP8qtelq1mb17drT67+PzbgDDy15nJ4szbzclMWel6W8voyXrEd\\/dn5TPbt8Frg1x35k5a25l7xj6erNTpiI3Hb0ju0gFLxHHbJk4WqTeK8iLW1G9R027yr+IY708Rx8iZ5EYpxTSbYI6prO9941Paf6NUBj+RE4cM4aci0TzK5LTlpq31nWu0PeVjvh8Ty5r25NcWWlYrfBXq1Mb7TGpn4tcBk4uPEZPD\\/AC8WacdcmS0+bXvG4nvPy7tYAY8UyW4vP4MY8lc2S+W1Jmk9MxM7j3vR3OSeZl4VMXHy45w3i95vjmsUiKzGtz6738GqAqeK0tk8Nz0pWbWmvaIjcz3ecilp8Q4dq1ma169zEdo7LOXDizV6c2OmSu96vWJjaKvB4lLRavFwVtE7iYxxExLpW0RGPfujKzWyYPCL8S\\/Hy9dZ1N9e7Pvb3v6rXLxZLZPEJrjtMX40VrqPvT73aFmeBgnL5lvMt73X02yWmu\\/nrenVuDxL2m1uLgtaZ3MzjiZmXTxa\\/vj+GEGbHfq8P6aW9y\\/vaj7sdE+vyV82LJbmzza8e04qXiLY9T1ZNbjr19N9v+y9+z+F\\/ofH\\/wCHX\\/A\\/Z\\/C\\/0Pj\\/APDr\\/gkcSI\\/fZhJ50znjDGPJqadXmdPux39PxZURefDK+HeRkjkRMVmeiemNW31dXp9Wj+z+F\\/ofH\\/4df8D9n8L\\/AEPj\\/wDDr\\/glb1qOONjtXxHmXmkxFujptMevu\\/Bnci2Tj+E8ni34+Wb7v+8iPdtE23vf5tT9n8L\\/AEPj\\/wDDr\\/g8twMF8s5L+ZbdurpnJaa7\\/DelrxKxOZ9OxhLOaY5NcPlZJi1Zt1xHux9Jn5pXkREekaeuCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAM62p8fpGT4cfePfz6ve19daS+KZp43Cy5sfTGWKxEWmO8RMxG\\/wAt7Tcni4eVWsZqdXTO6zEzE1n6THeEeLw\\/jYovEY5t5lem85LTaZj5dwV+i\\/C5\\/Fx15GbLXP1VvXJbq9I3uPl\\/1U\\/8o\\/ZUc2OZn82Mmojq93XmdOtfHt82rx+Bx+Nk8zHW02iOmJvebdMfKNz2dex8f2b2by\\/3W99O59d79fxBVxVvxfE64Yz5ctMmG1pjJbq1MTHePl6qOOOR+zeFyvbeR5uW9KWmbbjVp16en5tucOO2auaa\\/vK1msTv4T6\\/ycRw8EYMeCMf7vFMWpG57TE7gFC+TLwM\\/KpTLlzVrxZzRGW3Vq0TP6OeJXmzfj5axnmLTE5bZM1Zrasx6xG+35NScGOc05pru806Jn\\/V3vWkGLw3i4r1tSl46Z3WvmW6az9I3oFPBOacPK5duRmtOHJl6McT7uomdRPxlY4HHtbFg5NuXnve9YtaJt7ttx8vSI\\/BbxYceGtq466i1ptMb3uZncocPh3GwZK3x0tHTMzWvXbpr+Eb1AM\\/Fnvm4HDx2tyMmfJ1TEY8nTMxE95mfl6I8mTNbwrnYs82mcWWtY6rdUxG6zrfx9Wnfw7i2xY8fRasYt9E1vMTXfr33t7Xw7i0w5MNcWseSYteOqe89u\\/r9IBZnep16\\/DbI4dsuLkYa82eXTPaZjc3i2LJOp7Rr0+fwa8xFomJjcT2lWw+H8bDkrelbzNPudWS1or+ETPYFH2jN\\/4enN5tvN6pjq33\\/wDM1\\/JNfHfk+KZ8M8jNjx0xUmK479PeZt3\\/AES28J4V7Wm2KZi1uqa9dumJ+cRvUOMvh1c\\/Py5s2+i2Ota9OS1Z7b3vX4wCpTNnz4OFjnkZIm2e+O2Ss6m9axbU\\/oZ8+fhe2YMee94rGOa3yT1Tjm1tT3\\/Vc5Xh9MvsmOlYrhw3mZrWZrqOmY7a+sp8fB42PDfFGOJpk+\\/1TNpt+Mz3BVrW\\/D8R42KufLlpnreLVyW6tTEb3HyVsOHLn8FvyM3Lz2tOK\\/u9Wo+P8Wlx+Dg42ScmOtpvrp6r3m0xHyjc9oSYsGLDgjBjprHETHTPf+YIPC8MYuFimMmS\\/VjrPv23rt8EeW+efEeRiw31PssTSJ9Itu3f+SzxeJi4lZrhi0Vn4TebRH4bns9ycXDkve96btkp5dp3Pevft+sgocC805NMWeeXjz2pPu5bxal5j1mJj\\/oteJZK0wUpM5urJeK0jFbptM+ut\\/COzrBwcGDJ5lIvN4jUTe9raj5Ruezvk8bFyscUzVmYieqJiZiYn5xMAzMEcu1uZxOvLjtGOt8XVk67Vmd\\/H5dkuHnTy8uC9bTTHixTlzxHz9Omf4Wn8lzjcLj8a9r4qTF7xEWtNptNtfPbrDxcGCcs48cV8202v8eqZBkY8ufHk4mfH7TGLNlrXebNFuqs\\/wCr8HfMyXvx+fFrTMU5WOKxPwjdF3H4Vw8dqWjHafLtFqROS0xWfpG+ya3D4965K2x7jLeL37z3tGtT+kAoc218\\/JzV4\\/tM2xREWmubopWdb9PjKOJvzcvhdr5b0tfBe1rUnUz2r\\/BoZvDuNnzWy3pbqtGrRF5iLfjETqXl\\/DuLemKnRasYa9OOa3tWax2+MT9IBnci168Tmce2S+WuHPiil7zudTNZ1M\\/HSXNfkcnn8nFWvImmHprWMOWKa3G9z37\\/AMuy9Xg8avHnjxj\\/AHc2i0x1TuZ3vcz6z3iDPwePyMnm3raMmtdVLzWZj5Tqe4OuF5\\/smP2mNZojVvT1\\/Jk87NlmnK5PFnk6wzPvzliKRNfWIr8YbWLFTDjrjxxqtfSN7VcnhXDy2yTfHaYyTu1eu0VmfnretgrWwef43Fpy5ab40W9y8x\\/a9PwaHMtNOHntWZi0Y7TEx8J05zcLBnvS962i1I1Fq3ms6+XafR3yMdsuG2Os1jqjU9VZmNfH0mP5rXeMjPrGXB7Dm9ozXnNatb1vbdZiazPp8PRxlnJl4PL5k8jNTJSbxWtL6ivTMxEaW54nItXFWcvH1imJp+5t2mI1H9tX5nh1+TlyxHGwVjJPfL1zvXz6da29NbVmd2U3m5PbZr1z0+y9Wt\\/HfqrYvOx8Xg8qeTmvfJfHW0Wt7sxbt6f1XLcXP505K5cET09EbxWmen5ffc+xZ\\/Jx4vN4\\/Rims0jybdpj0\\/tsxasc1V+Xny4OZPGpn9zPMe\\/PecO\\/8fh9WpWIrFa7mdR8Z3MqU8HNNMtLZOPMZp3feG09X\\/8Ad77HyPMx5POwTfHWa1mcVp1E\\/wC\\/3ZtomI8xxw8d+Zj9pvyM1bze2q1tqtYiZjWvyRT5ufBy+VPJy474r3ila21WsV9Nx8fzSW8MyWyzk83DE2nqmIx3isz85jr0ZfDMmXJa98uHdp3aIx3itvxjr1Leqmd+yOaTk5nMrW2bLipPGpkmuO3T3mZQROePDfbJ5Wa2THfpiJt7sxF+nvHx7L8cbkxmnNGbj9c1isz5NvSP9\\/6uPYc3s88fzeP5Uzua+Vb13v8Av\\/Mi9evT7Ve3G9b7\\/J6hrx6efXkXiJzxTom8biNb36b+aZ5lAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAU\\/ErZ8XHyZ8XI8quOk2mOiLdWlTkZOdxvDZ5GXldWS1IiKRijta2o\\/PW1zxPDk5PFjBjruL3rF++tV3uf5HNw5M+bi1rXeOmXzLzv01E6\\/XQHG5tM2eePOPNjyRTrjzK66o9NvI8QpGWmPJgz44yW6K3vXUTPy9doeTg5ds3MzYY1k8muPBO47+sz+Hr8fkhw8O1+bxsvseTFTHu1r5ckWtadaj4z89gtZfFMWOc0Rhz5IwzrJalNxHbc9zkcqfaeJXHkiuO8WyXt\\/qRH6d5hD7Lyf2PmxdGuRyLWm8bjt1W79\\/pDnmeGZOXyslomcdMeKtMPeJrad7ncfLtEA0ONyK8nH5mOtopv3bWjXV9Y+hTkY7Z82HvFsURNt+mp\\/7OuPbJfBS2XH5WSY96m4nU\\/kzeXgtyfF5xY7axWw1jka+UTMxH5\\/yBa\\/aOGcWO9KZLzl35dK1960R8fw+svY8Rwzxr55revReKWpMe9FtxGtfnCLNTLg8RryMfHtmx+T5UVpMRNZ3v4zHb\\/BBl4nJrgrlnF5mW\\/KjPkx1tHaI9IiZ9dagGlfPSvIx4J3N71m0a+ERr1\\/ih8T5VuHw7ZMdJvkmYrSIjfvT2hxxqZ8niGTk58PlVjHGPHE2iZnvMzvXp8HfNw5M+Xi1rXeOuWMl536aidfroEOHlTgiKX9q5Ga0dU0mlYtWPTfbURH5pbeJcevGxcj35plv0ViKzNt9+2vylFMcnjc\\/lZaca2eM\\/TNJraI1qNanc\\/n8fVzx+DlxZeHW+rVxRkyXvE9pvb6fnIL2DN59Ovy8mPvrWSupc15eK1c9o304Jmt5mPjEbnX8U7FnDzp4PI4kcWevLkt15eusRMWt6x336AvT4hj\\/dxjxZct70jJ0UrG61n03uXtuT15OLSs3xWyzNum1O8xEd4n5esKvO498mW3k8TNTLWvRjzYssVjX17+m\\/pLu+Dl+dkza68mPi+XjncR13nvM\\/T0gHUeL4LVpeMWfyrX6PM6Pdid6\\/+6TZudTHmnFTFlzXrETaMdd9Py2gtw7xxODxaV3THek5J3HpWN\\/rMQrZ8nJ4OLm9OKt\\/OyTNMnmR6zEREa9dwDU4vIpyuPTPji0Uv3jqjUoM3iWPFly464c+W2LU38um4jcb9Vji4Y4\\/FxYY\\/wDbpFf4QpRx+TXw\\/mzXH\\/lGe95rXqjtvtXv+EQCe\\/iGGMeG1K3y2zV6qUpXdpj5\\/T80dvEaX4mfJWMuKcdvLnqpEzFp1rtvv6whnHl4PK83HjplxV49cW5yRXy+nfrv4OONx82fh8W1qa83ke0Ze\\/pG5mP\\/APILmTn1w5Z48Y82fLSsWt5dN+v6fB1Tn4L4+Pkjq6OROqWmO0T8pRYsXIx15+bo\\/fZbT5cbjvEV1X\\/79UN+Bmy8LF4frysFMdevJ2mbWj4R8u\\/fYL+Dk05Frxi3NaT09evdmfjr5plLBPKw8Lj0ji18yJil6xaIisfG0fT46XQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHFMdKTaaVis3ndpiPWXYAAAAAAAAAAAr04PFpmnNTj4q5ZnfXFY3tYAAAV8vC4ubN5uXj4r5P71qxMrAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\/9k=\"},\"nodes\":{\"6-0-A\":{\"height\":19,\"right\":722,\"left\":645,\"bottom\":155,\"top\":136,\"width\":76},\"6-1-BODY\":{\"bottom\":210,\"height\":188,\"left\":210,\"width\":560,\"right\":770,\"top\":21},\"page-0-P\":{\"width\":560,\"right\":770,\"left\":210,\"height\":38,\"bottom\":174,\"top\":136}}}},\"uses-text-compression\":{\"id\":\"uses-text-compression\",\"title\":\"Enable text compression\",\"description\":\"Text-based resources should be served with compression (gzip, deflate or brotli) to minimize total network bytes. [Learn more](https:\\/\\/web.dev\\/uses-text-compression\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"numericValue\":0},\"server-response-time\":{\"id\":\"server-response-time\",\"title\":\"Initial server response time was short\",\"description\":\"Keep the server response time for the main document short because all other requests depend on it. [Learn more](https:\\/\\/web.dev\\/time-to-first-byte\\/).\",\"score\":1,\"scoreDisplayMode\":\"binary\",\"displayValue\":\"Root document took 320\\u00a0ms\",\"details\":{\"items\":[{\"responseTime\":315.333,\"url\":\"http:\\/\\/befitcrm.com\\/\"}],\"headings\":[{\"label\":\"URL\",\"valueType\":\"url\",\"key\":\"url\"},{\"valueType\":\"timespanMs\",\"key\":\"responseTime\",\"label\":\"Time Spent\"}],\"type\":\"opportunity\",\"overallSavingsMs\":215.33300000000003},\"numericValue\":315.333},\"legacy-javascript\":{\"id\":\"legacy-javascript\",\"title\":\"Avoid serving legacy JavaScript to modern browsers\",\"description\":\"Polyfills and transforms enable legacy browsers to use new JavaScript features. However, many aren\'t necessary for modern browsers. For your bundled JavaScript, adopt a modern script deployment strategy using module\\/nomodule feature detection to reduce the amount of code shipped to modern browsers, while retaining support for legacy browsers. [Learn More](https:\\/\\/philipwalton.com\\/articles\\/deploying-es2015-code-in-production-today\\/)\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"details\":{\"overallSavingsBytes\":0,\"type\":\"opportunity\",\"overallSavingsMs\":0,\"headings\":[],\"items\":[]},\"numericValue\":0},\"network-server-latency\":{\"id\":\"network-server-latency\",\"title\":\"Server Backend Latencies\",\"description\":\"Server latencies can impact web performance. If the server latency of an origin is high, it\'s an indication the server is overloaded or has poor backend performance. [Learn more](https:\\/\\/hpbn.co\\/primer-on-web-performance\\/#analyzing-the-resource-waterfall).\",\"score\":null,\"scoreDisplayMode\":\"informative\",\"displayValue\":\"0\\u00a0ms\",\"numericValue\":0},\"third-party-summary\":{\"id\":\"third-party-summary\",\"title\":\"Minimize third-party usage\",\"description\":\"Third-party code can significantly impact load performance. Limit the number of redundant third-party providers and try to load third-party code after your page has primarily finished loading. [Learn more](https:\\/\\/developers.google.com\\/web\\/fundamentals\\/performance\\/optimizing-content-efficiency\\/loading-third-party-javascript\\/).\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\"},\"timing-budget\":{\"id\":\"timing-budget\",\"title\":\"Timing budget\",\"description\":\"Set a timing budget to help you keep an eye on the performance of your site. Performant sites load fast and respond to user input events quickly. [Learn more](https:\\/\\/developers.google.com\\/web\\/tools\\/lighthouse\\/audits\\/budgets).\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\"},\"no-document-write\":{\"id\":\"no-document-write\",\"title\":\"Avoids `document.write()`\",\"description\":\"For users on slow connections, external scripts dynamically injected via `document.write()` can delay page load by tens of seconds. [Learn more](https:\\/\\/web.dev\\/no-document-write\\/).\",\"score\":1,\"scoreDisplayMode\":\"binary\",\"details\":{\"headings\":[],\"items\":[],\"type\":\"table\"}},\"layout-shift-elements\":{\"id\":\"layout-shift-elements\",\"title\":\"Avoid large layout shifts\",\"description\":\"These DOM elements contribute most to the CLS of the page.\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\",\"details\":{\"items\":[],\"type\":\"table\",\"headings\":[]}},\"bootup-time\":{\"id\":\"bootup-time\",\"title\":\"JavaScript execution time\",\"description\":\"Consider reducing the time spent parsing, compiling, and executing JS. You may find delivering smaller JS payloads helps with this. [Learn more](https:\\/\\/web.dev\\/bootup-time\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0.0\\u00a0s\",\"numericValue\":11.643999999999998},\"unminified-javascript\":{\"id\":\"unminified-javascript\",\"title\":\"Minify JavaScript\",\"description\":\"Minifying JavaScript files can reduce payload sizes and script parse time. [Learn more](https:\\/\\/web.dev\\/unminified-javascript\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"warnings\":[],\"numericValue\":0},\"critical-request-chains\":{\"id\":\"critical-request-chains\",\"title\":\"Avoid chaining critical requests\",\"description\":\"The Critical Request Chains below show you what resources are loaded with a high priority. Consider reducing the length of chains, reducing the download size of resources, or deferring the download of unnecessary resources to improve page load. [Learn more](https:\\/\\/web.dev\\/critical-request-chains\\/).\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\"},\"font-display\":{\"id\":\"font-display\",\"title\":\"All text remains visible during webfont loads\",\"description\":\"Leverage the font-display CSS feature to ensure text is user-visible while webfonts are loading. [Learn more](https:\\/\\/web.dev\\/font-display\\/).\",\"score\":1,\"scoreDisplayMode\":\"binary\",\"warnings\":[]},\"first-contentful-paint\":{\"id\":\"first-contentful-paint\",\"title\":\"First Contentful Paint\",\"description\":\"First Contentful Paint marks the time at which the first text or image is painted. [Learn more](https:\\/\\/web.dev\\/first-contentful-paint\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0.7\\u00a0s\",\"numericValue\":650},\"speed-index\":{\"id\":\"speed-index\",\"title\":\"Speed Index\",\"description\":\"Speed Index shows how quickly the contents of a page are visibly populated. [Learn more](https:\\/\\/web.dev\\/speed-index\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0.7\\u00a0s\",\"numericValue\":650},\"unsized-images\":{\"id\":\"unsized-images\",\"title\":\"Image elements have explicit `width` and `height`\",\"description\":\"Set an explicit width and height on image elements to reduce layout shifts and improve CLS. [Learn more](https:\\/\\/web.dev\\/optimize-cls\\/#images-without-dimensions)\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\",\"details\":{\"headings\":[],\"items\":[],\"type\":\"table\"}},\"third-party-facades\":{\"id\":\"third-party-facades\",\"title\":\"Lazy load third-party resources with facades\",\"description\":\"Some third-party embeds can be lazy loaded. Consider replacing them with a facade until they are required. [Learn more](https:\\/\\/web.dev\\/third-party-facades\\/).\",\"score\":null,\"scoreDisplayMode\":\"notApplicable\"},\"efficient-animated-content\":{\"id\":\"efficient-animated-content\",\"title\":\"Use video formats for animated content\",\"description\":\"Large GIFs are inefficient for delivering animated content. Consider using MPEG4\\/WebM videos for animations and PNG\\/WebP for static images instead of GIF to save network bytes. [Learn more](https:\\/\\/web.dev\\/efficient-animated-content\\/)\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"numericValue\":0},\"first-meaningful-paint\":{\"id\":\"first-meaningful-paint\",\"title\":\"First Meaningful Paint\",\"description\":\"First Meaningful Paint measures when the primary content of a page is visible. [Learn more](https:\\/\\/web.dev\\/first-meaningful-paint\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"displayValue\":\"0.7\\u00a0s\",\"numericValue\":650},\"render-blocking-resources\":{\"id\":\"render-blocking-resources\",\"title\":\"Eliminate render-blocking resources\",\"description\":\"Resources are blocking the first paint of your page. Consider delivering critical JS\\/CSS inline and deferring all non-critical JS\\/styles. [Learn more](https:\\/\\/web.dev\\/render-blocking-resources\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"numericValue\":0},\"uses-rel-preconnect\":{\"id\":\"uses-rel-preconnect\",\"title\":\"Preconnect to required origins\",\"description\":\"Consider adding `preconnect` or `dns-prefetch` resource hints to establish early connections to important third-party origins. [Learn more](https:\\/\\/web.dev\\/uses-rel-preconnect\\/).\",\"score\":1,\"scoreDisplayMode\":\"numeric\",\"warnings\":[],\"numericValue\":0}}', '{\"performance\":{\"id\":\"performance\",\"title\":\"Performance\",\"score\":1}}', '[]', 21, '<a href=\'#\' class=\'list-group-item text-primary\'>1.  MOZ Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>2.  Mobile Friendly Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>3.  Backlink Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>4.  Alexa Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>5.  Facebook Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>6.  Pinterest Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>7.  Stumbleupon Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>8.  Buffer Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>9.  Google Index Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>10.  Reddit Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>11.  Xing Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>12.  Bing Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>13.  Yahoo Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>14.  Metatag Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>15.  Whois Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>16.  IP Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>17.  Site\'s in same IP - Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>18.  Macafee Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>19.  Norton Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>20.  Google Safety Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a><a href=\'#\' class=\'list-group-item text-primary\'>21.  Similar Site Step completed<span class=\'text-primary pull-right\'><i class=\'fa fa-check-circle\'></i></span></a>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `website_ping`
--

CREATE TABLE `website_ping` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `blog_name` varchar(100) DEFAULT NULL,
  `blog_url` varchar(250) DEFAULT NULL,
  `blog_url_to_ping` text,
  `blog_rss_feed_url` text,
  `ping_url` text NOT NULL,
  `response` varchar(100) NOT NULL,
  `ping_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `whois_search`
--

CREATE TABLE `whois_search` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tech_email` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_email` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `registrant_organization` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `registrant_street` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant_city` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant_state` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant_postal_code` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant_country` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrant_phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `registrar_url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_street` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_city` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_postal_code` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_country` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_phone` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_registered` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `namve_servers` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` date NOT NULL,
  `changed_at` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expire_at` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `scraped_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`unique_name`);

--
-- Indexes for table `ad_config`
--
ALTER TABLE `ad_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alexa_info`
--
ALTER TABLE `alexa_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`checked_at`,`domain_name`);

--
-- Indexes for table `alexa_info_full`
--
ALTER TABLE `alexa_info_full`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`searched_at`,`domain_name`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `for_user_id` (`user_id`,`status`);

--
-- Indexes for table `antivirus_scan_info`
--
ALTER TABLE `antivirus_scan_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scanned_at` (`scanned_at`),
  ADD KEY `scan_info` (`user_id`,`scanned_at`,`domain_name`);

--
-- Indexes for table `backlink_generator`
--
ALTER TABLE `backlink_generator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backlink_generator` (`user_id`,`generated_at`,`domain_name`);

--
-- Indexes for table `backlink_search`
--
ALTER TABLE `backlink_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`searched_at`,`domain_name`);

--
-- Indexes for table `bitly_url_shortener`
--
ALTER TABLE `bitly_url_shortener`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_proxy`
--
ALTER TABLE `config_proxy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_smtp_config`
--
ALTER TABLE `email_smtp_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_management`
--
ALTER TABLE `email_template_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expired_domain_list`
--
ALTER TABLE `expired_domain_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auction_end_date` (`auction_end_date`);

--
-- Indexes for table `facebook_rx_config`
--
ALTER TABLE `facebook_rx_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `fb_simple_support_desk`
--
ALTER TABLE `fb_simple_support_desk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `support_category` (`support_category`);

--
-- Indexes for table `fb_support_category`
--
ALTER TABLE `fb_support_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_support_desk_reply`
--
ALTER TABLE `fb_support_desk_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `forget_password`
--
ALTER TABLE `forget_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_domain_info`
--
ALTER TABLE `ip_domain_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `searched_at` (`searched_at`);

--
-- Indexes for table `ip_same_site`
--
ALTER TABLE `ip_same_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `searched_at` (`searched_at`);

--
-- Indexes for table `ip_v6_check`
--
ALTER TABLE `ip_v6_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyword_position`
--
ALTER TABLE `keyword_position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `searched_at` (`searched_at`);

--
-- Indexes for table `keyword_position_report`
--
ALTER TABLE `keyword_position_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyword_position_set`
--
ALTER TABLE `keyword_position_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyword_suggestion`
--
ALTER TABLE `keyword_suggestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `searched_at` (`searched_at`);

--
-- Indexes for table `link_analysis`
--
ALTER TABLE `link_analysis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `searched_at` (`searched_at`);

--
-- Indexes for table `login_config`
--
ALTER TABLE `login_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_child_1`
--
ALTER TABLE `menu_child_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_child_2`
--
ALTER TABLE `menu_child_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moz_info`
--
ALTER TABLE `moz_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `native_api`
--
ALTER TABLE `native_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `native_widgets`
--
ALTER TABLE `native_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_status`
--
ALTER TABLE `page_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `check_date` (`check_date`);

--
-- Indexes for table `payment_config`
--
ALTER TABLE `payment_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_error_log`
--
ALTER TABLE `paypal_error_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rebrandly_url_shortener`
--
ALTER TABLE `rebrandly_url_shortener`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_engine_index`
--
ALTER TABLE `search_engine_index`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checked_at` (`checked_at`);

--
-- Indexes for table `social_info`
--
ALTER TABLE `social_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`search_at`,`domain_name`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transaction_history_manual`
--
ALTER TABLE `transaction_history_manual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thm_user_id` (`user_id`);

--
-- Indexes for table `update_list`
--
ALTER TABLE `update_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usage_log`
--
ALTER TABLE `usage_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login_info`
--
ALTER TABLE `user_login_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `version` (`version`);

--
-- Indexes for table `virustotal`
--
ALTER TABLE `virustotal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain_name` (`domain_name`,`scanned_at`,`user_id`);

--
-- Indexes for table `visitor_analysis_domain_list`
--
ALTER TABLE `visitor_analysis_domain_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_analysis_domain_list_data`
--
ALTER TABLE `visitor_analysis_domain_list_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_time` (`date_time`,`domain_list_id`,`is_new`) USING BTREE,
  ADD KEY `only_user_id` (`user_id`),
  ADD KEY `user_and_date` (`date_time`,`user_id`);

--
-- Indexes for table `website_analysis_info`
--
ALTER TABLE `website_analysis_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`domain_name`);

--
-- Indexes for table `website_ping`
--
ALTER TABLE `website_ping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`ping_at`);

--
-- Indexes for table `whois_search`
--
ALTER TABLE `whois_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scraped_time` (`scraped_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_config`
--
ALTER TABLE `ad_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alexa_info`
--
ALTER TABLE `alexa_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alexa_info_full`
--
ALTER TABLE `alexa_info_full`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `antivirus_scan_info`
--
ALTER TABLE `antivirus_scan_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backlink_generator`
--
ALTER TABLE `backlink_generator`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backlink_search`
--
ALTER TABLE `backlink_search`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitly_url_shortener`
--
ALTER TABLE `bitly_url_shortener`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_proxy`
--
ALTER TABLE `config_proxy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_smtp_config`
--
ALTER TABLE `email_smtp_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template_management`
--
ALTER TABLE `email_template_management`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expired_domain_list`
--
ALTER TABLE `expired_domain_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facebook_rx_config`
--
ALTER TABLE `facebook_rx_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fb_simple_support_desk`
--
ALTER TABLE `fb_simple_support_desk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fb_support_category`
--
ALTER TABLE `fb_support_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fb_support_desk_reply`
--
ALTER TABLE `fb_support_desk_reply`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forget_password`
--
ALTER TABLE `forget_password`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_domain_info`
--
ALTER TABLE `ip_domain_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_same_site`
--
ALTER TABLE `ip_same_site`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_v6_check`
--
ALTER TABLE `ip_v6_check`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keyword_position`
--
ALTER TABLE `keyword_position`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keyword_position_report`
--
ALTER TABLE `keyword_position_report`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keyword_position_set`
--
ALTER TABLE `keyword_position_set`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keyword_suggestion`
--
ALTER TABLE `keyword_suggestion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `link_analysis`
--
ALTER TABLE `link_analysis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_config`
--
ALTER TABLE `login_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `menu_child_1`
--
ALTER TABLE `menu_child_1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu_child_2`
--
ALTER TABLE `menu_child_2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `moz_info`
--
ALTER TABLE `moz_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `native_api`
--
ALTER TABLE `native_api`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `native_widgets`
--
ALTER TABLE `native_widgets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_status`
--
ALTER TABLE `page_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_config`
--
ALTER TABLE `payment_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paypal_error_log`
--
ALTER TABLE `paypal_error_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rebrandly_url_shortener`
--
ALTER TABLE `rebrandly_url_shortener`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_engine_index`
--
ALTER TABLE `search_engine_index`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_info`
--
ALTER TABLE `social_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_history_manual`
--
ALTER TABLE `transaction_history_manual`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `update_list`
--
ALTER TABLE `update_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usage_log`
--
ALTER TABLE `usage_log`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_login_info`
--
ALTER TABLE `user_login_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `version`
--
ALTER TABLE `version`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `virustotal`
--
ALTER TABLE `virustotal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_analysis_domain_list`
--
ALTER TABLE `visitor_analysis_domain_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_analysis_domain_list_data`
--
ALTER TABLE `visitor_analysis_domain_list_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_analysis_info`
--
ALTER TABLE `website_analysis_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `website_ping`
--
ALTER TABLE `website_ping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `whois_search`
--
ALTER TABLE `whois_search`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction_history_manual`
--
ALTER TABLE `transaction_history_manual`
  ADD CONSTRAINT `thm_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
