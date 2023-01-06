-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2023 at 06:23 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jahad_infos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_infos`
--

CREATE TABLE `cat_infos` (
  `cat_infos_p_idd` int NOT NULL,
  `cat_name` varchar(180) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `cat_icon` longtext CHARACTER SET utf16 COLLATE utf16_general_ci,
  `cat_des` varchar(200) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `activity` int DEFAULT NULL COMMENT '1 = Active, other inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `products_info`
--

CREATE TABLE `products_info` (
  `products_info_iddiii` int NOT NULL,
  `cat_iddi` varchar(10) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `sub_cat_ididdi` varchar(10) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `products_name` varchar(180) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `products_des` longtext CHARACTER SET utf16 COLLATE utf16_general_ci,
  `products_icon` longtext CHARACTER SET utf16 COLLATE utf16_general_ci,
  `qua1` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `qua2` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `qua3` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `qua4` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `qua5` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `check_active` int DEFAULT NULL COMMENT '1 = Active, other inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `sattings_info`
--

CREATE TABLE `sattings_info` (
  `sattings_info_iiiiid` int NOT NULL,
  `ven_name` varchar(180) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `ven_title` varchar(180) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `ven_icon` varchar(180) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `ven_addres` varchar(180) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `ven_des` varchar(200) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat_info`
--

CREATE TABLE `sub_cat_info` (
  `sub_cat_info_iidd` int NOT NULL,
  `sub_catname` varchar(180) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `sub_catdes` longtext CHARACTER SET utf16 COLLATE utf16_general_ci,
  `sub_cat_icon` longtext CHARACTER SET utf16 COLLATE utf16_general_ci,
  `cat_iiid` varchar(15) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `activity_check` int DEFAULT NULL COMMENT '1 = Active, other inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat_infos`
--
ALTER TABLE `cat_infos`
  ADD PRIMARY KEY (`cat_infos_p_idd`);

--
-- Indexes for table `products_info`
--
ALTER TABLE `products_info`
  ADD PRIMARY KEY (`products_info_iddiii`);

--
-- Indexes for table `sattings_info`
--
ALTER TABLE `sattings_info`
  ADD PRIMARY KEY (`sattings_info_iiiiid`);

--
-- Indexes for table `sub_cat_info`
--
ALTER TABLE `sub_cat_info`
  ADD PRIMARY KEY (`sub_cat_info_iidd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat_infos`
--
ALTER TABLE `cat_infos`
  MODIFY `cat_infos_p_idd` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_info`
--
ALTER TABLE `products_info`
  MODIFY `products_info_iddiii` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sattings_info`
--
ALTER TABLE `sattings_info`
  MODIFY `sattings_info_iiiiid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_cat_info`
--
ALTER TABLE `sub_cat_info`
  MODIFY `sub_cat_info_iidd` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
