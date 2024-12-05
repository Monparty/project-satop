-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 12:41 PM
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
(1, 102, 'Active', '2024-12-03 18:42:47', '2024-12-05 16:02:30', 'check-in'),
(2, 201, 'Active', '2024-12-03 18:43:01', '2024-12-05 17:45:35', 'รอทำความสะอาด'),
(3, 202, 'Active', '2024-12-03 18:43:13', '0000-00-00 00:00:00', NULL),
(4, 202, 'Active', '2024-12-03 18:43:13', '2024-12-05 01:02:47', ''),
(5, 202, 'Active', '2024-12-03 18:43:13', '2024-12-05 01:02:43', ''),
(6, 202, 'Active', '2024-12-03 18:43:13', '2024-12-05 00:59:00', ''),
(7, 203, 'Active', '2024-12-03 18:43:31', '2024-12-05 00:58:20', ''),
(8, 204, 'Active', '2024-12-03 18:43:48', '2024-12-05 14:30:35', ''),
(9, 304, 'Active', '2024-12-03 18:43:58', '2024-12-05 01:02:27', ''),
(10, 301, 'Active', '2024-12-03 18:44:15', '2024-12-05 15:22:22', NULL),
(11, 302, 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00', NULL),
(12, 302, 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00', NULL),
(13, 302, 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00', NULL),
(14, 302, 'Active', '2024-12-03 18:44:40', '0000-00-00 00:00:00', NULL),
(15, 302, 'Active', '2024-12-03 18:44:40', '2024-12-05 01:04:48', ''),
(16, 302, 'Active', '2024-12-03 18:44:40', '2024-12-05 01:04:42', ''),
(17, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(18, 303, 'Active', '2024-12-03 18:45:05', '2024-12-05 01:05:09', ''),
(19, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(20, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(21, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(22, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(23, 303, 'Active', '2024-12-03 18:45:05', '0000-00-00 00:00:00', NULL),
(24, 205, 'Active', '2024-12-03 18:45:29', '2024-12-05 14:47:19', ''),
(25, 401, 'Active', '2024-12-03 18:45:42', '2024-12-05 16:43:30', 'check-in'),
(26, 402, 'Active', '2024-12-03 18:45:52', '2024-12-05 16:58:50', 'check-in'),
(27, 403, 'Active', '2024-12-03 18:46:41', '2024-12-04 22:59:49', ''),
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
(52, 102, 'Active', '2024-12-04 23:09:48', '2024-12-05 00:59:50', ''),
(53, 501, 'Active', '2024-12-05 16:50:14', '2024-12-05 16:51:47', 'check-out'),
(54, 501, 'Active', '2024-12-05 16:50:14', '0000-00-00 00:00:00', NULL),
(55, 501, 'Active', '2024-12-05 16:50:14', '0000-00-00 00:00:00', NULL),
(56, 501, 'Active', '2024-12-05 16:50:14', '2024-12-05 16:53:18', 'check-in');

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
  `amountpeople` int(20) DEFAULT NULL,
  `room_type` varchar(100) DEFAULT NULL,
  `bed_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `check_in_date`, `check_out_date`, `email`, `booker_name`, `phone`, `remark`, `room_number`, `car_number`, `check_in_at`, `check_out_at`, `gender`, `nationality`, `id_card`, `address`, `payment`, `amountpeople`, `room_type`, `bed_id`) VALUES
(303, '0000-00-00', '0000-00-00', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธ์', '0943030401', '', '102', NULL, '2024-12-05 16:02:30', NULL, 'ชาย', 'ไทย', '1', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', 0, 'ห้อง Private พัดลม', '1'),
(304, '0000-00-00', '0000-00-00', 'นาย 401', 'นาย 401', '401', '', '401', NULL, '2024-12-05 16:13:42', NULL, 'ชาย', 'นาย 401', '401', 'นาย 401', 'เงินสด', 0, 'ห้อง Private แอร์', '25'),
(305, '2024-12-05', '2024-12-12', 'efws#@#sefe', 'นาย 201', '123', 'remark', '201', NULL, '2024-12-05 16:19:27', NULL, 'อื่นๆ', 'ไทย', '1123334547878', '123', 'อื่นๆ', 5, 'ห้อง Private พัดลม', '2'),
(306, '2024-12-05', '2024-12-12', 'efws#@#sefe', 'นาย 201 test', '123', 'remark', '201', NULL, '2024-12-05 16:28:14', NULL, 'อื่นๆ', 'ไทย', '1123334547878', '123', 'อื่นๆ', 2, 'ห้อง Private พัดลม', '2'),
(307, '2024-12-05', '2024-12-19', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธ์ 201', '0943030401', 'note', '201', NULL, '2024-12-05 16:30:07', NULL, 'หญิง', 'ไทย', '123', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'บัตรเครดิต', 2, 'ห้อง Private พัดลม', '2'),
(308, '2024-12-06', '0000-00-00', '', '132', '', '', '401', NULL, '2024-12-05 16:40:06', NULL, '', '', '', '', 'เงินสด', 0, 'ห้อง Private แอร์', '25'),
(309, '2024-12-05', '0000-00-00', '', '1', '', '', '401', NULL, '2024-12-05 16:41:10', NULL, '', '', '', '', 'เงินสด', 0, 'ห้อง Private แอร์', '25'),
(310, '2024-12-05', '2024-12-06', 'sukontaprapun@gmail.com', 'สุนิติ สุคนธประพันธ์', '0943030401', '', '501', NULL, '2024-12-05 16:51:12', NULL, 'หญิง', 'ไทย', '123', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', 1, 'ห้อง Private แอร์', '53'),
(311, '2024-12-05', '2024-12-06', '5', 'สุนิติ 501', '5', '5', '501', NULL, '2024-12-05 16:53:18', NULL, 'อื่นๆ', '5', '55', '5', 'เงินสด', 5, 'ห้อง Private แอร์', '56'),
(312, '2024-12-05', '2024-12-13', '402', 'นาย 402', '402', '402', '402', NULL, '2024-12-05 16:58:50', NULL, 'ชาย', '402', '402', '402', 'เงินสด', 5, 'ห้อง Private พัดลม', '26');

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
  `floor` int(10) DEFAULT NULL,
  `room_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `name`, `image`, `price`, `status`, `createAT`, `updateAT`, `roomdesc`, `roomabout`, `bed`, `floor`, `room_number`) VALUES
(151, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:47:57', '2024-12-04 18:19:41', '', '', '1', 1, '102'),
(152, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:48:45', NULL, NULL, NULL, '1', 2, '201'),
(153, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:49:14', NULL, NULL, NULL, '4', 2, '202'),
(154, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:49:39', NULL, NULL, NULL, '1', 2, '203'),
(155, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-02 23:50:15', NULL, NULL, NULL, '1', 2, '204'),
(156, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-02 23:50:42', NULL, NULL, NULL, '1', 2, '205'),
(157, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-02 23:58:39', NULL, NULL, NULL, '1', 3, '301'),
(158, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:59:12', NULL, NULL, NULL, '6', 3, '302'),
(159, 'ห้องพักรวม', '', 0, 'Active', '2024-12-02 23:59:36', NULL, NULL, NULL, '7', 3, '303'),
(160, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-03 00:00:06', NULL, NULL, NULL, '1', 3, '304'),
(161, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-03 00:00:35', NULL, NULL, NULL, '1', 4, '401'),
(162, 'ห้อง Private พัดลม', '', 0, 'Active', '2024-12-03 00:01:03', NULL, NULL, NULL, '1', 4, '402'),
(163, 'ห้องพักรวม', '', 0, 'Active', '2024-12-03 00:01:26', NULL, NULL, NULL, '5', 4, '403'),
(164, 'ห้องพักรวม', '', 0, 'Active', '2024-12-03 00:01:50', NULL, NULL, NULL, '6', 4, '404'),
(165, 'ห้อง Private แอร์', '', 0, 'Active', '2024-12-03 00:02:15', NULL, NULL, NULL, '1', 4, '405');

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
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

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
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

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
