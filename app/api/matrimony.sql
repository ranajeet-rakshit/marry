-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2017 at 05:02 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` varchar(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `created_for` varchar(15) NOT NULL,
  `age` varchar(10) NOT NULL,
  `height` varchar(15) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `sub_caste` varchar(20) NOT NULL,
  `mother_tongue` varchar(20) NOT NULL,
  `marital_status` varchar(15) NOT NULL,
  `have_children` varchar(15) NOT NULL,
  `last_login` date NOT NULL,
  `complexion` varchar(15) NOT NULL,
  `body_type` varchar(15) NOT NULL,
  `special_case` varchar(15) NOT NULL,
  `college_uni` varchar(35) NOT NULL,
  `highest_qual` varchar(25) NOT NULL,
  `field_of_study` varchar(25) NOT NULL,
  `employed_in` varchar(30) NOT NULL,
  `occupation` varchar(25) NOT NULL,
  `annual_income` varchar(25) NOT NULL,
  `date_of_birth` date NOT NULL,
  `father_occu` varchar(20) NOT NULL,
  `mother_occu` varchar(20) NOT NULL,
  `brothers` varchar(15) NOT NULL,
  `sisters` varchar(15) NOT NULL,
  `live_with_par` varchar(15) NOT NULL,
  `family_values` varchar(20) NOT NULL,
  `family_type` varchar(20) NOT NULL,
  `family_status` varchar(20) NOT NULL,
  `about_family` varchar(25) NOT NULL,
  `smoking` varchar(20) NOT NULL,
  `drinking` varchar(20) NOT NULL,
  `eating_habits` varchar(20) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(35) NOT NULL,
  `country` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fname`, `lname`) VALUES
(0, 'ISLAM AHAMAD', 'ISLAM', 'AHAMAD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
