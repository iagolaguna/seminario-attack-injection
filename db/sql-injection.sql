-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Nov-2016 às 21:12
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql-injection`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(24) NOT NULL,
  `password` varchar(28) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'iago', 'iagolaguna', '12345678'),
(2, 'name', 'email', 'passwordA'),
(3, 'User0', 'user0@gmail.com', 'password0'),
(4, 'User1', 'user1@gmail.com', 'password1'),
(5, 'User2', 'user2@gmail.com', 'password2'),
(6, 'User3', 'user3@gmail.com', 'password3'),
(7, 'User4', 'user4@gmail.com', 'password4'),
(8, 'User5', 'user5@gmail.com', 'password5'),
(9, 'User6', 'user6@gmail.com', 'password6'),
(10, 'User7', 'user7@gmail.com', 'password7'),
(11, 'User8', 'user8@gmail.com', 'password8'),
(12, 'User9', 'user9@gmail.com', 'password9'),
(13, 'User10', 'user10@gmail.com', 'password10'),
(14, 'User11', 'user11@gmail.com', 'password11'),
(15, 'User12', 'user12@gmail.com', 'password12'),
(16, 'User13', 'user13@gmail.com', 'password13'),
(17, 'User14', 'user14@gmail.com', 'password14'),
(18, 'User15', 'user15@gmail.com', 'password15'),
(19, 'User16', 'user16@gmail.com', 'password16'),
(20, 'User17', 'user17@gmail.com', 'password17'),
(21, 'User18', 'user18@gmail.com', 'password18'),
(22, 'User19', 'user19@gmail.com', 'password19'),
(23, 'User20', 'user20@gmail.com', 'password20'),
(24, 'User21', 'user21@gmail.com', 'password21'),
(25, 'User22', 'user22@gmail.com', 'password22'),
(26, 'User23', 'user23@gmail.com', 'password23'),
(27, 'User24', 'user24@gmail.com', 'password24'),
(28, 'User25', 'user25@gmail.com', 'password25'),
(29, 'User26', 'user26@gmail.com', 'password26'),
(30, 'User27', 'user27@gmail.com', 'password27'),
(31, 'User28', 'user28@gmail.com', 'password28'),
(32, 'User29', 'user29@gmail.com', 'password29'),
(33, 'User30', 'user30@gmail.com', 'password30'),
(34, 'User31', 'user31@gmail.com', 'password31'),
(35, 'User32', 'user32@gmail.com', 'password32'),
(36, 'User33', 'user33@gmail.com', 'password33'),
(37, 'User34', 'user34@gmail.com', 'password34'),
(38, 'User35', 'user35@gmail.com', 'password35'),
(39, 'User36', 'user36@gmail.com', 'password36'),
(40, 'User37', 'user37@gmail.com', 'password37'),
(41, 'User38', 'user38@gmail.com', 'password38'),
(42, 'User39', 'user39@gmail.com', 'password39'),
(43, 'User40', 'user40@gmail.com', 'password40'),
(44, 'User41', 'user41@gmail.com', 'password41'),
(45, 'User42', 'user42@gmail.com', 'password42'),
(46, 'User43', 'user43@gmail.com', 'password43'),
(47, 'User44', 'user44@gmail.com', 'password44'),
(48, 'User45', 'user45@gmail.com', 'password45'),
(49, 'User46', 'user46@gmail.com', 'password46'),
(50, 'User47', 'user47@gmail.com', 'password47'),
(51, 'User48', 'user48@gmail.com', 'password48'),
(52, 'User49', 'user49@gmail.com', 'password49'),
(53, 'User0', 'user0@gmail.com', 'password0'),
(54, 'User1', 'user1@gmail.com', 'password1'),
(55, 'User2', 'user2@gmail.com', 'password2'),
(56, 'User3', 'user3@gmail.com', 'password3'),
(57, 'User4', 'user4@gmail.com', 'password4'),
(58, 'User5', 'user5@gmail.com', 'password5'),
(59, 'User6', 'user6@gmail.com', 'password6'),
(60, 'User7', 'user7@gmail.com', 'password7'),
(61, 'User8', 'user8@gmail.com', 'password8'),
(62, 'User9', 'user9@gmail.com', 'password9'),
(63, 'User10', 'user10@gmail.com', 'password10'),
(64, 'User11', 'user11@gmail.com', 'password11'),
(65, 'User12', 'user12@gmail.com', 'password12'),
(66, 'User13', 'user13@gmail.com', 'password13'),
(67, 'User14', 'user14@gmail.com', 'password14'),
(68, 'User15', 'user15@gmail.com', 'password15'),
(69, 'User16', 'user16@gmail.com', 'password16'),
(70, 'User17', 'user17@gmail.com', 'password17'),
(71, 'User18', 'user18@gmail.com', 'password18'),
(72, 'User19', 'user19@gmail.com', 'password19'),
(73, 'User20', 'user20@gmail.com', 'password20'),
(74, 'User21', 'user21@gmail.com', 'password21'),
(75, 'User22', 'user22@gmail.com', 'password22'),
(76, 'User23', 'user23@gmail.com', 'password23'),
(77, 'User24', 'user24@gmail.com', 'password24'),
(78, 'User25', 'user25@gmail.com', 'password25'),
(79, 'User26', 'user26@gmail.com', 'password26'),
(80, 'User27', 'user27@gmail.com', 'password27'),
(81, 'User28', 'user28@gmail.com', 'password28'),
(82, 'User29', 'user29@gmail.com', 'password29'),
(83, 'User30', 'user30@gmail.com', 'password30'),
(84, 'User31', 'user31@gmail.com', 'password31'),
(85, 'User32', 'user32@gmail.com', 'password32'),
(86, 'User33', 'user33@gmail.com', 'password33'),
(87, 'User34', 'user34@gmail.com', 'password34'),
(88, 'User35', 'user35@gmail.com', 'password35'),
(89, 'User36', 'user36@gmail.com', 'password36'),
(90, 'User37', 'user37@gmail.com', 'password37'),
(91, 'User38', 'user38@gmail.com', 'password38'),
(92, 'User39', 'user39@gmail.com', 'password39'),
(93, 'User40', 'user40@gmail.com', 'password40'),
(94, 'User41', 'user41@gmail.com', 'password41'),
(95, 'User42', 'user42@gmail.com', 'password42'),
(96, 'User43', 'user43@gmail.com', 'password43'),
(97, 'User44', 'user44@gmail.com', 'password44'),
(98, 'User45', 'user45@gmail.com', 'password45'),
(99, 'User46', 'user46@gmail.com', 'password46'),
(100, 'User47', 'user47@gmail.com', 'password47'),
(101, 'User48', 'user48@gmail.com', 'password48'),
(102, 'User49', 'user49@gmail.com', 'password49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
