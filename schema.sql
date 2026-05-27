-- Dream Ludo Database Schema

SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE IF NOT EXISTS `tbl_app_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(100) DEFAULT 'Dream Ludo',
  `app_url` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `favicon` varchar(255) DEFAULT '',
  `fcm_server_key` varchar(255) DEFAULT '',
  `currency_code` varchar(10) DEFAULT 'INR',
  `currency_sign` varchar(10) DEFAULT '₹',
  `country_code` varchar(10) DEFAULT '91',
  `time_zone` varchar(100) DEFAULT 'Asia/Kolkata',
  `refer_percentage` decimal(5,2) DEFAULT 1.00,
  `maintenance_mode` tinyint(1) DEFAULT 0,
  `paytm_mer_id` varchar(100) DEFAULT '',
  `paytm_key` varchar(100) DEFAULT '',
  `payu_id` varchar(100) DEFAULT '',
  `payu_key` varchar(100) DEFAULT '',
  `payu_salt` varchar(100) DEFAULT '',
  `wallet_mode` tinyint(1) DEFAULT 1,
  `mop` varchar(50) DEFAULT 'Both',
  `min_withdraw` decimal(10,2) DEFAULT 100.00,
  `max_withdraw` decimal(10,2) DEFAULT 10000.00,
  `min_deposit` decimal(10,2) DEFAULT 10.00,
  `max_deposit` decimal(10,2) DEFAULT 10000.00,
  `min_entry_fee` decimal(10,2) DEFAULT 10.00,
  `game_name` varchar(100) DEFAULT 'Ludo',
  `package_name` varchar(100) DEFAULT 'com.dreamludo.app',
  `how_to_play` text,
  `cus_support_email` varchar(100) DEFAULT '',
  `cus_support_mobile` varchar(20) DEFAULT '',
  `force_update` tinyint(1) DEFAULT 0,
  `whats_new` text,
  `update_date` date DEFAULT NULL,
  `latest_version_name` varchar(20) DEFAULT '1.0',
  `latest_version_code` int(11) DEFAULT 1,
  `update_url` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_app_configuration` (`id`, `app_name`, `currency_code`, `currency_sign`, `country_code`, `time_zone`, `game_name`, `how_to_play`, `latest_version_name`, `latest_version_code`) VALUES
(1, 'Dream Ludo', 'INR', '₹', '91', 'Asia/Kolkata', 'Ludo', 'Challenge your friends in Ludo matches and win real money!', '1.0', 1);


CREATE TABLE IF NOT EXISTS `tbl_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq` longtext,
  `terms` longtext,
  `privacy` longtext,
  `about` longtext,
  `rules` longtext,
  `legal` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_configuration` (`id`, `faq`, `terms`, `privacy`, `about`, `rules`, `legal`) VALUES
(1, '<p>FAQ content here.</p>', '<p>Terms & Conditions here.</p>', '<p>Privacy Policy here.</p>', '<p>About us here.</p>', '<p>Game rules here.</p>', '<p>Legal policy here.</p>');


CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT '',
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT '',
  `country_code` varchar(10) DEFAULT '91',
  `mobile` varchar(20) DEFAULT '',
  `whatsapp_no` varchar(20) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `fb_password` varchar(255) DEFAULT '',
  `gp_password` varchar(255) DEFAULT '',
  `referer` varchar(50) DEFAULT '',
  `refer_counter` int(11) DEFAULT 0,
  `fcm_token` varchar(255) DEFAULT '',
  `device_id` varchar(100) DEFAULT '',
  `profile_img` varchar(255) DEFAULT '',
  `deposit_bal` decimal(10,2) DEFAULT 0.00,
  `won_bal` decimal(10,2) DEFAULT 0.00,
  `bonus_bal` decimal(10,2) DEFAULT 0.00,
  `is_active` tinyint(1) DEFAULT 1,
  `is_block` tinyint(1) DEFAULT 0,
  `user_type` tinyint(1) DEFAULT 1 COMMENT '0=admin, 1=user',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Default admin user: username=admin, password=admin123 (sha1)
INSERT INTO `tbl_user` (`id`, `full_name`, `username`, `email`, `password`, `is_active`, `is_block`, `user_type`) VALUES
(1, 'Administrator', 'admin', 'admin@dreamludo.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 1, 0, 0);


CREATE TABLE IF NOT EXISTS `tbl_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match_fee` decimal(10,2) DEFAULT 0.00,
  `prize` decimal(10,2) DEFAULT 0.00,
  `table_size` int(11) DEFAULT 2,
  `type` varchar(50) DEFAULT 'Classic',
  `play_time` bigint(20) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1 COMMENT '1=upcoming, 2=live, 3=completed, 4=cancelled',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `tbl_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match_id` int(11) DEFAULT NULL,
  `parti1` int(11) DEFAULT NULL,
  `parti2` int(11) DEFAULT NULL,
  `parti1_status` tinyint(1) DEFAULT NULL,
  `parti2_status` tinyint(1) DEFAULT NULL,
  `parti1_proof` varchar(255) DEFAULT NULL,
  `parti2_proof` varchar(255) DEFAULT NULL,
  `parti1_join_time` datetime DEFAULT NULL,
  `parti2_join_time` datetime DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `won_prize` decimal(10,2) DEFAULT NULL,
  `result_status` tinyint(1) DEFAULT NULL COMMENT '1=result declared',
  `result_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `match_id` (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `tbl_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT '',
  `payment_id` varchar(100) DEFAULT '',
  `amount` decimal(10,2) DEFAULT 0.00,
  `payment_getway` varchar(50) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `type` tinyint(1) DEFAULT 1 COMMENT '0=debit, 1=credit',
  `status` tinyint(1) DEFAULT 0 COMMENT '0=pending, 1=success',
  `reg_number` varchar(50) DEFAULT '',
  `reg_name` varchar(100) DEFAULT '',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `tbl_fcm_devicetoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT '',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `tbl_refer_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `refer_amt` decimal(10,2) DEFAULT 0.00,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `tbl_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `message` text,
  `image` varchar(255) DEFAULT '',
  `type` varchar(50) DEFAULT 'general',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS=1;
