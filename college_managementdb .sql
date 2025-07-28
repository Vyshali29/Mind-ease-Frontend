-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2025 at 04:13 PM
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
-- Database: `college_managementdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `cover`, `heading`, `description`) VALUES
(27, '6884cd5de08c5_blog-1.png', 'Education Expo', '	Explore Opportunities, Shape Your Future Welcome to the Education Expo blog — your gateway to academic and career success. Stay updated with the latest news on national and international education fairs, top universities, new-age courses, scholarship opportunities, and expert advice from educators and industry leaders. Whether you\'re a student, parent, or professional looking to upskill, our blog offers insights, reviews, and tips to help you make confident educational decisions. Dive into campus highlights, admission processes, career trends, and real student experiences — all in one place.'),
(29, '6884d09787130_5.png', 'Tech expo', 'AI-Powered Everything: From smart homes to emotion-detecting robots, artificial intelligence stole the spotlight with its real-world applications Next-Gen Gadgets: Attendees got hands-on experience with foldable screens, wearable health tech, and ultra-light laptops that redefine portability. Sustainable Innovation: Green tech made a powerful statement — with solar-powered devices, eco-friendly packaging, and energy-efficient designs gaining traction. Metaverse & AR/VR Zones: A walk-through digital wonderland where virtual reality met real-world practicality, with immersive demos and mind-bending visuals.'),
(30, '6884d0b5d7ead_Untitled design.png', ' First Blog', 'This is my first blog post.'),
(31, '6884d0cef0e5c_3.png', 'blog', 'This is my first blog post.');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `project` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `contact`, `message`, `project`, `subject`) VALUES
(5, 'sport', 'cover1.jpg', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(7, 'sport', 'cover1.jpg', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(9, 'Meera', 'Meera@gmail.com', '9443443039', 'hi.', 'Travel tro', 'Bus route App'),
(10, 'sport', 'cover1@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(12, 'sport', 'jeyagokulraja@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(13, 'sport', 'jeyagokulraja@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(14, 'sport', 'jeyagokulraja@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(15, 'sport', 'jeyagokulraja@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(16, 'sport', 'rmeswarkarthick3@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(17, 'sport', 'prabhucsbs2004@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(18, 'sport', 'prabhucsbs2004@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(19, 'prabhu', 'prabhucsbs2004@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry'),
(20, 'prabhu', 'prabhucsbs2004@gmail.com', '12335343', 'This is my first blog post.', 'rain water harvesting', 'chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(0, 'admin@gmail.com', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `ratings` int(11) DEFAULT 0 CHECK (`ratings` between 0 and 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `image`, `address`, `content`, `ratings`) VALUES
(11, 'Prabhu', '6884e573c0946_png1.jpg', 'anna nagar', 'The academic environment is rigorous and well-structured. Most faculty members are highly knowledgeable and approachable. The curriculum is regularly updated with industry-relevant subjects and hands-on projects. Special lectures and workshops from industry experts are a huge plus.', 0),
(12, 'Eswar', '6884e5b2ada29_png2.jpg', 'Vandiyur', 'The college boasts a clean and well-maintained campus with modern infrastructure. Classrooms are equipped with smart boards, and labs are updated with the latest equipment. The library is spacious with a wide collection of academic resources and research papers.', 0),
(13, 'Harish', '6884e602c2d49_png3.jpg', 'Simmakkal', 'The college boasts a clean and well-maintained campus with modern infrastructure. Classrooms are equipped with smart boards, and labs are updated with the latest equipment. The library is spacious with a wide collection of academic resources and research papers.', 0),
(14, 'jeniffer', '6884e66cd9811_png4.jpg', 'Chennai', 'The academic structure at [Your College Name] is well-organized and aligned with modern industry standards. The curriculum is updated frequently to keep pace with technological advancements and changing industry needs.\n\nProfessors are highly qualified and bring both academic and practical experience to the classroom. They are approachable and encourage interactive sessions. Doubt-clearing sessions, internal assessments, and project-based learning make the concepts clearer and more applicable in real-world scenarios.\n\nAdditionally, guest lectures, webinars, and industrial visits provide exposure beyond textbooks. The college also emphasizes research and encourages students to publish papers, participate in hackathons, and contribute to innovation.', 0),
(16, 'jeniffer', '6885a95629548_png4.jpg', 'Chennai', 'The academic structure at [Your College Name] is well-organized and aligned with modern industry standards. The curriculum is updated frequently to keep pace with technological advancements and changing industry needs.\n\nProfessors are highly qualified and bring both academic and practical experience to the classroom. They are approachable and encourage interactive sessions. Doubt-clearing sessions, internal assessments, and project-based learning make the concepts clearer and more applicable in real-world scenarios.\n\nAdditionally, guest lectures, webinars, and industrial visits provide exposure beyond textbooks. The college also emphasizes research and encourages students to publish papers, participate in hackathons, and contribute to innovation.', 0),
(17, 'jeniffer', '6885b8fad4329_bad.jpg', 'Chennai', 'The academic structure at [Your College Name] is well-organized and aligned with modern industry standards. The curriculum is updated frequently to keep pace with technological advancements and changing industry needs.\n\nProfessors are highly qualified and bring both academic and practical experience to the classroom. They are approachable and encourage interactive sessions. Doubt-clearing sessions, internal assessments, and project-based learning make the concepts clearer and more applicable in real-world scenarios.\n\nAdditionally, guest lectures, webinars, and industrial visits provide exposure beyond textbooks. The college also emphasizes research and encourages students to publish papers, participate in hackathons, and contribute to innovation.', 0),
(18, 'Rahul', 'data:image/avif;base64,AAAAGGZ0eXBhdmlmAAAAAG1pZjFtaWFmAAAA3m1ldGEAAAAAAAAAIWhkbHIAAAAAAAAAAHBpY3QAAAAAAAAAAAAAAAAAAAAADnBpdG0AAAAAAAEAAAAeaWxvYwAAAABEAAABAAEAAAABAAAA/gADiv0AAAAjaWluZgAAAAAAAQAAABVpbmZlAgAAAAABAABhdjAxAAAAAAxpcmVmAAAAAAAAAFZpcHJwAAAAOGlw', 'chennai', 'sdbghg ngb ', 0),
(20, 'jeniffer', '6885da734ee68_bad.jpg', 'Chennai', 'The academic structure at [Your College Name] is well-organized and aligned with modern industry standards. The curriculum is updated frequently to keep pace with technological advancements and changing industry needs.\n\nProfessors are highly qualified and bring both academic and practical experience to the classroom. They are approachable and encourage interactive sessions. Doubt-clearing sessions, internal assessments, and project-based learning make the concepts clearer and more applicable in real-world scenarios.\n\nAdditionally, guest lectures, webinars, and industrial visits provide exposure beyond textbooks. The college also emphasizes research and encourages students to publish papers, participate in hackathons, and contribute to innovation.', 0),
(25, NULL, '3', 'jeniffer', 'Chennai', 0),
(26, 'jeniffer', '6885e6f976a97_bad.jpg', 'Chennai', 'The academic structure at [Your College Name] is well-organized and aligned with modern industry standards. The curriculum is updated frequently to keep pace with technological advancements and changing industry needs.\n\nProfessors are highly qualified and bring both academic and practical experience to the classroom. They are approachable and encourage interactive sessions. Doubt-clearing sessions, internal assessments, and project-based learning make the concepts clearer and more applicable in real-world scenarios.\n\nAdditionally, guest lectures, webinars, and industrial visits provide exposure beyond textbooks. The college also emphasizes research and encourages students to publish papers, participate in hackathons, and contribute to innovation.', 3),
(27, 'jeniffer', '6885e744f03ad_bad.jpg', 'Chennai', 'The academic structure at [Your College Name] is well-organized and aligned with modern industry standards. The curriculum is updated frequently to keep pace with technological advancements and changing industry needs.\n\nProfessors are highly qualified and bring both academic and practical experience to the classroom. They are approachable and encourage interactive sessions. Doubt-clearing sessions, internal assessments, and project-based learning make the concepts clearer and more applicable in real-world scenarios.\n\nAdditionally, guest lectures, webinars, and industrial visits provide exposure beyond textbooks. The college also emphasizes research and encourages students to publish papers, participate in hackathons, and contribute to innovation.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `subject`, `college`, `image`) VALUES
(78, 'Eswar', 'Chemistry', 'SIT', '6884d1533585a_1.png'),
(79, 'Ravi', 'Physics', 'sit', '6884d160b4800_2.png'),
(80, 'Ravi', 'Physics', 'sit', ''),
(82, 'Prabhu', 'Maths', 'SIT', NULL),
(91, 'ramesh', 'Physics', 'sit', '6885a98eeefac_wallpaper.jpg'),
(92, 'gokul', 'Physics', 'SIT', '6885bacbabdfc_basket.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
