-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 06:30 PM
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
  `status_bed` varchar(50) DEFAULT 'เตียงว่าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`bed_id`, `room_number`, `status`, `createAt`, `updateAt`, `status_bed`) VALUES
(74, 102, 'Active', '2024-12-05 21:31:09', '2024-12-05 22:31:47', 'check-in'),
(75, 201, 'Active', '2024-12-05 21:31:26', '0000-00-00 00:00:00', 'เตียงว่าง'),
(76, 202, 'Active', '2024-12-05 21:31:40', '0000-00-00 00:00:00', 'เตียงว่าง'),
(77, 203, 'Active', '2024-12-05 21:31:48', '2024-12-05 22:35:31', 'รอทำความสะอาด'),
(78, 203, 'Active', '2024-12-05 21:31:48', '0000-00-00 00:00:00', 'เตียงว่าง'),
(79, 203, 'Active', '2024-12-05 21:31:48', '0000-00-00 00:00:00', 'เตียงว่าง'),
(80, 203, 'Active', '2024-12-05 21:31:48', '2024-12-05 22:22:59', 'เตียงว่าง'),
(81, 301, 'Active', '2024-12-05 21:31:55', '0000-00-00 00:00:00', 'เตียงว่าง'),
(82, 301, 'Active', '2024-12-05 21:31:55', '0000-00-00 00:00:00', 'เตียงว่าง'),
(83, 301, 'Active', '2024-12-05 21:31:55', '0000-00-00 00:00:00', 'เตียงว่าง'),
(84, 301, 'Active', '2024-12-05 21:31:55', '0000-00-00 00:00:00', 'เตียงว่าง'),
(85, 302, 'Active', '2024-12-05 21:32:05', '0000-00-00 00:00:00', 'เตียงว่าง'),
(86, 303, 'Active', '2024-12-05 21:32:12', '2024-12-05 23:40:31', 'เตียงว่าง');

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
  `check_in_at` datetime DEFAULT NULL,
  `check_out_at` datetime DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `id_card` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `payment` varchar(20) DEFAULT NULL,
  `amountpeople` int(20) DEFAULT NULL,
  `room_type` varchar(100) DEFAULT NULL,
  `bed_id` varchar(20) DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `check_in_date`, `check_out_date`, `email`, `booker_name`, `phone`, `remark`, `room_number`, `check_in_at`, `check_out_at`, `gender`, `nationality`, `id_card`, `address`, `payment`, `amountpeople`, `room_type`, `bed_id`, `updateAt`) VALUES
(315, '2024-12-05', '2024-12-08', 'sukontaprapun@gmail.com', 'นาย102', '0943030401', 'นาย102', '102', '2024-12-05 21:41:49', NULL, 'ชาย', 'ไทย', '123', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', 1, 'ห้อง Private พัดลม', '74', NULL),
(316, '2024-12-05', '2024-12-13', 'sukontaprapun@gmail.com', 'นาย 102 คนที่ 2', '0943030401', 'นาย 102 คนที่ 2', '102', '2024-12-05 22:16:32', NULL, '', '', '', '3/15 No.1 Nonthaburi1 Road, Suan Yai Subdistrict, Muang District, Nonthaburi, 11000', 'เงินสด', 2, 'ห้อง Private พัดลม', '74', NULL),
(317, '2024-12-12', '0000-00-00', '', 'นาย 303 เตียง 1', '', '', '203', '2024-12-05 22:18:56', NULL, '', '', '', '', 'เงินสด', 0, 'ห้องพักรวม', '77', NULL),
(318, '2024-12-19', '2024-12-06', '', 'นาย 303 เตียง 1 คน 2', '', '', '203', '2024-12-05 22:19:27', NULL, '', '', '', '', 'เงินสด', 0, 'ห้องพักรวม', '77', '2024-12-05 22:35:43'),
(319, '2024-12-06', '0000-00-00', '', 'นาย 203 เตียง 4 คน 1', '', '', '203', '2024-12-05 22:21:08', NULL, '', '', '', '', 'เงินสด', 0, 'ห้องพักรวม', '80', NULL),
(320, '2024-12-21', '2024-12-28', '', 'นาย 203 เตียง 4 คน 2', '', '', '203', '2024-12-05 22:21:25', NULL, '', '', '', 'ที่อยู่', 'เงินสด', 0, 'ห้องพักรวม', '80', '2024-12-05 22:22:46'),
(321, '2024-12-07', '0000-00-00', '', 'นาย 102 คนที่ 3', '', '', '102', '2024-12-05 22:31:47', NULL, '', '', '', '', 'เงินสด', 0, 'ห้อง Private พัดลม', '74', NULL);

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
  `status` varchar(255) DEFAULT NULL,
  `createAT` datetime DEFAULT NULL,
  `updateAT` datetime DEFAULT NULL,
  `floor` int(10) DEFAULT NULL,
  `room_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `name`, `status`, `createAT`, `updateAT`, `floor`, `room_number`) VALUES
(177, 'ห้อง Private พัดลม', 'Active', '2024-12-05 21:26:53', NULL, 1, '102'),
(178, 'ห้อง Private พัดลม', 'Active', '2024-12-05 21:27:05', '2024-12-05 21:28:46', 2, '201'),
(179, 'ห้อง Private แอร์', 'Active', '2024-12-05 21:27:21', NULL, 2, '202'),
(180, 'ห้องพักรวม', 'Active', '2024-12-05 21:27:41', NULL, 2, '203'),
(181, 'ห้องพักรวม', 'Active', '2024-12-05 21:28:08', '2024-12-05 21:32:42', 3, '301'),
(182, 'ห้อง Private แอร์', 'Active', '2024-12-05 21:28:16', NULL, 3, '302'),
(183, 'ห้อง Private พัดลม', 'Active', '2024-12-05 21:28:24', '2024-12-05 23:03:39', 3, '303');

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
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

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
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

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
