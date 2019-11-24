-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2019 at 09:12 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dogbreeds`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dogstats`
--

DROP TABLE IF EXISTS `tbl_dogstats`;
CREATE TABLE IF NOT EXISTS `tbl_dogstats` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Breed` varchar(30) NOT NULL,
  `Size` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Personality1` varchar(20) NOT NULL,
  `Personality2` varchar(20) NOT NULL,
  `Personality3` varchar(20) NOT NULL,
  `Energy` varchar(30) NOT NULL,
  `Grooming` varchar(30) NOT NULL,
  `Training` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_dogstats`
--

INSERT INTO `tbl_dogstats` (`ID`, `Breed`, `Size`, `Category`, `Personality1`, `Personality2`, `Personality3`, `Energy`, `Grooming`, `Training`) VALUES
(1, 'Labrador Retriever', 'Large', 'Sporting', 'Friendly', 'Active', 'Outgoing', 'Lots of Activity', 'Weekly Brushing', 'Eager to Please'),
(2, 'German Shepherd', 'Large', 'Herding', 'Smart', 'Loyal', 'Courageous', 'Regular Excercise', 'Weekly Brushing', 'Eager to Please'),
(3, 'Golden Retriever', 'Large', 'Sporting', 'Smart', 'Loyal', 'Friendly', 'Lots of Activity', 'Weekly Brushing', 'Eager to Please'),
(4, 'French Bulldog', 'Small', 'Non-Sporting', 'Smart', 'Playful', 'Affectionate', 'Calm', 'Occasional Bath', 'Agreeable'),
(5, 'Bulldog', 'Medium', 'Non-Sporting', 'Friendly', 'Loyal', 'Courageous', 'Regular Exercise', '2-3x Week Brushing', 'Agreeable'),
(6, 'Beagle', 'Small', 'Hound', 'Curious', 'Affectionate', 'Friendly', 'Energetic', '2-3x Week Brushing', 'Agreeable'),
(7, 'Poodle', 'Medium', 'Non-Sporting', 'Smart', 'Loyal', 'Active', 'Regular Exercise', 'Specialty Grooming', 'Eager to Please'),
(8, 'Rottweiler', 'Large', 'Working', 'Affectionate', 'Loyal', 'Courageous', 'Regular Excercise', 'Weekly Brushing', 'Agreeable'),
(9, 'German Shorthaired Pointer', 'Medium', 'Sporting', 'Smart', 'Active', 'Loyal', 'Lots of Activity', 'Weekly Brushing', 'Eager to Please'),
(10, 'Yorkshire Terrier', 'Extra Small', 'Toy', 'Affectionate', 'Outgoing', 'Curious', 'Regular Exercise', 'Specialty Grooming', 'May Be Stubborn');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
