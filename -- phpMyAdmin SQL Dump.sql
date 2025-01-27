-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 03:22 PM
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
-- Database: `scbs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_list`
--

CREATE TABLE `booking_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `facility_id` int(30) NOT NULL,
  `date` date DEFAULT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = Pending,\r\n1 = Confirmed,\r\n2 = Done,\r\n3 = Cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_list`
--

INSERT INTO `booking_list` (`id`, `ref_code`, `client_id`, `facility_id`, `date`, `time_from`, `time_to`, `status`, `date_created`, `date_updated`) VALUES
(1, '202501-00001', 3, 4, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 12:08:17', NULL),
(2, '202501-00002', 3, 3, '2025-01-31', '12:00:00', '00:00:00', 1, '2025-01-24 12:11:26', NULL),
(3, '202501-00003', 3, 3, '2025-01-24', '11:00:00', '00:00:00', 1, '2025-01-24 12:12:25', NULL),
(4, '202501-00004', 3, 3, '2025-01-24', '11:00:00', '00:00:00', 1, '2025-01-24 12:12:33', NULL),
(5, '202501-00005', 3, 3, '2025-01-24', '11:00:00', '00:00:00', 1, '2025-01-24 12:12:51', NULL),
(6, '202501-00006', 3, 3, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 12:16:11', NULL),
(7, '202501-00007', 3, 2, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 12:16:44', NULL),
(8, '202501-00008', 3, 1, '2025-01-24', '11:00:00', '00:00:00', 1, '2025-01-24 12:19:06', NULL),
(9, '202501-00009', 3, 4, '2025-01-24', '11:00:00', '00:00:00', 1, '2025-01-24 12:21:23', NULL),
(10, '202501-00010', 3, 3, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 12:22:55', NULL),
(11, '202501-00011', 3, 3, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 12:22:58', NULL),
(12, '202501-00012', 3, 3, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 12:23:10', NULL),
(13, '202501-00013', 3, 3, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 12:23:20', NULL),
(14, '202501-00014', 3, 3, '2025-01-24', '01:00:00', '00:00:00', 1, '2025-01-24 12:27:47', NULL),
(15, '202501-00015', 3, 3, '2025-01-24', '02:00:00', '00:00:00', 1, '2025-01-24 12:29:20', NULL),
(16, '202501-00016', 3, 3, '2025-01-24', '10:00:00', '00:00:00', 1, '2025-01-24 12:32:51', NULL),
(17, '202501-00017', 3, 3, '2025-01-24', '11:00:00', '00:00:00', 1, '2025-01-24 12:42:49', NULL),
(18, '202501-00018', 3, 4, '2025-01-24', '22:00:00', '00:00:00', 1, '2025-01-24 12:44:14', NULL),
(19, '202501-00019', 3, 3, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 12:47:08', NULL),
(20, '202501-00020', 3, 4, '2025-01-24', '21:00:00', '00:00:00', 1, '2025-01-24 12:47:31', NULL),
(21, '202501-00021', 3, 2, '2025-01-24', '23:00:00', '00:00:00', 1, '2025-01-24 16:53:18', NULL),
(22, '202501-00022', 3, 1, '2025-01-24', '20:00:00', '00:00:00', 1, '2025-01-24 16:54:18', NULL),
(23, '202501-00023', 3, 4, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 16:54:53', NULL),
(24, '202501-00024', 3, 1, '2025-01-24', '19:00:00', '00:00:00', 1, '2025-01-24 16:55:02', NULL),
(25, '202501-00025', 3, 3, '2025-01-24', '23:00:00', '00:00:00', 1, '2025-01-24 16:55:14', NULL),
(26, '202501-00026', 3, 2, '2025-01-24', '11:00:00', '00:00:00', 1, '2025-01-24 18:00:29', NULL),
(27, '202501-00027', 3, 1, '2025-01-24', '19:00:00', '00:00:00', 1, '2025-01-24 18:01:32', NULL),
(28, '202501-00028', 3, 1, '2025-01-24', '16:00:00', '00:00:00', 1, '2025-01-24 18:22:13', NULL),
(29, '202501-00029', 3, 2, '2025-01-24', '09:00:00', '00:00:00', 1, '2025-01-24 18:22:29', NULL),
(30, '202501-00030', 3, 1, '2025-01-24', '23:00:00', '00:00:00', 1, '2025-01-24 18:22:43', NULL),
(31, '202501-00031', 3, 2, '2025-01-24', '15:00:00', '00:00:00', 1, '2025-01-24 18:39:39', NULL),
(32, '202501-00032', 3, 1, '2025-01-24', '19:00:00', '00:00:00', 1, '2025-01-24 18:40:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'PickleBall', 'PickleBall Facility', 0, 1, '2022-03-23 10:34:53', '2025-01-24 17:58:01'),
(2, 'Badminton', 'Badminton Court', 0, 0, '2022-03-23 10:35:12', '2025-01-24 17:58:09'),
(3, 'Tennis Court', 'Tennis Court', 0, 0, '2022-03-23 10:35:32', '2025-01-24 17:58:12'),
(4, 'Football', 'Football Field', 0, 0, '2022-03-23 10:35:46', '2025-01-24 17:58:17'),
(5, 'Volleyball', 'Volleyball Court', 0, 0, '2022-03-23 10:36:08', '2025-01-24 17:58:20'),
(6, 'Baseball', 'Baseball Field', 0, 0, '2022-03-23 10:36:42', '2025-01-24 17:58:24'),
(7, 'Sample 101', 'This is a sample Facility Category Only', 0, 0, '2022-03-23 15:26:12', '2025-01-24 17:58:27'),
(8, 'Sample 103', 'Test', 1, 0, '2022-03-23 15:26:42', '2022-03-23 15:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `image_path`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'Mark', 'D', 'Male', '', '09123456789', 'Sample Address', 'mcooper@sample.com', 'c7162ff89c647f444fcaa5c635dac8c3', 'uploads/clients/1.png?v=1648008107', 1, 0, '2022-03-23 12:01:47', '2022-03-23 12:01:47'),
(2, 'Samantha', 'C', 'Miller', 'Male', '09456789123', 'Sample Address only', 'sam23@gmail.com', '56fafa8964024efa410773781a5f9e93', 'uploads/clients/2.png?v=1648021231', 1, 0, '2022-03-23 15:40:31', '2022-03-23 15:44:07'),
(3, 'Divyansh', '', 'Surana', 'Male', '8529081395', 'Block 6', 'divyanshsurana0621@gmail.com', '900150983cd24fb0d6963f7d28e17f72', 'uploads/clients/3.png?v=1737703444', 1, 0, '2025-01-23 16:32:20', '2025-01-24 12:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `facility_list`
--

CREATE TABLE `facility_list` (
  `id` int(30) NOT NULL,
  `facility_code` varchar(100) NOT NULL,
  `category_id` int(30) NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facility_list`
--

INSERT INTO `facility_list` (`id`, `facility_code`, `category_id`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`, `name`, `description`, `price`) VALUES
(1, '202203-00001', 1, 'https://plus.unsplash.com/premium_photo-1709932754766-92fb73829f76?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGlja2xlYmFsbCUyMGNvdXJ0fGVufDB8fDB8fHww', 1, 0, '2022-03-23 11:07:02', '2025-01-24 17:49:51', 'Indoor PickleBall Court', 'Premium Pickleball Court\nExperience the ultimate game of pickleball with our premium courts, designed for players who seek the best. Our premium courts offer:\n\nTop-Quality Materials: Constructed with high-grade, durable surfaces to ensure smooth play and enhanced performance.\nAdvanced Shock Absorption: Provides comfort to reduce strain on joints and ensure a safer playing experience.\nSuperior Lighting: High-intensity LED lighting for excellent visibility during evening or night matches.\nProfessional Dimensions: Adheres to international standards for tournaments and serious gameplay.\nWeather-Resistant Coating: Protects against rain, UV rays, and wear, ensuring longevity and year-round usability.\nAdditional Amenities: Premium courts come with features like spectator seating, shaded areas, and court-side storage for your gear.', 500.00),
(2, '202203-00002', 1, 'https://img.freepik.com/premium-photo/bird39s-eye-view-pickleball-courts-illuminated-with-bluegreen-lighting-trees-background-concept-sports-pickleball-night-photography-landscape-lighting-effects_864588-295551.jpg', 1, 0, '2022-03-23 11:44:34', '2025-01-24 18:42:37', 'PickleBall Premium Court', 'The PickleBall Premium Court offers an exceptional playing experience for all skill levels. Built with high-quality materials, the court features a smooth, durable surface that ensures optimal ball bounce and grip. It is designed to meet official size regulations, providing a professional environment for both recreational and competitive play.\n\nKey Features:\n\nRegulation Size: Meets official court dimensions for fair, balanced play.\nDurable Surface: Designed for consistent performance and minimal wear.\nHigh-Quality Lighting: Provides bright, even illumination for evening play.\nSafety and Comfort: Cushioned flooring reduces joint strain, with padded boundaries for safety.\nProfessional Equipment: Equipped with top-grade nets and posts for consistent tension.\nWeather-Resistant: The court withstands diverse weather conditions without damage.\nConvenient Amenities: Includes restrooms, seating for spectators, and parking space.\nThe PickleBall Premium Court offers the perfect space for casual fun or competitive play, making it an ideal choice for enthusiasts looking for quality and comfort.', 350.00),
(3, '202203-00003', 4, 'uploads/facility/3.png?v=1648020817', 0, 1, '2022-03-23 11:45:24', '2025-01-24 17:59:48', 'PickleBall', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Integer ut congue eros. Nullam non rutrum leo. Vestibulum sollicitudin ac erat sed porta. Donec id neque a libero lacinia ullamcorper vitae quis lorem. In bibendum sodales nunc at viverra. Proin vel ultricies felis, id posuere augue. Donec euismod purus ullamcorper, facilisis nisi non, fringilla arcu. Vivamus enim sem, suscipit sit amet turpis sed, interdum lobortis magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pharetra sapien quis dui auctor suscipit.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Nullam in convallis quam. Nulla facilisi. In erat ipsum, convallis sed diam vitae, commodo maximus dui. Vestibulum gravida elementum euismod. Maecenas et viverra enim. Quisque tempus eleifend convallis. Nunc sit amet sem nisi.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Quisque tempus nunc felis, ac viverra leo facilisis at. In hac habitasse platea dictumst. Etiam dapibus tortor ligula, sit amet tempus tellus elementum at. Praesent pharetra justo ut est volutpat tempus. Ut tincidunt, neque sed egestas ullamcorper, tortor odio suscipit mi, ac dapibus ligula dolor eu lectus. Vestibulum placerat vulputate elit id fringilla. Mauris diam sapien, commodo et turpis consectetur, porta sagittis turpis. Etiam gravida ullamcorper lacus, eget pharetra arcu consectetur eu. Aliquam at laoreet orci. Sed vel posuere leo. Integer ut imperdiet ipsum. Proin tincidunt mollis orci, ac porttitor nulla tempus a. Nullam ut ipsum odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Nam condimentum pulvinar turpis, sit amet pharetra purus tincidunt sit amet. Quisque imperdiet dignissim luctus. Nam id odio sit amet odio venenatis tincidunt. Vivamus vel porttitor nunc. Vestibulum vel rutrum nulla. Donec interdum lectus vitae nulla consectetur luctus. Integer eu hendrerit odio, non porta velit. Vestibulum dapibus mauris arcu, eget imperdiet purus facilisis quis. Duis sit amet erat et metus finibus blandit. Duis scelerisque sit amet velit sed ultrices. Nunc facilisis, dolor non fringilla congue, massa odio facilisis justo, vel convallis sem nunc non dolor. Suspendisse ac libero sodales, ullamcorper diam a, consectetur augue. Integer ultrices turpis quis enim blandit bibendum. Donec congue porttitor ligula. Duis quis placerat urna, ac feugiat augue. Vestibulum justo risus, dignissim et massa sagittis, mollis interdum metus.</p>', 500.00),
(4, '202203-00004', 2, 'uploads/facility/4.png?v=1648020754', 0, 1, '2022-03-23 15:28:01', '2025-01-24 17:59:37', 'Single Court for Badminton', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Aliquam eu libero pharetra, lobortis quam eu, efficitur arcu. Suspendisse sed metus varius, consectetur tortor quis, pretium ipsum. Fusce a augue eget ipsum cursus varius. Maecenas ac libero quis sem aliquam fringilla. Phasellus semper rutrum libero sed dapibus. Maecenas euismod ullamcorper massa, sit amet sollicitudin sem elementum non. Curabitur quis dapibus sem, vitae posuere enim. Integer non iaculis nisi. Donec tristique tincidunt nisi dapibus vehicula. Fusce sit amet vulputate ante. Sed porttitor eros augue, vel dictum nulla iaculis sed. Aliquam finibus at elit sit amet feugiat. Curabitur pretium id nibh dignissim accumsan.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Aliquam a finibus eros. Etiam ac diam sapien. Integer quis hendrerit nibh, sed volutpat metus. Quisque dapibus finibus fermentum. Mauris facilisis, nibh ac placerat euismod, metus felis efficitur tortor, sed gravida quam nisi id elit. Phasellus vehicula ex ligula. Quisque blandit eleifend orci, at ultricies ligula pellentesque in. Nullam fermentum magna justo, id scelerisque ligula aliquam maximus. Nam varius nulla ut libero semper rutrum. Pellentesque tellus arcu, scelerisque non aliquet quis, aliquam sit amet felis. Ut commodo odio vitae libero mollis, malesuada congue nisi feugiat. Nunc varius, felis eu vestibulum lobortis, quam nisi consectetur elit, nec gravida turpis libero vitae leo. Nulla quam ex, mollis in nisi sit amet, egestas volutpat arcu. Mauris porttitor at nisl ac dictum. Nunc at orci nec est placerat tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 850.00),
(5, '202203-00005', 6, NULL, 0, 1, '2022-03-23 15:33:48', '2025-01-24 17:57:29', 'test', '<p>test</p>', 123.00);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'SDS Smash & Dash'),
(6, 'short_name', 'SDS'),
(11, 'logo', 'uploads/system-logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/system-cover.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', 'abc', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2025-01-23 16:29:54'),
(2, 'John', 'Doe', 'johndoe', 'password123', 'default.png', '2025-01-24 10:00:00', 0, '2025-01-24 10:00:00', '2025-01-24 10:00:00'),
(10, 'Claire', 'Blake', 'cblake', 'abc', 'uploads/avatar-10.png?v=1648021481', NULL, 2, '2022-03-23 15:44:41', '2025-01-23 16:30:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cab_id` (`facility_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(100)) USING HASH;

--
-- Indexes for table `facility_list`
--
ALTER TABLE `facility_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `booking_list`
--
ALTER TABLE `booking_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facility_list`
--
ALTER TABLE `facility_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD CONSTRAINT `booking_list_ibfk_1` FOREIGN KEY (`facility_id`) REFERENCES `facility_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `facility_list`
--
ALTER TABLE `facility_list`
  ADD CONSTRAINT `facility_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
