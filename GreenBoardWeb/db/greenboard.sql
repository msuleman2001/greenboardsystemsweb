-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 08, 2017 at 11:44 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `greenboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE IF NOT EXISTS `admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `requiredsolution` varchar(1000) NOT NULL,
  `budget` int(11) DEFAULT NULL,
  `technologyrequired` varchar(500) DEFAULT NULL,
  `file` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `requiredsolution`, `budget`, `technologyrequired`, `file`) VALUES
(14, 'saqib', 'saqi@gmail.com', 'well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come well come ', 233, 'html,php', 'uploadfiles/abubakar.pdf'),
(15, 'aaaaaaa', 'mabubakar158@gmail.com', 'aaaaa', 23, 'dld,mas,', 'uploadfiles/as.pdf'),
(17, 'moin', 'moinjaveed@gmail.com', 'assssssssssssssssss aaaaaaadddddddddddddddddddddddd\r\nassssssssssssssssss aaaaaaadddddddddddddddddddddddd\r\nassssssssssssssssss aaaaaaaddddddddddddddddddddddddassssssssssssssssss aaaaaaaddddddddddddddddddddddddassssssssssssssssss aaaaaaaddddddddddddddddddddddddassssssssssssssssss aaaaaaaddddddddddddddddddddddddassssssssssssssssss aaaaaaadddddddddddddddddddddddd', 23, 'bb,vb,tb', 'uploadfiles/MuhammadAbuBakarResume_4.pdf'),
(25, 'adil', 'adil@gmail.com', 'need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.need some help.', 3456, 'asp.net', 'uploadfiles/Admission_Plan_Fall_2017_according_to_Academic_Council.pdf');
