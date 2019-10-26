-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 03:38 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `autobill`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`email`, `password`, `fname`, `lname`, `birthdate`, `address`, `phone`) VALUES
('autobill1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kabir', 'Hossain', '1996-12-01', 'Dhaka', '01999999999'),
('autobill2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Asif', 'Ali', '1996-01-01', 'Tangail', '01999999998'),
('autobill3@gmail.com', '7bccfde7714a1ebadf06c5f4cea752c1', 'Rahat', 'Hossain', '1994-11-11', 'Nakla', '01999999997'),
('autobill4@gmail.com', 'a9eb812238f753132652ae09963a05e9', 'Kabir', 'Mandal', '1993-02-22', 'Gazipur', '01999999996'),
('xdrazzak@gmail.com', 'e61e7de603852182385da5e907b4b232', 'hasan', 'abdullah', '1996-01-11', 'dhaka', '+8801910567511');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
