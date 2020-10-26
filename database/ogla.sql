-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2020 at 09:44 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogla`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(6, 'Webster', 'Avosa', 'websterb17@gmail.com', '0717678794', 'Mombasa', '$5$rounds=535000$xzS8BmN0..HRuB3b$BuZadi6u.YWHUrKu3GOw75Z0LE8RNgvo8WC47HfPsP0', 'manager', '0'),
(8, 'Ogla', 'Biwott', 'oglabiwott21@gmail.com', '0790358339', 'Nairobi', '$5$rounds=535000$xzS8BmN0..HRuB3b$BuZadi6u.YWHUrKu3GOw75Z0LE8RNgvo8WC47HfPsP0', 'manager', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` varchar(11) NOT NULL,
  `oplace` text NOT NULL,
  `order_description` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `order_description`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(33, 16, 'Webster Avosa', 22, '1', 'Mombasa ', 'I want a house of this sort. How much will it cost me? Do you allow customization?', '+254717678794', 'no', '2020-10-21 16:13:41', '2020-10-28'),
(34, 23, 'Nadia Mukami', 44, '2', 'Eldoret', 'How much will you charge me for this with customized features?', '0711000111', 'no', '2020-10-21 16:38:03', '2020-10-28'),
(35, 20, 'Ogla Biwott', 45, 'Other', 'Kilifi', 'Can I have this though customizable?', '0790123800', 'no', '2020-10-21 16:39:37', '2020-10-28'),
(36, 24, 'Natasha Lonah', 23, '2', 'Malindi', 'How much can I have this best price', '0720123456', 'no', '2020-10-21 16:53:33', '2020-10-28'),
(37, 24, 'Natasha Lonah', 44, 'Inquiry', 'Kisii', 'Is this available in Kisii?', '0717678794', 'no', '2020-10-21 17:29:18', '2020-10-28'),
(38, 25, 'Einz Hescky', 24, 'Inquiry', 'Dodoma', 'Do you offer this service in Dodoma?', '0799678794', 'no', '2020-10-21 19:32:24', '2020-10-28'),
(39, 27, 'Moreen Ntalami', 22, '1', 'Nakuru', 'How much when I customize?', '+254717678794', 'no', '2020-10-25 09:51:47', '2020-11-01'),
(41, 20, 'Ogla Biwott', 44, 'Inquiry', 'Mombasa ', 'i want some cool stuff for sure', '+254717678794', 'no', '2020-10-26 16:28:36', '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(22, 'Makuti, Kilifi', 5000000, 'Available in Bofa', 20, 'house', 'houses', '1-00w', 'h5.png', '2020-10-11 04:14:54'),
(23, 'Mwahu Bungalows, Malindi', 5000000, 'Available in Malindi, Kilifi, Mtwapa and Mombasa', 10000, 'house', 'houses', '1-00Q', 'h4.png', '2020-10-11 04:17:38'),
(24, 'Bofa House Painting services, Kilifi', 2000, 'Available in Mtwapa', 300, 'painting', 'painting', '1-000', 'p2.png', '2020-10-11 05:28:04'),
(25, 'Cement Additives', 500, 'Boosts performance of cement', 10000, 'equipment', 'cement', 'i-pppp', 'e6.png', '2020-10-11 09:15:11'),
(26, 'Simba Cement', 850, 'Trusted cement to build with in coast region!', 10000, 'equipment', 'cement', '0-ppp1', 'e1.png', '2020-10-11 09:16:31'),
(28, 'Track for carrying goods bought', 350000, 'The only track services youll get for such price', 1000, 'equipment', 'Track', '0-6789', 'l8.png', '2020-10-11 09:35:57'),
(29, 'Cement mixer', 250000, 'Save time making concrete', 10000, 'equipment', 'mixer', '0-ijyk', 'e5.png', '2020-10-11 09:37:42'),
(30, 'Mtwapa ample space for all your building', 100000, 'We offer better services and prices ', 1000, 'logistics', 'logistics', '0-6789', 'l1.png', '2020-10-11 09:40:11'),
(31, 'Land', 1000000, 'We offer better services and prices ', 10000, 'logistics', 'land', '0-567', 'l4.png', '2020-10-11 09:41:39'),
(32, 'Urban ', 350000, 'We offer better services and prices ', 1000, 'logistics', 'log', '0-6789', 'l7.png', '2020-10-11 09:42:47'),
(33, 'Land', 350000, 'We offer better services and prices ', 10000, 'logistics', 'painting', '74900', 'l1.png', '2020-10-11 09:43:36'),
(34, 'Pro painting', 8000, 'We offer better services and prices ', 1000, 'painting', 'painting', '1-00w', 'p4.png', '2020-10-11 09:45:03'),
(35, 'Stylish painting', 67890, 'We offer better services and prices ', 1000, 'painting', 'painting', '439361', 'p6.png', '2020-10-11 09:45:53'),
(36, 'Fancy painting', 8000, 'We offer better services and prices ', 10000, 'painting', 'painting', '0-ijyk', 'p5.png', '2020-10-11 09:46:46'),
(37, 'Colorful painting', 8000, 'We offer good service', 10000, 'painting', 'painting', '548089', 'p7.png', '2020-10-11 09:51:05'),
(44, 'Flat', 20000000, 'Flat in Mtwapa', 10000, 'house', 'houses', '0-1234', 'h7.png', '2020-10-17 23:54:33'),
(45, 'Palace Square and Co Builds', 3500000, 'Want a palace in the coast region?Well, we will construct one for you!', 10000, 'house', 'houses', '1-000', 'h2.png', '2020-10-17 23:56:09'),
(46, 'Fancy Apartments in Mtwapa', 5000000, 'A cool place to enjoy with fam', 100, 'house', 'houses', '1-000', 'h4.png', '2020-10-26 18:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_level`
--

CREATE TABLE `product_level` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `v_shape` varchar(10) NOT NULL DEFAULT 'no',
  `polo` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `leather` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `converse` varchar(10) NOT NULL DEFAULT 'no',
  `loafer` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `v_shape`, `polo`, `clean_text`, `design`, `chain`, `leather`, `hook`, `color`, `formal`, `converse`, `loafer`) VALUES
(41, 41, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(40, 40, 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(39, 39, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(38, 38, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(37, 37, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(36, 36, 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no'),
(35, 35, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(34, 34, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(33, 33, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no'),
(32, 32, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no'),
(31, 31, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes'),
(30, 30, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no'),
(29, 29, 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(28, 28, 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(27, 27, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(26, 26, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(25, 25, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(24, 24, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(23, 23, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(22, 22, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(42, 42, 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(43, 43, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(44, 44, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(45, 45, 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(46, 46, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_view`
--

CREATE TABLE `product_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(32, 20, 41, '2020-10-11 13:18:51'),
(31, 19, 40, '2020-10-11 13:10:40'),
(30, 20, 22, '2020-10-26 20:16:36'),
(29, 20, 43, '2020-10-11 13:17:39'),
(28, 20, 38, '2020-10-11 10:51:15'),
(27, 20, 39, '2020-10-11 10:51:10'),
(26, 19, 38, '2020-10-11 10:48:30'),
(25, 19, 39, '2020-10-11 13:11:32'),
(24, 19, 43, '2020-10-11 10:48:31'),
(23, 17, 38, '2020-10-11 17:44:24'),
(22, 17, 39, '2020-10-11 17:44:21'),
(21, 17, 43, '2020-10-11 10:03:59'),
(20, 17, 22, '2020-10-19 06:52:39'),
(19, 17, 23, '2020-10-19 06:57:39'),
(33, 17, 45, '2020-10-18 13:19:15'),
(34, 17, 44, '2020-10-19 06:57:34'),
(35, 22, 22, '2020-10-18 16:42:39'),
(36, 22, 23, '2020-10-18 16:42:49'),
(37, 22, 44, '2020-10-18 16:42:26'),
(38, 16, 23, '2020-10-24 09:19:17'),
(39, 16, 45, '2020-10-24 09:48:08'),
(40, 16, 22, '2020-10-24 09:50:33'),
(41, 16, 44, '2020-10-24 09:32:33'),
(42, 16, 30, '2020-10-24 09:26:38'),
(43, 16, 25, '2020-10-24 09:50:28'),
(44, 16, 31, '2020-10-24 09:50:19'),
(45, 23, 22, '2020-10-20 10:11:41'),
(46, 23, 23, '2020-10-20 10:11:44'),
(47, 23, 45, '2020-10-21 16:38:24'),
(48, 23, 30, '2020-10-20 10:07:59'),
(49, 23, 25, '2020-10-20 10:08:12'),
(50, 23, 29, '2020-10-20 10:11:49'),
(51, 23, 44, '2020-10-21 16:36:54'),
(52, 20, 45, '2020-10-26 20:43:34'),
(53, 20, 23, '2020-10-26 20:20:20'),
(54, 24, 23, '2020-10-21 17:28:38'),
(55, 24, 22, '2020-10-21 17:28:36'),
(56, 24, 45, '2020-10-21 16:58:31'),
(57, 24, 44, '2020-10-21 17:28:52'),
(58, 24, 31, '2020-10-21 19:27:27'),
(59, 16, 26, '2020-10-24 09:48:12'),
(60, 16, 29, '2020-10-24 09:53:19'),
(61, 16, 33, '2020-10-24 09:27:55'),
(62, 16, 28, '2020-10-24 09:32:13'),
(63, 26, 22, '2020-10-25 00:30:26'),
(64, 27, 45, '2020-10-25 00:31:29'),
(65, 27, 22, '2020-10-25 09:51:12'),
(66, 27, 44, '2020-10-25 07:14:51'),
(67, 27, 23, '2020-10-25 07:11:37'),
(68, 27, 26, '2020-10-25 07:14:06'),
(69, 27, 30, '2020-10-25 00:38:25'),
(70, 27, 31, '2020-10-25 07:11:49'),
(71, 27, 32, '2020-10-25 07:12:17'),
(72, 20, 44, '2020-10-26 20:20:07'),
(73, 20, 30, '2020-10-26 20:43:54'),
(74, 20, 25, '2020-10-26 18:38:49'),
(75, 20, 46, '2020-10-26 20:21:54'),
(76, 20, 26, '2020-10-26 20:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `UserRating`
--

CREATE TABLE `UserRating` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `ratingMessage` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `UserRating`
--

INSERT INTO `UserRating` (`id`, `firstName`, `ratingMessage`) VALUES
(38, 'Webster', 'good'),
(39, 'James', 'fair'),
(40, 'Ogla', 'excellent'),
(41, 'Grace', 'satisfactory'),
(42, 'Faith', 'good'),
(43, 'Rabin', 'fair'),
(44, 'Candy', 'satisfactory'),
(45, 'Joyce', 'satisfactory'),
(46, 'Ndemange', 'fair'),
(47, 'Clara', 'satisfactory'),
(48, 'Derick', 'poor'),
(49, 'George', 'satisfactory'),
(50, 'Clerkson', 'satisfactory'),
(51, 'Changilwa', 'excellent'),
(52, 'Nadia', 'poor'),
(53, 'Liz', 'satisfactory'),
(54, 'phillip', 'fair'),
(55, 'ntalami', 'excellent');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(20, 'Ogla Biwott', 'oglabiwott21@gmail.com', 'ogla', '$5$rounds=535000$z7w9uYgwfbok1kGx$aabqsubMn8DGJENHWXDIaKjGqqgiQ53xbXx8kNbecoD', '+254790123879', '2020-10-11 10:50:27', '1', 'yes'),
(23, 'Nadia Mukami', 'nadia@gmail.com', 'nadia', '$5$rounds=535000$Pw8eMa.UHsYfOiUL$VjmxG01lfVyn1rwa4UNq/.7uhnH4I0tfyKdrnUbnilC', '+254717678777', '2020-10-20 09:48:05', '0', 'yes'),
(16, 'Webster Avosa', 'websterb17@gmail.com', 'webster', '$5$rounds=535000$xzS8BmN0..HRuB3b$BuZadi6u.YWHUrKu3GOw75Z0LE8RNgvo8WC47HfPsP0', '+254717678794', '2020-10-11 00:20:51', '1', 'yes'),
(21, 'Ogla Biwott', 'oglabiwott21@gmail.com', 'ogla', '$5$rounds=535000$PFdWXpc1MEW9trvq$J4xqsWIKh4IubkgoWUoiWC6kuXMtriINfpJ.clW7JND', '+254717678794', '2020-10-11 13:15:14', '0', 'yes'),
(22, 'Vincent Bosire', 'vincent@gmail.com', 'vinny', '$5$rounds=535000$KRRRK.XVvthgzGz6$RObl0zRWeXFbD/UGVPX7DxyoeK5Zf52Docr7JppE714', '0717678794', '2020-10-18 13:20:45', '0', 'yes'),
(24, 'Natasha Lonah', 'natasha@gmail.com', 'natasha', '$5$rounds=535000$gAqzLSOyTS.g9rDJ$/cNK6EVkdsij3BxmzhVRSlgVlAoQzi6g29Md/cETQx.', '0720123456', '2020-10-21 16:52:39', '0', 'yes'),
(25, 'Einz Hescky', 'einzhescky@gmail.com', 'einz', '$5$rounds=535000$T3qZFv1AbrhLx81H$fHQSOVkYmjJnJeZOFV9WQKU/extHYO.sp1oPsvSAMl9', '0717678794', '2020-10-21 19:31:17', '0', 'yes'),
(26, 'Phillip', 'phillip@gmail.com', 'phillip', '$5$rounds=535000$rtmpJam/xS8JmgM2$rz40RtbZrdTq3Cojy3TQ0kbb1peerL67lMLlB5/QsR5', '+254717678794', '2020-10-25 00:30:11', '0', 'yes'),
(27, 'Moreen Ntalami', 'ntalami@gmail.com', 'ntalami', '$5$rounds=535000$lCRWtNHBHezonYm5$/BWre7B14enIf6u3LxdY0GsF23iMi9styhZCy4WD836', '0717678794', '2020-10-25 00:31:17', '1', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_level`
--
ALTER TABLE `product_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserRating`
--
ALTER TABLE `UserRating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_level`
--
ALTER TABLE `product_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `UserRating`
--
ALTER TABLE `UserRating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
