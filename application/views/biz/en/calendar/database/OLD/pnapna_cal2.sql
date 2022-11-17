CREATE TABLE `users` (
  `id` int NOT NULL,
  `parent_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user',
  `account_type` varchar(255) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'registered',
  `trial_expire` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `email_verified` int DEFAULT '0',
  `verify_code` varchar(255) DEFAULT NULL,
  `phone_verified` varchar(255) NOT NULL DEFAULT '0',
  `sms_count` varchar(255) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `paypal_payment` int DEFAULT '1',
  `stripe_payment` int DEFAULT '1',
  `paypal_email` varchar(255) DEFAULT NULL,
  `publish_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  `country` int DEFAULT NULL,
  `currency` varchar(255) DEFAULT 'USD',
  `paypal_mode` varchar(255) DEFAULT 'live',
  `about_me` varchar(5000) DEFAULT NULL,
  `available_days` varchar(255) DEFAULT NULL,
  `google_analytics` text,
  `enable_appointment` int DEFAULT '1',
  `enable_rating` int DEFAULT '1',
  `twillo_account_sid` varchar(255) DEFAULT NULL,
  `twillo_auth_token` varchar(255) DEFAULT NULL,
  `twillo_number` varchar(255) DEFAULT NULL,
  `enable_sms_notify` varchar(255) DEFAULT '0',
  `enable_sms_alert` varchar(255) DEFAULT '0',
  `date_format` varchar(255) DEFAULT 'd M Y',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


INSERT INTO `users` (`id`, `parent_id`, `name`, `slug`, `email`, `user_name`, `password`, `role`, `account_type`, `user_type`, `trial_expire`, `phone`, `address`, `email_verified`, `verify_code`, `phone_verified`, `sms_count`, `image`, `thumb`, `paypal_payment`, `stripe_payment`, `paypal_email`, `publish_key`, `secret_key`, `status`, `country`, `currency`, `paypal_mode`, `about_me`, `available_days`, `google_analytics`, `enable_appointment`, `enable_rating`, `twillo_account_sid`, `twillo_auth_token`, `twillo_number`, `enable_sms_notify`, `enable_sms_alert`, `date_format`, `created_at`) VALUES
(1, 0, 'admin', 'admin', 'admin@gmail.com', 'admin', '$2a$08$Who8NN9HJc8A0WsqulA1eugZPw5zm2U72kksHCRXb6/ho47AD.Z0m', 'admin', NULL, 'registered', '2021-08-19', NULL, NULL, 1, NULL, '0', '0', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, '0', '0', 'd M Y', '2021-08-19 07:55:55'),
(4, 0, 'Acme Company', 'company', '{{email}}', 'company', '{{password}}', 'user', NULL, 'registered', '2021-08-31', '+15123815033', NULL, 0, '3546', '0', '0', 'uploads/medium/7259e2dba6208efb4ad7f8c7410b7677_medium-300x300.jpg', 'uploads/thumbnail/7259e2dba6208efb4ad7f8c7410b7677_thumb-150x150.jpg', 0, 0, NULL, NULL, NULL, 1, NULL, 'USD', 'live', NULL, NULL, NULL, 1, 1, 'dgwrwwrw545rwr', 'wrtq453445WR', '0000000000', '1', '', 'd M Y', '2021-08-31 12:59:17');


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;