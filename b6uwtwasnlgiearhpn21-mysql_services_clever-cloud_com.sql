-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: b6uwtwasnlgiearhpn21-mysql.services.clever-cloud.com:3306
-- Generation Time: Jul 29, 2022 at 01:08 AM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b6uwtwasnlgiearhpn21`
--
CREATE DATABASE IF NOT EXISTS `b6uwtwasnlgiearhpn21` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `b6uwtwasnlgiearhpn21`;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `n_category_id` int NOT NULL,
  `topic` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nametopic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) NOT NULL,
  `d_date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`n_category_id`, `topic`, `nametopic`, `message`, `name`, `d_date_created`) VALUES
(1, 'aa', 'bbb', 'cccc', 'vvvvvv', '2022-07-24'),
(6, 'toi da', 'hack', 'page cua ban roi', 'ádasd', '2022-07-24'),
(7, 'troi oi', 'lam met', 'troi oi', 'qqq', '2022-07-24'),
(8, 'asd', 'dsa', 'asd', 'eee', '2022-07-24'),
(9, 'dđd', 'aaaa', 'dđd', 'rrrrr', '2022-07-24'),
(10, 'Xin chào', 'Hello', 'Xin chào mọi người tôi là Hiragi', 'Hung Hiragi', '2022-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `n_blog_comment_id` int NOT NULL,
  `n_blog_comment_parent_id` int NOT NULL,
  `n_blog_post_id` int NOT NULL,
  `v_comment_author` varchar(50) NOT NULL,
  `v_comment_author_email` varchar(100) NOT NULL,
  `v_comment` varchar(500) NOT NULL,
  `d_date_created` date NOT NULL,
  `d_time_created` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`n_blog_comment_id`, `n_blog_comment_parent_id`, `n_blog_post_id`, `v_comment_author`, `v_comment_author_email`, `v_comment`, `d_date_created`, `d_time_created`) VALUES
(1, 1, 2, 'hello các bợn', 'hello@gmail.com', 'chào', '2022-06-19', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_contact`
--

CREATE TABLE `blog_contact` (
  `n_contact_id` int NOT NULL,
  `v_fullname` varchar(50) NOT NULL,
  `v_email` varchar(50) NOT NULL,
  `v_phone` varchar(50) NOT NULL,
  `v_message` text NOT NULL,
  `d_date_created` date NOT NULL,
  `d_time_created` time NOT NULL,
  `f_contact_status` int NOT NULL COMMENT '1-Inactive|2-Active|3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_contact`
--

INSERT INTO `blog_contact` (`n_contact_id`, `v_fullname`, `v_email`, `v_phone`, `v_message`, `d_date_created`, `d_time_created`, `f_contact_status`) VALUES
(1, 'aaa', 'aaa@gmail.com', '0123456789', 'hello', '2022-06-19', '00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `n_blog_post_id` int NOT NULL,
  `n_category_id` int NOT NULL,
  `v_post_title` varchar(100) NOT NULL,
  `v_post_meta_title` varchar(100) NOT NULL,
  `v_post_path` varchar(100) NOT NULL,
  `v_post_summary` text NOT NULL,
  `v_post_content` text NOT NULL,
  `v_main_image_url` varchar(100) NOT NULL,
  `v_alt_image_url` varchar(100) NOT NULL,
  `n_blog_post_views` int NOT NULL,
  `n_home_page_place` int NOT NULL COMMENT '0-Inactive|1-Active|2-Deleted',
  `f_post_status` int NOT NULL COMMENT '0-Inactive|1-Active|2-Deleted',
  `d_date_created` date NOT NULL,
  `d_time_created` time NOT NULL,
  `d_date_updated` date DEFAULT NULL,
  `d_time_updated` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`n_blog_post_id`, `n_category_id`, `v_post_title`, `v_post_meta_title`, `v_post_path`, `v_post_summary`, `v_post_content`, `v_main_image_url`, `v_alt_image_url`, `n_blog_post_views`, `n_home_page_place`, `f_post_status`, `d_date_created`, `d_time_created`, `d_date_updated`, `d_time_updated`) VALUES
(1, 1, '123321', '321123', 'bbbaaa', '                                             123', '                                            321', 'sample-525.jpg', 'slide3-bg-3000.jpg', 0, 1, 1, '1970-01-01', '01:00:10', NULL, NULL),
(4, 1, '123213213', '213213213', '21321321', '21321312', '213213', '', '', 1, 1, 1, '2022-06-20', '00:00:00', '2022-06-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_subscriber`
--

CREATE TABLE `blog_subscriber` (
  `n_sub_id` int NOT NULL,
  `v_sub_email` varchar(50) NOT NULL,
  `d_date_created` date NOT NULL,
  `d_time_created` time NOT NULL,
  `f_sub_status` int NOT NULL COMMENT '1-Inactive|2-Active|3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_subscriber`
--

INSERT INTO `blog_subscriber` (`n_sub_id`, `v_sub_email`, `d_date_created`, `d_time_created`, `f_sub_status`) VALUES
(3, 'super@gmail.com', '2022-06-19', '00:00:00', 1),
(4, 'aaa@gmail.com', '2022-06-20', '00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `n_tag_id` int NOT NULL,
  `n_blog_post_id` int NOT NULL,
  `v_tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`n_tag_id`, `n_blog_post_id`, `v_tag`) VALUES
(1, 1, 'aaa'),
(2, 2, '11111111'),
(3, 3, 'ggggg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_user`
--

CREATE TABLE `blog_user` (
  `n_user_id` int NOT NULL,
  `v_username` varchar(50) NOT NULL,
  `v_password` varchar(100) NOT NULL,
  `v_fullname` varchar(100) NOT NULL,
  `v_phone` varchar(50) NOT NULL,
  `v_email` varchar(100) NOT NULL,
  `v_image` varchar(100) NOT NULL,
  `v_message` varchar(500) NOT NULL,
  `d_date_updated` date NOT NULL,
  `d_time_updated` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_user`
--

INSERT INTO `blog_user` (`n_user_id`, `v_username`, `v_password`, `v_fullname`, `v_phone`, `v_email`, `v_image`, `v_message`, `d_date_updated`, `d_time_updated`) VALUES
(1, 'hung123', '202cb962ac59075b964b07152d234b70', 'luongvinhhung', '0338935364', 'hung@gmail.com', 'avatar-00.jpg', '                                                                                                                                                                                                                            my name Hung                                                                                                                                                                                ', '2022-06-19', '08:50:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`n_category_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`n_blog_comment_id`);

--
-- Indexes for table `blog_contact`
--
ALTER TABLE `blog_contact`
  ADD PRIMARY KEY (`n_contact_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`n_blog_post_id`);

--
-- Indexes for table `blog_subscriber`
--
ALTER TABLE `blog_subscriber`
  ADD PRIMARY KEY (`n_sub_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`n_tag_id`);

--
-- Indexes for table `blog_user`
--
ALTER TABLE `blog_user`
  ADD PRIMARY KEY (`n_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `n_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `n_blog_comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_contact`
--
ALTER TABLE `blog_contact`
  MODIFY `n_contact_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `n_blog_post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_subscriber`
--
ALTER TABLE `blog_subscriber`
  MODIFY `n_sub_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `n_tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_user`
--
ALTER TABLE `blog_user`
  MODIFY `n_user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
