-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 01:16 PM
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
-- Database: `pnapna_scope`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--


-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `message` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `type`, `message`, `time`) VALUES
(1, 'info', 'Successful login for email incubers.vaibhav@gmail.com from 183.83.42.0', 1617599275),
(2, 'info', 'New account created by user, email incubersjaipur@gmail.com, from 183.83.42.0', 1617599342),
(3, 'info', 'Successful login for email incubers.vaibhav@gmail.com from 183.83.42.0', 1617599363),
(4, 'info', 'New account created by user, email incuberprashant@gmail.com, from ::1', 1617605493),
(5, 'info', 'Successful login for email incuberprashant@gmail.com from ::1', 1617606377),
(6, 'info', 'Successful login for email incuberprashant@gmail.com from ::1', 1617880474);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` int(11) NOT NULL,
  `domain` text NOT NULL,
  `name` text NOT NULL,
  `data` mediumtext NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`id`, `domain`, `name`, `data`, `time`) VALUES
(1, 'vwork247.com', 'top-search-queries', 'YToxOntpOjA7YTo1OntzOjc6ImtleXdvcmQiO3M6ODoidndvcmsyNDciO3M6NzoicGVyY2VudCI7ZDoxMDA7czozOiJjcGMiO3M6MDoiIjtzOjM6InZvbCI7czowOiIiO3M6NToidmFsdWUiO3M6MDoiIjt9fQ==', 1617606950),
(2, 'getseostudio.com', 'top-search-queries', 'YToxOntpOjA7YTo1OntzOjc6ImtleXdvcmQiO3M6MTA6InNlbyBzdHVkaW8iO3M6NzoicGVyY2VudCI7ZDoxMDA7czozOiJjcGMiO3M6NToiJDAuNzAiO3M6Mzoidm9sIjtzOjM6IjQ4MCI7czo1OiJ2YWx1ZSI7czozOiIxNiUiO319', 1617606957);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `access-tools` tinyint(1) NOT NULL,
  `add-sites` tinyint(1) NOT NULL,
  `delete-sites` tinyint(1) NOT NULL,
  `record-tool-usage` tinyint(1) NOT NULL,
  `admin-access` tinyint(1) NOT NULL,
  `allow-comparing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `access-tools`, `add-sites`, `delete-sites`, `record-tool-usage`, `admin-access`, `allow-comparing`) VALUES
(1, 'Standard', 1, 1, 1, 1, 0, 0),
(2, 'Admin', 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `address` text NOT NULL,
  `domain` text NOT NULL,
  `data` text NOT NULL,
  `toolId` text NOT NULL,
  `useTime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `userId`, `address`, `domain`, `data`, `toolId`, `useTime`) VALUES
(1, 3, '::1', 'fgdfg', '', 'top-search-queries', 1617606122),
(2, 3, '::1', 'fgdfg', '', 'sitemap', 1617606454),
(3, 3, '::1', 'fgdfg', '', 'top-search-queries', 1617606575),
(4, 3, '::1', 'fgdfg', '', 'sitemap', 1617606598),
(5, 3, '::1', 'vwork247.com', '', 'top-search-queries', 1617606950),
(6, 3, '::1', 'getseostudio.com', '', 'top-search-queries', 1617606957),
(7, 3, '::1', 'getseostudio.com', '', 'top-search-queries', 1617606959);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `locale` text NOT NULL,
  `google` text NOT NULL,
  `dir` text NOT NULL,
  `countries` char(2) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `locale`, `google`, `dir`, `countries`) VALUES
(1, 'English', 'en-us', '.com', 'ltr', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `name` varchar(64) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`name`, `subject`, `message`) VALUES
('account:forgot_password', 'Reset your password', 'Hi,\n\nWe\'ve received a request to reset your password. Please follow this link to continue:\n\n{{ link }}\n\nThanks!'),
('account:verify_email', 'Verify your email address', 'Hi,\n\nPlease follow this link to verify your email address and activate your account:\n\n{{ link }}\n\nThanks!');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `directory` text NOT NULL,
  `market_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `version` text NOT NULL,
  `update_available` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'allow-registration', 'On'),
(2, 'show-login', 'On'),
(3, 'email-verification', 'Off'),
(4, 'cache', 'On'),
(5, 'cache-duration', '3'),
(6, 'default-group', '1'),
(7, 'current-theme', '1'),
(8, 'send-errors', 'On'),
(9, 'send-usage-info', 'On'),
(10, 'usage-info-level', '1'),
(11, 'automatic-updates', 'On'),
(12, 'updates-skip-modified', 'Off'),
(13, 'automatic-updates-purchased', 'Off'),
(14, 'automatic-updates-backup', 'On'),
(15, 'tools', 'a:3:{s:13:\"Search Engine\";a:8:{i:0;s:11:\"google-serp\";i:1;s:9:\"bing-serp\";i:2;s:18:\"top-search-queries\";i:3;s:13:\"indexed-pages\";i:4;s:10:\"robots-txt\";i:5;s:7:\"sitemap\";i:6;s:14:\"submit-sitemap\";i:7;s:10:\"alexa-rank\";}s:18:\"Backlinks And Test\";a:8:{i:0;s:22:\"high-quality-backlinks\";i:1;s:13:\"new-backlinks\";i:2;s:14:\"poor-backlinks\";i:3;s:13:\"top-referrers\";i:4;s:12:\"crawlability\";i:5;s:14:\"mobile-support\";i:6;s:7:\"headers\";i:7;s:10:\"speed-test\";}s:20:\"Content And Research\";a:5:{i:0;s:13:\"link-analysis\";i:1;s:15:\"keyword-density\";i:2;s:17:\"extract-meta-tags\";i:3;s:16:\"keyword-research\";i:4;s:11:\"competition\";}}'),
(16, 'categories', 'a:3:{i:0;s:13:\"Search Engine\";i:1;s:18:\"Backlinks And Test\";i:2;s:20:\"Content And Research\";}\r\n'),
(17, 'push-updates', 'Off'),
(18, 'ssl-updates', 'Off'),
(19, 'default-language', 'en-us'),
(20, 'token', ''),
(21, 'last-update-check', '1617598762'),
(22, 'last-uinfo-report', '1617598760'),
(23, 'update-missing-translations', '0'),
(24, 'push-token', ''),
(25, 'cron-last-run', '0'),
(26, 'cron-token', ''),
(27, 'seohub-api-key', ''),
(28, 'errors-anonymous', 'Off'),
(29, 'api.secretkey', '33c726a605::702-1f9d000b-23f66eda-a634'),
(30, 'google-enabled', 'Off'),
(31, 'public-url', 'http://www.scope.pnapna.com/'),
(32, 'market-count', '0'),
(33, 'market-count-updated', '0'),
(34, 'show-tools-without-site', 'On'),
(35, 'allow-siteless-tools', 'On'),
(36, 'experimental-tool-design', 'On'),
(37, 'speedtest-default-region', 'us-east-1'),
(38, 'welcome-guide', 'On'),
(39, 'install-time', '1617598760'),
(40, 'bing-error-time', '1617606585');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `updateName` text NOT NULL,
  `updateType` text NOT NULL,
  `updateVersion` text NOT NULL,
  `updateInfo` text NOT NULL,
  `updateFiles` text NOT NULL,
  `updateTime` int(11) NOT NULL,
  `updateStatus` int(11) NOT NULL,
  `updateError` text NOT NULL,
  `updateWarning` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `token`, `updateName`, `updateType`, `updateVersion`, `updateInfo`, `updateFiles`, `updateTime`, `updateStatus`, `updateError`, `updateWarning`) VALUES
(1, '1a404d6854129-72d857cedd5826c8f2', 'RC1608404', 'Bug fix', '1.84.4', '- Updated parser for Google search results.', 'a:2:{i:0;s:33:\"libraries/SEO/Services/Google.php\";i:1;s:38:\"libraries/Studio/Base/PlatformMeta.php\";}', 1601795430, 1, '', ''),
(2, '9251a19057130-a0da7a6f21c07dfd34', 'RC1608405', 'Update', '1.84.5', '- Added the ability to hide certain tools from the tools page.', 'a:6:{i:0;s:15:\"admin/tools.php\";i:1;s:38:\"libraries/Studio/Base/PlatformMeta.php\";i:2;s:25:\"resources/less/admin.less\";i:3;s:26:\"resources/scripts/admin.js\";i:4;s:26:\"resources/styles/admin.css\";i:5;s:10:\"/tools.php\";}', 1605627825, 1, '', ''),
(3, '4a7f984eea131-9273713ac976fa221e', 'RC1608406', 'Update', '1.84.6', '- Added options to hide navigation links (such as home, tools, and account).', 'a:4:{i:0;s:16:\"admin/header.php\";i:1;s:29:\"admin/settings/navigation.php\";i:2;s:38:\"libraries/Studio/Base/PlatformMeta.php\";i:3;s:30:\"resources/templates/header.php\";}', 1605628867, 1, '', ''),
(4, '5353c5ee48132-c25933ed53e1504b8c', 'RC1608407', 'Patch', '1.84.7', '- Updated the debugger extension to allow testing different user agents for Bing.', 'a:2:{i:0;s:44:\"includes/plugins/Debugger/utilities/bing.php\";i:1;s:38:\"libraries/Studio/Base/PlatformMeta.php\";}', 1605681304, 1, '', ''),
(5, '7152ba9336133-3ccb01398fea31205b', 'RC1608408', 'Update', '1.84.8', '- The Google proxying service will now automatically proxy Bing if necessary.', 'a:6:{i:0;s:21:\"libraries/API/API.php\";i:1;s:31:\"libraries/SEO/Services/Bing.php\";i:2;s:38:\"libraries/Studio/Base/PlatformMeta.php\";i:3;s:31:\"libraries/Studio/Ports/Bing.php\";i:4;s:35:\"libraries/Studio/Tools/BingSERP.php\";i:5;s:39:\"libraries/Studio/Tools/IndexedPages.php\";}', 1605724953, 1, '', ''),
(6, 'a2b2726fb0134-b6fa4ec8d310a2bee7', 'RC1608409', 'New feature', '1.84.9', '- Added option to change the URL of the header logo.', 'a:3:{i:0;s:29:\"admin/settings/navigation.php\";i:1;s:38:\"libraries/Studio/Base/PlatformMeta.php\";i:2;s:30:\"resources/templates/header.php\";}', 1606267500, 1, '', ''),
(7, '29e6da19d2135-9c563799e0981febe5', 'RC1608410', 'Bug fix', '1.84.10', '- Fix: Skip junk files and directories in language scandir.\r\n- Core: Don\'t stop the page for warnings and notices.', 'a:3:{i:0;s:17:\"includes/init.php\";i:1;s:34:\"libraries/Studio/Base/Language.php\";i:2;s:38:\"libraries/Studio/Base/PlatformMeta.php\";}', 1609842171, 1, '', ''),
(8, '188f5033bc136-ccad90621854d3d909', 'RC1608411', 'Update', '1.84.11', '- Updated the Google SERP parser\r\n- Fixed a few type warnings in the keyword research tool\r\n- Revamped error handling\r\n- Added a button to clear error logs in admin diagnostics\r\n- Added some new software version checks\r\n- Reorganized some demo mode logic', 'a:31:{i:0;s:21:\"admin/diagnostics.php\";i:1;s:17:\"includes/init.php\";i:2;s:22:\"libraries/autoload.php\";i:3;s:30:\"libraries/Raven/Autoloader.php\";i:4;s:31:\"libraries/Raven/Breadcrumbs.php\";i:5;s:44:\"libraries/Raven/Breadcrumbs/ErrorHandler.php\";i:6;s:46:\"libraries/Raven/Breadcrumbs/MonologHandler.php\";i:7;s:26:\"libraries/Raven/Client.php\";i:8;s:26:\"libraries/Raven/Compat.php\";i:9;s:27:\"libraries/Raven/Context.php\";i:10;s:31:\"libraries/Raven/CurlHandler.php\";i:11;s:31:\"libraries/Raven/data/cacert.pem\";i:12;s:32:\"libraries/Raven/ErrorHandler.php\";i:13;s:29:\"libraries/Raven/Exception.php\";i:14;s:29:\"libraries/Raven/Processor.php\";i:15;s:52:\"libraries/Raven/Processor/RemoveCookiesProcessor.php\";i:16;s:53:\"libraries/Raven/Processor/RemoveHttpBodyProcessor.php\";i:17;s:51:\"libraries/Raven/Processor/SanitizeDataProcessor.php\";i:18;s:58:\"libraries/Raven/Processor/SanitizeHttpHeadersProcessor.php\";i:19;s:57:\"libraries/Raven/Processor/SanitizeStacktraceProcessor.php\";i:20;s:34:\"libraries/Raven/ReprSerializer.php\";i:21;s:41:\"libraries/Raven/SanitizeDataProcessor.php\";i:22;s:30:\"libraries/Raven/Serializer.php\";i:23;s:30:\"libraries/Raven/Stacktrace.php\";i:24;s:36:\"libraries/Raven/TransactionStack.php\";i:25;s:24:\"libraries/Raven/Util.php\";i:26;s:33:\"libraries/SEO/Services/Google.php\";i:27;s:38:\"libraries/Studio/Base/ErrorHandler.php\";i:28;s:38:\"libraries/Studio/Base/PlatformMeta.php\";i:29;s:32:\"libraries/Studio/Base/Studio.php\";i:30;s:42:\"libraries/Studio/Tools/KeywordResearch.php\";}', 1611296457, 1, '', ''),
(9, '7f88ebcb58137-4b46c6a9f5aca71e5f', 'RC1608412', 'Update', '1.84.12', '- Added an automatic error report when Google SERP results cannot be parsed\r\n- Added error report ID to the output when an error is printed\r\n- Fixed soft errors not being printed to the output when \"show errors\" is enabled\r\n- Fixed database errors not being printed to the output when \"show errors\" is enabled\r\n- Fixed fatal errors not showing while the script is initializing\r\n- Fixed duplicate error logging\r\n- Fixed the shutdown handler reporting non-fatal errors', 'a:5:{i:0;s:17:\"includes/init.php\";i:1;s:33:\"libraries/SEO/Services/Google.php\";i:2;s:38:\"libraries/Studio/Base/ErrorHandler.php\";i:3;s:38:\"libraries/Studio/Base/PlatformMeta.php\";i:4;s:32:\"libraries/Studio/Base/Studio.php\";}', 1611337192, 1, '', ''),
(10, '07166ec4fa138-58acf687244616316d', 'RC1608413', 'Update', '1.84.13', '- Added error reporting for automatic updates\r\n- Enabled error reporting in the admin panel\r\n- Enabled error reporting in the cron script', 'a:5:{i:0;s:23:\"admin/includes/init.php\";i:1;s:25:\"includes/execute/cron.php\";i:2;s:19:\"includes/update.php\";i:3;s:38:\"libraries/Studio/Base/ErrorHandler.php\";i:4;s:38:\"libraries/Studio/Base/PlatformMeta.php\";}', 1611701756, 0, '', ''),
(11, '03b685a0dd139-69aab5366f53c04e4d', 'RC1608414', 'Update', '1.84.14', '- Set some database columns to utf8mb4_unicode_ci\r\n- Fixed settings containing UTF-8 characters not saving properly\r\n- Fixed mail templates not saving UTF-8 characters\r\n- Fixed tool usage records not saving UTF-8 characters\r\n- Fixed language names not saving UTF-8 characters', 'a:1:{i:0;s:38:\"libraries/Studio/Base/PlatformMeta.php\";}', 1611702438, 0, '', ''),
(12, '74ed5904a4140-27ecb07bb0099aa425', 'RC1608415', 'Patch', '1.84.15', '- Reports URL changes to the API if opted into the google or cron services.', 'a:2:{i:0;s:17:\"admin/bgupurl.php\";i:1;s:38:\"libraries/Studio/Base/PlatformMeta.php\";}', 1617316580, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `domain` text NOT NULL,
  `timeCreated` int(11) NOT NULL,
  `timeAccessed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `userId`, `domain`, `timeCreated`, `timeAccessed`) VALUES
(1, 3, 'ietranet.com', 1617605513, 1617605513);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--


--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cache`
--
ALTER TABLE `cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
