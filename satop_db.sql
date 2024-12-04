-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 07:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

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
  `bank_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `account_number` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `bank_image` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `bed_id` int(11) NOT NULL,
  `room_number` int(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createAt` datetime NOT NULL,
  `updateAt` datetime NOT NULL,
  `status_bed` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`bed_id`, `room_number`, `status`, `createAt`, `updateAt`, `status_bed`) VALUES
(1, 102, 'Active', '2024-12-03 18:42:47', '2024-12-04 23:15:24', 'มีผู้เข้าพัก'),
(2, 201, 'Active', '2024-12-03 18:43:01', '2024-12-04 21:13:46', 'มีผู้เข้าพัก'),
(3, 202, 'Active', '2024-12-03 18:43:13', '0000-00-00 00:00:00', NULL),
(4, 202, 'Active', '2024-12-03 18:43:13', '2024-12-05 01:02:47', 'มีผู้เข้าพัก'),
(5, 202, 'Active', '2024-12-03 18:43:13', '2024-12-05 01:02:43', 'มีผู้เข้าพัก'),
(6, 202, 'Active', '2024-12-03 18:43:13', '2024-12-05 00:59:00', 'มีผู้เข้าพัก'),
(7, 203, 'Active', '2024-12-03 18:43:31', '2024-12-05 00:58:20', 'มีผู้เข้าพัก'),
(8, 204, 'Active', '2024-12-03 18:43:48', '2024-12-05 01:01:22', 'มีผู้เข้าพัก'),
(9, 304, 'Active', '2024-12-03 18:43:58', '2024-12-05 01:02:27', 'มีผู้เข้าพัก'),
(10, 301, 'Active', '2024-12-03 18:44:15', '2024-12-04 23:04:27', 'มีผู้เข้าพัก'),
(11, 302, 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00', NULL),
(12, 302, 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00', NULL),
(13, 302, 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00', NULL),
(14, 302, 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00', NULL),
(15, 302, 'Active', '2024-12-03 18:44:40', '2024-12-05 01:04:48', 'มีผู้เข้าพัก'),
(16, 302, 'Active', '2024-12-03 18:44:40', '2024-12-05 01:04:42', 'มีผู้เข้าพัก'),
(17, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(18, 303, 'Active', '2024-12-03 18:45:05', '2024-12-05 01:05:09', 'มีผู้เข้าพัก'),
(19, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(20, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(21, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(22, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(23, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(24, 205, 'Active', '2024-12-03 18:45:29', '2024-12-05 01:01:17', 'มีผู้เข้าพัก'),
(25, 401, 'Active', '2024-12-03 18:45:42', '2024-12-04 20:13:02', 'มีผู้เข้าพัก'),
(26, 402, 'Active', '2024-12-03 18:45:52', '2024-12-04 20:58:49', 'มีผู้เข้าพัก'),
(27, 403, 'Active', '2024-12-03 18:46:41', '2024-12-04 22:59:49', 'มีผู้เข้าพัก'),
(28, 403, 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00', NULL),
(29, 403, 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00', NULL),
(30, 403, 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00', NULL),
(31, 403, 'Active', '2024-12-03 18:46:41', '0000-00-00 00:00:00', NULL),
(32, 404, 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00', NULL),
(33, 404, 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00', NULL),
(34, 404, 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00', NULL),
(35, 404, 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00', NULL),
(36, 404, 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00', NULL),
(37, 404, 'Active', '2024-12-03 18:47:02', '0000-00-00 00:00:00', NULL),
(38, 405, 'Active', '2024-12-03 18:47:13', '0000-00-00 00:00:00', NULL),
(52, 102, 'Active', '2024-12-04 23:09:48', '2024-12-05 00:59:50', 'มีผู้เข้าพัก');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `booker_name` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `room_number` varchar(11) DEFAULT NULL,
  `car_number` varchar(20) DEFAULT NULL,
  `check_in_at` datetime DEFAULT NULL,
  `check_out_at` datetime DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `id_card` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `payment` varchar(20) DEFAULT NULL,
  `amountpeople` varchar(20) DEFAULT NULL,
  `room_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `check_in_date`, `check_out_date`, `email`, `booker_name`, `phone`, `remark`, `room_number`, `car_number`, `check_in_at`, `check_out_at`, `gender`, `nationality`, `id_card`, `address`, `payment`, `amountpeople`, `room_type`) VALUES
(258, '2024-12-04', '2024-12-04', '4', '4', '4', '4', '301', NULL, '2024-12-04 23:04:27', NULL, 'ชาย', '4', '4', '4', 'เงินสด', '4', 'ห้อง Private แอร์'),
(259, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '', '205', NULL, '2024-12-04 23:38:54', NULL, 'ชาย', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(260, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '123', '205', NULL, '2024-12-05 00:41:15', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(261, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '123', '205', NULL, '2024-12-05 00:41:34', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(262, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '11', '205', NULL, '2024-12-05 00:42:03', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(263, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', 'zz', '205', NULL, '2024-12-05 00:42:30', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(264, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '11', '205', NULL, '2024-12-05 00:44:35', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(265, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '11', '<br /><b>Wa', NULL, '2024-12-05 00:45:14', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(266, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '11', '<br /><b>Wa', NULL, '2024-12-05 00:45:55', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(267, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '11', '<br /><b>Wa', NULL, '2024-12-05 00:46:54', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(268, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธ์', '0943030401', '', '<br /><b>Wa', NULL, '2024-12-05 00:47:46', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(269, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '111', '205', NULL, '2024-12-05 00:51:00', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(270, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '123', '205', NULL, '2024-12-05 00:51:24', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(271, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธ์', '0943030401', '', '205', NULL, '2024-12-05 00:51:41', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(272, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '123', '205', NULL, '2024-12-05 00:57:21', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(273, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '', '205', NULL, '2024-12-05 00:57:29', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(274, '0000-00-00', '0000-00-00', '', '1', '', '', '204', NULL, '2024-12-05 00:58:14', NULL, '', '', '', '', 'เงินสด', '', 'ห้อง Private พัดลม'),
(275, '0000-00-00', '0000-00-00', '', '1', '', '', '203', NULL, '2024-12-05 00:58:20', NULL, '', '', '', '', 'เงินสด', '', 'ห้อง Private พัดลม'),
(276, '0000-00-00', '0000-00-00', '', '2', '', '', '202', NULL, '2024-12-05 00:58:29', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(277, '0000-00-00', '0000-00-00', '', '2', '', '', '202', NULL, '2024-12-05 00:58:38', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(278, '0000-00-00', '0000-00-00', '', '1', '', '', '202', NULL, '2024-12-05 00:58:47', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(279, '0000-00-00', '0000-00-00', '', 'ddd', '', '', '202', NULL, '2024-12-05 00:58:54', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(280, '0000-00-00', '0000-00-00', '', 'ddd', '', '', '202', NULL, '2024-12-05 00:59:00', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(281, '0000-00-00', '0000-00-00', '', '4445454', '', '', '102', NULL, '2024-12-05 00:59:50', NULL, '', '', '', '', 'เงินสด', '', 'ห้อง Private พัดลม'),
(282, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธ์', '0943030401', '', '205', NULL, '2024-12-05 01:00:57', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(283, '2024-12-05', '2024-12-07', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธื', '0943030401', '', '205', NULL, '2024-12-05 01:01:17', NULL, '', 'ไทย', '1129901714505', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', '1', 'ห้อง Private แอร์'),
(284, '0000-00-00', '0000-00-00', '', '1', '', '', '204', NULL, '2024-12-05 01:01:22', NULL, '', '', '', '', 'เงินสด', '', 'ห้อง Private พัดลม'),
(285, '0000-00-00', '0000-00-00', '', '', '', '', '304', NULL, '2024-12-05 01:02:27', NULL, '', '', '', '', 'เงินสด', '', 'ห้อง Private พัดลม'),
(286, '0000-00-00', '0000-00-00', '', '', '', '', '302', NULL, '2024-12-05 01:02:37', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(287, '0000-00-00', '0000-00-00', '', '2', '', '', '202', NULL, '2024-12-05 01:02:43', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(288, '0000-00-00', '0000-00-00', '', '2', '', '', '202', NULL, '2024-12-05 01:02:47', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(289, '0000-00-00', '0000-00-00', '', '11', '', '', '302', NULL, '2024-12-05 01:04:42', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(290, '0000-00-00', '0000-00-00', '', '22', '', '', '302', NULL, '2024-12-05 01:04:48', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(291, '0000-00-00', '0000-00-00', '', '11', '', '', '303', NULL, '2024-12-05 01:05:05', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม'),
(292, '0000-00-00', '0000-00-00', '', '11', '', '', '303', NULL, '2024-12-05 01:05:09', NULL, '', '', '', '', 'เงินสด', '', 'ห้องพักรวม');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facility_info`
--

INSERT INTO `facility_info` (`id`, `name`, `image_svg`, `status`, `create_at`, `update_at`) VALUES
(11, 'WiFi', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" style=\"fill: rgba(0, 119, 237, 1);transform: ;msFilter:;\"><path d=\"M12 6c3.537 0 6.837 1.353 9.293 3.809l1.414-1.414C19.874 5.561 16.071 4 12 4c-4.071.001-7.874 1.561-10.707 4.395l1.414 1.414C5.163 7.353 8.463 6 12 6zm5.671 8.307c-3.074-3.074-8.268-3.074-11.342 0l1.414 1.414c2.307-2.307 6.207-2.307 8.514 0l1.414-1.414z\"></path><path d=\"M20.437 11.293c-4.572-4.574-12.301-4.574-16.873 0l1.414 1.414c3.807-3.807 10.238-3.807 14.045 0l1.414-1.414z\"></path><circle cx=\"12\" cy=\"18\" r=\"2\"></circle></svg>', 'Active', '2024-04-11 00:08:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `highlight_info`
--

CREATE TABLE `highlight_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `room_number` varchar(255) DEFAULT NULL,
  `floor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `name`, `image`, `price`, `status`, `createAT`, `updateAT`, `roomdesc`, `roomabout`, `bed`, `amountpeople`, `room_number`, `floor`) VALUES
(151, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:47:57', '2024-12-04 18:19:41', '', '', '1', '2', '102', 1),
(152, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:48:45', NULL, NULL, NULL, '1', '2', '201', 2),
(153, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:49:14', NULL, NULL, NULL, '4', '4', '202', 2),
(154, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:49:39', NULL, NULL, NULL, '1', '2', '203', 2),
(155, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:50:15', NULL, NULL, NULL, '1', '2', '204', 2),
(156, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-02 23:50:42', NULL, NULL, NULL, '1', '2', '205', 2),
(157, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-02 23:58:39', NULL, NULL, NULL, '1', '2', '301', 3),
(158, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:59:12', NULL, NULL, NULL, '6', '6', '302', 3),
(159, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:59:36', NULL, NULL, NULL, '7', '7', '303', 3),
(160, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-03 00:00:06', NULL, NULL, NULL, '1', '2', '304', 3),
(161, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-03 00:00:35', NULL, NULL, NULL, '1', '2', '401', 4),
(162, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-03 00:01:03', NULL, NULL, NULL, '1', '2', '402', 4),
(163, 'ห้องพักรวม', '', 0, 'Active', '2024-12-03 00:01:26', NULL, NULL, NULL, '5', '5', '403', 4),
(164, 'ห้องพักรวม', '', 0, 'Active', '2024-12-03 00:01:50', NULL, NULL, NULL, '6', '6', '404', 4),
(165, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-03 00:02:15', NULL, NULL, NULL, '1', '2', '405', 4);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `name`, `create_at`, `update_at`, `status`, `code`) VALUES
(34, 'ห้อง Private พัดลม', '2024-11-26 16:01:30', '2024-12-04 18:38:42', 'Active', 'R1'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `highlight_info`
--
ALTER TABLE `highlight_info`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `facility_info`
--
ALTER TABLE `facility_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `highlight_info`
--
ALTER TABLE `highlight_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

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
