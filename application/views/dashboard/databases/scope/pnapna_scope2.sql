CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `timeLastLogin` int(11) NOT NULL,
  `timeCreated` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `email`, `password`, `verified`, `timeLastLogin`, `timeCreated`, `groupId`) VALUES
(1, '{{email}}', '{{password}}', 1, 1617600582, 1617598761, 1);
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
