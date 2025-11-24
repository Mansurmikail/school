-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2025 at 08:21 AM
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
-- Database: `startup`
--

-- --------------------------------------------------------

--
-- Table structure for table `hero_sliders`
--

CREATE TABLE `hero_sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hero_sliders`
--

INSERT INTO `hero_sliders` (`id`, `title`, `subtitle`, `image_url`, `link`) VALUES
(1, 'Excellent IT services for your success', 'Empower your business', 'assets/img/slider1.jpg', 'contact.html'),
(2, 'Modern IT solutions for growth', 'Innovate your business', 'assets/img/slider2.jpg', 'contact.html'),
(3, 'Technology that drives results', 'Build your future', 'assets/img/slider3.jpg', 'contact.html');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `number_c` varchar(5) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `number_c`, `icon`, `title`, `description`, `link`) VALUES
(1, '01', 'fas fa-mobile-alt', 'Mobile Development', 'We build powerful and user-friendly mobile applications that connect your business with customers anytime, anywhere.', 'services-details.html'),
(2, '02', 'fas fa-pencil-ruler', 'UI UX Design', 'Our design team creates modern and intuitive user interfaces that deliver smooth and engaging experiences.', 'services-details.html'),
(3, '03', 'fas fa-bullhorn', 'Digital Marketing', 'We help businesses grow their online presence through targeted digital strategies and impactful campaigns.', 'services-details.html'),
(4, '04', 'fas fa-code', 'Web Development', 'Our developers build fast, secure, and scalable websites tailored to your unique business needs.', 'services-details.html'),
(5, '05', 'far fa-thumbs-up', 'IT Management', 'We provide reliable IT management services to ensure your systems run efficiently and securely.', 'services-details.html'),
(6, '06', 'fas fa-chart-line', 'Business Security', 'Protect your organization with advanced business security solutions that safeguard data and operations.', 'services-details.html');

-- --------------------------------------------------------

--
-- Table structure for table `tlbstartup`
--

CREATE TABLE `tlbstartup` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_status` enum('user','admin','other') NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tlbstartup`
--

INSERT INTO `tlbstartup` (`user_id`, `username`, `email`, `user_status`, `password`) VALUES
(1, 'folawiyo', 'mikailmonsur@gmail.com', 'user', '7845aa64c60640996b26cd7f36755232'),
(2, 'Mukhtaar', 'mikail_monsur@yahoo.com', 'user', '6fb42da0e32e07b61c9f0251fe627a9c'),
(3, 'roneb', 'oluyiebunoluwa@gmail.com', 'user', '762f4e591dae55f068be13e46433d49b'),
(4, 'Samuel', 'samskidadeoluwa@gmail.com', 'user', '6b1e232296b7fe465692d788793bc046'),
(5, 'adeyinka13', 'ruqoyyah01@gmail.com', 'user', 'f5004246d5e3012b160a479cf062d8a4'),
(6, 'Mubasshiroh', 'mubasshirohmansur@gmail.com', 'user', 'a88e003e1c59a852f46dafe0c42f1314'),
(7, 'aishat', 'aaishatsalam3@gmail.com', 'user', 'fc783dcf249d80ff921e7b3e5f7fc72e'),
(8, 'testuser', 'testuser@gmail.com', 'user', '$2y$10$4z4AvUk3mrF94Uz7cpUnKOa0nn/pTci5qZ7JMRZxskbfDepnRR3mu'),
(9, 'Mukhtaar', 'mukhtaar1@gmail.com', 'user', '$2y$10$B.23VB7all8EOBgeI8/gje8qdaQTlAcPe20eRhE2qgpD7LjF1.n6S'),
(10, 'Mubasshiroh', 'mubasshiroh@gmail.com', 'admin', '$2y$10$xtKe7czsxLrN/16zvygtIeXL5HoArlRhVorcvVVPUTJzf3cyWUzv.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hero_sliders`
--
ALTER TABLE `hero_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlbstartup`
--
ALTER TABLE `tlbstartup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hero_sliders`
--
ALTER TABLE `hero_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tlbstartup`
--
ALTER TABLE `tlbstartup`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
