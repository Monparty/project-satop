-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 01:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank_image` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `bed_id` int(11) NOT NULL,
  `room_number` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(20) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `createAt` datetime NOT NULL,
  `updateAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`bed_id`, `room_number`, `name`, `phone`, `check_in`, `check_out`, `status`, `createAt`, `updateAt`) VALUES
(1, 102, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:42:47', '0000-00-00 00:00:00'),
(2, 201, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:43:01', '0000-00-00 00:00:00'),
(3, 202, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:43:13', '0000-00-00 00:00:00'),
(4, 202, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:43:13', '0000-00-00 00:00:00'),
(5, 202, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:43:13', '0000-00-00 00:00:00'),
(6, 202, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:43:13', '0000-00-00 00:00:00'),
(7, 203, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:43:31', '0000-00-00 00:00:00'),
(8, 204, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:43:48', '0000-00-00 00:00:00'),
(9, 205, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:43:58', '0000-00-00 00:00:00'),
(10, 301, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:44:15', '0000-00-00 00:00:00'),
(11, 302, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00'),
(12, 302, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00'),
(13, 302, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00'),
(14, 302, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00'),
(15, 302, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00'),
(16, 302, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00'),
(17, 303, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00'),
(18, 303, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00'),
(19, 303, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00'),
(20, 303, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00'),
(21, 303, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00'),
(22, 303, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00'),
(23, 303, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00'),
(24, 304, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:29', '0000-00-00 00:00:00'),
(25, 401, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:42', '0000-00-00 00:00:00'),
(26, 402, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:45:52', '0000-00-00 00:00:00'),
(27, 403, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00'),
(28, 403, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00'),
(29, 403, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00'),
(30, 403, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00'),
(31, 403, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00'),
(32, 404, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00'),
(33, 404, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00'),
(34, 404, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00'),
(35, 404, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00'),
(36, 404, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00'),
(37, 404, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00'),
(38, 405, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Active', '2024-12-03 18:47:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `booker_name` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `booking_type` int(11) DEFAULT NULL,
  `createAt` varchar(255) DEFAULT NULL,
  `booking_status` varchar(255) DEFAULT 'รอชำระเงิน',
  `slip_image` longblob DEFAULT NULL,
  `upload_slip_at` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `approve_at` datetime DEFAULT NULL,
  `room_number` varchar(11) DEFAULT NULL,
  `car_number` varchar(20) DEFAULT NULL,
  `remark_check_in_out` varchar(255) DEFAULT NULL,
  `check_in_at` datetime DEFAULT NULL,
  `check_out_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facility_info`
--

CREATE TABLE `facility_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image_svg` longtext DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `facility_info`
--

INSERT INTO `facility_info` (`id`, `name`, `image_svg`, `status`, `create_at`, `update_at`) VALUES
(11, 'WiFi', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" style=\"fill: rgba(0, 119, 237, 1);transform: ;msFilter:;\"><path d=\"M12 6c3.537 0 6.837 1.353 9.293 3.809l1.414-1.414C19.874 5.561 16.071 4 12 4c-4.071.001-7.874 1.561-10.707 4.395l1.414 1.414C5.163 7.353 8.463 6 12 6zm5.671 8.307c-3.074-3.074-8.268-3.074-11.342 0l1.414 1.414c2.307-2.307 6.207-2.307 8.514 0l1.414-1.414z\"></path><path d=\"M20.437 11.293c-4.572-4.574-12.301-4.574-16.873 0l1.414 1.414c3.807-3.807 10.238-3.807 14.045 0l1.414-1.414z\"></path><circle cx=\"12\" cy=\"18\" r=\"2\"></circle></svg>', 'Active', '2024-04-11 00:08:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_image` longblob NOT NULL,
  `food_detail` varchar(255) NOT NULL,
  `food_price` int(11) DEFAULT NULL,
  `food_status` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `highlight_info`
--

CREATE TABLE `highlight_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `highlight_info`
--

INSERT INTO `highlight_info` (`id`, `name`) VALUES
(1, 'สระว่ายน้ำ'),
(2, 'ฟิตเนส'),
(3, 'สปา'),
(4, 'ห้องอาหาร'),
(5, 'ห้องประชุม'),
(6, 'บริการรับ-ส่งสนามบิน'),
(7, 'มีสถานที่ปั่นจักรยาน'),
(8, 'บริการซักรีด');

-- --------------------------------------------------------

--
-- Table structure for table `meetrooms`
--

CREATE TABLE `meetrooms` (
  `meetroom_id` int(11) NOT NULL,
  `meetroom_name` varchar(255) NOT NULL,
  `floor` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `meetroom_image` longblob DEFAULT NULL,
  `meetroom_desc` varchar(255) DEFAULT NULL,
  `meetroom_price` int(11) DEFAULT NULL,
  `meetroom_about` varchar(255) DEFAULT NULL,
  `amountpeople` int(11) DEFAULT NULL,
  `facility1` tinyint(1) DEFAULT NULL,
  `facility2` tinyint(1) DEFAULT NULL,
  `facility3` tinyint(1) DEFAULT NULL,
  `facility4` tinyint(1) DEFAULT NULL,
  `facility5` tinyint(1) DEFAULT NULL,
  `facility6` tinyint(1) DEFAULT NULL,
  `facility7` tinyint(1) DEFAULT NULL,
  `facility8` tinyint(1) DEFAULT NULL,
  `facility9` tinyint(1) DEFAULT NULL,
  `facility10` tinyint(1) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetroom_bookings`
--

CREATE TABLE `meetroom_bookings` (
  `meetbooking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meetroom_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `booker_name` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `booking_status` varchar(255) DEFAULT 'รอชำระเงิน',
  `slip_image` longblob DEFAULT NULL,
  `upload_slip_at` datetime DEFAULT NULL,
  `approve_at` datetime DEFAULT NULL,
  `meeting_topic` varchar(255) DEFAULT NULL,
  `amountpeople` int(11) DEFAULT NULL,
  `catering` varchar(1) DEFAULT NULL,
  `catering_type` varchar(255) DEFAULT NULL,
  `snack1` varchar(1) DEFAULT NULL,
  `snack1_amount` int(11) DEFAULT NULL,
  `snack2` varchar(1) DEFAULT NULL,
  `snack2_amount` int(11) DEFAULT NULL,
  `snack3` varchar(1) DEFAULT NULL,
  `snack3_amount` int(11) DEFAULT NULL,
  `lunch1` varchar(1) DEFAULT NULL,
  `lunch1_amount` int(11) DEFAULT NULL,
  `lunch2` varchar(1) DEFAULT NULL,
  `lunch2_amount` int(11) DEFAULT NULL,
  `lunch3` varchar(1) DEFAULT NULL,
  `lunch3_amount` int(11) DEFAULT NULL,
  `buffet1` varchar(1) DEFAULT NULL,
  `buffet2` varchar(1) DEFAULT NULL,
  `buffet3` varchar(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `buffet1_amount` int(11) DEFAULT NULL,
  `buffet2_amount` int(11) DEFAULT NULL,
  `buffet3_amount` int(11) DEFAULT NULL,
  `buffetset1` varchar(1) DEFAULT NULL,
  `buffetset2` varchar(1) DEFAULT NULL,
  `buffetset3` varchar(1) DEFAULT NULL,
  `sumprice` varchar(11) DEFAULT NULL,
  `remark_approve` varchar(255) DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `facility` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetroom_food`
--

CREATE TABLE `meetroom_food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `food_image` longblob DEFAULT NULL,
  `food_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `food_price` int(11) DEFAULT NULL,
  `food_type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `food_status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_food`
--

CREATE TABLE `order_food` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_remark` varchar(255) DEFAULT NULL,
  `order_quantity` int(11) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `sum_price` int(11) DEFAULT NULL,
  `order_slip` longblob DEFAULT NULL,
  `payment_at` datetime DEFAULT NULL,
  `room_number` varchar(11) DEFAULT NULL,
  `payment_remark` varchar(255) DEFAULT NULL,
  `approve_at` datetime DEFAULT NULL,
  `delivery_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createAT` datetime DEFAULT NULL,
  `updateAT` datetime DEFAULT NULL,
  `roomdesc` varchar(255) DEFAULT NULL,
  `roomabout` varchar(255) DEFAULT NULL,
  `bed` varchar(255) DEFAULT NULL,
  `amountpeople` varchar(255) DEFAULT NULL,
  `facility1` tinyint(1) DEFAULT NULL,
  `facility2` tinyint(1) DEFAULT NULL,
  `facility3` tinyint(1) DEFAULT NULL,
  `facility4` tinyint(1) DEFAULT NULL,
  `facility5` tinyint(1) DEFAULT NULL,
  `facility6` tinyint(1) DEFAULT NULL,
  `facility7` tinyint(1) DEFAULT NULL,
  `facility8` tinyint(1) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `image2` longblob DEFAULT NULL,
  `image3` longblob DEFAULT NULL,
  `image4` longblob DEFAULT NULL,
  `image5` longblob DEFAULT NULL,
  `floor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `name`, `image`, `price`, `status`, `createAT`, `updateAT`, `roomdesc`, `roomabout`, `bed`, `amountpeople`, `facility1`, `facility2`, `facility3`, `facility4`, `facility5`, `facility6`, `facility7`, `facility8`, `room_number`, `image2`, `image3`, `image4`, `image5`, `floor`) VALUES
(151, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:47:57', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '102', NULL, NULL, NULL, NULL, 1),
(152, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:48:45', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201', NULL, NULL, NULL, NULL, 2),
(153, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:49:14', NULL, NULL, NULL, '4', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202', NULL, NULL, NULL, NULL, 2),
(154, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:49:39', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '203', NULL, NULL, NULL, NULL, 2),
(155, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:50:15', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '204', NULL, NULL, NULL, NULL, 2),
(156, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-02 23:50:42', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '205', NULL, NULL, NULL, NULL, 2),
(157, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-02 23:58:39', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '301', NULL, NULL, NULL, NULL, 3),
(158, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:59:12', NULL, NULL, NULL, '6', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '302', NULL, NULL, NULL, NULL, 3),
(159, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:59:36', NULL, NULL, NULL, '7', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '303', NULL, NULL, NULL, NULL, 3),
(160, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-03 00:00:06', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '304', NULL, NULL, NULL, NULL, 3),
(161, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-03 00:00:35', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '401', NULL, NULL, NULL, NULL, 4),
(162, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-03 00:01:03', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '402', NULL, NULL, NULL, NULL, 4),
(163, 'ห้องพักรวม', '', 0, 'Active', '2024-12-03 00:01:26', NULL, NULL, NULL, '5', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '403', NULL, NULL, NULL, NULL, 4),
(164, 'ห้องพักรวม', '', 0, 'Active', '2024-12-03 00:01:50', NULL, NULL, NULL, '6', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '404', NULL, NULL, NULL, NULL, 4),
(165, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-03 00:02:15', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '405', NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `name`, `create_at`, `update_at`, `status`, `code`) VALUES
(34, 'ห้อง Private พัดลม', '2024-11-26 16:01:30', '2024-12-03 17:56:54', 'Active', 'R1'),
(35, 'ห้อง Private แอร์', '2024-11-26 16:01:41', '2024-12-03 17:58:07', 'Active', 'R2'),
(36, 'ห้องพักรวม', '2024-11-26 16:01:55', '2024-12-03 17:58:15', 'Active', 'R3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT 'user',
  `gender` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone_number`, `password`, `position`, `gender`, `birth_date`, `address`, `create_at`, `update_at`, `status`, `name`) VALUES
(34, 'admin', 'admin@gmail.com', '0943030401', '$2y$10$G2xAirrs/yvcYAmSQ7ciZOmxth.8WZM28/ZmGCdg7.VKvKkHQLkKG', 'admin', '1', '0000-00-00', '', '2024-03-10 11:35:26', '2024-07-24 23:10:01', 'Active', 'แดดมินจ้า บ้าพลัง');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`bed_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `facility_info`
--
ALTER TABLE `facility_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `highlight_info`
--
ALTER TABLE `highlight_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetrooms`
--
ALTER TABLE `meetrooms`
  ADD PRIMARY KEY (`meetroom_id`);

--
-- Indexes for table `meetroom_bookings`
--
ALTER TABLE `meetroom_bookings`
  ADD PRIMARY KEY (`meetbooking_id`);

--
-- Indexes for table `meetroom_food`
--
ALTER TABLE `meetroom_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_food`
--
ALTER TABLE `order_food`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `facility_info`
--
ALTER TABLE `facility_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `highlight_info`
--
ALTER TABLE `highlight_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `meetrooms`
--
ALTER TABLE `meetrooms`
  MODIFY `meetroom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meetroom_bookings`
--
ALTER TABLE `meetroom_bookings`
  MODIFY `meetbooking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `meetroom_food`
--
ALTER TABLE `meetroom_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_food`
--
ALTER TABLE `order_food`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
