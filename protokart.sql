-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2015 at 06:00 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `protokart`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE IF NOT EXISTS `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`id`, `name`, `image`, `description`) VALUES
(1, 'OM', '36.jpg', 'akjhdkjsa'),
(2, 'duasdasdsa', '48.jpg', 'asdsadsad'),
(3, 'aksnfk', '41.jpg', 'asdnksam');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `username` varchar(100) NOT NULL,
  `product_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `categ` varchar(300) NOT NULL,
  `tags` mediumtext NOT NULL,
  `image` varchar(300) NOT NULL,
  `options` mediumtext NOT NULL,
  `reviews` longtext,
  `discount` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `quantity`, `description`, `categ`, `tags`, `image`, `options`, `reviews`, `discount`) VALUES
(1, 'shirt1', 999, 12, 'SHIRT', 'fashion', 'fashion,shirt,clothes,wearable', 's1.jpg', 'na', 'na', 10),
(2, 'cloth2', 10293, 333, 'sdkfjn', 'fashion', 'dd', 'pi11.jpg', 'dsf', 'kugkj', 456),
(3, 'cloth3', 193, 23, 'sdkfjn', 'fashion', 'dd', 'pic2.jpg', 'dsfsdf', 'hgjghkl', 456),
(4, 'One Plus 2', 25000, 10, 'One Plus 2', 'Mobile', 'TouchScreen', 'D:ST3 ProjectprotokartWebContentimages43.jpg', 'great phone', NULL, NULL),
(5, 'One Plus 2', 25000, 10, 'One Plus 2', 'Mobile', 'TouchScreen', '41.jpg', 'great phone', NULL, NULL),
(6, 'One Plus 2', 25000, 10, 'One Plus 2', 'Mobile', 'TouchScreen', '41.jpg', 'great phone', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `first_name`, `last_name`, `gender`) VALUES
(1, 'kaano8_admin', 'kanorahul@yahoo.co.in', '123', 'Rahul', 'Kanojia', 'Male'),
(2, 'pyrospiral', 'kush@gmail.com', '123', 'Kushagra', 'Chauhan', '1'),
(3, 'aakash', 'aakash1995@gmail.com', '123', 'Aakash', 'Rana', 'male'),
(4, 'shubh', 'gothwal1995@gmail.com', '82ffb0994a3d21db1842a4af24b15713', 'Shubham', 'Gothwal', 'male'),
(5, 'admin', 'kaanorahul8@gmail.com', '82ffb0994a3d21db1842a4af24b15713', 'Admin', '', 'male');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
