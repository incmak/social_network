-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 11:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(3, 25, 30, 'Masha Allah', 'faisal_hassan_471195', '2021-09-27 15:24:50'),
(4, 27, 31, 'Ruab kaernaiy raham', 'Asif_Mushtaq', '2021-09-27 17:28:24'),
(5, 30, 32, 'Ruabb deenay yazat', 'faisal_hassan_471195', '2021-09-27 17:44:02'),
(7, 30, 32, 'Masha Allah', 'Syed Irfan', '2021-09-28 18:33:55'),
(9, 27, 31, 'Inna Lilla Hi Wa inna Ilaahi raajioon\r\n', 'Faisal Hassan', '2021-09-29 14:48:07'),
(12, 35, 30, ' The next big thing in 2021 is community-based healthcare.', 'Syed Irfan', '2021-09-30 07:04:56'),
(13, 37, 34, 'Well SAid!!!', 'syed_wajid_772515', '2021-09-30 09:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `topic_id`, `post_content`, `upload_image`, `post_date`) VALUES
(25, 30, 0, 'Alhamdulillah ....', '1.jpg.22', '2021-09-27 15:24:25'),
(26, 30, 0, 'All is working very well !!!', '', '2021-09-27 15:27:25'),
(30, 32, 0, 'Its better to be feared than to be loved', '37.jpg.38', '2021-09-27 17:43:06'),
(33, 30, 0, 'How about Making Bitcoin \r\na Universal\r\nDollar', '', '2021-09-29 14:25:24'),
(35, 30, 0, 'Robotic Process Automation is the ...        \r\nnext  \r\nBIG THING', '', '2021-09-30 06:59:14'),
(37, 34, 0, ' One machine can do the work of fifty ordinary men. \r\n No machine can do the work of one extraordinary man.', '', '2021-09-30 07:11:15'),
(38, 36, 0, 'TEch is Useful when it brings people together', '32.jpg.97', '2021-09-30 10:00:33'),
(39, 30, 0, 'hello is in my mind', '8.jpg.24', '2021-10-02 07:39:53'),
(40, 30, 0, 'hello is in my mind', '8.jpg.47', '2021-10-02 07:41:28'),
(41, 30, 0, 'test the error', '', '2021-10-02 07:54:03'),
(42, 30, 0, 'error in images', '1.jpg.15', '2021-10-02 07:54:38'),
(43, 30, 0, 'retry images', '1.jpg.6', '2021-10-02 07:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_branch` varchar(20) DEFAULT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NULL DEFAULT current_timestamp(),
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_branch`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(30, 'Faisal', 'Hassan', 'Faisal Hassan', 'Hi there ! I am using Colleger .', 'Single', '1234567890', 'me@you', 'India', 'Male', 'Computer Science', '1997-08-23', 'default.png', 'default.png', '2021-09-27 14:57:24', 'verified', 'yes', 'Rasool SAW'),
(31, 'Waqib', 'Ahmad', 'waqib_ahmad_548571', 'Aati ka Khandala', 'Widowed', 'kukkaarrrrr', 'be@xe', 'India', 'Male', 'Civil', '1998-01-01', 'default.png', 'default.png', '2021-09-27 15:29:04', 'verified', 'yes', 'ifyouaregootatsomethingdontdoitforfree45566677888'),
(32, 'Asif', 'Mushtaq', 'Asif_Mushtaq', 'Hey There ! I am using Colleger', 'Engaged', '1234567890', 'you@you', 'India', 'Male', 'Civil', '1998-01-01', 'default.png', 'default.png', '2021-09-27 17:04:07', 'verified', 'yes', 'ifyouaregootatsomethingdontdoitforfree45566677888'),
(34, 'Syed', 'Irfan Yaqoob', 'Syed Irfan', 'Hello Colleger.This is my default status.', 'Married', 'ideaisbrilliant', 'red@nexon', 'India', 'Male', 'Civil', '1986-01-01', 'default.png', 'default.png', '2021-09-28 18:30:24', 'verified', 'yes', 'ifyouaregootatsomethingdontdoitforfree45566677888'),
(36, 'Syed', 'Wajid', 'syed_wajid_772515', 'Hello Colleger.This is my default status.', '........', '1234567890', 'syed@wajid', 'India', 'Male', 'Electrical', '1987-01-01', 'default.png', 'default.png', '2021-09-30 09:53:08', 'verified', 'yes', 'Rasool SAW'),
(37, 'Muieen', 'Ahmad', 'muieen_ahmad_339979', 'Hello Colleger.This is my default status.', '........', '1234567890', 'muieen@ahmad', 'India', 'Prefer Not To Say', 'Civil', '1997-08-10', 'def_3.jpg', 'default_cover.jpg', '2021-10-01 09:09:50', 'verified', 'no', 'ifyouaregootatsomethingdontdoitforfree45566677888'),
(38, 'abc', 'zdrgz', 'abc_zdrgz_474193', 'Hello Colleger.This is my default status.', 'Married', '1234567890', 'nn@nn', 'India', 'Male', 'Civil', '1111-11-11', 'def_1.png', 'default_cover.jpg', '2021-10-01 09:26:40', 'verified', 'no', 'ifyouaregootatsomethingdontdoitforfree45566677888'),
(39, 'def', 'dfa', 'def_dfa_662219', 'Hello Colleger.This is my default status.', '........', '1234567890', 'def@yo', 'India', 'Male', 'Electronics And Comm', '2888-11-11', 'def_3.jpg', 'default_cover.jpg', '2021-10-01 09:29:30', 'verified', 'no', 'ifyouaregootatsomethingdontdoitforfree45566677888');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(80, 32, 30, '...', '2021-09-28 10:00:58', 'no'),
(81, 32, 30, 'hi', '2021-09-28 10:01:44', 'no'),
(82, 30, 32, 'helolo', '2021-09-28 10:02:00', 'no'),
(83, 30, 32, 'waaraiy haezz\r\n', '2021-09-28 10:02:56', 'no'),
(84, 30, 33, 'Pujja Ho....', '2021-09-28 14:30:32', 'no'),
(85, 33, 30, 'Waan chui Yallay ', '2021-09-28 14:32:13', 'no'),
(86, 33, 30, 'cheez ak ze eaiss zorrath', '2021-09-28 14:32:40', 'no'),
(87, 32, 30, 'helleula', '2021-09-28 16:36:50', 'no'),
(88, 35, 30, 'Asalamualaikum', '2021-09-29 06:06:05', 'no'),
(89, 30, 35, 'Waalaikumasalaam', '2021-09-29 06:06:35', 'no'),
(90, 30, 31, 'Billya ya', '2021-09-29 14:00:24', 'no'),
(91, 31, 30, 'Wannu kukka', '2021-09-29 14:00:57', 'no'),
(92, 30, 31, 'College karr gaso', '2021-09-29 14:01:44', 'no'),
(93, 34, 30, 'Asalamualaikum Sir', '2021-09-30 07:22:09', 'no'),
(94, 30, 34, 'WaalaikumAsalaam Dear', '2021-09-30 07:22:57', 'no'),
(95, 30, 36, 'Asalamualaikum', '2021-09-30 09:58:52', 'no'),
(96, 36, 30, 'Waalaikumasalaam Sir Ji', '2021-09-30 09:59:27', 'no'),
(97, 39, 30, 'wilae7fyIOYe', '2021-10-01 10:15:19', 'no'),
(98, 38, 30, 'sCGK.UGAdkhaKYEG', '2021-10-01 10:16:41', 'no'),
(99, 30, 38, 'JHAEGKLJKJW', '2021-10-01 10:17:10', 'no'),
(100, 38, 39, 'mkopppl', '2021-10-01 10:18:31', 'no'),
(101, 39, 30, 'bes\r\n', '2021-10-01 15:39:54', 'no'),
(102, 39, 30, 'hello', '2021-10-01 15:50:01', 'no'),
(103, 39, 30, 'hi', '2021-10-01 15:51:04', 'no'),
(104, 39, 30, '1 2', '2021-10-01 15:51:23', 'no'),
(105, 39, 30, '1 2', '2021-10-01 15:51:28', 'no'),
(106, 39, 30, '1 2', '2021-10-01 15:51:33', 'no'),
(107, 39, 30, 'hel', '2021-10-01 15:53:39', 'no'),
(108, 39, 30, 'hel', '2021-10-01 15:53:49', 'no'),
(109, 39, 30, 'hel', '2021-10-01 15:53:59', 'no'),
(110, 39, 30, 'hel', '2021-10-01 15:54:10', 'no'),
(111, 39, 30, 'hel', '2021-10-01 15:54:21', 'no'),
(112, 39, 30, 'hel', '2021-10-01 15:54:31', 'no'),
(113, 39, 30, '1', '2021-10-01 15:54:51', 'no'),
(114, 39, 30, '2', '2021-10-01 15:56:05', 'no'),
(115, 39, 30, '2', '2021-10-01 15:56:40', 'no'),
(116, 39, 30, '3', '2021-10-01 15:56:50', 'no'),
(117, 39, 30, '3', '2021-10-01 15:57:05', 'no'),
(118, 39, 30, '3', '2021-10-01 17:06:05', 'no'),
(119, 39, 30, '3', '2021-10-01 17:06:05', 'no'),
(120, 39, 30, '3', '2021-10-01 17:06:05', 'no'),
(121, 1, 30, 'hello', '2021-10-02 02:43:40', 'no'),
(122, 39, 30, 'set', '2021-10-02 02:50:00', 'no'),
(123, 39, 30, 'hi', '2021-10-02 09:08:25', 'no'),
(124, 39, 30, 'kithay', '2021-10-02 09:14:51', 'no'),
(125, 39, 30, 'yar\r\n', '2021-10-02 09:15:56', 'no'),
(126, 39, 30, 'yes', '2021-10-02 09:16:56', 'no'),
(127, 39, 30, 'j', '2021-10-02 09:19:03', 'no'),
(128, 39, 30, 'hihi', '2021-10-02 09:21:55', 'no'),
(129, 39, 30, 'hihi', '2021-10-02 09:22:00', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
