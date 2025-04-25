-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 02:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomerc3`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.\r\n\r\n', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(3, 'Nikola', 'nikola@nikola.com', 'admin', 'Addmin.jpg', '064/064-064', 'Serbia', 'Full-Stack Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Women', 'no', 'zinta_preity.jpg'),
(3, 'Kids', 'no', 'image10.jpg'),
(4, 'Others', 'yes', 'cat_image.jpg'),
(5, 'Men', 'yes', 'image11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'contact@email.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 9, 'Remind T-shirt', '40', '333444', 5, 1),
(4, 1, '', '20', 'vxW', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@user.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.png', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(109, 2, 50, 1813431293, 1, 'Medium', '2023-11-16 20:04:47', 'pending'),
(110, 2, 45, 1813431293, 1, 'Small', '2023-12-14 20:04:47', 'pending'),
(111, 2, 98, 1813431293, 1, 'Medium', '2023-12-27 20:04:47', 'pending'),
(112, 2, 150, 1813431293, 1, 'Small', '2023-12-29 20:04:47', 'pending'),
(113, 2, 100, 1813431293, 1, 'Small', '2023-12-22 20:04:47', 'pending'),
(114, 2, 96, 1813431293, 1, 'Large', '2023-12-15 20:04:47', 'pending'),
(115, 2, 150, 1813431293, 1, 'Small', '2023-12-12 20:04:47', 'pending'),
(116, 2, 100, 1813431293, 1, 'Medium', '2024-01-10 20:04:47', 'pending'),
(117, 2, 50, 1813431293, 1, 'Small', '2024-02-13 20:04:47', 'pending'),
(118, 2, 50, 2084166830, 1, 'Medium', '2023-10-17 19:06:12', 'pending'),
(119, 2, 45, 2084166830, 1, 'Small', '2023-11-30 20:06:12', 'pending'),
(120, 2, 98, 2084166830, 1, 'Medium', '2023-11-02 20:06:12', 'pending'),
(121, 2, 150, 2084166830, 1, 'Small', '2023-11-09 20:06:12', 'pending'),
(122, 2, 100, 2084166830, 1, 'Large', '2023-11-04 20:06:12', 'pending'),
(123, 2, 96, 2084166830, 1, 'Small', '2023-11-23 20:06:12', 'pending'),
(124, 2, 150, 2084166830, 1, 'Small', '2023-11-02 20:06:12', 'pending'),
(125, 2, 100, 2084166830, 1, 'Small', '2023-11-03 20:06:12', 'pending'),
(126, 2, 50, 2084166830, 1, 'Small', '2023-11-15 20:06:12', 'pending'),
(127, 2, 50, 2012126063, 1, 'Small', '2023-09-22 19:07:51', 'pending'),
(128, 2, 45, 2012126063, 1, 'Medium', '2023-10-06 19:07:51', 'pending'),
(129, 2, 98, 2012126063, 1, 'Small', '2023-09-14 19:07:51', 'pending'),
(130, 2, 150, 2012126063, 1, 'Small', '2023-10-21 19:07:51', 'pending'),
(131, 2, 100, 2012126063, 1, 'Large', '2023-09-13 19:07:51', 'pending'),
(132, 2, 96, 2012126063, 1, 'Small', '2023-10-30 20:07:51', 'pending'),
(133, 2, 150, 2012126063, 1, 'Large', '2023-10-24 19:07:51', 'pending'),
(134, 2, 100, 2012126063, 1, 'Small', '2023-10-07 19:07:51', 'pending'),
(135, 2, 50, 2012126063, 1, 'Small', '2023-10-24 19:07:51', 'pending'),
(136, 2, 50, 1949694008, 1, 'Medium', '2024-01-16 20:09:21', 'pending'),
(137, 2, 45, 1949694008, 1, 'Medium', '2024-01-15 20:09:21', 'pending'),
(138, 2, 98, 1949694008, 1, 'Medium', '2023-12-06 20:09:21', 'pending'),
(139, 2, 150, 1949694008, 1, 'Large', '2023-12-19 20:09:21', 'pending'),
(140, 2, 100, 1949694008, 1, 'Medium', '2023-12-28 20:09:21', 'pending'),
(141, 2, 96, 1949694008, 1, 'Medium', '2023-12-27 20:09:21', 'pending'),
(142, 2, 150, 1949694008, 1, 'Large', '2023-08-03 19:09:21', 'pending'),
(143, 2, 100, 1949694008, 1, 'Medium', '2023-08-15 19:09:21', 'pending'),
(144, 2, 50, 1949694008, 1, 'Small', '2023-08-23 19:09:21', 'pending'),
(145, 2, 50, 1046922214, 1, 'Large', '2024-01-11 20:10:45', 'pending'),
(146, 2, 45, 1046922214, 1, 'Medium', '2024-01-30 20:10:45', 'pending'),
(147, 2, 98, 1046922214, 1, 'Small', '2024-02-12 20:10:45', 'pending'),
(148, 2, 150, 1046922214, 1, 'Large', '2024-01-13 20:10:45', 'pending'),
(149, 2, 100, 1046922214, 1, 'Small', '2024-03-11 20:10:45', 'pending'),
(150, 2, 96, 1046922214, 1, 'Small', '2024-04-24 19:10:45', 'pending'),
(151, 2, 150, 1046922214, 1, 'Small', '2024-01-22 20:10:45', 'pending'),
(152, 2, 100, 1046922214, 1, 'Small', '2024-01-29 20:10:45', 'pending'),
(153, 2, 50, 1046922214, 1, 'Small', '2024-01-27 20:10:45', 'pending'),
(154, 2, 50, 871169520, 1, 'Small', '2024-02-02 20:12:53', 'pending'),
(155, 2, 45, 871169520, 1, 'Small', '2024-03-13 20:12:53', 'pending'),
(156, 2, 98, 871169520, 1, 'Medium', '2024-02-27 20:12:53', 'pending'),
(157, 2, 150, 871169520, 1, 'Small', '2024-01-30 20:12:53', 'pending'),
(158, 2, 100, 871169520, 1, 'Large', '2024-01-19 20:12:53', 'pending'),
(159, 2, 96, 871169520, 1, 'Small', '2024-01-12 20:12:53', 'pending'),
(160, 2, 150, 871169520, 1, 'Small', '2024-01-30 20:12:53', 'pending'),
(161, 2, 100, 871169520, 1, 'Large', '2024-01-22 20:12:53', 'pending'),
(162, 2, 50, 871169520, 1, 'Small', '2024-01-20 20:12:53', 'pending'),
(163, 2, 50, 809463564, 1, 'Small', '2024-03-08 20:15:24', 'pending'),
(164, 2, 45, 809463564, 1, 'Large', '2024-02-21 20:15:24', 'pending'),
(165, 2, 98, 809463564, 1, 'Medium', '2024-02-26 20:15:24', 'pending'),
(166, 2, 150, 809463564, 1, 'Medium', '2024-02-23 20:15:24', 'pending'),
(167, 2, 100, 809463564, 1, 'Medium', '2024-02-27 20:15:24', 'pending'),
(168, 2, 96, 809463564, 1, 'Large', '2024-02-20 20:15:24', 'pending'),
(169, 2, 150, 809463564, 1, 'Medium', '2022-10-26 19:15:24', 'pending'),
(170, 2, 100, 809463564, 1, 'Medium', '2024-02-16 20:15:24', 'pending'),
(171, 2, 50, 809463564, 1, 'Small', '2022-10-12 19:15:24', 'pending'),
(172, 2, 50, 1579177397, 1, 'Small', '2024-04-12 19:17:42', 'pending'),
(173, 2, 45, 1579177397, 1, 'Large', '2024-04-05 19:17:42', 'pending'),
(174, 2, 98, 1579177397, 1, 'Medium', '2024-04-29 19:17:42', 'pending'),
(175, 2, 150, 1579177397, 1, 'Medium', '2024-03-19 20:17:42', 'pending'),
(176, 2, 100, 1579177397, 1, 'Large', '2024-04-17 19:17:42', 'pending'),
(177, 2, 96, 1579177397, 1, 'Medium', '2024-03-02 20:17:42', 'pending'),
(178, 2, 150, 1579177397, 1, 'Small', '2024-03-25 20:17:42', 'pending'),
(179, 2, 100, 1579177397, 1, 'Small', '2024-03-14 20:17:42', 'pending'),
(180, 2, 50, 1579177397, 1, 'Small', '2024-03-28 20:17:42', 'pending'),
(181, 2, 50, 1311819689, 1, 'Medium', '2024-05-20 19:27:39', 'pending'),
(182, 2, 45, 1311819689, 1, 'Large', '2024-05-18 19:27:39', 'pending'),
(183, 2, 98, 1311819689, 1, 'Medium', '2024-05-15 19:27:39', 'pending'),
(184, 2, 150, 1311819689, 1, 'Large', '2024-05-08 19:27:39', 'pending'),
(185, 2, 100, 1311819689, 1, 'Large', '2024-05-12 19:27:39', 'pending'),
(186, 2, 96, 1311819689, 1, 'Small', '2024-04-02 19:27:39', 'pending'),
(187, 2, 150, 1311819689, 1, 'Medium', '2024-04-19 19:27:39', 'pending'),
(188, 2, 100, 1311819689, 1, 'Small', '2024-04-22 19:27:39', 'pending'),
(189, 2, 50, 1311819689, 1, 'Small', '2024-04-21 19:27:39', 'pending'),
(190, 2, 50, 1422330915, 1, 'Small', '2024-07-24 19:28:38', 'pending'),
(191, 2, 45, 1422330915, 1, 'Small', '2024-06-06 19:28:38', 'pending'),
(192, 2, 98, 1422330915, 1, 'Small', '2024-06-08 19:28:38', 'pending'),
(193, 2, 150, 1422330915, 1, 'Large', '2024-06-26 19:28:38', 'pending'),
(194, 2, 100, 1422330915, 1, 'Large', '2024-06-02 19:28:38', 'pending'),
(195, 2, 96, 1422330915, 1, 'Medium', '2024-06-28 19:28:38', 'pending'),
(196, 2, 150, 1422330915, 1, 'Medium', '2024-05-09 19:28:38', 'pending'),
(197, 2, 100, 1422330915, 1, 'Large', '2024-05-24 19:28:38', 'pending'),
(198, 2, 50, 1422330915, 1, 'Small', '2024-05-28 19:28:38', 'pending'),
(199, 2, 50, 1430735367, 1, 'Medium', '2024-08-15 19:30:22', 'pending'),
(200, 2, 45, 1430735367, 1, 'Large', '2024-07-03 19:30:22', 'pending'),
(201, 2, 98, 1430735367, 1, 'Small', '2024-07-13 19:30:22', 'pending'),
(202, 2, 150, 1430735367, 1, 'Medium', '2024-07-30 19:30:22', 'pending'),
(203, 2, 100, 1430735367, 1, 'Small', '2024-07-18 19:30:22', 'pending'),
(204, 2, 96, 1430735367, 1, 'Small', '2024-07-29 19:30:22', 'pending'),
(205, 2, 150, 1430735367, 1, 'Large', '2024-07-13 19:30:22', 'pending'),
(206, 2, 100, 1430735367, 1, 'Medium', '2024-07-06 19:30:22', 'pending'),
(207, 2, 50, 1430735367, 1, 'Small', '2024-07-05 19:30:22', 'pending'),
(208, 2, 50, 580105640, 1, 'Small', '2024-08-01 18:31:22', 'pending'),
(209, 2, 45, 580105640, 1, 'Large', '2024-08-06 19:31:22', 'pending'),
(210, 2, 98, 580105640, 1, 'Medium', '2022-12-20 00:22:01', 'pending'),
(211, 2, 150, 580105640, 1, 'Small', '2024-08-19 19:31:22', 'pending'),
(212, 2, 100, 580105640, 1, 'Small', '2022-12-09 00:22:01', 'pending'),
(213, 2, 96, 580105640, 1, 'Small', '2022-10-20 19:31:22', 'pending'),
(214, 2, 150, 580105640, 1, 'Large', '2024-08-14 19:31:22', 'pending'),
(215, 2, 100, 580105640, 1, 'Large', '2024-08-15 19:31:22', 'pending'),
(216, 2, 50, 580105640, 1, 'Medium', '2024-08-15 19:31:22', 'pending'),
(217, 2, 50, 222399231, 1, 'Medium', '2023-06-22 19:50:29', 'pending'),
(218, 2, 45, 222399231, 1, 'Large', '2023-07-27 19:50:29', 'pending'),
(219, 2, 98, 222399231, 1, 'Medium', '2023-07-19 19:50:29', 'pending'),
(220, 2, 150, 222399231, 1, 'Large', '2023-07-26 19:50:29', 'pending'),
(221, 2, 100, 222399231, 1, 'Small', '2023-07-14 19:50:29', 'pending'),
(222, 2, 96, 222399231, 1, 'Medium', '2023-07-12 19:50:29', 'pending'),
(223, 2, 150, 222399231, 1, 'Small', '2022-11-11 20:50:29', 'pending'),
(224, 2, 100, 222399231, 1, 'Medium', '2022-11-17 20:50:29', 'pending'),
(225, 2, 50, 222399231, 1, 'Small', '2022-11-10 20:50:29', 'pending'),
(226, 2, 50, 1228856316, 1, 'Large', '2023-05-12 19:56:44', 'pending'),
(227, 2, 45, 1228856316, 1, 'Medium', '2023-04-05 19:56:44', 'pending'),
(228, 2, 98, 1228856316, 1, 'Medium', '2023-05-10 19:56:44', 'pending'),
(229, 2, 150, 1228856316, 1, 'Large', '2023-04-26 19:56:44', 'pending'),
(230, 2, 100, 1228856316, 1, 'Small', '2023-05-24 19:56:44', 'pending'),
(231, 2, 96, 1228856316, 1, 'Small', '2023-05-30 19:56:44', 'pending'),
(232, 2, 150, 1228856316, 1, 'Small', '2023-05-25 19:56:44', 'pending'),
(233, 2, 100, 1228856316, 1, 'Large', '2023-05-15 19:56:44', 'pending'),
(234, 2, 50, 1228856316, 1, 'Medium', '2023-06-13 19:56:44', 'pending'),
(235, 2, 100, 879962032, 1, 'Small', '2022-12-16 20:57:18', 'pending'),
(236, 2, 96, 879962032, 1, 'Small', '2023-03-16 21:05:43', 'pending'),
(237, 2, 150, 879962032, 1, 'Medium', '2023-04-05 19:57:18', 'pending'),
(238, 2, 100, 879962032, 1, 'Medium', '2024-04-11 19:57:18', 'pending'),
(239, 2, 50, 879962032, 1, 'Medium', '2023-04-27 19:57:18', 'pending'),
(240, 2, 45, 1198759789, 1, 'Large', '2022-12-03 20:57:57', 'pending'),
(241, 2, 96, 1198759789, 1, 'Large', '2022-12-22 20:57:57', 'pending'),
(242, 2, 150, 1198759789, 1, 'Medium', '2022-12-19 20:57:57', 'pending'),
(243, 2, 100, 1198759789, 1, 'Medium', '2022-12-30 20:57:57', 'pending'),
(244, 2, 50, 1198759789, 1, 'Medium', '2022-12-14 20:57:57', 'pending'),
(245, 2, 98, 680363385, 1, 'Small', '2024-03-08 20:58:32', 'pending'),
(246, 2, 150, 680363385, 1, 'Large', '2023-05-28 19:58:32', 'pending'),
(247, 2, 100, 680363385, 1, 'Large', '2023-01-25 20:58:32', 'pending'),
(248, 2, 100, 680363385, 1, 'Medium', '2023-01-18 20:58:32', 'pending'),
(249, 2, 150, 1132504683, 1, 'Select a Size', '2023-01-18 20:58:46', 'pending'),
(250, 2, 50, 1717245559, 1, 'Select a Size', '2024-01-02 20:59:17', 'pending'),
(251, 2, 150, 1717245559, 1, 'Medium', '2024-01-05 20:59:17', 'pending'),
(252, 2, 100, 1717245559, 1, 'Large', '2024-01-22 20:59:17', 'pending'),
(253, 2, 100, 1717245559, 1, 'Medium', '2023-01-31 20:59:17', 'pending'),
(254, 2, 98, 1171724362, 1, 'Medium', '2023-01-17 20:59:42', 'pending'),
(255, 2, 150, 1171724362, 1, 'Large', '2023-01-18 20:59:42', 'pending'),
(256, 2, 50, 1171724362, 1, 'Large', '2023-01-31 20:59:42', 'pending'),
(257, 2, 45, 483142781, 1, 'Small', '2023-01-11 21:01:04', 'pending'),
(258, 2, 98, 483142781, 1, 'Small', '2023-01-02 21:01:04', 'pending'),
(259, 2, 100, 483142781, 1, 'Large', '2023-05-04 20:01:04', 'pending'),
(260, 2, 100, 483142781, 1, 'Small', '2023-02-16 21:01:04', 'pending'),
(261, 2, 50, 810094247, 1, 'Medium', '2023-03-24 21:02:15', 'pending'),
(262, 2, 45, 810094247, 1, 'Small', '2023-06-14 20:02:15', 'pending'),
(263, 2, 98, 810094247, 1, 'Large', '2023-04-12 20:02:15', 'pending'),
(264, 2, 150, 810094247, 1, 'Large', '2022-12-08 00:22:01', 'pending'),
(265, 2, 100, 810094247, 1, 'Small', '2023-05-24 20:02:15', 'pending'),
(266, 2, 96, 810094247, 1, 'Medium', '2023-03-23 21:02:15', 'pending'),
(267, 2, 150, 810094247, 1, 'Large', '2023-04-05 20:02:15', 'pending'),
(268, 2, 100, 810094247, 1, 'Large', '2023-05-17 20:02:15', 'pending'),
(269, 2, 50, 810094247, 1, 'Medium', '2023-04-11 20:02:15', 'pending'),
(270, 2, 50, 1887390255, 1, 'Small', '2024-09-10 23:28:16', 'pending'),
(271, 2, 100, 464798162, 2, 'Small', '2024-09-10 23:30:58', 'pending'),
(272, 2, 50, 1013037249, 1, 'Small', '2024-09-10 23:39:13', 'pending'),
(273, 2, 50, 129486094, 1, 'Small', '2024-09-10 23:39:40', 'pending'),
(274, 2, 50, 1106135588, 1, 'Small', '2022-12-29 00:22:01', 'pending'),
(275, 2, 50, 1951818935, 1, 'Small', '2024-09-10 23:39:43', 'pending'),
(276, 2, 50, 921601387, 1, 'Small', '2024-09-10 23:39:54', 'pending'),
(277, 2, 150, 1967559140, 1, 'Small', '2024-09-14 19:24:57', 'pending'),
(278, 2, 50, 1967559140, 1, 'Small', '2024-09-14 19:24:57', 'pending'),
(279, 2, 50, 221618740, 1, 'Small', '2022-12-27 00:22:01', 'pending'),
(280, 2, 45, 221618740, 1, 'Small', '2022-12-09 00:22:01', 'pending'),
(281, 2, 98, 221618740, 1, 'Small', '2024-09-08 23:22:01', 'pending'),
(282, 2, 150, 221618740, 1, 'Select a Size', '2024-09-15 22:59:44', 'pending'),
(283, 2, 100, 221618740, 1, 'Small', '2022-12-21 00:22:01', 'pending'),
(284, 2, 96, 221618740, 1, 'Small', '2024-09-15 22:59:44', 'pending'),
(285, 2, 150, 221618740, 1, 'Small', '2022-12-14 00:22:01', 'pending'),
(286, 2, 100, 221618740, 1, 'Small', '2022-12-23 00:22:01', 'pending'),
(287, 2, 50, 221618740, 1, 'Small', '2024-09-15 22:59:44', 'pending'),
(288, 2, 50, 1017333597, 1, 'Small', '2024-09-20 23:22:01', 'pending'),
(289, 2, 45, 1017333597, 1, 'Small', '2024-09-15 23:00:44', 'pending'),
(290, 2, 98, 1017333597, 1, 'Small', '2022-11-11 00:22:01', 'pending'),
(291, 2, 150, 1017333597, 1, 'Small', '2022-11-03 00:22:01', 'pending'),
(292, 2, 100, 1017333597, 1, 'Small', '2022-12-16 00:22:01', 'pending'),
(293, 2, 96, 1017333597, 1, 'Small', '2022-12-07 00:22:01', 'pending'),
(294, 2, 150, 1017333597, 1, 'Small', '2022-12-02 00:22:01', 'pending'),
(295, 2, 100, 1017333597, 1, 'Small', '2022-12-29 00:22:01', 'pending'),
(296, 2, 50, 1017333597, 1, 'Small', '2024-09-15 23:00:44', 'pending'),
(297, 2, 50, 1631235446, 1, 'Small', '2024-09-15 23:01:41', 'pending'),
(298, 2, 45, 1631235446, 1, 'Small', '2024-09-11 23:22:01', 'pending'),
(299, 2, 98, 1631235446, 1, 'Small', '2022-11-30 00:22:01', 'pending'),
(300, 2, 150, 1631235446, 1, 'Small', '2022-11-17 00:22:01', 'pending'),
(301, 2, 100, 1631235446, 1, 'Small', '2024-09-15 23:01:41', 'pending'),
(302, 2, 96, 1631235446, 1, 'Small', '2022-11-09 00:22:01', 'pending'),
(303, 2, 150, 1631235446, 1, 'Small', '2024-09-15 23:01:41', 'pending'),
(304, 2, 100, 1631235446, 1, 'Small', '2024-09-15 23:01:41', 'pending'),
(305, 2, 50, 1631235446, 1, 'Small', '2022-11-21 00:22:01', 'pending'),
(306, 2, 50, 357796181, 1, 'Small', '2022-10-25 23:22:01', 'pending'),
(307, 2, 45, 357796181, 1, 'Small', '2022-10-26 23:22:01', 'pending'),
(308, 2, 98, 357796181, 1, 'Small', '2024-09-15 23:13:14', 'pending'),
(309, 2, 150, 357796181, 1, 'Small', '2022-10-07 23:22:01', 'pending'),
(310, 2, 100, 357796181, 1, 'Small', '2022-10-25 23:22:01', 'pending'),
(311, 2, 96, 357796181, 1, 'Small', '2022-10-21 23:22:01', 'pending'),
(312, 2, 150, 357796181, 1, 'Small', '2022-10-29 23:22:01', 'pending'),
(313, 2, 100, 357796181, 1, 'Small', '2022-10-19 23:22:01', 'pending'),
(314, 2, 50, 357796181, 1, 'Large', '2022-11-09 00:22:01', 'pending'),
(315, 2, 50, 1366165399, 1, 'Small', '2022-09-03 23:22:01', 'pending'),
(316, 2, 45, 1366165399, 1, 'Small', '2022-09-22 23:22:01', 'pending'),
(317, 2, 98, 1366165399, 1, 'Small', '2024-09-15 23:14:08', 'pending'),
(318, 2, 150, 1366165399, 1, 'Small', '2022-09-23 23:22:01', 'pending'),
(319, 2, 100, 1366165399, 1, 'Small', '2024-09-15 23:14:08', 'pending'),
(320, 2, 96, 1366165399, 1, 'Select a Size', '2022-09-20 23:22:01', 'pending'),
(321, 2, 150, 1366165399, 1, 'Select a Size', '2022-09-29 23:22:01', 'pending'),
(322, 2, 100, 1366165399, 1, 'Select a Size', '2022-09-14 23:22:01', 'pending'),
(323, 2, 50, 1366165399, 1, 'Small', '2022-10-12 23:22:01', 'pending'),
(324, 2, 50, 1410311973, 1, 'Small', '2022-07-29 23:22:01', 'pending'),
(325, 2, 45, 1410311973, 1, 'Small', '2022-07-01 23:22:01', 'pending'),
(326, 2, 98, 1410311973, 1, 'Small', '2022-08-18 23:22:01', 'pending'),
(327, 2, 150, 1410311973, 1, 'Small', '2022-08-18 23:22:01', 'pending'),
(328, 2, 100, 1410311973, 1, 'Small', '2022-08-16 23:22:01', 'pending'),
(329, 2, 96, 1410311973, 1, 'Small', '2022-08-26 23:22:01', 'pending'),
(330, 2, 150, 1410311973, 1, 'Small', '2022-08-16 23:22:01', 'pending'),
(331, 2, 100, 1410311973, 1, 'Small', '2022-08-26 23:22:01', 'pending'),
(332, 2, 50, 1410311973, 1, 'Small', '2022-09-09 23:22:01', 'pending'),
(333, 2, 50, 1442897651, 1, 'Small', '2024-09-15 23:16:05', 'pending'),
(334, 2, 45, 1442897651, 1, 'Small', '2022-06-10 23:22:01', 'pending'),
(335, 2, 98, 1442897651, 1, 'Small', '2022-06-07 23:22:01', 'pending'),
(336, 2, 150, 1442897651, 1, 'Small', '2022-06-23 23:22:01', 'pending'),
(337, 2, 100, 1442897651, 1, 'Small', '2022-06-07 23:22:01', 'pending'),
(338, 2, 96, 1442897651, 1, 'Small', '2022-07-22 23:22:01', 'pending'),
(339, 2, 150, 1442897651, 1, 'Small', '2022-07-05 23:22:01', 'pending'),
(340, 2, 100, 1442897651, 1, 'Small', '2022-07-18 23:22:01', 'pending'),
(341, 2, 50, 1442897651, 1, 'Small', '2022-07-25 23:22:01', 'pending'),
(342, 2, 50, 1988714503, 1, 'Medium', '2022-05-11 23:22:01', 'pending'),
(343, 2, 45, 1988714503, 1, 'Small', '2024-09-15 23:17:12', 'pending'),
(344, 2, 98, 1988714503, 1, 'Small', '2022-05-11 23:22:01', 'pending'),
(345, 2, 150, 1988714503, 1, 'Small', '2024-09-15 23:17:12', 'pending'),
(346, 2, 100, 1988714503, 1, 'Small', '2022-05-25 23:22:01', 'pending'),
(347, 2, 96, 1988714503, 1, 'Small', '2024-09-15 23:17:12', 'pending'),
(348, 2, 150, 1988714503, 1, 'Small', '2022-05-04 23:22:01', 'pending'),
(349, 2, 100, 1988714503, 1, 'Small', '2022-06-07 23:22:01', 'pending'),
(350, 2, 50, 1988714503, 1, 'Small', '2022-06-07 23:22:01', 'pending'),
(351, 2, 50, 1764630856, 1, 'Small', '2022-04-04 23:22:01', 'pending'),
(352, 2, 45, 1764630856, 1, 'Small', '2022-04-26 23:22:01', 'pending'),
(353, 2, 98, 1764630856, 1, 'Small', '2024-09-23 23:22:01', 'pending'),
(354, 2, 150, 1764630856, 1, 'Small', '2022-04-18 23:22:01', 'pending'),
(355, 2, 100, 1764630856, 1, 'Small', '2024-09-15 23:18:09', 'pending'),
(356, 2, 96, 1764630856, 1, 'Small', '2024-09-15 23:18:09', 'pending'),
(357, 2, 150, 1764630856, 1, 'Small', '2022-04-18 23:22:01', 'pending'),
(358, 2, 100, 1764630856, 1, 'Small', '2022-05-10 23:22:01', 'pending'),
(359, 2, 50, 1764630856, 1, 'Small', '2022-05-24 23:22:01', 'pending'),
(360, 2, 50, 686775143, 1, 'Large', '2022-02-22 00:22:01', 'pending'),
(361, 2, 45, 686775143, 1, 'Medium', '2022-03-24 00:22:01', 'pending'),
(362, 2, 98, 686775143, 1, 'Small', '2022-03-08 00:22:01', 'pending'),
(363, 2, 150, 686775143, 1, 'Small', '2022-03-01 00:22:01', 'pending'),
(364, 2, 100, 686775143, 1, 'Small', '2022-03-16 00:22:01', 'pending'),
(365, 2, 96, 686775143, 1, 'Small', '2022-03-12 00:22:01', 'pending'),
(366, 2, 150, 686775143, 1, 'Small', '2022-03-14 00:22:01', 'pending'),
(367, 2, 100, 686775143, 1, 'Small', '2022-03-29 23:22:01', 'pending'),
(368, 2, 50, 686775143, 1, 'Small', '2022-04-06 23:22:01', 'pending'),
(369, 2, 100, 532960240, 2, 'Medium', '2022-01-29 00:22:01', 'pending'),
(370, 2, 45, 532960240, 1, 'Small', '2022-01-21 00:22:01', 'pending'),
(371, 2, 196, 532960240, 2, 'Small', '2022-01-19 00:22:01', 'pending'),
(372, 2, 300, 532960240, 2, 'Medium', '2022-01-25 00:22:01', 'pending'),
(373, 2, 400, 532960240, 4, 'Medium', '2022-02-16 00:22:01', 'pending'),
(374, 2, 96, 532960240, 1, 'Large', '2022-02-24 00:22:01', 'pending'),
(375, 2, 150, 532960240, 1, 'Medium', '2022-02-21 00:22:01', 'pending'),
(376, 2, 100, 532960240, 1, 'Small', '2022-02-15 00:22:01', 'pending'),
(377, 2, 50, 532960240, 1, 'Large', '2022-02-25 00:22:01', 'pending'),
(378, 2, 50, 1524723342, 1, 'Small', '2022-01-05 00:22:01', 'pending'),
(379, 2, 98, 1524723342, 1, 'Medium', '2022-01-27 00:22:01', 'pending'),
(380, 2, 150, 1524723342, 1, 'Medium', '2022-03-16 00:22:01', 'pending'),
(381, 2, 100, 1524723342, 1, 'Small', '2022-04-19 23:22:01', 'pending'),
(382, 2, 96, 1524723342, 1, 'Large', '2022-01-27 00:22:01', 'pending'),
(383, 2, 150, 1524723342, 1, 'Small', '2022-01-26 00:22:01', 'pending'),
(384, 2, 100, 1524723342, 1, 'Small', '2022-01-29 00:22:01', 'pending'),
(385, 2, 50, 1524723342, 1, 'Medium', '2022-01-29 00:22:01', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', 'image2.jpg'),
(3, 'Nike', 'no', 'image3.jpg'),
(4, 'Philip Plein', 'no', 'manufacturer.jpg'),
(5, 'Lacost', 'no', 'image6.jpg'),
(6, 'Gucci', 'yes', 'akshay-kumar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016'),
(4, 2147483647, 500, 'Western Union', 524456, 546, '546');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `product_title` text DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `product_title`, `qty`, `size`, `order_date`, `order_status`) VALUES
(72, 2, 1813431293, '1', 'New T-Shirt', 1, 'Medium', '2022-08-14 00:04:05', 'pending'),
(73, 2, 1813431293, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2023-01-25 01:02:30', 'pending'),
(74, 2, 1813431293, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-01-28 01:02:18', 'pending'),
(75, 2, 1813431293, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2023-04-05 23:56:32', 'pending'),
(76, 2, 1813431293, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2023-07-12 23:54:44', 'pending'),
(77, 2, 1813431293, '6', 'Jack & White Solid Denim Jacket', 1, 'Large', '2023-10-24 23:52:57', 'pending'),
(78, 2, 1813431293, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-01-13 00:51:07', 'pending'),
(79, 2, 1813431293, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2023-04-17 23:48:58', 'pending'),
(80, 2, 1813431293, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-07-12 23:46:18', 'pending'),
(81, 2, 2084166830, '1', 'New T-Shirt', 1, 'Medium', '2022-09-09 00:04:00', 'pending'),
(82, 2, 2084166830, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2023-01-26 01:02:33', 'pending'),
(83, 2, 2084166830, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2024-01-19 01:02:16', 'pending'),
(84, 2, 2084166830, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2023-04-23 23:56:25', 'pending'),
(85, 2, 2084166830, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-08-14 23:54:38', 'pending'),
(86, 2, 2084166830, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2023-10-09 23:52:53', 'pending'),
(87, 2, 2084166830, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-01-06 00:51:02', 'pending'),
(88, 2, 2084166830, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-03-08 00:48:54', 'pending'),
(89, 2, 2084166830, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-07-06 23:46:14', 'pending'),
(90, 2, 2012126063, '1', 'New T-Shirt', 1, 'Small', '2022-09-21 00:03:58', 'pending'),
(91, 2, 2012126063, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Medium', '2023-01-11 01:02:35', 'pending'),
(92, 2, 2012126063, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2023-01-27 01:02:12', 'pending'),
(93, 2, 2012126063, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2023-04-14 23:56:21', 'pending'),
(94, 2, 2012126063, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-08-25 23:54:34', 'pending'),
(95, 2, 2012126063, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2023-11-22 00:52:48', 'pending'),
(96, 2, 2012126063, '7', 'Nice Solid Long Coat With Lace', 1, 'Large', '2024-01-04 00:50:58', 'pending'),
(97, 2, 2012126063, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-03-24 00:48:50', 'pending'),
(98, 2, 2012126063, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-07-12 23:46:08', 'pending'),
(99, 2, 1949694008, '1', 'New T-Shirt', 1, 'Medium', '2022-09-09 00:03:54', 'pending'),
(100, 2, 1949694008, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Medium', '2023-01-24 01:02:38', 'pending'),
(101, 2, 1949694008, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-01-27 01:02:09', 'pending'),
(102, 2, 1949694008, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-04-27 23:56:18', 'pending'),
(103, 2, 1949694008, '5', 'Denim Borg Lined Western Jacket', 1, 'Medium', '2023-08-15 23:54:29', 'pending'),
(104, 2, 1949694008, '6', 'Jack & White Solid Denim Jacket', 1, 'Medium', '2023-11-29 00:52:44', 'pending'),
(105, 2, 1949694008, '7', 'Nice Solid Long Coat With Lace', 1, 'Large', '2024-01-30 00:50:55', 'pending'),
(106, 2, 1949694008, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2024-04-25 23:48:47', 'pending'),
(107, 2, 1949694008, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-07-27 23:46:03', 'pending'),
(108, 2, 1046922214, '1', 'New T-Shirt', 1, 'Large', '2022-09-16 00:03:53', 'pending'),
(109, 2, 1046922214, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Medium', '2023-01-27 01:02:39', 'pending'),
(110, 2, 1046922214, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2023-01-19 01:02:06', 'pending'),
(111, 2, 1046922214, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-04-20 23:56:15', 'pending'),
(112, 2, 1046922214, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2023-08-23 23:54:23', 'pending'),
(113, 2, 1046922214, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2023-11-17 00:52:40', 'pending'),
(114, 2, 1046922214, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-01-26 00:50:51', 'pending'),
(115, 2, 1046922214, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-04-03 23:48:43', 'pending'),
(116, 2, 1046922214, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-07-23 23:45:58', 'pending'),
(117, 2, 871169520, '1', 'New T-Shirt', 1, 'Small', '2022-09-15 00:03:51', 'pending'),
(118, 2, 871169520, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2023-01-28 01:02:42', 'pending'),
(119, 2, 871169520, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-01-13 01:02:04', 'pending'),
(120, 2, 871169520, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2023-04-23 23:56:12', 'pending'),
(121, 2, 871169520, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-08-13 23:54:16', 'pending'),
(122, 2, 871169520, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2023-11-10 00:52:36', 'pending'),
(123, 2, 871169520, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-01-31 00:50:47', 'pending'),
(124, 2, 871169520, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Large', '2024-04-17 23:48:40', 'pending'),
(125, 2, 871169520, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-07-16 23:45:53', 'pending'),
(126, 2, 809463564, '1', 'New T-Shirt', 1, 'Small', '2022-10-21 00:03:46', 'pending'),
(127, 2, 809463564, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Large', '2023-01-21 01:02:47', 'pending'),
(128, 2, 809463564, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-01-13 01:02:00', 'pending'),
(129, 2, 809463564, '4', 'Navy Blue Solid Denim Jacket', 1, 'Medium', '2023-05-01 23:56:08', 'pending'),
(130, 2, 809463564, '5', 'Denim Borg Lined Western Jacket', 1, 'Medium', '2023-09-06 23:54:11', 'pending'),
(131, 2, 809463564, '6', 'Jack & White Solid Denim Jacket', 1, 'Large', '2023-12-06 00:52:32', 'pending'),
(132, 2, 809463564, '7', 'Nice Solid Long Coat With Lace', 1, 'Medium', '2024-01-27 00:50:43', 'pending'),
(133, 2, 809463564, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2024-04-12 23:48:36', 'pending'),
(134, 2, 809463564, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-07-17 23:45:48', 'pending'),
(135, 2, 1579177397, '1', 'New T-Shirt', 1, 'Small', '2022-10-29 00:03:43', 'pending'),
(136, 2, 1579177397, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Large', '2023-01-26 01:02:49', 'pending'),
(137, 2, 1579177397, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-02-18 01:01:58', 'pending'),
(138, 2, 1579177397, '4', 'Navy Blue Solid Denim Jacket', 1, 'Medium', '2023-05-23 23:56:05', 'pending'),
(139, 2, 1579177397, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-09-11 23:54:06', 'pending'),
(140, 2, 1579177397, '6', 'Jack & White Solid Denim Jacket', 1, 'Medium', '2023-12-28 00:52:27', 'pending'),
(141, 2, 1579177397, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-01-27 00:50:39', 'pending'),
(142, 2, 1579177397, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-04-02 23:48:32', 'pending'),
(143, 2, 1579177397, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-08-12 23:45:44', 'pending'),
(144, 2, 1311819689, '1', 'New T-Shirt', 1, 'Medium', '2022-10-22 00:03:41', 'pending'),
(145, 2, 1311819689, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Large', '2023-01-19 01:02:52', 'pending'),
(146, 2, 1311819689, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-02-24 01:01:55', 'pending'),
(147, 2, 1311819689, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-05-27 23:56:00', 'pending'),
(148, 2, 1311819689, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-09-27 23:54:03', 'pending'),
(149, 2, 1311819689, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2023-12-28 00:52:23', 'pending'),
(150, 2, 1311819689, '7', 'Nice Solid Long Coat With Lace', 1, 'Medium', '2024-01-26 00:50:36', 'pending'),
(151, 2, 1311819689, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-05-08 23:48:29', 'pending'),
(152, 2, 1311819689, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-08-13 23:45:41', 'pending'),
(153, 2, 1422330915, '1', 'New T-Shirt', 1, 'Small', '2022-10-13 00:03:39', 'pending'),
(154, 2, 1422330915, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2022-12-16 01:02:55', 'pending'),
(155, 2, 1422330915, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2023-02-23 01:01:52', 'pending'),
(156, 2, 1422330915, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-06-06 23:55:55', 'pending'),
(157, 2, 1422330915, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-09-27 23:53:58', 'pending'),
(158, 2, 1422330915, '6', 'Jack & White Solid Denim Jacket', 1, 'Medium', '2023-12-28 00:52:19', 'pending'),
(159, 2, 1422330915, '7', 'Nice Solid Long Coat With Lace', 1, 'Medium', '2024-01-21 00:50:32', 'pending'),
(160, 2, 1422330915, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Large', '2024-05-23 23:48:23', 'pending'),
(161, 2, 1422330915, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-08-02 23:45:37', 'pending'),
(162, 2, 1430735367, '1', 'New T-Shirt', 1, 'Medium', '2022-11-19 01:03:36', 'pending'),
(163, 2, 1430735367, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Large', '2022-12-19 01:02:58', 'pending'),
(164, 2, 1430735367, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2023-02-24 01:01:49', 'pending'),
(165, 2, 1430735367, '4', 'Navy Blue Solid Denim Jacket', 1, 'Medium', '2023-06-28 23:55:51', 'pending'),
(166, 2, 1430735367, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2023-09-12 23:53:41', 'pending'),
(167, 2, 1430735367, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2023-12-07 00:52:14', 'pending'),
(168, 2, 1430735367, '7', 'Nice Solid Long Coat With Lace', 1, 'Large', '2024-02-23 00:50:28', 'pending'),
(169, 2, 1430735367, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2024-05-27 23:48:20', 'pending'),
(170, 2, 1430735367, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-08-22 23:45:31', 'pending'),
(171, 2, 580105640, '1', 'New T-Shirt', 1, 'Small', '2024-09-11 00:03:34', 'pending'),
(172, 2, 580105640, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Large', '2022-12-23 01:03:01', 'pending'),
(173, 2, 580105640, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-02-14 01:01:47', 'pending'),
(174, 2, 580105640, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2023-06-23 23:55:47', 'pending'),
(175, 2, 580105640, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2023-09-20 23:53:37', 'pending'),
(176, 2, 580105640, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2023-12-29 00:52:10', 'pending'),
(177, 2, 580105640, '7', 'Nice Solid Long Coat With Lace', 1, 'Large', '2024-01-11 00:50:24', 'pending'),
(178, 2, 580105640, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Large', '2024-05-13 23:48:15', 'pending'),
(179, 2, 580105640, '9', 'Remind Printed T-Shirt', 1, 'Medium', '2024-08-13 23:45:27', 'pending'),
(180, 2, 222399231, '1', 'New T-Shirt', 1, 'Medium', '2022-11-26 01:03:31', 'pending'),
(181, 2, 222399231, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Large', '2022-12-19 01:03:04', 'pending'),
(182, 2, 222399231, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-03-10 01:01:44', 'pending'),
(183, 2, 222399231, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-06-29 23:55:43', 'pending'),
(184, 2, 222399231, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2023-09-15 23:53:33', 'pending'),
(185, 2, 222399231, '6', 'Jack & White Solid Denim Jacket', 1, 'Medium', '2023-12-19 00:52:05', 'pending'),
(186, 2, 222399231, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-02-23 00:50:19', 'pending'),
(187, 2, 222399231, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2024-06-07 23:48:12', 'pending'),
(188, 2, 222399231, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-10 23:45:22', 'pending'),
(189, 2, 1228856316, '1', 'New T-Shirt', 1, 'Large', '2022-09-30 00:03:29', 'pending'),
(190, 2, 1228856316, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Medium', '2022-12-01 01:03:06', 'pending'),
(191, 2, 1228856316, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-03-30 00:01:42', 'pending'),
(192, 2, 1228856316, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-06-14 23:55:39', 'pending'),
(193, 2, 1228856316, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-10 23:53:29', 'pending'),
(194, 2, 1228856316, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2023-12-27 00:51:59', 'pending'),
(195, 2, 1228856316, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-02-08 00:50:14', 'pending'),
(196, 2, 1228856316, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Large', '2024-06-04 23:48:07', 'pending'),
(197, 2, 1228856316, '9', 'Remind Printed T-Shirt', 1, 'Medium', '2024-09-10 23:45:18', 'pending'),
(198, 2, 879962032, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2023-09-15 23:53:26', 'pending'),
(199, 2, 879962032, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-01-27 00:51:55', 'pending'),
(200, 2, 879962032, '7', 'Nice Solid Long Coat With Lace', 1, 'Medium', '2024-02-14 00:50:11', 'pending'),
(201, 2, 879962032, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2024-06-18 23:48:03', 'pending'),
(202, 2, 879962032, '9', 'Remind Printed T-Shirt', 1, 'Medium', '2024-06-06 23:47:16', 'pending'),
(203, 2, 1198759789, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Large', '2022-12-10 01:03:09', 'pending'),
(204, 2, 1198759789, '6', 'Jack & White Solid Denim Jacket', 1, 'Large', '2024-01-26 00:51:51', 'pending'),
(205, 2, 1198759789, '7', 'Nice Solid Long Coat With Lace', 1, 'Medium', '2024-03-15 00:50:07', 'pending'),
(206, 2, 1198759789, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2024-06-27 23:48:00', 'pending'),
(207, 2, 1198759789, '9', 'Remind Printed T-Shirt', 1, 'Medium', '2024-09-10 23:45:13', 'pending'),
(208, 2, 680363385, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2023-03-24 01:01:38', 'pending'),
(209, 2, 680363385, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-07-21 23:55:33', 'pending'),
(210, 2, 680363385, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-09-20 23:53:20', 'pending'),
(211, 2, 680363385, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2024-06-18 23:47:58', 'pending'),
(212, 2, 1132504683, '7', 'Nice Solid Long Coat With Lace', 1, 'Select a Size', '2023-09-13 23:50:04', 'pending'),
(213, 2, 1717245559, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:42:41', 'pending'),
(214, 2, 1717245559, '4', 'Navy Blue Solid Denim Jacket', 1, 'Medium', '2023-07-27 23:55:30', 'pending'),
(215, 2, 1717245559, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-10-26 23:53:17', 'pending'),
(216, 2, 1717245559, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Medium', '2023-02-22 00:47:52', 'pending'),
(217, 2, 1171724362, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2023-03-08 01:01:35', 'pending'),
(218, 2, 1171724362, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-07-14 23:55:26', 'pending'),
(219, 2, 1171724362, '9', 'Remind Printed T-Shirt', 1, 'Large', '2024-09-10 23:45:06', 'pending'),
(220, 2, 483142781, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2022-12-30 01:03:12', 'pending'),
(221, 2, 483142781, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2023-03-31 00:01:30', 'pending'),
(222, 2, 483142781, '5', 'Denim Borg Lined Western Jacket', 1, 'Large', '2023-10-24 23:53:13', 'pending'),
(223, 2, 483142781, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-06-26 23:47:45', 'pending'),
(224, 2, 810094247, '1', 'New T-Shirt', 1, 'Medium', '2022-11-17 01:03:24', 'pending'),
(225, 2, 810094247, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2022-12-23 01:03:15', 'pending'),
(226, 2, 810094247, '3', 'BENETTON White Polo Shirt', 1, 'Large', '2023-03-24 01:01:26', 'pending'),
(227, 2, 810094247, '4', 'Navy Blue Solid Denim Jacket', 1, 'Large', '2023-07-22 23:55:24', 'pending'),
(228, 2, 810094247, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2023-10-23 23:53:11', 'pending'),
(229, 2, 810094247, '6', 'Jack & White Solid Denim Jacket', 1, 'Medium', '2024-01-20 00:51:34', 'pending'),
(230, 2, 810094247, '7', 'Nice Solid Long Coat With Lace', 1, 'Large', '2024-03-21 00:49:58', 'pending'),
(231, 2, 810094247, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Large', '2024-06-07 23:47:32', 'pending'),
(232, 2, 810094247, '9', 'Remind Printed T-Shirt', 1, 'Medium', '2024-09-10 23:45:00', 'pending'),
(233, 2, 1887390255, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-06-17 23:46:21', 'pending'),
(234, 2, 464798162, '9', 'Remind Printed T-Shirt', 2, 'Small', '2023-09-26 23:44:54', 'pending'),
(235, 2, 921601387, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-10 23:44:49', 'pending'),
(236, 2, 1967559140, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 14:45:12', 'pending'),
(237, 2, 1967559140, '9', 'Remind Printed T-Shirt', 1, 'Small', '2023-01-04 15:45:29', 'pending'),
(238, 2, 221618740, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:10:36', 'pending'),
(239, 2, 221618740, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:10:51', 'pending'),
(240, 2, 221618740, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:11:05', 'pending'),
(241, 2, 221618740, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2022-03-24 00:21:03', 'pending'),
(242, 2, 221618740, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:11:24', 'pending'),
(243, 2, 221618740, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:09:52', 'pending'),
(244, 2, 221618740, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:09:33', 'pending'),
(245, 2, 221618740, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:09:16', 'pending'),
(246, 2, 221618740, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:08:37', 'pending'),
(247, 2, 1017333597, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:10:34', 'pending'),
(248, 2, 1017333597, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:10:47', 'pending'),
(249, 2, 1017333597, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:10:58', 'pending'),
(250, 2, 1017333597, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:09:02', 'pending'),
(251, 2, 1017333597, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:11:22', 'pending'),
(252, 2, 1017333597, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:09:55', 'pending'),
(253, 2, 1017333597, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:09:37', 'pending'),
(254, 2, 1017333597, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:09:20', 'pending'),
(255, 2, 1017333597, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:08:40', 'pending'),
(256, 2, 1631235446, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:10:31', 'pending'),
(257, 2, 1631235446, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:10:44', 'pending'),
(258, 2, 1631235446, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:10:56', 'pending'),
(259, 2, 1631235446, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:11:11', 'pending'),
(260, 2, 1631235446, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:11:27', 'pending'),
(261, 2, 1631235446, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:09:57', 'pending'),
(262, 2, 1631235446, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:09:39', 'pending'),
(263, 2, 1631235446, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:09:22', 'pending'),
(264, 2, 1631235446, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:08:44', 'pending'),
(265, 2, 357796181, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:32:39', 'pending'),
(266, 2, 357796181, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:32:47', 'pending'),
(267, 2, 357796181, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:33:37', 'pending'),
(268, 2, 357796181, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:34:39', 'pending'),
(269, 2, 357796181, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:34:44', 'pending'),
(270, 2, 357796181, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:35:57', 'pending'),
(271, 2, 357796181, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:35:49', 'pending'),
(272, 2, 357796181, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:36:31', 'pending'),
(273, 2, 357796181, '9', 'Remind Printed T-Shirt', 1, 'Large', '2024-09-15 23:37:45', 'pending'),
(274, 2, 1366165399, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:32:36', 'pending'),
(275, 2, 1366165399, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:32:49', 'pending'),
(276, 2, 1366165399, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:33:40', 'pending'),
(277, 2, 1366165399, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:34:34', 'pending'),
(278, 2, 1366165399, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:34:46', 'pending'),
(279, 2, 1366165399, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:37:07', 'pending'),
(280, 2, 1366165399, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:36:17', 'pending'),
(281, 2, 1366165399, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:36:55', 'pending'),
(282, 2, 1366165399, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:37:43', 'pending'),
(283, 2, 1410311973, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:33:28', 'pending'),
(284, 2, 1410311973, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:32:53', 'pending'),
(285, 2, 1410311973, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:33:42', 'pending'),
(286, 2, 1410311973, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:34:31', 'pending'),
(287, 2, 1410311973, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:34:48', 'pending'),
(288, 2, 1410311973, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:35:42', 'pending'),
(289, 2, 1410311973, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:35:59', 'pending'),
(290, 2, 1410311973, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:36:35', 'pending'),
(291, 2, 1410311973, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:37:40', 'pending'),
(292, 2, 1442897651, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:32:32', 'pending'),
(293, 2, 1442897651, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:32:56', 'pending'),
(294, 2, 1442897651, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:33:45', 'pending'),
(295, 2, 1442897651, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:34:29', 'pending'),
(296, 2, 1442897651, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:34:51', 'pending'),
(297, 2, 1442897651, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:35:34', 'pending'),
(298, 2, 1442897651, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:36:02', 'pending'),
(299, 2, 1442897651, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:36:38', 'pending'),
(300, 2, 1442897651, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:37:37', 'pending'),
(301, 2, 1988714503, '1', 'New T-Shirt', 1, 'Medium', '2024-09-15 23:32:28', 'pending'),
(302, 2, 1988714503, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:32:59', 'pending'),
(303, 2, 1988714503, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:33:47', 'pending'),
(304, 2, 1988714503, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:34:26', 'pending'),
(305, 2, 1988714503, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:34:53', 'pending'),
(306, 2, 1988714503, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:35:32', 'pending'),
(307, 2, 1988714503, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:36:04', 'pending'),
(308, 2, 1988714503, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:36:42', 'pending'),
(309, 2, 1988714503, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:37:34', 'pending'),
(310, 2, 1764630856, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:32:25', 'pending'),
(311, 2, 1764630856, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:33:02', 'pending'),
(312, 2, 1764630856, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:33:50', 'pending'),
(313, 2, 1764630856, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:34:24', 'pending'),
(314, 2, 1764630856, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:34:56', 'pending'),
(315, 2, 1764630856, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:35:29', 'pending'),
(316, 2, 1764630856, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:36:06', 'pending'),
(317, 2, 1764630856, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:36:45', 'pending'),
(318, 2, 1764630856, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:37:31', 'pending'),
(319, 2, 686775143, '1', 'New T-Shirt', 1, 'Large', '2024-09-15 23:33:23', 'pending'),
(320, 2, 686775143, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Medium', '2024-09-15 23:33:08', 'pending'),
(321, 2, 686775143, '3', 'BENETTON White Polo Shirt', 1, 'Small', '2024-09-15 23:33:52', 'pending'),
(322, 2, 686775143, '4', 'Navy Blue Solid Denim Jacket', 1, 'Small', '2024-09-15 23:34:21', 'pending'),
(323, 2, 686775143, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:34:59', 'pending'),
(324, 2, 686775143, '6', 'Jack & White Solid Denim Jacket', 1, 'Small', '2024-09-15 23:35:27', 'pending'),
(325, 2, 686775143, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:36:09', 'pending'),
(326, 2, 686775143, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:36:47', 'pending'),
(327, 2, 686775143, '9', 'Remind Printed T-Shirt', 1, 'Small', '2024-09-15 23:37:28', 'pending'),
(328, 2, 532960240, '1', 'New T-Shirt', 2, 'Medium', '2024-09-15 23:32:22', 'pending'),
(329, 2, 532960240, '2', 'U.S. Polo Assn. Blue Polos shirt', 1, 'Small', '2024-09-15 23:33:06', 'pending'),
(330, 2, 532960240, '3', 'BENETTON White Polo Shirt', 2, 'Small', '2024-09-15 23:33:57', 'pending'),
(331, 2, 532960240, '4', 'Navy Blue Solid Denim Jacket', 2, 'Medium', '2024-09-15 23:34:19', 'pending'),
(332, 2, 532960240, '5', 'Denim Borg Lined Western Jacket', 4, 'Medium', '2024-09-15 23:35:04', 'pending'),
(333, 2, 532960240, '6', 'Jack & White Solid Denim Jacket', 1, 'Large', '2024-09-15 23:35:24', 'pending'),
(334, 2, 532960240, '7', 'Nice Solid Long Coat With Lace', 1, 'Medium', '2024-09-15 23:36:12', 'pending'),
(335, 2, 532960240, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:36:53', 'pending'),
(336, 2, 532960240, '9', 'Remind Printed T-Shirt', 1, 'Large', '2024-09-15 23:37:16', 'pending'),
(337, 2, 1524723342, '1', 'New T-Shirt', 1, 'Small', '2024-09-15 23:32:16', 'pending'),
(338, 2, 1524723342, '3', 'BENETTON White Polo Shirt', 1, 'Medium', '2024-09-15 23:34:00', 'pending'),
(339, 2, 1524723342, '4', 'Navy Blue Solid Denim Jacket', 1, 'Medium', '2024-09-15 23:34:12', 'pending'),
(340, 2, 1524723342, '5', 'Denim Borg Lined Western Jacket', 1, 'Small', '2024-09-15 23:35:11', 'pending'),
(341, 2, 1524723342, '6', 'Jack & White Solid Denim Jacket', 1, 'Large', '2024-09-15 23:35:22', 'pending'),
(342, 2, 1524723342, '7', 'Nice Solid Long Coat With Lace', 1, 'Small', '2024-09-15 23:36:19', 'pending'),
(343, 2, 1524723342, '8', 'Sleeveless Faux Fur Hybrid Coat', 1, 'Small', '2024-09-15 23:37:02', 'pending'),
(344, 2, 1524723342, '9', 'Remind Printed T-Shirt', 1, 'Medium', '2024-09-15 23:37:18', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(1, 5, 4, 3, '2024-09-09 19:18:23', 'New T-Shirt', 'new-t-shirt', 'img1.jpg', 'img2.jpg', 'img3.jpg', 70, 50, '', '', '', 'T-Shirts', 'Sale', 'product'),
(2, 5, 3, 2, '2024-09-09 19:18:33', 'U.S. Polo Assn. Blue Polos shirt', 'product-url-2', 'U-S--Polo-Assn--Blue-Polos-0266-586842-1-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0268-586842-2-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0271-586842-3-pdp_slider_l.jpg', 69, 45, '', '', '', 'T-Shirt', 'Gift', 'product'),
(3, 5, 3, 6, '2024-09-09 19:18:42', 'BENETTON White Polo Shirt', 'product-url-3', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-1-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-2-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0609-0914361-3-pdp_slider_l.jpg', 98, 0, '', '', '', 'T-Shirt', 'New', 'product'),
(4, 7, 5, 5, '2024-09-09 19:18:51', 'Navy Blue Solid Denim Jacket', 'product-url-4', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-1-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-2-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-3-pdp_slider_l.jpg', 230, 150, '', '', '', 'Jackets', 'Sale', 'product'),
(5, 7, 5, 5, '2024-09-09 19:19:00', 'Denim Borg Lined Western Jacket', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 259, 100, '', '', '', 'Jackets', 'Gift', 'product'),
(6, 7, 5, 5, '2024-09-09 19:19:10', 'Jack & White Solid Denim Jacket', 'product-url-6', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-1-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-2-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-3-pdp_slider_l.jpg', 96, 0, '', '', '', 'Jackets', 'New', 'product'),
(7, 4, 2, 6, '2024-09-09 19:19:19', 'Nice Solid Long Coat With Lace', 'product-url-7', 'fur coat with button1.jpg', 'fur coat with button2.jpg', 'fur coat with button3.jpg', 200, 150, '', '', '', 'Coats', 'Sale', 'product'),
(8, 4, 2, 4, '2024-09-09 19:19:29', 'Sleeveless Faux Fur Hybrid Coat', 'product-url-8', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 245, 100, '', '', '', 'Coats', 'Gift', 'product'),
(9, 5, 4, 2, '2024-09-09 19:19:37', 'Remind Printed T-Shirt', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 50, 0, '', '', '', 'T-Shirt', 'New', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Coats', 'no', 'image3.jpg'),
(5, 'T-Shirts', 'no', 'image2.jpg'),
(6, 'Sweater', 'no', 'sweater.jpg'),
(7, 'jackets', 'yes', 'jacket.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'London Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'New York Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Paris Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
