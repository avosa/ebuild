-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2020 at 12:12 PM
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
-- Database: `menshut`
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
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(20, NULL, 'Ogla Biwott', 22, 'Inquiry', 'Nairobi', '+254717678794', 'no', '2020-10-11 05:37:42', '2020-10-18'),
(21, NULL, 'Ogla Biwott', 23, 'Inquiry', 'Nairobi', '+254717678794', 'no', '2020-10-11 05:44:33', '2020-10-18'),
(22, 17, 'Ogla Biwott', 23, 'Other', 'Mombasa ', '+254717678794', 'no', '2020-10-11 07:38:57', '2020-10-18'),
(23, NULL, 'Webster Avosa', 23, 'Other', 'Mombasa ', '+254717678794', 'no', '2020-10-11 09:02:26', '2020-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(15) NOT NULL,
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
(22, 'Bungalow', 11000000, 'Available in Mombasa, Nairobi and Nakuru', 1000, 'tshirt', 'houses', '1-00w', 'h6.png', '2020-10-11 04:14:54'),
(23, 'Mwahu Bungalows, Nairobi', 5000000, 'Available in Mombasa, Nairobi and Nakuru', 10000, 'tshirt', 'houses', '1-00Q', 'h1.png', '2020-10-11 04:17:38'),
(24, 'Nairobi House Painting services', 2000, 'Available in Nairobi County', 300, 'wallet', 'painting', '1-000', 'p2.png', '2020-10-11 05:28:04'),
(25, 'Cement Additives', 500, 'Boosts performance of cement', 10000, 'belt', 'cement', 'i-pppp', 'e6.png', '2020-10-11 09:15:11'),
(26, 'Simba Cement', 850, 'Best Cement ever in East Africa and Central Africa', 10000, 'belt', 'cement', '0-ppp1', 'e1.png', '2020-10-11 09:16:31'),
(28, 'Track for carrying goods bought', 350000, 'The only track youll get for such price', 1000, 'belt', 'Track', '0-6789', 'l8.png', '2020-10-11 09:35:57'),
(29, 'Cement mixer', 250000, 'Just wow', 10000, 'belt', 'mixer', '0-ijyk', 'e5.png', '2020-10-11 09:37:42'),
(30, 'Nairobi ample space for all your building', 100000, 'We offer better services and prices ', 1000, 'shoes', 'logistics', '0-6789', 'l1.png', '2020-10-11 09:40:11'),
(31, 'Land', 670000, 'We offer better services and prices ', 10000, 'shoes', 'land', '0-567', 'l4.png', '2020-10-11 09:41:39'),
(32, 'Urban ', 350000, 'We offer better services and prices ', 1000, 'shoes', 'log', '0-6789', 'l5.png', '2020-10-11 09:42:47'),
(33, 'Land', 350000, 'We offer better services and prices ', 10000, 'shoes', 'painting', '74900', 'l5.png', '2020-10-11 09:43:36'),
(34, 'City painting', 8000, 'We offer better services and prices ', 1000, 'wallet', 'painting', '1-00w', 'p4.png', '2020-10-11 09:45:03'),
(35, 'painting', 67890, 'We offer better services and prices ', 1000, 'wallet', 'painting', '439361', 'p6.png', '2020-10-11 09:45:53'),
(36, 'painting', 8000, 'We offer better services and prices ', 10000, 'wallet', 'painting', '0-ijyk', 'p5.png', '2020-10-11 09:46:46'),
(37, 'painting', 8000, 'We offer good service', 10000, 'wallet', 'painting', '548089', 'p7.png', '2020-10-11 09:51:05'),
(38, 'Flat', 3500000, 'We offer better service', 10000, 'tshirt', 'flat', '0-6789', 'h4.png', '2020-10-11 09:57:08'),
(39, 'Flat', 690000, 'We offer better service', 10000, 'tshirt', 'flat', '1-00w', 'h7.png', '2020-10-11 09:57:53'),
(40, 'Nairobi Estate', 350000, 'We offer better service', 1000, 'tshirt', 'Estate', '439361', 'h3.png', '2020-10-11 09:58:48'),
(41, 'Nakuru Leisure', 350000, 'We offer better service', 10000, 'tshirt', 'naks', '0-6789', 'h5.png', '2020-10-11 09:59:38'),
(42, 'Eldoret Richhood', 7000000, 'We offer better service', 10000, 'tshirt', 'eldy', '548089', 'h8.png', '2020-10-11 10:00:52'),
(43, 'Kericho Homes', 350000, 'We offer better service', 1000, 'tshirt', 'home', '74900', 'h2.png', '2020-10-11 10:02:21');

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
(22, 22, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(42, 42, 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(43, 43, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no');

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
(23, 17, 38, '2020-10-11 10:04:00'),
(22, 17, 39, '2020-10-11 10:03:56'),
(21, 17, 43, '2020-10-11 10:03:59'),
(20, 17, 22, '2020-10-11 09:03:13'),
(19, 17, 23, '2020-10-11 09:10:42');

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
(18, 'Webster Avosa', 'websterb17@gmail.com', 'oliver', '$5$rounds=535000$E0HQowc2zLCgdKb1$XovakzspbTqvyg1znchuAvkQZo/rvcXMlu8Z5C6jnu3', '+254717678794', '2020-10-11 02:50:33', '0', 'yes'),
(17, 'Webster Avosa', 'websterb17@gmail.com', 'webster', '$5$rounds=535000$sdv0V4gY8LU9xnQE$/Ku3gEwbNlureqVT/2hP9CxAlZutVVkNJlNzmnGQrAD', '+254717678794', '2020-10-11 01:17:39', '1', 'yes'),
(16, 'Webster Avosa', 'websterb17@gmail.com', 'webster', '$5$rounds=535000$xzS8BmN0..HRuB3b$BuZadi6u.YWHUrKu3GOw75Z0LE8RNgvo8WC47HfPsP0', '+254717678794', '2020-10-11 00:20:51', '1', 'yes');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_level`
--
ALTER TABLE `product_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
