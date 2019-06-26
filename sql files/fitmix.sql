-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 02:53 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitmix1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`` PROCEDURE `customer_package` ()  SELECT cus_imports.customer_name , cus_imports.customer_email , cus_imports.customer_mobileno , cus_imports.gender , cus_imports.created_on , packages.dietitian_name , packages.package_name FROM cus_imports INNER JOIN packages ON cus_imports.package_code = packages.package_code$$$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_diets`
--

CREATE TABLE `admin_diets` (
  `admindiet_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `energy` float NOT NULL,
  `carbs` float NOT NULL,
  `proteins` float NOT NULL,
  `fats` float NOT NULL,
  `fibres` float NOT NULL,
  `cereals` float NOT NULL,
  `fat` float NOT NULL,
  `fruits` float NOT NULL,
  `milk_prods` float NOT NULL,
  `pulses` float NOT NULL,
  `sugars` float NOT NULL,
  `vegetable` float NOT NULL,
  `water` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_signups`
--

CREATE TABLE `customer_signups` (
  `customer_id` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_contactno` bigint(12) NOT NULL,
  `city` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `height` decimal(10,0) NOT NULL,
  `weight` decimal(10,0) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `dietary_habits` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_signups`
--

INSERT INTO `customer_signups` (`customer_id`, `customer_name`, `customer_email`, `customer_contactno`, `city`, `birth_date`, `gender`, `height`, `weight`, `activity`, `dietary_habits`) VALUES
('FMC001', '', 'ggj.nivas.18@gmail.com', 8790988099, 'Bapatla', '1998-11-08', 'Male', '172', '80', 'sedentary', 'eggetarian');

-- --------------------------------------------------------

--
-- Table structure for table `cus_groups`
--

CREATE TABLE `cus_groups` (
  `group_code` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `dietitian_name` varchar(255) NOT NULL,
  `isActive` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cus_groups`
--

INSERT INTO `cus_groups` (`group_code`, `group_name`, `dietitian_name`, `isActive`) VALUES
('GROUP1', 'NNC MALE VEGETARIAN', 'Neha Nutrition Center', 'TRUE'),
('GROUP2', 'NNC FEMALLE VEGETARIAN', 'Neha Nutrition Center', 'TRUE'),
('GROUP3', 'NNC male eggetarian', 'Neha Nutrition Center', 'TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `cus_imports`
--

CREATE TABLE `cus_imports` (
  `cusimport_id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `isIndividual` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `package_code` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_mobileno` bigint(12) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dietitians`
--

CREATE TABLE `dietitians` (
  `dietitian_id` int(255) NOT NULL,
  `dietitian_name` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `dietitian_email` varchar(255) NOT NULL,
  `dietitian_contactno` bigint(12) NOT NULL,
  `upload_photo` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` int(6) NOT NULL,
  `dietitian_isActive` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dietitians`
--

INSERT INTO `dietitians` (`dietitian_id`, `dietitian_name`, `qualification`, `dietitian_email`, `dietitian_contactno`, `upload_photo`, `description`, `address1`, `address2`, `city`, `state`, `pincode`, `dietitian_isActive`) VALUES
(1, 'Fitmix', 'Reebok Certified', 'fitmix.wellness@gmail.com', 7567999917, 'asdf', 'dietitian reebok certified', 'bodakdev', 'iskon temple', 'ahmedabad', 'Gujrat', 382007, 'TRUE'),
(2, 'Neha Nutrition Center', 'Reebok Certified', 'niharnshah@gmail.com', 9664927237, 'sdfdf', 'dietitian reebok certified', 'bodakdev', 'iskon temple', 'ahmedabad', 'Gujrat', 382007, 'TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `diet_details`
--

CREATE TABLE `diet_details` (
  `dietdetails_id` bigint(100) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `diet_type` varchar(255) NOT NULL,
  `recipe_name` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `energy` float NOT NULL,
  `carbs` float NOT NULL,
  `proteins` float NOT NULL,
  `fats` float NOT NULL,
  `fibres` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `secret` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `ingrediant_type` varchar(255) NOT NULL,
  `food_group` varchar(255) NOT NULL,
  `food_code` varchar(255) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `guju_name` varchar(255) NOT NULL,
  `quantity` float NOT NULL,
  `one_exchange` float NOT NULL,
  `energy_kj` float NOT NULL,
  `energy_kcal` float NOT NULL,
  `gi_value` float NOT NULL,
  `gl_value` float NOT NULL,
  `carbohydrate` float NOT NULL,
  `protein` float NOT NULL,
  `total_fibre` float NOT NULL,
  `solublf` float NOT NULL,
  `in_solublf` float NOT NULL,
  `invisible_totalfat` float NOT NULL,
  `visiblefat` float NOT NULL,
  `thiamine` float NOT NULL,
  `riboflavin` float NOT NULL,
  `niacin` float NOT NULL,
  `biotin` float NOT NULL,
  `folates` float NOT NULL,
  `ascorbic_Acid` float NOT NULL,
  `vitamin_d2d3` float NOT NULL,
  `calcium` float NOT NULL,
  `phosphorous` float NOT NULL,
  `iron` float NOT NULL,
  `sodium` float NOT NULL,
  `potassium` float NOT NULL,
  `zinc` float NOT NULL,
  `magnesium` float NOT NULL,
  `sfa` float NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `ingrediant_type`, `food_group`, `food_code`, `food_name`, `guju_name`, `quantity`, `one_exchange`, `energy_kj`, `energy_kcal`, `gi_value`, `gl_value`, `carbohydrate`, `protein`, `total_fibre`, `solublf`, `in_solublf`, `invisible_totalfat`, `visiblefat`, `thiamine`, `riboflavin`, `niacin`, `biotin`, `folates`, `ascorbic_Acid`, `vitamin_d2d3`, `calcium`, `phosphorous`, `iron`, `sodium`, `potassium`, `zinc`, `magnesium`, `sfa`, `isActive`) VALUES
(1, 'Cereal', 'Cereal', 'A001', 'Amaranth seed , black', 'Amaranth seed, black(rajagaro)', 100, 20, 1490, 356.11, 35, 20.99, 59.98, 14.59, 7.02, 1.26, 5.76, 5.74, 0, 0.04, 0.04, 0.45, 1.92, 27.44, 0, 58.67, 181, 374, 9.33, 2.7, 433, 2.66, 325, 0, 1),
(2, 'Cereal', 'Cereal', 'A002', 'Amaranth seed , pale brown ', 'Amaranth seed, brown(rajagaro)', 100, 20, 1489, 355.88, 35, 21.511, 61.46, 13.27, 7.47, 1.67, 5.8, 5.56, 0, 0.04, 0.04, 0.52, 1.87, 24.65, 0, 53.98, 162, 412, 8.02, 2.81, 413, 2.52, 270, 0, 1),
(3, 'Cereal', 'Cereal', 'A003', 'Bajra', 'Bajra(bajari)', 100, 20, 1456, 347.99, 71, 43.86, 61.78, 10.96, 11.49, 2.34, 9.14, 5.43, 0, 0.25, 0.2, 0.86, 0.64, 36.11, 0, 5.65, 27.35, 289, 6.42, 4.11, 365, 2.76, 124, 0, 1),
(4, 'Cereal', 'Cereal', 'A004', 'Barley', 'Barley(jav)', 100, 20, 1321, 315.727, 25, 15.323, 61.29, 10.94, 15.64, 5.66, 9.98, 1.3, 0, 0.36, 0.18, 2.84, 2.38, 31.58, 0, 0, 28.64, 178, 1.56, 0, 268, 1.5, 48.97, 0, 1),
(5, 'Cereal', 'Cereal', 'A005', 'Jowar', 'Jowar(jowar)', 100, 20, 1398, 334.13, 62, 41.962, 67.68, 9.97, 10.22, 1.73, 8.49, 1.73, 0, 0.35, 0.14, 2.1, 0.7, 39.42, 0, 3.96, 27.6, 274, 3.95, 5.42, 328, 1.96, 133, 0, 1),
(6, 'Cereal', 'Cereal', 'A006', 'Maize , dry', 'Maize, dry(makai)', 100, 20, 1398, 334.13, 59, 38.214, 64.77, 8.8, 12.24, 0.94, 11.29, 3.77, 0, 0.33, 0.09, 2.69, 0.49, 25.81, 0, 33.6, 8.91, 279, 2.49, 4.44, 291, 2.27, 145, 0, 1),
(7, 'Cereal', 'Cereal', 'A007', 'Maize , render , local', 'Maize, local(lili makai)', 100, 20, 502, 119.981, 59, 13.387, 22.69, 3.57, 3.67, 0.43, 3.23, 1.4, 0, 0.17, 0.12, 1.13, 1.7, 62.96, 4.26, 42.34, 6.35, 163, 0.71, 2.24, 167, 0.97, 47.62, 0, 1),
(8, 'Cereal', 'Cereal', 'A008', 'Maize , tender , sweet ', 'Maize , sweet(lili makai)', 100, 20, 405, 96.797, 62, 10.18, 16.42, 4.16, 3.3, 0.59, 2.71, 1.35, 0, 0.1, 0.14, 1.14, 1.91, 59.71, 5.72, 16.94, 6.37, 121, 0.54, 2.23, 297, 0.77, 36.51, 0, 1),
(9, 'Cereal', 'Cereal', 'A009', 'Quinoa', 'Quinoa(quinoa)', 100, 20, 1374, 328.394, 40, 21.46, 53.65, 13.11, 14.66, 4.46, 10.21, 5.5, 0, 0.83, 0.22, 1.7, 0.62, 173, 0, 0, 198, 212, 7.51, 4.5, 474, 3.31, 119, 0, 1),
(10, 'Cereal', 'Cereal', 'A010', 'Ragi', 'Ragi(ragi)', 100, 20, 1342, 320.746, 61, 40.76, 66.82, 7.16, 11.18, 1.67, 9.51, 1.92, 0, 0.37, 0.17, 1.34, 0.88, 34.66, 0, 41.46, 364, 210, 4.62, 4.75, 443, 2.53, 146, 0, 1),
(11, 'Cereal', 'Cereal', 'A011', 'Rice flakes', 'Rice flakes(poha)', 100, 20, 1480, 353.728, 87, 66.773, 76.75, 7.44, 3.46, 0.81, 2.65, 1.14, 0, 0.12, 0.04, 1.6, 0.39, 8.46, 0, 0, 9.19, 195, 4.46, 2.58, 148, 1.49, 77.92, 0, 1),
(12, 'Cereal', 'Cereal', 'A012', 'Rice puffed', 'Rice puffed(mamra)', 100, 20, 1514, 361.855, 87, 67.582, 77.68, 7.47, 2.56, 0.8, 1.76, 1.62, 0, 0.11, 0.04, 1.87, 1.26, 0, 0, 0, 15.09, 152, 4.55, 3.69, 140, 1.45, 64.59, 0, 1),
(13, 'Cereal', 'Cereal', 'A013', 'Rice , raw , brown', 'Rice, raw, brown(raw rice brown)', 100, 20, 1480, 353.728, 55, 41.14, 74.8, 9.16, 4.43, 0.82, 3.6, 1.24, 0, 0.27, 0.06, 3.4, 1.38, 11.51, 0, 0, 10.93, 267, 1.02, 3.64, 199, 1.68, 93.91, 0, 1),
(14, 'Cereal', 'Cereal', 'A014', 'Rice , parboiled , milled', 'Rice, parboiled, milled(boiled rice)', 100, 20, 1471, 351.577, 69, 53.24, 77.16, 7.81, 3.74, 0.76, 2.98, 0.55, 0, 0.17, 0.06, 2.51, 0.31, 9.75, 0, 0, 8.11, 140, 0.72, 3.16, 142, 1.08, 26.72, 0, 1),
(15, 'Cereal', 'Cereal', 'A015', 'Rice , raw . milled', 'Rice, raw, milled(chokha)', 100, 20, 1491, 356.358, 56, 43.814, 78.24, 7.94, 2.81, 0.82, 1.99, 0.52, 0, 0.05, 0.05, 1.69, 0.6, 9.32, 0, 0, 7.49, 96, 0.65, 2.34, 108, 1.21, 19.3, 0, 1),
(16, 'Cereal', 'Cereal', 'A016', 'Samai', 'Samai(kuri)', 100, 20, 1449, 346.319, 52, 34.086, 65.55, 10.13, 7.72, 2.27, 5.45, 3.89, 0, 0.26, 0.05, 1.29, 6.03, 36.2, 0, 3.75, 16.06, 130, 1.26, 4.77, 105, 1.82, 91.41, 0, 1),
(17, 'Cereal', 'Cereal', 'A017', 'Varagu', 'Varagu(syama)', 100, 20, 1388, 331.74, 68, 45.009, 66.19, 8.92, 6.39, 2.11, 4.29, 2.55, 0, 0.29, 0.2, 1.49, 1.49, 39.49, 0, 0, 15.27, 101, 2.34, 3.35, 94, 1.65, 122, 0, 1),
(18, 'Cereal', 'Cereal', 'A018', 'Wheat flour , refined', 'Wheat flour, refined(mendo)', 100, 20, 1472, 351.816, 85, 63.13, 74.27, 10.36, 2.76, 0.62, 2.14, 0.76, 0, 0.15, 0.06, 0.77, 0.58, 16.25, 0, 6.73, 20.4, 110, 1.77, 1.54, 148, 0.88, 30.69, 0, 1),
(19, 'Cereal', 'Cereal', 'A019', 'Wheat flour , atta', 'Wheat flour, atta(gehun atta)', 100, 20, 1340, 320.268, 40, 25.668, 64.17, 10.57, 11.36, 1.63, 9.73, 1.53, 0, 0.42, 0.15, 2.37, 0.76, 29.22, 0, 13.43, 30.94, 315, 4.1, 2.04, 311, 2.85, 125, 0, 1),
(20, 'Cereal', 'Cereal', 'A020', 'Wheat , whole', 'Wheat, whole(gehun)', 100, 20, 1347, 321.941, 42, 27.182, 64.72, 10.59, 11.23, 1.6, 9.63, 1.47, 0, 0.46, 0.15, 2.68, 1.03, 30.09, 0, 17.49, 39.36, 315, 3.97, 2.5, 366, 2.85, 125, 0, 1),
(21, 'Cereal', 'Cereal', 'A021', 'Wheat , bulgur', 'Wheat, bulgur(daliya)', 100, 20, 1430, 341.778, 47, 32.458, 69.06, 10.84, 8.81, 2.25, 6.56, 1.45, 0, 0.24, 0.12, 2.05, 2.5, 26.3, 0, 6.27, 27.09, 245, 3.86, 2.09, 330, 1.97, 116, 0, 1),
(22, 'Cereal', 'Cereal', 'A022', 'Wheat , semolina', 'Wheat, semolina(soji, ravo)', 100, 20, 1396, 333.652, 55, 37.637, 68.43, 11.38, 9.72, 1.55, 8.16, 0.74, 0, 0.29, 0.04, 1.13, 0.44, 25.68, 0, 8.19, 29.38, 119, 2.98, 2.31, 284, 2.13, 37.89, 0, 1),
(23, 'Cereal', 'Cereal', 'A023', 'Wheat , vermicelli', 'Wheat, vermicelli(sewai, gehun ni sev)', 100, 20, 1392, 332.696, 35, 24.637, 70.39, 9.7, 9.28, 1.75, 7.53, 0.45, 0, 0.13, 0.01, 0.86, 2, 14.35, 0, 4.06, 19.42, 99, 2.02, 2.71, 163, 0.83, 34.18, 0, 1),
(24, 'Cereal', 'Cereal', 'A024', 'Wheat , vermicelli , roasted', 'Wheat, vermicelli, roasted(sewai, gehun ni sekeli sev)', 100, 20, 1423, 340.105, 35, 24.997, 71.42, 10.37, 9.55, 1.76, 7.79, 0.49, 0, 0.12, 0.01, 0.67, 1.34, 13.21, 0, 3.21, 22.63, 107, 2.09, 3.43, 177, 0.88, 39.03, 0, 1),
(25, 'Grain', 'pulses and legumes', 'B001', 'Bengal gram , dal', 'Bengal gram, dal(chana ni dal)', 100, 30, 1377, 329.111, 11, 5.139, 46.72, 21.55, 15.15, 2.48, 12.67, 5.31, 0, 0.35, 0.15, 1.87, 0.81, 182, 0, 1.75, 46.32, 325, 6.08, 20.83, 957, 3.65, 118, 0, 1),
(26, 'Grain', 'pulses and legumes', 'B002', 'Bengal gram , whole', 'Bengal gram, whole(chana) ', 100, 30, 1201, 287.046, 11, 4.352, 39.56, 18.77, 25.22, 2.52, 22.7, 5.11, 0, 0.37, 0.24, 2.1, 0.93, 233, 0, 1.93, 150, 267, 6.78, 26.56, 935, 3.37, 160, 0, 1),
(27, 'Grain', 'pulses and legumes', 'B003', 'Black gram , dal', 'Black gram, dal(aadad ni dal)', 100, 30, 1356, 324.092, 43, 21.93, 51, 23.06, 11.93, 4.35, 7.58, 1.69, 0, 0.21, 0.09, 1.76, 0.81, 88.75, 0, 8.42, 55.67, 375, 4.67, 18.88, 1157, 3, 173, 0, 1),
(28, 'Grain', 'pulses and legumes', 'B004', 'Black gram , whole', 'Black gram, whole(aadad)', 100, 30, 1219, 291.348, 43, 18.916, 43.99, 21.97, 20.41, 4.94, 15.47, 1.58, 0, 0.32, 0.11, 1.85, 1.28, 134, 0, 16.84, 86.18, 345, 5.97, 26.8, 1093, 3.05, 190, 0, 1),
(29, 'Grain', 'pulses and legumes', 'B005', 'Cowpea , brown', 'Cowpea, brown(chora)', 100, 30, 1340, 320.268, 41, 22.394, 54.62, 20.36, 11.54, 2.8, 8.75, 1.15, 0, 0.33, 0.09, 1.64, 3.97, 231, 0, 0.92, 81.73, 372, 5.9, 13.68, 1241, 3.41, 213, 0, 1),
(30, 'Grain', 'pulses and legumes', 'B006', 'Cow pea , white', 'Cow pea, white(chora)', 100, 30, 1340, 320.268, 41, 22.046, 53.77, 21.25, 11.7, 2.79, 8.91, 1.14, 0, 0.34, 0.09, 1.51, 4.28, 249, 0, 0.93, 84.1, 378, 5.04, 12.52, 1243, 3.57, 213, 0, 1),
(31, 'Grain', 'pulses and legumes', 'B007', 'Field bean , black', 'Field bean, black(valpapdi)', 100, 30, 1155, 276.052, 0, 0, 43.46, 19.93, 23.4, 5.41, 17.99, 0.92, 0, 0.35, 0.07, 1.88, 0.66, 291, 0, 4.35, 78.16, 457, 4.5, 1.35, 1272, 2.42, 197, 0, 1),
(32, 'Grain', 'pulses and legumes', 'B008', 'Field bean , brown', 'Field bean, brown(valpapdi)', 100, 30, 1184, 282.983, 0, 0, 45.24, 19.9, 22.4, 5.08, 17.32, 0.98, 0, 0.32, 0.07, 2.04, 0.76, 292, 0, 4.24, 75.2, 429, 4.99, 1.41, 1245, 2.44, 173, 0, 1),
(33, 'Grain', 'pulses and legumes', 'B009', 'Field bean , white', 'Field bean, white(valpapdi)', 100, 30, 1173, 280.354, 0, 0, 44.53, 19.84, 22.99, 5.54, 17.45, 0.94, 0, 0.37, 0.07, 1.96, 0.68, 289, 0, 4.26, 77.24, 448, 5.5, 1.7, 1360, 2.8, 190, 0, 1),
(34, 'Grain', 'pulses and legumes', 'B010', 'Green gram , dal', 'Green gram, dal(mug ni dal)', 100, 30, 1363, 325.765, 31, 16.303, 52.59, 23.88, 9.37, 1.62, 7.75, 1.35, 0, 0.35, 0.12, 1.84, 0.65, 92.11, 0, 2.05, 43.13, 416, 3.93, 10.14, 1268, 2.49, 155, 0, 1),
(35, 'Grain', 'pulses and legumes', 'B011', 'Green gram , whole', 'Green gram, whole(mug) ', 100, 30, 1229, 293.738, 31, 14.3, 46.13, 22.53, 17.04, 2.44, 14.59, 1.14, 0, 0.45, 0.27, 2.16, 1.35, 145, 0, 3.15, 92.43, 353, 4.89, 12.48, 1177, 2.67, 198, 0, 1),
(36, 'Grain', 'pulses and legumes', 'B012', 'Horse gram , whole', 'Horse gram, whole(kuleeth)', 100, 30, 1379, 329.589, 65, 37.206, 57.24, 21.73, 7.88, 1.66, 6.22, 0.62, 0, 0.32, 0.24, 1.82, 0.59, 163, 0, 1.8, 269, 298, 8.76, 12.14, 1065, 2.71, 152, 0, 1),
(37, 'Grain', 'pulses and legumes', 'B013', 'Lentil dal', 'Lentil dal(masoor ni dal)', 100, 30, 1349, 322.419, 30, 15.759, 52.53, 24.35, 10.43, 1.83, 8.6, 0.75, 0, 0.34, 0.16, 1.81, 1.25, 49.99, 0, 1.31, 44.32, 310, 7.06, 10.27, 786, 3.61, 74.69, 0, 1),
(38, 'Grain', 'pulses and legumes', 'B014', 'Lentil whole , brown', 'Lentil whole, brown(masoor) ', 100, 30, 1251, 298.996, 29, 14.056, 48.47, 22.49, 16.82, 2.66, 14.16, 0.64, 0, 0.4, 0.22, 2.54, 1.74, 132, 0, 14.52, 76.13, 274, 7.57, 11.2, 756, 3.6, 101, 0, 1),
(39, 'Grain', 'pulses and legumes', 'B015', 'Lentil whole yellowish', 'Lentil whole yellowish(masoor)', 100, 30, 1246, 297.801, 30, 14.373, 47.91, 22.87, 16.66, 2.51, 14.15, 0.61, 0, 0.42, 0.22, 2.56, 1.63, 121, 0, 17.68, 76.66, 261, 7.91, 10.87, 764, 3.31, 86.38, 0, 1),
(40, 'Grain', 'pulses and legumes', 'B016', 'Moth bean', 'Moth bean(math)', 100, 30, 1291, 308.556, 0, 0, 52.09, 19.75, 15.12, 0.62, 14.5, 1.76, 0, 0.45, 0.09, 1.87, 2.12, 349, 0, 9.77, 154, 362, 7.9, 26.34, 1356, 1.92, 205, 0, 1),
(41, 'Grain', 'pulses and legumes', 'B017', 'Peas , dry', 'Peas, dry(suka vatana)', 100, 30, 1269, 303.298, 22, 10.765, 48.93, 20.43, 17.01, 2.47, 14.55, 1.89, 0, 0.56, 0.16, 2.69, 0.53, 110, 0, 15.21, 75.11, 334, 5.09, 23.4, 922, 3.1, 123, 0, 1),
(42, 'Grain', 'pulses and legumes', 'B018', 'Rajmah , black', 'Rajmah, black(rajmah)', 100, 30, 1247, 298.04, 25, 12.398, 49.59, 19.01, 17.74, 2.58, 15.16, 1.62, 0, 0.21, 0.19, 2.61, 0.63, 332, 0, 27.98, 134, 386, 6.17, 9.4, 1362, 3.08, 160, 0, 1),
(43, 'Grain', 'pulses and legumes', 'B019', 'Rajmah , brown', 'Rajmah, brown(rajmah)', 100, 30, 1245, 297.562, 25, 12.208, 48.83, 19.5, 16.95, 2.62, 14.33, 1.68, 0, 0.26, 0.21, 2.37, 0.77, 330, 0, 25.82, 134, 396, 6.3, 10.47, 1366, 2.6, 164, 0, 1),
(44, 'Grain', 'pulses and legumes', 'B020', 'Rajmah , red', 'Rajmah, red(rajmah)', 100, 30, 1252, 299.235, 25, 12.153, 48.61, 19.91, 16.57, 2.7, 13.86, 1.77, 0, 0.3, 0.19, 2.42, 0.77, 316, 0, 26.73, 126, 409, 6.13, 10.45, 1324, 2.69, 173, 0, 1),
(45, 'Grain', 'pulses and legumes', 'B021', 'Red gram , dal', 'Red gram, dal(tuver ni dal) ', 100, 30, 1384, 330.784, 22, 12.151, 55.23, 21.7, 9.06, 2.39, 6.67, 1.56, 0, 0.45, 0.11, 2.09, 0.31, 108, 0, 2.12, 71.73, 328, 3.9, 18.01, 1395, 2.63, 119, 0, 1),
(46, 'Grain', 'pulses and legumes', 'B022', 'Red gram , whole ', 'Red gram, whole(tuver) ', 100, 30, 1143, 273.184, 22, 9.346, 42.48, 20.47, 22.84, 3.15, 19.69, 1.38, 0, 0.74, 0.15, 2.42, 0.65, 229, 0, 2.78, 139, 312, 5.37, 19.03, 1303, 2.99, 155, 0, 1),
(47, 'Grain', 'pulses and legumes', 'B023', 'Ricebean', 'Ricebean(meth)', 100, 30, 1265, 302.342, 0, 0, 51.26, 19.97, 13.37, 3.33, 10.04, 0.74, 0, 0.46, 0.14, 2.32, 2.65, 122, 1.11, 8.26, 200, 270, 4.76, 10.62, 1196, 2.29, 201, 0, 1),
(48, 'Grain', 'pulses and legumes', 'B024', 'Soya bean , brown', 'Soya bean, brown(soya bean)', 100, 30, 1596, 381.453, 18, 2.302, 12.79, 35.58, 21.55, 5, 16.56, 19.82, 0, 0.59, 0.24, 2.12, 0.73, 297, 0, 66.22, 239, 483, 8.29, 2.07, 1613, 4.01, 259, 0, 1),
(49, 'Grain', 'pulses and legumes', 'B025', 'Soya bean , white', 'Soya bean, white(soya bean)', 100, 30, 1579, 377.39, 18, 1.829, 10.16, 37.8, 22.63, 5.59, 17.04, 19.42, 0, 0.61, 0.23, 2.28, 0.77, 288, 0, 69.81, 195, 494, 8.22, 2.83, 1634, 3.47, 189, 0, 1),
(50, 'Green  Leafy Vegetables', 'vegetables', 'C001', 'Agathi leaves', 'Agathi leaves(agathio)', 100, 100, 295, 70.507, 34, 1.771, 5.21, 8.01, 8.6, 2.6, 6, 1.35, 0, 0.26, 0.33, 1.18, 7.75, 120, 121, 4.02, 901, 52.52, 4.36, 18.12, 674, 0.53, 96.64, 0, 1),
(51, 'Green  Leafy Vegetables', 'vegetables', 'C002', 'Amaranth leaves , green ', 'Amaranth leaves, green(taldalja ni bhaji)', 100, 100, 128, 30.593, 50, 1.14, 2.28, 3.29, 4.41, 1.2, 3.21, 0.65, 0, 0.01, 0.19, 0.71, 2.46, 70.33, 83.54, 16.01, 330, 73.22, 4.64, 16.08, 572, 0.86, 194, 0, 1),
(52, 'Green  Leafy Vegetables', 'vegetables', 'C003', 'Amaranth leaves , red', 'Amaranth leaves, red(taldalja ni bhaji)', 100, 100, 140, 33.461, 50, 1.185, 2.37, 3.93, 4.91, 1.19, 3.72, 0.63, 0, 0.01, 0.279, 0.62, 2.95, 81.95, 86.2, 15.1, 245, 75.98, 7.25, 14.58, 564, 1.37, 177, 0, 1),
(53, 'Green  Leafy Vegetables', 'vegetables', 'C004', 'Amaranth leaves , red and green mix', 'Amaranth leaves, red and green mix(taldalja ni bhaji)', 100, 100, 132, 31.549, 50, 1.435, 2.87, 3.09, 4.6, 1.37, 3.23, 0.53, 0, 0.01, 0.22, 0.69, 2.41, 69.08, 77.24, 15.25, 269, 68.23, 5.28, 17.55, 597, 1.03, 146, 0, 1),
(54, 'Green  Leafy Vegetables', 'vegetables', 'C005', 'Amaranth spinosus , leaves , green', 'Amaranth spinosus, green(taldalja ni bhaji)', 100, 100, 110, 26.291, 50, 0.805, 1.61, 3.54, 5.1, 1.2, 3.89, 0.36, 0, 0.01, 0.13, 0.63, 3.07, 41.44, 82.56, 15.23, 359, 72.46, 6.37, 15.66, 569, 1.57, 202, 0, 1),
(55, 'Green  Leafy Vegetables', 'vegetables', 'C006', 'Amaranth spinosus , leaves , red and green mix', 'Amaranth spinosus, red and green mix(taldalja ni bhaji)', 100, 100, 99, 23.662, 50, 0.725, 1.45, 2.8, 5.57, 1.75, 3.82, 0.34, 0, 0.01, 0.15, 0.72, 2.91, 44.23, 77.3, 15.04, 372, 85.02, 4.58, 16.27, 588, 1.11, 187, 0, 1),
(56, 'Green  Leafy Vegetables', 'vegetables', 'C007', 'Basella leaves', 'Basella leaves(poi ni bhaji)', 100, 100, 82, 19.598, 45, 0.905, 2.01, 1.57, 2.21, 0.57, 1.64, 0.45, 0, 0.06, 0.15, 0.46, 1.07, 90.31, 63.35, 9.18, 93.89, 37.26, 4.2, 18.74, 337, 0.39, 153, 0, 1),
(57, 'Green  Leafy Vegetables', 'vegetables', 'C008', 'Bathua leaves', 'Bathua leaves(chilni bhaji)', 100, 100, 116, 27.725, 45, 1.152, 2.56, 2.5, 4.01, 1.68, 2.34, 0.44, 0, 0.06, 0.51, 0.54, 1.25, 42.55, 41.03, 1.01, 211, 37.55, 2.66, 10.75, 438, 0.98, 48.41, 0, 1),
(58, 'Green  Leafy Vegetables', 'vegetables', 'C009', 'Beet greens', 'Beet greens(beet ni bhaji)', 100, 100, 145, 34.656, 15, 0.579, 3.86, 2.38, 3.64, 1.43, 2.2, 0.75, 0, 0.02, 0.17, 0.43, 4.66, 11.52, 35.83, 1.65, 151, 36.02, 5.8, 111, 530, 0.16, 120, 0, 1),
(59, 'Green  Leafy Vegetables', 'vegetables', 'C010', 'Betel leaves , big (kolkata)', 'Betel leaves, big(kolkata)(nagarvelna pan)', 100, 100, 202, 48.279, 0, 0, 7.37, 2.51, 2.12, 0.8, 1.32, 0.75, 0, 0.03, 0.08, 0.45, 2.18, 15.96, 18.4, 3.78, 207, 51.73, 3, 16.8, 649, 0.47, 107, 0, 1),
(60, 'Green  Leafy Vegetables', 'vegetables', 'C011', 'Betel leaves , small', 'Betel leaves, small(nagarvelna pan)', 100, 100, 183, 43.738, 0, 0, 6.16, 2.62, 1.97, 0.8, 1.17, 0.75, 0, 0.02, 0.07, 0.47, 1.28, 16.56, 24.51, 2.27, 196, 55.72, 2.87, 14.04, 678, 0.39, 89.94, 0, 1),
(61, 'Green  Leafy Vegetables', 'vegetables', 'C012', 'Bressels sprouts', 'Bressels sprouts(nani kobi)', 100, 100, 185, 44.216, 15, 0.764, 5.09, 4.26, 4.29, 0.94, 3.35, 0.5, 0, 0.06, 0.16, 0.5, 2.45, 85.01, 89.45, 0.26, 53.99, 98.56, 1.54, 18.51, 639, 0.57, 32.99, 0, 1),
(62, 'Green  Leafy Vegetables', 'vegetables', 'C013', 'Cabbage , chinese', 'Cabbage, chinese(kobi)', 100, 100, 75, 17.925, 15, 0.354, 2.36, 1.58, 2.01, 0.45, 1.55, 0.13, 0, 0.01, 0.05, 0.38, 1.08, 54.51, 19.32, 0.39, 58.46, 33.05, 0.39, 20.28, 258, 0.19, 11.51, 0, 1),
(63, 'Green  Leafy Vegetables', 'vegetables', 'C014', 'Cabbage , collard greens', 'Cabbage, collard greens(kobi)', 100, 100, 126, 30.115, 15, 0.419, 2.79, 3.63, 2.98, 0.94, 2.04, 0.27, 0, 0.03, 0.05, 0.26, 1.38, 63.46, 40.76, 0.18, 170, 54.67, 2.67, 22.98, 292, 0.35, 45.9, 0, 1),
(64, 'Green  Leafy Vegetables', 'vegetables', 'C015', 'Cabbage , green', 'Cabbage, green(kobi)', 100, 100, 90, 21.511, 15, 0.488, 3.25, 1.36, 2.76, 0.85, 1.91, 0.12, 0, 0.03, 0.05, 0.24, 1.41, 46.36, 33.25, 0.21, 51.76, 30.15, 0.35, 10.98, 233, 0.16, 17.99, 0, 1),
(65, 'Green  Leafy Vegetables', 'vegetables', 'C016', 'Cabbage , violet', 'Cabbage, violet(kobi)', 100, 100, 97, 23.184, 15, 0.531, 3.54, 1.39, 2.21, 0.62, 1.58, 0.21, 0, 0.04, 0.05, 0.27, 1.43, 34.81, 43.49, 0.19, 48, 22.14, 0.24, 24, 201, 0.13, 26.87, 0, 1),
(66, 'Green  Leafy Vegetables', 'vegetables', 'C017', 'Cauliflower leaves', 'Cauliflower leaves(fulawar na pan)', 100, 100, 148, 35.373, 15, 0.509, 3.39, 3.9, 3.43, 1.06, 2.37, 0.42, 0, 0.05, 0.05, 0.21, 1.38, 42.99, 52.84, 4.15, 96.7, 62.82, 2.42, 24.31, 374, 0.31, 41.5, 0, 1),
(67, 'Green  Leafy Vegetables', 'vegetables', 'C018', 'Colocasia leaves , green ', 'Colocasia leaves, green(advi na pan)', 100, 100, 182, 43.499, 44, 1.624, 3.69, 3.42, 5.6, 1.29, 4.32, 1.38, 0, 0.08, 0.07, 0.8, 12.1, 159, 40.71, 1.7, 216, 57.88, 3.41, 12.08, 404, 0.82, 59.44, 0, 1),
(68, 'Green  Leafy Vegetables', 'vegetables', 'C019', 'Drumstick leaves', 'Drumstick leaves(saragwa ni bhaji)', 100, 100, 282, 67.4, 24, 1.349, 5.62, 6.41, 8.21, 2.1, 6.12, 1.64, 0, 0.06, 0.45, 0.82, 2.26, 42.89, 108, 14.33, 314, 109, 4.56, 9.3, 397, 0.72, 97.09, 0, 1),
(69, 'Green  Leafy Vegetables', 'vegetables', 'C020', 'Fenugreek leaves', 'Fenugreek leaves(methi ni bhaji)', 100, 100, 144, 34.417, 15, 0.326, 2.17, 3.68, 4.9, 1.7, 3.2, 0.83, 0, 0.11, 0.22, 0.7, 4.82, 75.26, 58.25, 2.36, 274, 53.05, 5.69, 47.01, 226, 0.54, 63.67, 0, 1),
(70, 'Green  Leafy Vegetables', 'vegetables', 'C021', 'Garden cress', 'Garden cress(asadio na pan)', 100, 100, 208, 49.713, 32, 1.434, 4.48, 5.62, 2.6, 0.83, 1.77, 0.8, 0, 0.03, 0.06, 1.2, 12.01, 58.1, 42.75, 0.55, 217, 45.55, 6.19, 25.35, 379, 1.52, 79.24, 0, 1),
(71, 'Green  Leafy Vegetables', 'vegetables', 'C022', 'Gogu leaves , green ', 'Gogu leaves, green(ambadi)', 100, 100, 152, 36.329, 0, 0, 4.06, 1.86, 4.59, 1.35, 3.24, 1.09, 0, 0.13, 0.06, 0.58, 3.38, 74.94, 29.65, 4.28, 145, 41.99, 7.65, 12.34, 260, 0.65, 83.09, 0, 1),
(72, 'Green  Leafy Vegetables', 'vegetables', 'C023', 'Golu leaves , red ', 'Golu leaves, red(ambadi)', 100, 100, 153, 36.568, 0, 0, 4.24, 1.85, 3.89, 1.23, 2.66, 1.07, 0, 0.12, 0.05, 0.56, 3.43, 88.63, 35.43, 4.27, 129, 36.38, 9.56, 14.08, 161, 0.63, 75.75, 0, 1),
(73, 'Green  Leafy Vegetables', 'vegetables', 'C024', 'Knol-khol , leaves', 'Knol-khol, leaves(gath kobi na pan)', 100, 100, 178, 42.543, 0, 0, 6.16, 3.12, 2.76, 0.95, 1.81, 0.35, 0, 0.06, 0.15, 0.86, 13.57, 41.55, 71.11, 0.59, 368, 55.02, 2.51, 26.8, 309, 0.42, 66, 0, 1),
(74, 'Green  Leafy Vegetables', 'vegetables', 'C025', 'Lettuce', 'Lettuce(lettuce na pan)', 100, 100, 91, 21.75, 15, 0.452, 3.01, 1.54, 1.79, 0.47, 1.32, 0.27, 0, 0.05, 0.09, 0.17, 2.15, 30.69, 11.91, 0.1, 56.71, 44.1, 2.73, 17.53, 279, 0.51, 43.22, 0, 1),
(75, 'Green  Leafy Vegetables', 'vegetables', 'C026', 'Mustard leaves', 'Mustard leaves(sarasava na pan)', 100, 100, 127, 30.354, 35, 0.844, 2.41, 3.52, 3.92, 0.87, 3.04, 0.51, 0, 0.08, 0.18, 0.58, 1.7, 110, 60.32, 5.4, 191, 71.62, 2.84, 19.14, 403, 0.68, 51.63, 0, 1),
(76, 'Green  Leafy Vegetables', 'vegetables', 'C027', 'Pak choi leaves', 'Pak choi leaves(pak choi na pan)', 100, 100, 67, 16.013, 0, 0, 1.78, 1.41, 1.91, 0.47, 1.44, 0.25, 0, 0.02, 0.22, 0.66, 10.25, 98.5, 55.6, 0.1, 150, 25.95, 3.78, 33.73, 250, 0.16, 45.28, 0, 1),
(77, 'Green  Leafy Vegetables', 'vegetables', 'C028', 'Parsley', 'Parsley(leela dhana)', 100, 100, 305, 72.897, 32, 3.018, 9.43, 5.55, 3.87, 1.09, 2.79, 1.14, 0, 0.19, 0.1, 0.36, 13.47, 197, 133, 5.55, 288, 78.56, 5.51, 53.08, 466, 1.29, 49.18, 0, 1),
(78, 'Green  Leafy Vegetables', 'vegetables', 'C029', 'Ponnaganni', 'Ponnaganni(saranthi na pan)', 100, 100, 213, 50.908, 0, 0, 5.17, 5.29, 6.74, 1.11, 5.63, 0.71, 0, 0.02, 0.1, 0.32, 11.18, 48.42, 103, 0.65, 388, 58.26, 3.88, 39.36, 457, 0.99, 80.39, 0, 1),
(79, 'Green  Leafy Vegetables', 'vegetables', 'C030', 'Pumpkin leaves , tender', 'Pumpkin leaves(kolam na pan)', 100, 100, 185, 44.216, 75, 3.563, 4.75, 4.21, 2.25, 0.69, 1.56, 0.74, 0, 0.07, 0.13, 1.49, 3.4, 33.82, 12.33, 3.19, 271, 64.54, 5.58, 12.2, 423, 0.9, 84.21, 0, 1),
(80, 'Green  Leafy Vegetables', 'vegetables', 'C031', 'Radish leaves', 'Radish leaves(muda na pan)', 100, 100, 109, 26.052, 15, 0.416, 2.77, 2.22, 1.82, 0.63, 1.18, 0.51, 0, 0.06, 0.13, 0.47, 4.39, 53.14, 65.76, 1.39, 234, 50.08, 3.82, 17.39, 304, 0.49, 57.96, 0, 1),
(81, 'Green  Leafy Vegetables', 'vegetables', 'C032', 'Rumex leaves', 'Rumex leaves(ambada na pan)', 100, 100, 82, 19.598, 0, 0, 2.33, 1.62, 1.27, 0.34, 0.93, 0.33, 0, 0.03, 0.14, 0.33, 1.3, 41.01, 53.76, 0.1, 131, 32.4, 3.67, 19.95, 336, 0.46, 48.33, 0, 1),
(82, 'Green  Leafy Vegetables', 'vegetables', 'C033', 'Spinach ', 'Spinach(palak ni bhaji)', 100, 100, 102, 24.379, 15, 0.308, 2.05, 2.14, 2.38, 0.86, 1.52, 0.64, 0, 0.16, 0.1, 0.33, 4.14, 142, 30.28, 0.26, 82.29, 32.59, 2.95, 42.55, 625, 0.46, 86.97, 0, 1),
(83, 'Green  Leafy Vegetables', 'vegetables', 'C034', 'Tamarind leaves , tender', 'Tamarind leaves(amli na pan)', 100, 100, 299, 71.463, 15, 1.506, 10.04, 5.84, 10.7, 1.36, 9.34, 0.49, 0, 0.12, 0.03, 0.79, 3.29, 91.82, 28.22, 2.62, 66.93, 86.86, 2.84, 13.43, 465, 0.93, 42.1, 0, 1),
(84, 'Vegetables', 'vegetables', 'D001', 'Ash gourd ', 'Ash gourd(kodu)', 100, 100, 73, 17.447, 0, 0, 2.84, 0.79, 3.37, 0.85, 2.52, 0.14, 0, 0.03, 0.01, 0.12, 2.01, 14.11, 11.41, 1.35, 19.39, 29.07, 0.47, 0.77, 372, 0.13, 19.95, 0, 1),
(85, 'Vegetables', 'vegetables', 'D002', 'Bamboo shoot , tender', 'Bamboo shoot, tender(lilo vans)', 100, 100, 68, 16.252, 20, 0.334, 1.67, 1.33, 1.55, 0.49, 1.06, 0.35, 0, 0.06, 0.06, 0.25, 5.93, 17.05, 15.74, 0.41, 10, 39.63, 0.33, 10.12, 422, 0.37, 8.28, 0, 1),
(86, 'Vegetables', 'vegetables', 'D003', 'Bean scarlet , tender', 'Bean scarlet(chodi)', 100, 100, 179, 42.78, 0, 0, 5.16, 2.86, 4.5, 0.74, 3.76, 0.99, 0, 0.13, 0.12, 0.52, 12.26, 45.26, 6.61, 1.4, 43.48, 62.13, 0.73, 10.46, 164, 0.57, 43.75, 0, 1),
(87, 'Vegetables', 'vegetables', 'D004', 'Bitter gourd , jagged , teeth ridges , elongate', 'Bitter gourd(karela)', 100, 100, 87, 20.793, 0, 0, 2.82, 1.44, 3.78, 0.68, 3.1, 0.24, 0, 0.05, 0.04, 0.27, 5.76, 60.28, 46.53, 1.92, 21.36, 44.9, 1.15, 13.09, 326, 0.31, 32.14, 0, 1),
(88, 'Vegetables', 'vegetables', 'D005', 'Bitter gourd , jagged , teeth ridges , short', 'Bitter gourd(karela)', 100, 100, 79, 18.881, 0, 0, 2.53, 1.34, 3.49, 0.53, 2.96, 0.24, 0, 0.06, 0.04, 0.29, 5.55, 51.45, 50.87, 1.9, 16.27, 40.21, 1.08, 12.59, 282, 0.36, 31.58, 0, 1),
(89, 'Vegetables', 'vegetables', 'D006', 'Bitter gourd , jagged , smooth ridges , elongate', 'Bitter gourd(karela)', 100, 100, 81, 19.359, 0, 0, 2.29, 1.61, 3.72, 0.67, 3.05, 0.26, 0, 0.06, 0.04, 0.3, 6.85, 60.03, 54.3, 1.83, 17.62, 44.75, 1.28, 11.16, 356, 0.43, 33.34, 0, 1),
(90, 'Vegetables', 'vegetables', 'D007', 'Bottle gourd , elongate  plane green', 'Bottle gourd(dudhi)', 100, 100, 46, 10.994, 0, 0, 1.68, 0.53, 2.12, 0.48, 1.65, 0.13, 0, 0.03, 0.01, 0.14, 2.55, 41.99, 4.33, 0.74, 15.42, 16.01, 0.26, 1.46, 124, 0.15, 10.93, 0, 1),
(91, 'Vegetables', 'vegetables', 'D008', 'Bottle gourd , round , pale green', 'Bottle gourd(dudhi)', 100, 100, 57, 13.623, 0, 0, 2.53, 0.42, 2.1, 0.38, 1.72, 0.12, 0, 0.03, 0.01, 0.14, 2.33, 49.59, 4.54, 0.7, 15.05, 16.99, 0.28, 1.52, 116, 0.15, 10.89, 0, 1),
(92, 'Vegetables', 'vegetables', 'D009', 'Bottle gourd , elongate , dark green', 'Bottle gourd(dudhi)', 100, 100, 54, 12.906, 0, 0, 2.25, 0.49, 2.11, 0.37, 1.74, 0.13, 0, 0.03, 0.01, 0.14, 2.54, 46.31, 3.8, 0.6, 16.64, 26.86, 0.34, 1.35, 171, 0.18, 12.9, 0, 1),
(93, 'Vegetables', 'vegetables', 'D010', 'Brinjal - 1', 'Brinjal(ringna)', 100, 100, 114, 27.247, 15, 0.524, 3.49, 1.77, 3.57, 1.2, 2.37, 0.39, 0, 0.07, 0.13, 0.74, 1.17, 37.22, 1.58, 0.85, 22.17, 39.95, 0.49, 3.15, 302, 0.32, 26.75, 0, 1),
(94, 'Vegetables', 'vegetables', 'D011', 'Brinjal - 2', 'Brinjal(ringna)', 100, 100, 99, 23.662, 15, 0.407, 2.71, 1.82, 4.01, 1.21, 2.8, 0.34, 0, 0.09, 0.11, 0.56, 1.83, 27.22, 1.03, 1.01, 17.13, 44.65, 0.44, 3.92, 206, 0.23, 29.56, 0, 1),
(95, 'Vegetables', 'vegetables', 'D012', 'Brinjal - 3 ', 'Brinjal(ringna)', 100, 100, 102, 24.379, 15, 0.507, 3.38, 1.36, 4.26, 1.16, 3.1, 0.33, 0, 0.05, 0.109, 0.6, 1.32, 32.29, 2.34, 1.19, 14.58, 27.79, 0.34, 3.12, 192, 0.2, 18.62, 0, 1),
(96, 'Vegetables', 'vegetables', 'D013', 'Brinjal - 4 ', 'Brinjal(ringna)', 100, 100, 100, 23.901, 15, 0.479, 3.19, 1.51, 4.04, 1.01, 3.03, 0.31, 0, 0.06, 0.11, 0.52, 1.7, 36.67, 2.22, 1.05, 13.39, 31.82, 0.38, 3.31, 268, 0.21, 20.65, 0, 1),
(97, 'Vegetables', 'vegetables', 'D014', 'Brinjal - 5', 'Brinjal(ringna)', 100, 100, 111, 26.53, 15, 0.603, 4.02, 1.38, 4.13, 1.03, 3.1, 0.29, 0, 0.07, 0.11, 0.49, 1.42, 32.21, 3.15, 1.61, 17.03, 33.13, 0.36, 4.03, 227, 0.2, 25.36, 0, 1),
(98, 'Vegetables', 'vegetables', 'D015', 'Brinjal - 6', 'Brinjal(ringna)', 100, 100, 97, 23.184, 15, 0.494, 3.29, 1.46, 3.68, 0.68, 3, 0.29, 0, 0.05, 0.11, 0.51, 1.65, 34.21, 1.49, 1.14, 17.17, 30.12, 0.39, 3.75, 289, 0.2, 18.82, 0, 1),
(99, 'Vegetables', 'vegetables', 'D016', 'Brinjal - 7', 'Brinjal(ringna)', 100, 100, 98, 23.423, 15, 0.465, 3.1, 1.4, 3.32, 1.02, 2.3, 0.37, 0, 0.05, 0.12, 0.44, 1.32, 26.58, 1.08, 0.84, 19.95, 29.58, 0.27, 3.45, 238, 0.16, 15.26, 0, 1),
(100, 'Vegetables', 'vegetables', 'D017', 'Brinjal - 8', 'Brinjal(ringna)', 100, 100, 117, 27.964, 15, 0.563, 3.75, 1.82, 4.01, 1.22, 2.79, 0.33, 0, 0.07, 0.11, 0.65, 1.55, 33.89, 1.89, 0.97, 21, 35.84, 0.42, 4.73, 284, 0.24, 26.63, 0, 1),
(101, 'Vegetables', 'vegetables', 'D018', 'Brinjal - 9', 'Brinjal(ringna)', 100, 100, 106, 25.335, 15, 0.528, 3.52, 1.47, 4, 1.06, 2.94, 0.35, 0, 0.06, 0.11, 0.56, 2.3, 35.89, 1.72, 1.02, 18.79, 35.71, 0.38, 3.08, 224, 0.23, 26.23, 0, 1),
(102, 'Vegetables', 'vegetables', 'D019', 'Brinjal - 10', 'Brinjal(ringna)', 100, 100, 116, 27.725, 15, 0.612, 4.08, 1.68, 3.9, 1.16, 2.74, 0.25, 0, 0.06, 0.1, 0.5, 1.27, 37.11, 2.4, 0.88, 15.59, 37.76, 0.41, 4.35, 252, 0.23, 22.11, 0, 1),
(103, 'Vegetables', 'vegetables', 'D020', 'Brinjal - 11', 'Brinjal(ringna)', 100, 100, 105, 25.096, 15, 0.53, 3.53, 1.43, 4.12, 1.17, 2.95, 0.31, 0, 0.06, 0.11, 0.53, 1.68, 34.24, 2.24, 1.01, 15.92, 33.28, 0.37, 3.47, 260, 0.22, 20.73, 0, 1),
(104, 'Vegetables', 'vegetables', 'D021', 'Brinjal - 12', 'Brinjal(ringna)', 100, 100, 93, 22.228, 15, 0.41, 2.73, 1.6, 3.89, 1.19, 2.7, 0.27, 0, 0.04, 0.1, 0.43, 1.11, 27.83, 2.55, 0.87, 19.85, 37.81, 0.37, 3.88, 259, 0.25, 19.26, 0, 1),
(105, 'Vegetables', 'vegetables', 'D022', 'Brinjal - 13', 'Brinjal(ringna)', 100, 100, 124, 29.637, 15, 0.677, 4.51, 1.49, 3.92, 1.31, 2.61, 0.31, 0, 0.04, 0.12, 0.54, 2.29, 30.99, 1.49, 1.06, 18.95, 26.81, 0.32, 3, 260, 0.19, 18, 0, 1),
(106, 'Vegetables', 'vegetables', 'D023', 'Brinjal - 14', 'Brinjal(ringna)', 100, 100, 106, 25.335, 15, 0.491, 3.27, 1.56, 3.87, 1.37, 2.5, 0.35, 0, 0.06, 0.1, 0.46, 1.36, 38.99, 1.83, 0.89, 14.43, 30.07, 0.32, 3.71, 246, 0.19, 19.19, 0, 1),
(107, 'Vegetables', 'vegetables', 'D024', 'Brinjal - 15', 'Brinjal(ringna)', 100, 100, 114, 27.247, 15, 0.594, 3.96, 1.58, 3.99, 1.17, 2.82, 0.29, 0, 0.07, 0.11, 0.51, 1.91, 32.48, 2.01, 1.12, 17.82, 30.32, 0.36, 3.34, 215, 0.22, 21.89, 0, 1),
(108, 'Vegetables', 'vegetables', 'D025', 'Brinjal - 16', 'Brinjal(ringna)', 100, 100, 103, 24.618, 15, 0.519, 3.46, 1.26, 3.74, 1.2, 2.54, 0.34, 0, 0.04, 0.11, 0.44, 2.14, 30.87, 1.53, 0.76, 18.33, 29.86, 0.32, 3.22, 294, 0.19, 17.06, 0, 1),
(109, 'Vegetables', 'vegetables', 'D026', 'Brinjal - 17', 'Brinjal(ringna)', 100, 100, 91, 21.75, 15, 0.434, 2.89, 1.18, 3.94, 1.14, 2.8, 0.36, 0, 0.08, 0.09, 0.53, 3.57, 27.7, 1.95, 1.33, 20.83, 35.94, 0.5, 3.09, 233, 0.25, 23.13, 0, 1),
(110, 'Vegetables', 'vegetables', 'D027', 'Brinjal - 18', 'Brinjal(ringna)', 100, 100, 116, 27.725, 15, 0.615, 4.1, 1.47, 4.38, 1.15, 3.23, 0.33, 0, 0.04, 0.1, 0.57, 2.16, 38.27, 1.97, 1.01, 16.24, 28.03, 0.38, 3.63, 208, 0.18, 15.48, 0, 1),
(111, 'Vegetables', 'vegetables', 'D028', 'Brinjal - 19', 'Brinjal(ringna)', 100, 100, 100, 23.901, 15, 0.509, 3.39, 1.26, 3.97, 1.16, 2.81, 0.31, 0, 0.04, 0.1, 0.53, 2.54, 34.32, 2.53, 1.06, 16.1, 29.76, 0.32, 3.11, 243, 0.19, 18.41, 0, 1),
(112, 'Vegetables', 'vegetables', 'D029', 'Brinjal - 20', 'Brinjal(ringna)', 100, 100, 99, 23.662, 15, 0.473, 3.15, 1.44, 3.73, 1.09, 2.64, 0.34, 0, 0.06, 0.1, 0.55, 1.77, 33.44, 2.21, 1.02, 14.36, 31.21, 0.33, 3.58, 239, 0.2, 18.51, 0, 1),
(113, 'Vegetables', 'vegetables', 'D030', 'Brinjal - 21', 'Brinjal(ringna)', 100, 100, 113, 27.008, 15, 0.59, 3.93, 1.36, 3.85, 1.28, 2.57, 0.35, 0, 0.05, 0.11, 0.53, 1.93, 32.6, 1.38, 0.84, 15.27, 34.98, 0.34, 3.06, 252, 0.2, 17.3, 0, 1),
(114, 'Vegetables', 'vegetables', 'D031', 'Brinjal - all varieties', 'Brinjal(ringna)', 100, 100, 106, 25.335, 15, 0.528, 3.52, 1.48, 3.98, 1.14, 2.84, 0.32, 0, 0.06, 0.11, 0.53, 1.76, 33.93, 2.09, 1.04, 16.59, 32.56, 0.37, 3.55, 247, 0.21, 21, 0, 1),
(115, 'Vegetables', 'vegetables', 'D032', 'Broad beans', 'Broad beans(valor papdi)', 100, 100, 123, 29.398, 79, 1.667, 2.11, 3.85, 8.63, 2.03, 6.61, 0.15, 0, 0.12, 0.1, 0.76, 10.03, 20.46, 10.98, 11.58, 64.37, 67.97, 0.94, 20.74, 362, 0.61, 40.18, 0, 1),
(116, 'Vegetables', 'vegetables', 'D033', 'Capsicum , green', 'Capsicum, green(capsicum)', 100, 100, 68, 16.252, 40, 0.736, 1.84, 1.11, 2.06, 0.73, 1.33, 0.34, 0, 0.05, 0.03, 0.56, 4.59, 51.85, 123, 0.7, 14.75, 23, 0.48, 1.84, 154, 0.15, 18.84, 0, 1),
(117, 'Vegetables', 'vegetables', 'D034', 'Capsicum , red', 'Capsicum, red(capsicum)', 100, 100, 83, 19.837, 40, 0.856, 2.14, 1.47, 2.19, 0.61, 1.58, 0.47, 0, 0.1, 0.03, 0.66, 5.47, 62.54, 112, 0.52, 15.76, 30.81, 0.38, 1.7, 224, 0.34, 19.57, 0, 1),
(118, 'Vegetables', 'vegetables', 'D035', 'Capsicum , yellow ', 'Capsicum, yellow(capsicum)', 100, 100, 78, 18.642, 40, 0.78, 1.95, 1.35, 2.19, 0.8, 1.39, 0.41, 0, 0.14, 0.02, 0.59, 6.33, 66.15, 127, 0.89, 19.13, 43.33, 0.69, 1.56, 242, 0.26, 17.23, 0, 1),
(119, 'Vegetables', 'vegetables', 'D036', 'Cauliflower', 'Cauliflower(fulawar)', 100, 100, 96, 22.945, 15, 0.305, 2.03, 2.15, 3.71, 1.04, 2.66, 0.44, 0, 0.04, 0.07, 0.31, 2.47, 45.95, 47.14, 1.32, 25.16, 47.33, 0.96, 30.72, 329, 0.31, 23.08, 0, 1),
(120, 'Vegetables', 'vegetables', 'D037', 'Celery stalk', 'Celery stalk(celery daandi)', 100, 100, 69, 16.491, 32, 0.746, 2.33, 0.98, 2.09, 0.52, 1.57, 0.24, 0, 0.03, 0.04, 0.48, 2.09, 22.48, 12.3, 0.39, 38.73, 44.84, 1.36, 10.68, 298, 0.18, 17.12, 0, 1),
(121, 'Vegetables', 'vegetables', 'D038', 'Cho-cho-marrow ', 'Cho-cho-marrow ', 100, 100, 79, 18.881, 0, 0, 3.47, 0.66, 1.55, 0.36, 1.19, 0.15, 0, 0.01, 0.03, 0.23, 1.06, 63.03, 20.21, 5.46, 18.64, 21.61, 0.48, 1.28, 120, 0.1, 13.05, 0, 1),
(122, 'Vegetables', 'vegetables', 'D039', 'Cluster beans', 'Cluster beans(govar)', 100, 100, 168, 40.153, 0, 0, 4.91, 3.55, 4.83, 1.28, 3.55, 0.37, 0, 0.05, 0.03, 0.71, 5.35, 41.24, 17.96, 13.72, 121, 45.28, 3.9, 4.05, 301, 0.61, 81.74, 0, 1),
(123, 'Vegetables', 'vegetables', 'D040', 'Colocasia , stem , black', 'Colocasia , stem , black', 100, 100, 100, 23.901, 54, 2.068, 3.83, 0.76, 3.01, 1.2, 1.81, 0.34, 0, 0.02, 0.04, 0.16, 3.8, 30.88, 5.15, 0.21, 29.46, 20.31, 0.77, 0.45, 381, 0.54, 11.07, 0, 1),
(124, 'Vegetables', 'vegetables', 'D041', 'Colocasia , stem , green', 'Colocasia , stem , green', 100, 100, 81, 19.359, 54, 1.544, 2.86, 0.91, 2.33, 1.07, 1.26, 0.22, 0, 0.02, 0.03, 0.22, 3.46, 25.32, 5.83, 0.14, 40.21, 30.73, 0.55, 0.6, 414, 0.2, 19.56, 0, 1),
(125, 'Vegetables', 'vegetables', 'D042', 'Corn , baby', 'Baby corn', 100, 100, 306, 73.136, 48, 5.597, 11.66, 2.69, 6.09, 1.62, 4.47, 1.33, 0, 0.15, 0.07, 0.53, 0.79, 41.53, 8.59, 31.2, 76.51, 8.69, 1.45, 1.4, 260, 1.13, 25.47, 0, 1),
(126, 'Vegetables', 'vegetables', 'D043', 'Cucumber , green , elongate', 'Cucumber(kakdi)', 100, 100, 82, 19.598, 15, 0.522, 3.48, 0.71, 2.14, 0.63, 1.52, 0.16, 0, 0.02, 0.01, 0.35, 2.82, 16.84, 6.11, 1.26, 16.39, 28.34, 0.46, 6.33, 183, 0.17, 20.38, 0, 1),
(127, 'Vegetables', 'vegetables', 'D044', 'Cucumber , green , short', 'Cucumber(kakdi)', 100, 100, 73, 17.447, 15, 0.423, 2.82, 0.83, 2.13, 0.54, 1.6, 0.18, 0, 0.02, 0.01, 0.35, 2.97, 14.67, 6.21, 1.36, 19.25, 29.74, 0.59, 6.11, 198, 0.19, 18.43, 0, 1),
(128, 'Vegetables', 'vegetables', 'D045', 'Cucumber , orange , round', 'Cucumber(kakdi)', 100, 100, 82, 19.598, 15, 0.452, 3.01, 0.98, 2.46, 0.68, 1.78, 0.24, 0, 0.02, 0.01, 0.36, 3.13, 18.77, 6.24, 1.59, 21.98, 23.17, 0.45, 8.16, 185, 0.16, 20.34, 0, 1),
(129, 'Vegetables', 'vegetables', 'D046', 'Drumstick', 'Drumstick(saragavo)', 100, 100, 123, 29.398, 0, 0, 3.76, 2.62, 6.83, 1.23, 5.6, 0.12, 0, 0.04, 0.07, 0.62, 4.29, 62.75, 71.86, 1.67, 33.3, 52.87, 0.73, 22.38, 419, 0.31, 38.1, 0, 1),
(130, 'Vegetables', 'vegetables', 'D047', 'Field beans , tender , broad', 'Field beans(valor papdi)', 100, 100, 129, 30.832, 79, 2.173, 2.75, 3.06, 5.64, 0.79, 4.84, 0.64, 0, 0.07, 0.07, 0.32, 4.11, 123, 5.99, 7.14, 70.57, 73.3, 1.95, 14.14, 345, 0.64, 50.88, 0, 1),
(131, 'Vegetables', 'vegetables', 'D048', 'Field beans , tender , lean', 'Field beans(valor papdi)', 100, 100, 140, 33.461, 79, 2.252, 2.85, 3.71, 6.19, 0.82, 5.37, 0.6, 0, 0.08, 0.07, 0.33, 4.11, 127, 3.84, 7.2, 58.59, 76.54, 1.48, 12.67, 314, 0.63, 47.42, 0, 1),
(132, 'Vegetables', 'vegetables', 'D049', 'French beans , country', 'French beans(fansi)', 100, 100, 102, 24.379, 0, 0, 2.68, 2.49, 4.38, 0.51, 3.88, 0.26, 0, 0.04, 0.06, 0.83, 4.71, 47.45, 15.81, 1.82, 55.99, 59.86, 1.25, 8.84, 324, 0.5, 43.01, 0, 1),
(133, 'Vegetables', 'vegetables', 'D050', 'French beans , hybrid', 'French beans(fansi)', 100, 100, 93, 22.228, 0, 0, 2.63, 2.12, 4.18, 0.65, 3.53, 0.19, 0, 0.05, 0.05, 0.77, 5.93, 61.98, 1.38, 1.85, 49.9, 45.9, 0.98, 9.18, 317, 0.37, 34.98, 0, 1),
(134, 'Vegetables', 'vegetables', 'D051', 'Jack fruit , raw', 'Jack fruit, raw(pha)', 100, 100, 110, 26.291, 0, 0, 3.48, 1.98, 7.69, 0.54, 7.15, 0.35, 0, 0.05, 0.05, 0.19, 4.37, 35.73, 17.51, 6.84, 45.74, 27.78, 0.31, 3.53, 327, 0.17, 26.6, 0, 1),
(135, 'Vegetables', 'vegetables', 'D052', 'Jack fruit , seed , mature', 'Jack fruit, seed, mature(phanas)', 100, 100, 322, 76.96, 0, 0, 11.81, 5.79, 8.63, 0.8, 7.83, 0.44, 0, 0.06, 0.03, 0.19, 4.1, 54.58, 9.68, 1.4, 37.56, 29.33, 0.37, 4, 376, 0.29, 37.04, 0, 1),
(136, 'Vegetables', 'vegetables', 'D053', 'Knol - knol', 'Knol - knol(nol kol)', 100, 100, 67, 16.013, 0, 0, 1.39, 1.58, 2.75, 0.44, 2.31, 0.35, 0, 0.04, 0.06, 0.37, 2.46, 14.76, 64.7, 0.32, 35.26, 40.77, 0.24, 27.46, 327, 0.15, 19.05, 0, 1),
(137, 'Vegetables', 'vegetables', 'D054', 'Kovai , big', 'Kovai(ghole gluru)', 100, 100, 73, 17.447, 0, 0, 2.01, 1.39, 3, 0.81, 2.19, 0.24, 0, 0.04, 0.02, 0.55, 2.96, 48.68, 17.62, 6.25, 34.39, 36.9, 0.38, 1.53, 198, 0.18, 19.6, 0, 1),
(138, 'Vegetables', 'vegetables', 'D055', 'Kovai , small ', 'Kovai(ghole gluru)', 100, 100, 80, 19.12, 0, 0, 2.41, 1.22, 3.25, 1.12, 2.14, 0.24, 0, 0.04, 0.02, 0.51, 2.87, 50.13, 21.08, 6.06, 37.12, 26.29, 0.29, 2.2, 167, 0.13, 18.87, 0, 1),
(139, 'Vegetables', 'vegetables', 'D056', 'Ladies finger', 'Ladies finger(bhinda)', 100, 100, 115, 27.486, 0, 0, 3.62, 2.08, 4.08, 1.28, 2.8, 0.22, 0, 0.04, 0.07, 0.61, 1.58, 63.68, 22.51, 7.46, 86.12, 57.48, 0.84, 7.37, 263, 0.45, 66.1, 0, 1),
(140, 'Vegetables', 'vegetables', 'D057', 'Mango , green , raw', 'Mango, green, raw(kachi keri)', 100, 100, 205, 48.996, 0, 0, 10.59, 0.69, 3.01, 1.34, 1.68, 0.08, 0, 0.02, 0.02, 0.26, 1.41, 25.86, 90.24, 7.68, 27, 14.92, 0.4, 33.15, 147, 0.09, 17.54, 0, 1),
(141, 'Vegetables', 'vegetables', 'D058', 'Onion , stalk', 'Onion, stalk(lili dungli)', 100, 100, 107, 25.574, 32, 0.957, 2.99, 2.07, 5.21, 1.45, 3.76, 0.26, 0, 0.03, 0.05, 0.14, 6.99, 57.61, 27.23, 6.81, 31.12, 28.53, 3.09, 15.52, 312, 0.99, 66.71, 0, 1),
(142, 'Vegetables', 'vegetables', 'D059', 'Papaya , raw', 'Papaya, raw(papaya)', 100, 100, 100, 23.901, 59, 2.596, 4.4, 0.5, 2.28, 0.96, 1.32, 0.23, 0, 0.02, 0.03, 0.12, 1.24, 29.79, 20.73, 7.8, 22.72, 24.11, 0.2, 7.55, 173, 0.08, 15.03, 0, 1),
(143, 'Vegetables', 'vegetables', 'D060', 'Parwar', 'Parwar(padval)', 100, 100, 101, 24.14, 0, 0, 3.54, 1.4, 2.61, 0.79, 1.82, 0.3, 0, 0.05, 0.05, 0.67, 1.86, 19.96, 19.24, 0.69, 30.76, 33.81, 0.5, 2.29, 117, 0.23, 24.59, 0, 1),
(144, 'Vegetables', 'vegetables', 'D061', 'Peas , fresh', 'Peas, fresh(vatana)', 100, 100, 340, 81.262, 48, 5.702, 11.88, 7.25, 6.32, 1.28, 5.04, 0.13, 0, 0.27, 0.03, 1.28, 4.04, 54.77, 38.4, 12.91, 28.24, 55.95, 1.58, 3.66, 249, 1.09, 40.11, 0, 1),
(145, 'Vegetables', 'vegetables', 'D062', 'Plantain , flower', 'Plantain, flower(kel phool)', 100, 100, 89, 21.272, 39, 0.839, 2.15, 1.47, 5.25, 0.52, 4.72, 0.63, 0, 0.02, 0.02, 0.28, 2.44, 49.27, 6.49, 1.29, 34.06, 47.31, 0.4, 7.51, 488, 0.42, 39.75, 0, 1),
(146, 'Vegetables', 'vegetables', 'D063', 'Plantain , green', 'Plantain, green(kacha banana)', 100, 100, 334, 79.828, 39, 6.856, 17.58, 1.18, 3.6, 0.81, 2.79, 0.23, 0, 0.01, 0.05, 0.33, 0.6, 18.96, 23.28, 0.27, 13.8, 31.69, 0.34, 18.57, 402, 0.23, 35.64, 0, 1),
(147, 'Vegetables', 'vegetables', 'D064', 'Plantain , stem', 'Plantain, stem(banana nu thad)', 100, 100, 165, 39.436, 39, 3.37, 8.64, 0.35, 2.12, 0.8, 1.33, 0.16, 0, 0.02, 0.02, 0.18, 4.42, 12.85, 3.77, 0.32, 11.24, 16.31, 0.26, 13.17, 373, 0.14, 32.82, 0, 1),
(148, 'Vegetables', 'vegetables', 'D065', 'Pumpkin , green , cylindrical', 'Pumpkin(kholu)', 100, 100, 103, 24.618, 75, 3.165, 4.22, 0.87, 2.53, 1.25, 1.28, 0.18, 0, 0.03, 0.02, 0.44, 1.41, 31.6, 7.29, 1.07, 24.1, 24.51, 0.29, 5.21, 186, 0.14, 13.27, 0, 1),
(149, 'Vegetables', 'vegetables', 'D066', 'Pumpkin , orange , round', 'Pumpkin(kholu)', 100, 100, 97, 23.184, 75, 3, 4, 0.84, 2.56, 1.12, 1.44, 0.16, 0, 0.03, 0.03, 0.41, 1.63, 24.14, 8.04, 1.4, 23.06, 22.18, 0.36, 8.81, 253, 0.11, 10.43, 0, 1),
(150, 'Vegetables', 'vegetables', 'D067', 'Red gram , tender , fresh', 'Red gram, fresh', 100, 100, 520, 124.283, 0, 0, 19.46, 8.09, 5.9, 2.25, 3.66, 0.92, 0, 0.23, 0.09, 2.14, 2.91, 94.21, 15.13, 28.96, 58.58, 141, 1.18, 2.54, 616, 1.1, 56.95, 0, 1),
(151, 'Vegetables', 'vegetables', 'D068', 'Ridge gourd , ', 'Ridge gourd(turiya)', 100, 100, 55, 13.145, 0, 0, 1.72, 0.91, 1.81, 0.61, 1.2, 0.14, 0, 0.02, 0.01, 0.2, 2.27, 29.26, 5.4, 0.37, 13.7, 33.06, 0.42, 4.71, 118, 0.22, 16.15, 0, 1),
(152, 'Vegetables', 'vegetables', 'D069', 'Ridge gourd , smooth skin', 'Ridge gourd(turiya)', 100, 100, 64, 15.296, 0, 0, 2.24, 0.98, 1.85, 0.54, 1.31, 0.13, 0, 0.02, 0.01, 0.21, 2.22, 27.36, 8.1, 0.34, 14.96, 39.25, 0.5, 6.27, 125, 0.26, 17.66, 0, 1),
(153, 'Vegetables', 'vegetables', 'D070', 'Snake gourd , long , pale green ', 'Snake gourd(pandola)', 100, 100, 52, 12.428, 0, 0, 1.27, 0.98, 2.27, 0.58, 1.69, 0.25, 0, 0.03, 0.03, 0.34, 2.5, 18.34, 2.72, 2.67, 24.6, 23.27, 0.32, 7.07, 100, 0.14, 18.7, 0, 1),
(154, 'Vegetables', 'vegetables', 'D071', 'Snake gourd , long , dark green', 'Snake gourd(pandola)', 100, 100, 50, 11.95, 0, 0, 1.23, 0.89, 2.27, 0.58, 1.69, 0.25, 0, 0.03, 0.03, 0.33, 2.43, 16.52, 2.85, 3.08, 27.11, 31.03, 0.47, 5.04, 104, 0.2, 21.7, 0, 1),
(155, 'Vegetables', 'vegetables', 'D072', 'Snake gourd , short', 'Snake gourd(pandola)', 100, 100, 61, 14.579, 0, 0, 2.15, 0.54, 2.29, 0.68, 1.61, 0.26, 0, 0.03, 0.02, 0.33, 2.5, 17.74, 2.3, 3.12, 17.9, 21.33, 0.2, 2.54, 84, 0.11, 15.07, 0, 1),
(156, 'Vegetables', 'vegetables', 'D073', 'Tinda , tender', 'Tinda tender(tadabuch)', 100, 100, 58, 13.86, 0, 0, 1.9, 1.02, 2, 0.32, 1.68, 0.17, 0, 0.02, 0.03, 0.56, 3.26, 43.23, 14.2, 2.76, 19.68, 30.37, 0.41, 20.61, 56, 0.2, 18.96, 0, 1),
(157, 'Vegetables', 'vegetables', 'D074', 'Tomato , green ', 'Tomato, green(tomato)', 100, 100, 87, 20.793, 38, 1.208, 3.18, 1.12, 1.62, 0.57, 1.05, 0.27, 0, 0.08, 0.05, 0.46, 4.74, 12.51, 16.41, 1.1, 8.49, 22.5, 0.42, 13.11, 225, 0.16, 13.57, 0, 1),
(158, 'Vegetables', 'vegetables', 'D075', 'Tomato , ripe , hybrid', 'Tomato(tomato)', 100, 100, 79, 18.881, 38, 1.216, 3.2, 0.76, 1.58, 0.3, 1.27, 0.25, 0, 0.04, 0.02, 0.51, 1.09, 15.41, 25.27, 11.33, 8.9, 15.45, 0.22, 11.86, 167, 0.11, 11.13, 0, 1),
(159, 'Vegetables', 'vegetables', 'D076', 'Tomato , ripe , local', 'Tomato(tomato)', 100, 100, 82, 19.598, 38, 1.03, 2.71, 0.9, 1.77, 0.33, 1.44, 0.47, 0, 0.03, 0.03, 0.52, 1.18, 19.46, 27.47, 12.24, 10.17, 18.77, 0.3, 9.73, 204, 0.12, 13.65, 0, 1),
(160, 'Vegetables', 'vegetables', 'D077', 'Zucchini , green ', 'Zucchini, green ', 100, 100, 84, 20.076, 35, 0.816, 2.33, 1.1, 2.3, 0.88, 1.42, 0.51, 0, 0.05, 0.09, 1.03, 1.02, 18.85, 15.78, 0.4, 17.26, 21.38, 0.52, 0.4, 178, 0.29, 15.41, 0, 1),
(161, 'Vegetables', 'vegetables', 'D078', 'Zucchini , yellow', 'Zucchini, yellow', 100, 100, 79, 18.881, 35, 0.77, 2.2, 1.31, 1.84, 0.47, 1.37, 0.44, 0, 0.03, 0.02, 0.42, 1.13, 21.5, 16.71, 0.38, 20.98, 32.03, 0.34, 0.39, 131, 0.27, 10.82, 0, 1),
(162, 'Fruits', 'fruits', 'E001', 'Apple , big', 'Apple(apple) ', 100, 100, 261, 62.38, 38, 4.982, 13.11, 0.29, 2.59, 1.16, 1.43, 0.64, 0, 0.03, 0.01, 0.25, 0.34, 3.04, 3.57, 1.46, 13.68, 10.44, 0.26, 1.43, 116, 0.09, 8.09, 0, 1),
(163, 'Fruits', 'fruits', 'E002', 'Apple , green', 'Apple(apple) ', 100, 100, 214, 51.147, 38, 4.047, 10.65, 0.46, 2.54, 0.81, 1.72, 0.5, 0, 0.01, 0.02, 0.21, 0.41, 3.43, 2.9, 2.45, 6.53, 7.48, 0.2, 1.47, 94.55, 0.08, 5.42, 0, 1),
(164, 'Fruits', 'fruits', 'E003', 'Apple , small', 'Apple(apple) ', 100, 100, 267, 63.815, 38, 5.301, 13.95, 0.31, 2.06, 0.62, 1.44, 0.53, 0, 0.01, 0.01, 0.09, 0.47, 3.52, 4, 1.86, 5.39, 8.39, 0.25, 1.45, 100, 0.05, 5.48, 0, 1),
(165, 'Fruits', 'fruits', 'E004', 'Apple , small , kashmir', 'Apple, kashmir(apple) ', 100, 100, 269, 64.293, 38, 5.316, 13.99, 0.27, 2.07, 0.54, 1.53, 0.6, 0, 0.01, 0.01, 0.09, 0.44, 3.97, 4.24, 2.04, 4.72, 10.72, 0.21, 1.22, 106, 0.08, 5.19, 0, 1),
(166, 'Fruits', 'fruits', 'E005', 'Apricot , dried', 'Apricot(jardaloo)', 100, 100, 1321, 315.727, 30, 21.789, 72.63, 3.17, 3.32, 0.6, 2.72, 0.74, 0, 0.04, 0.04, 1.66, 1.47, 10.5, 0.42, 3.98, 28.57, 72.02, 2.5, 3.94, 285, 0.41, 14.04, 0, 1),
(167, 'Fruits', 'fruits', 'E006', 'Apricot , processed', 'Apricot(jardaloo)', 100, 100, 236, 56.405, 57, 6.23, 10.93, 1.47, 0.59, 0.16, 0.43, 0.64, 0, 0.25, 0.04, 1.07, 1.55, 5.42, 7.98, 4.31, 5.42, 27.33, 1.12, 1.6, 95, 0.26, 4.29, 0, 1),
(168, 'Fruits', 'fruits', 'E007', 'Avocado fruit', 'Avocado fruit(avocado)', 100, 100, 604, 144.359, 50, 0.875, 1.75, 2.95, 6.69, 1.42, 5.26, 13.86, 0, 0.07, 0.08, 0.9, 1.25, 67.17, 9.36, 2.1, 28.48, 63.14, 0.81, 2.81, 377, 0.75, 48.14, 0, 1),
(169, 'Fruits', 'fruits', 'E008', 'Bael fruit', 'Bael fruit(bila)', 100, 100, 569, 135.994, 0, 0, 28.21, 2.63, 6.31, 3, 3.31, 0.57, 0, 0.03, 0.04, 0.25, 1.14, 55.22, 7.5, 1.6, 47.95, 37.29, 0.23, 1.56, 409, 0.14, 34.1, 0, 1),
(170, 'Fruits', 'fruits', 'E009', 'Banana, ripe , montham', 'Banana(banana)', 100, 100, 463, 110.66, 52, 12.974, 24.95, 1.25, 2.21, 0.78, 1.43, 0.32, 0, 0.01, 0.04, 0.48, 1.54, 17.93, 8.06, 0.2, 6.77, 20.85, 0.4, 1.25, 362, 0.15, 30.22, 0, 1),
(171, 'Fruits', 'fruits', 'E010', 'Banana , ripe , poovam ', 'Banana(banana)', 100, 100, 445, 106.358, 52, 12.173, 23.41, 1.49, 2.33, 1.04, 1.29, 0.35, 0, 0.01, 0.03, 0.43, 1.79, 19.95, 6.74, 0.24, 8.73, 33.63, 0.35, 1, 335, 0.17, 43.79, 0, 1),
(172, 'Fruits', 'fruits', 'E011', 'Banana , ripe, red', 'Banana(banana)', 100, 100, 467, 111.616, 52, 13.109, 25.21, 1.29, 1.98, 0.72, 1.26, 0.29, 0, 0.01, 0.02, 0.46, 1.35, 18.92, 6.74, 0.21, 9.56, 23.27, 0.24, 1.11, 313, 0.09, 31.44, 0, 1),
(173, 'Fruits', 'fruits', 'E012', 'Banana , ripe , robusta', 'Banana(banana)', 100, 100, 440, 105.163, 52, 12.288, 23.63, 1.23, 1.94, 0.71, 1.23, 0.33, 0, 0.01, 0.03, 0.47, 1.69, 16.81, 4.76, 0.22, 5.07, 24.32, 0.28, 0.85, 306, 0.14, 34.98, 0, 1),
(174, 'Fruits', 'fruits', 'E013', 'Black berry ', 'Black berry (jambu)', 100, 100, 227, 54.254, 59, 6.278, 10.64, 0.92, 4.35, 0.91, 3.44, 0.63, 0, 0.01, 0.02, 0.4, 1.65, 22.95, 19.45, 14.65, 23.81, 20.28, 0.63, 1.21, 205, 0.11, 30.9, 0, 1),
(175, 'Fruits', 'fruits', 'E014', 'Cherries , red', 'Cherries, red(cherry)', 100, 100, 250, 59.751, 22, 2.611, 11.87, 1.49, 2.12, 0.78, 1.35, 0.46, 0, 0.07, 0.02, 0.19, 1.52, 4.92, 8.82, 4.3, 23.88, 25.31, 0.36, 1.64, 165, 0.12, 14.37, 0, 1),
(176, 'Fruits', 'fruits', 'E015', 'Currants , black', 'Currants, black(jambu)', 100, 100, 227, 54.254, 25, 2.483, 9.93, 1.51, 4.07, 1.64, 2.43, 0.53, 0, 0.03, 0.03, 0.35, 2.41, 8.48, 182, 3.01, 40.32, 78.8, 1.36, 1.45, 283, 0.21, 16.66, 0, 1),
(177, 'Fruits', 'fruits', 'E016', 'Custard apple', 'Custard apple(sitapad)', 100, 100, 414, 98.948, 54, 11.005, 20.38, 1.62, 5.1, 1.93, 3.17, 0.67, 0, 0.13, 0.09, 0.69, 0.76, 7.6, 21.51, 0.18, 28.2, 40.81, 0.42, 3.11, 278, 0.22, 38.47, 0, 1),
(178, 'Fruits', 'fruits', 'E017', 'Dates , dry , pale brown', 'Dates, dry(khajur)', 100, 100, 1340, 320.268, 103, 77.157, 74.91, 2.45, 8.95, 1.42, 7.53, 0.35, 0, 0.03, 0.03, 1.47, 0.82, 18.65, 4.42, 2.6, 71.2, 73.02, 3.2, 3.27, 804, 0.7, 73.79, 0, 1),
(179, 'Fruits', 'fruits', 'E018', 'Dates , dry , dark brown', 'Dates, dry(khajur)', 100, 100, 1301, 310.946, 103, 74.85, 72.67, 2.38, 9.1, 1.53, 7.57, 0.35, 0, 0.02, 0.03, 1.09, 0.94, 12.8, 3.84, 0.68, 66.13, 70.26, 4.79, 3.09, 782, 0.58, 75.23, 0, 1),
(180, 'Fruits', 'fruits', 'E019', 'Dates , processed', 'Dates(khajur)', 100, 100, 1197, 286.09, 103, 69.989, 67.95, 1.18, 6.52, 0.84, 5.68, 0.41, 0, 0.05, 0.02, 0.51, 2.5, 24.53, 15.51, 0.83, 15.73, 33.88, 0.89, 1.6, 289, 0.42, 14.34, 0, 1),
(181, 'Fruits', 'fruits', 'E020', 'Fig', 'Fig(anjir)', 100, 100, 341, 81.501, 61, 9.931, 16.28, 2.03, 4.64, 2.05, 2.59, 0.37, 0, 0.04, 0.02, 0.27, 2.64, 13.67, 16.92, 1.47, 78.52, 21.62, 0.69, 2.37, 231, 0.22, 26.18, 0, 1),
(182, 'Fruits', 'fruits', 'E021', 'Goosberry', 'Goosberry(amla)', 100, 100, 99, 23.662, 0, 0, 4.39, 0.34, 7.75, 1.55, 6.2, 0.16, 0, 0.01, 0.03, 0.12, 1.42, 7.86, 252, 0.27, 20.14, 21.85, 1.25, 1.37, 223, 0.05, 6.5, 0, 1),
(183, 'Fruits', 'fruits', 'E022', 'Grapes , seeded , round , black', 'Grapes,black(draksh)', 100, 100, 254, 60.707, 59, 7.806, 13.23, 0.76, 1.35, 0.52, 0.82, 0.32, 0, 0.03, 0.03, 0.14, 1.14, 8.69, 18.3, 6.19, 10.57, 21.04, 0.22, 1.93, 171, 0.05, 7.47, 0, 1),
(184, 'Fruits', 'fruits', 'E023', 'Grapes , seeded , round , green ', 'Grapes, green(draksh)', 100, 100, 235, 56.166, 46, 5.607, 12.19, 0.77, 1.25, 0.44, 0.81, 0.29, 0, 0.03, 0.02, 0.13, 1.08, 8.35, 17.1, 3.59, 11.16, 19.5, 0.24, 1.89, 166, 0.05, 6.87, 0, 1),
(185, 'Fruits', 'fruits', 'E024', 'Grapes , seeded , round , red', 'Grapes, red(draksh)', 100, 100, 244, 58.317, 59, 7.405, 12.55, 0.95, 1.28, 0.43, 0.85, 0.29, 0, 0.04, 0.03, 0.1, 1.09, 7.49, 20.59, 6.87, 11.27, 27.91, 0.33, 1.59, 188, 0.07, 7.06, 0, 1),
(186, 'Fruits', 'fruits', 'E025', 'Grapes , seedless , oval , black', 'Grapes, black(draksh)', 100, 100, 395, 94.407, 59, 12.083, 20.48, 1.41, 1.64, 0.66, 0.98, 0.46, 0, 0.03, 0.02, 0.15, 0.97, 7.22, 27.32, 6.42, 15.26, 29.02, 0.28, 1.83, 237, 0.1, 11.29, 0, 1),
(187, 'Fruits', 'fruits', 'E026', 'Grapes , seedless , round , green', 'Grapes, green(draksh)', 100, 100, 224, 53.537, 46, 5.433, 11.81, 0.62, 1.28, 0.44, 0.85, 0.26, 0, 0.04, 0.03, 0.12, 1.2, 8.31, 16.47, 3.54, 14.22, 20.27, 0.24, 1.81, 168, 0.05, 8.43, 0, 1),
(188, 'Fruits', 'fruits', 'E027', 'Grapes , seedless , round , black', 'Grapes, black(draksh)', 100, 100, 374, 89.388, 59, 11.717, 19.86, 1.24, 1.15, 0.32, 0.83, 0.35, 0, 0.03, 0.03, 0.13, 1.27, 8.89, 22.79, 6.23, 18.75, 26.68, 0.39, 1.92, 235, 0.09, 10.8, 0, 1),
(189, 'Fruits', 'fruits', 'E028', 'Guava , white flesh ', 'Guava(jamphad)', 100, 100, 135, 32.266, 59, 3.027, 5.13, 1.44, 8.59, 1.45, 7.14, 0.32, 0, 0.05, 0.04, 0.6, 0.74, 29.76, 214, 1.68, 18.52, 23.54, 0.32, 2.87, 283, 0.23, 15.26, 0, 1),
(190, 'Fruits', 'fruits', 'E029', 'Guava , pink flesh', 'Guava(jamphad)', 100, 100, 195, 46.606, 59, 5.393, 9.14, 1.19, 7.39, 1.28, 6.12, 0.25, 0, 0.03, 0.03, 0.59, 1.25, 32.17, 222, 0.93, 14.22, 29.93, 0.4, 1.89, 270, 0.21, 13.26, 0, 1),
(191, 'Fruits', 'fruits', 'E030', 'Jack fruit , ripe ', 'Jack fruit(phanas)', 100, 100, 302, 72.18, 0, 0, 14.01, 2.74, 3.62, 1.41, 2.21, 0.15, 0, 0.05, 0.01, 0.42, 4, 32.15, 6.73, 7.49, 35.03, 23.02, 0.36, 1.62, 279, 0.17, 31.84, 0, 1),
(192, 'Fruits', 'fruits', 'E031', 'Jambu fruit , ripe', 'Jambu fruit(jambu)', 100, 100, 235, 56.166, 0, 0, 12.3, 0.82, 3.07, 0.67, 2.4, 0.17, 0, 0.02, 0.02, 0.14, 2.57, 7.63, 16.47, 0.82, 25.36, 9.6, 0.33, 2.64, 103, 0.06, 27.97, 0, 1),
(193, 'Fruits', 'fruits', 'E032', 'Karonda fruit ', 'Karonda(karamda)', 100, 100, 141, 33.7, 0, 0, 2.87, 1.15, 7.25, 1.38, 5.87, 1.67, 0, 0.01, 0.02, 0.25, 1.55, 8.72, 135, 1.43, 10.81, 32.62, 0.87, 2.55, 351, 0.25, 24.45, 0, 1),
(194, 'Fruits', 'fruits', 'E033', 'Lemon , juice', 'Lemon, juice(limbu)', 100, 100, 153, 36.568, 0, 0, 6.97, 0.41, 0, 0, 0, 0.75, 0, 0.04, 0.01, 0.1, 1.92, 12.43, 48.16, 0.39, 22.68, 9.86, 0.12, 1.21, 113, 0.08, 8.9, 0, 1),
(195, 'Fruits', 'fruits', 'E034', 'Lime , sweet , pulp', 'Lime(mosambi)', 100, 100, 114, 27.247, 0, 0, 5.18, 0.76, 2.07, 0.74, 1.33, 0.2, 0, 0.06, 0.01, 0.17, 2.23, 15.38, 46.96, 0.3, 25.79, 20.55, 0.11, 1.17, 182, 0.05, 15.4, 0, 1),
(196, 'Fruits', 'fruits', 'E035', 'Litchi', 'Litchi(lichi)', 100, 100, 225, 53.776, 79, 9.014, 11.41, 0.99, 1.34, 0.53, 0.81, 0.26, 0, 0.02, 0.06, 0.23, 2.8, 15.69, 33.82, 0.33, 5.77, 23.32, 0.79, 0.54, 161, 0.24, 14.58, 0, 1),
(197, 'Fruits', 'fruits', 'E036', 'Mango , ripe , banganapalli', 'Mango, banganapalli(mango)', 100, 100, 175, 41.826, 51, 4.172, 8.18, 0.54, 1.88, 0.87, 1.01, 0.55, 0, 0.03, 0.04, 0.26, 1.6, 82.05, 32.97, 3.71, 15.77, 11.07, 0.51, 1.34, 144, 0.12, 13.35, 0, 1),
(198, 'Fruits', 'fruits', 'E037', 'Mango , ripe , gulabkhas', 'Mango, gulabkhas(mango)', 100, 100, 209, 49.952, 51, 5.263, 10.32, 0.52, 1.67, 0.64, 1.03, 0.53, 0, 0.03, 0.04, 0.23, 1.01, 84.35, 27.65, 3.91, 19.33, 10.66, 0.38, 1.39, 115, 0.06, 11.53, 0, 1);
INSERT INTO `ingredients` (`ingredient_id`, `ingrediant_type`, `food_group`, `food_code`, `food_name`, `guju_name`, `quantity`, `one_exchange`, `energy_kj`, `energy_kcal`, `gi_value`, `gl_value`, `carbohydrate`, `protein`, `total_fibre`, `solublf`, `in_solublf`, `invisible_totalfat`, `visiblefat`, `thiamine`, `riboflavin`, `niacin`, `biotin`, `folates`, `ascorbic_Acid`, `vitamin_d2d3`, `calcium`, `phosphorous`, `iron`, `sodium`, `potassium`, `zinc`, `magnesium`, `sfa`, `isActive`) VALUES
(199, 'Fruits', 'fruits', 'E038', 'Mango , ripe , himsagar', 'Mango, himsagar(mango)', 100, 100, 187, 44.694, 51, 4.605, 9.03, 0.46, 1.55, 0.73, 0.82, 0.54, 0, 0.03, 0.03, 0.27, 1.46, 90.98, 49.09, 3.73, 15.54, 12.25, 0.29, 1.31, 137, 0.12, 12.07, 0, 1),
(200, 'Fruits', 'fruits', 'E039', 'Mango , ripe , kesar', 'Mango, kesar(mango)', 100, 100, 231, 55.21, 51, 5.794, 11.36, 0.54, 2.02, 0.93, 1.09, 0.57, 0, 0.03, 0.04, 0.26, 1.67, 90.43, 29.08, 3.68, 15.74, 12.36, 0.43, 1.43, 143, 0.1, 12.53, 0, 1),
(201, 'Fruits', 'fruits', 'E040', 'Mango , ripe , neelam', 'Mango, neelam(mango)', 100, 100, 178, 42.543, 51, 4.187, 8.21, 0.68, 1.77, 0.79, 0.97, 0.55, 0, 0.03, 0.04, 0.23, 1.02, 68.7, 29.93, 3.72, 11.36, 11.63, 0.36, 1.2, 137, 0.07, 10.1, 0, 1),
(202, 'Fruits', 'fruits', 'E041', 'Mango , ripe , paheri', 'Mango, paheri(mango)', 100, 100, 188, 44.933, 51, 4.422, 8.67, 0.68, 1.97, 0.98, 0.99, 0.58, 0, 0.03, 0.04, 0.28, 1.73, 65.28, 30.75, 3.62, 15.11, 15.18, 0.51, 1.63, 153, 0.2, 14.28, 0, 1),
(203, 'Fruits', 'fruits', 'E042', 'Mango , ripe , totapari', 'Mango, totapari(mango)', 100, 100, 248, 59.273, 51, 6.503, 12.75, 0.41, 1.73, 0.78, 0.95, 0.49, 0, 0.02, 0.05, 0.27, 1.64, 77.69, 25.26, 3.77, 13.34, 9.87, 0.28, 1.32, 160, 0.08, 12.55, 0, 1),
(204, 'Fruits', 'fruits', 'E043', 'Mangosteen', 'Mangosteen', 100, 100, 219, 52.342, 51, 5.819, 11.41, 0.63, 1.87, 0.64, 1.23, 0.24, 0, 0.01, 0.01, 0.58, 0.81, 13.52, 26.33, 0, 4.69, 7.18, 0.28, 3.79, 46.93, 0.21, 12, 0, 1),
(205, 'Fruits', 'fruits', 'E044', 'Manila tamarind ', 'Manila tamarind(goras ambli)', 100, 100, 342, 81.74, 65, 8.801, 13.54, 3.56, 4.4, 1.1, 3.3, 1.14, 0, 0.18, 0.14, 0.4, 0.22, 4.24, 55.78, 0, 8.51, 73.53, 0.71, 1.35, 376, 0.56, 32.98, 0, 1),
(206, 'Fruits', 'fruits', 'E045', 'Musk melon , orange flesh', 'Musk melon(sakarteti)', 100, 100, 97, 23.184, 65, 2.756, 4.24, 0.42, 1.51, 0.67, 0.84, 0.35, 0, 0.01, 0.01, 0.41, 0.75, 22.31, 22.76, 4.41, 9.8, 17.28, 0.18, 14.94, 206, 0.09, 11.62, 0, 1),
(207, 'Fruits', 'fruits', 'E046', 'Musk melon , yellow flesh', 'Musk melon(sakarteti)', 100, 100, 116, 27.725, 65, 3.51, 5.4, 0.53, 1.49, 0.7, 0.79, 0.26, 0, 0.01, 0.02, 0.43, 0.8, 20.23, 21.32, 2.33, 9.02, 13.09, 0.21, 15.78, 196, 0.09, 9.81, 0, 1),
(208, 'Fruits', 'fruits', 'E047', 'Orange , pulp', 'Orange(orange)', 100, 100, 156, 37.285, 42, 3.326, 7.92, 0.7, 1.29, 0.56, 0.73, 0.13, 0, 0.07, 0.02, 0.28, 2.88, 19.46, 24.72, 0.34, 19.52, 12.9, 0.81, 1.47, 164, 0.04, 11.05, 0, 1),
(209, 'Fruits', 'fruits', 'E048', 'Plam fruit , tender', 'Plam fruit', 100, 100, 101, 24.14, 39, 1.919, 4.92, 0.5, 2.4, 0.53, 1.87, 0.12, 0, 0.01, 0, 0.46, 2.49, 24.4, 0.25, 0, 0, 0, 0, 1.25, 158, 0.05, 0, 0, 1),
(210, 'Fruits', 'fruits', 'E049', 'Papaya , ripe', 'Papaya(papaya)', 100, 100, 100, 23.901, 60, 2.766, 4.61, 0.42, 2.83, 1.08, 1.75, 0.16, 0, 0.03, 0.11, 0.33, 3.05, 60.9, 43.09, 11.47, 15.02, 17.73, 0.23, 6.68, 173, 0.08, 10.97, 0, 1),
(211, 'Fruits', 'fruits', 'E050', 'Peach', 'Peach', 100, 100, 168, 40.153, 42, 3.284, 7.82, 0.86, 2.13, 0.91, 1.22, 0.37, 0, 0.02, 0.02, 0.29, 1.43, 6.34, 5.49, 2.41, 6.98, 19.08, 0.35, 1.15, 281, 0.1, 8.06, 0, 1),
(212, 'Fruits', 'fruits', 'E051', 'Pear', 'Pear(naspati)', 100, 100, 157, 37.524, 38, 3.074, 8.09, 0.36, 4.48, 0.46, 4.02, 0.27, 0, 0.02, 0.02, 0.13, 1.41, 5.28, 3.31, 1.48, 6.55, 6.74, 0.28, 1.64, 106, 0.07, 7.61, 0, 1),
(213, 'Fruits', 'fruits', 'E052', 'Phalsa', 'Phalsa(falsa)', 100, 100, 299, 71.463, 0, 0, 15.09, 1.66, 4.54, 1.09, 3.44, 0.14, 0, 0.03, 0.06, 0.4, 1.49, 22.56, 5.11, 1.34, 153, 23.65, 2.01, 1.99, 362, 0.48, 76.92, 0, 1),
(214, 'Fruits', 'fruits', 'E053', 'Pineapple', 'Pineapple(pineapple)', 100, 100, 180, 43.021, 59, 5.558, 9.42, 0.52, 3.46, 0.59, 2.88, 0.16, 0, 0.05, 0.03, 0.12, 1.05, 18.21, 36.37, 0.21, 10.88, 13.56, 0.28, 1.43, 143, 0.1, 12.68, 0, 1),
(215, 'Fruits', 'fruits', 'E054', 'Plum', 'Plum(aallu)', 100, 100, 238, 56.883, 39, 4.719, 12.1, 0.64, 2.07, 0.84, 1.23, 0.4, 0, 0.02, 0.02, 0.44, 0.3, 14.29, 2.26, 3.32, 7.61, 13.83, 0.25, 1.55, 162, 0.1, 7.79, 0, 1),
(216, 'Fruits', 'fruits', 'E055', 'Pomegranate , maroon seeds', 'Pomegranate(dadam)', 100, 100, 229, 54.732, 0, 0, 11.58, 1.33, 2.83, 0.57, 2.26, 0.15, 0, 0.06, 0.01, 0.2, 0.6, 38.64, 12.69, 109, 10.65, 27.2, 0.31, 2.13, 206, 0.18, 11.07, 0, 1),
(217, 'Fruits', 'fruits', 'E056', 'Pummelo', 'Pummelo(papnuse)', 100, 100, 210, 50.191, 0, 0, 10.64, 0.68, 0.8, 0.31, 0.49, 0.42, 0, 0.06, 0.02, 0.23, 1.81, 13.44, 48.89, 0.98, 14.03, 13.99, 0.06, 1.6, 189, 0.06, 6.83, 0, 1),
(218, 'Fruits', 'fruits', 'E057', 'Raisins , dried , black', 'Raisins, black(suki draksha)', 100, 100, 1279, 305.688, 64, 45.626, 71.29, 2.57, 3.92, 1.37, 2.55, 0.34, 0, 0.09, 0.04, 0.48, 0.73, 38.3, 2.05, 1.76, 73.24, 77.62, 6.81, 10.99, 1105, 0.22, 33.76, 0, 1),
(219, 'Fruits', 'fruits', 'E058', 'Raisins , dried , golden', 'Raisins, golden(suki lal draksha)', 100, 100, 1241, 296.606, 64, 44.026, 68.79, 2.76, 4.56, 1.53, 3.04, 0.35, 0, 0.09, 0.04, 0.64, 0.75, 34.68, 1.85, 11.87, 51.83, 93.3, 4.26, 10.16, 913, 0.25, 28.32, 0, 1),
(220, 'Fruits', 'fruits', 'E059', 'Rambutan', 'Rambutan', 100, 100, 306, 73.136, 0, 0, 16.84, 0.68, 1.02, 0.3, 0.71, 0.16, 0, 0.11, 0.01, 0.26, 0.64, 7.35, 65, 2.4, 8.67, 6.98, 0.37, 1.75, 131, 0.53, 21.38, 0, 1),
(221, 'Fruits', 'fruits', 'E060', 'Sapota ', 'Sapota ', 100, 100, 307, 73.375, 0, 0, 13.9, 0.92, 9.6, 1.14, 8.46, 1.26, 0, 0.01, 0.03, 0.24, 1.48, 10.83, 20.96, 0.65, 17.87, 22.26, 0.49, 4.61, 280, 0.18, 16.19, 0, 1),
(222, 'Fruits', 'fruits', 'E061', 'Soursop', 'Soursop', 100, 100, 260, 62.141, 0, 0, 11.94, 0.74, 4.95, 1.16, 3.79, 0.94, 0, 0.03, 0.04, 0.85, 0.23, 6.09, 59.54, 3.24, 10.05, 25.83, 0.29, 6.78, 264, 0.12, 17.7, 0, 1),
(223, 'Fruits', 'fruits', 'E062', 'Star fruit', 'Star fruit(amrakh)', 100, 100, 110, 26.291, 0, 0, 4.51, 0.79, 2.81, 0.64, 2.17, 0.39, 0, 0.08, 0.02, 0.34, 0.13, 8.43, 33.55, 0.96, 4.97, 11.67, 0.45, 1.56, 159, 0.24, 11.53, 0, 1),
(224, 'Fruits', 'fruits', 'E063', 'Strawberry', 'Strawberry', 100, 100, 103, 24.618, 40, 1.36, 3.4, 0.97, 2.5, 0.99, 1.51, 0.56, 0, 0.06, 0.01, 0.48, 0.07, 8.91, 50.2, 3.95, 15.28, 26.31, 0.36, 1.19, 140, 0.14, 15.53, 0, 1),
(225, 'Fruits', 'fruits', 'E064', 'Tamarind , pulp', 'Tamarind(amli)', 100, 100, 1207, 288.48, 0, 0, 67.35, 2.92, 5.31, 1.58, 3.73, 0.15, 0, 0.34, 0.07, 1.56, 0.66, 9.79, 3.62, 25.65, 149, 113, 9.16, 24.92, 836, 0.58, 82.73, 0, 1),
(226, 'Fruits', 'fruits', 'E065', 'Water melon , dark green (sugur baby)', 'Water melon(tadbuch)', 100, 100, 85, 20.315, 72, 2.779, 3.86, 0.6, 0.7, 0.34, 0.35, 0.16, 0, 0.02, 0.02, 0.28, 0.59, 5.88, 13.26, 0.56, 5.29, 11.33, 0.22, 1.89, 124, 0.1, 9.91, 0, 1),
(227, 'Fruits', 'fruits', 'E066', 'Water melon , pale green ', 'Water melon(tadbuch)', 100, 100, 70, 16.73, 72, 2.174, 3.02, 0.59, 0.78, 0.38, 0.4, 0.16, 0, 0.02, 0.02, 0.3, 0.57, 5.55, 11.45, 0.56, 4.35, 8.09, 0.16, 1.62, 126, 0.07, 7.42, 0, 1),
(228, 'Fruits', 'fruits', 'E067', 'Wood apple', 'Wood apple(kothu)', 100, 100, 327, 78.155, 0, 0, 7.52, 3.14, 5.21, 1.44, 3.77, 3.62, 0, 0.04, 0.01, 0.55, 1.65, 6.51, 22.17, 28.71, 55.71, 84.32, 0.45, 1.48, 347, 0.31, 23.7, 0, 1),
(229, 'Fruits', 'fruits', 'E068', 'Zuzyphus', 'Zuzyphus(ber)', 100, 100, 204, 48.757, 0, 0, 9.4, 1.34, 3.73, 1.02, 2.71, 0.35, 0, 0.01, 0.02, 0.33, 2.22, 5.99, 60.93, 16.7, 46.55, 32.38, 0.4, 1.52, 237, 0.1, 16.72, 0, 1),
(230, 'Roots', 'vegetables', 'F001', 'Beet root ', 'Beet root(beet)', 100, 100, 149, 35.612, 64, 3.955, 6.18, 1.95, 3.31, 0.71, 2.6, 0.14, 0, 0.01, 0.01, 0.21, 2.56, 97.37, 5.26, 0.18, 17.28, 36.33, 0.76, 69.44, 306, 0.3, 33.21, 0, 1),
(231, 'Roots', 'vegetables', 'F002', 'Carrot , orange', 'Carrot(gajar)', 100, 100, 139, 33.222, 41, 2.276, 5.55, 0.95, 4.18, 1.37, 2.81, 0.47, 0, 0.04, 0.03, 0.22, 1.5, 24.04, 6.22, 1.36, 35.09, 43.06, 0.6, 52.33, 273, 0.25, 16.73, 0, 1),
(232, 'Roots', 'vegetables', 'F003', 'Carrot , red', 'Carrot(gajar)', 100, 100, 160, 38.241, 41, 2.751, 6.71, 1.04, 4.49, 1.4, 3.09, 0.47, 0, 0.04, 0.03, 0.25, 1.3, 23.67, 6.76, 1.39, 41.06, 25.81, 0.71, 60.69, 267, 0.34, 18.83, 0, 1),
(233, 'Roots', 'vegetables', 'F004', ' colocasia', ' colocasia(advi)', 100, 100, 372, 88.91, 0, 0, 17.85, 3.31, 3.22, 0.68, 2.54, 0.17, 0, 0.06, 0.03, 0.51, 3.69, 19.91, 1.83, 0.27, 30.18, 81.16, 0.66, 4.54, 514, 0.41, 36.93, 0, 1),
(234, 'Roots', 'vegetables', 'F005', 'Lotus root', 'Lotus root(kamad kakdi)', 100, 100, 332, 79.35, 32, 4.694, 14.67, 1.94, 4.7, 1.84, 2.86, 0.93, 0, 0.07, 0.05, 0.43, 2.85, 26.49, 26.63, 0.27, 37.71, 74.3, 3.34, 20.63, 611, 0.35, 26.58, 0, 1),
(235, 'Roots', 'vegetables', 'F006', 'Potato , brown skin ,big', 'Potato(bataka)', 100, 100, 292, 69.79, 62, 9.232, 14.89, 1.54, 1.71, 0.58, 1.13, 0.23, 0, 0.06, 0.01, 1.04, 1.35, 15.51, 23.15, 0.19, 9.52, 43.42, 0.57, 4.11, 541, 0.28, 24.07, 0, 1),
(236, 'Roots', 'vegetables', 'F007', 'Lotus root', 'Potato(bataka)', 100, 100, 255, 60.946, 62, 7.998, 12.9, 1.35, 1.69, 0.54, 1.15, 0.22, 0, 0.05, 0.01, 1.36, 1.82, 13.85, 26.41, 0.22, 8.53, 37.9, 0.53, 3.97, 474, 0.38, 22.34, 0, 1),
(237, 'Roots', 'vegetables', 'F008', 'Potato , red skin', 'Potato(bataka)', 100, 100, 306, 73.136, 62, 9.567, 15.43, 1.83, 1.68, 0.57, 1.11, 0.22, 0, 0.06, 0.01, 1.13, 1.68, 17.83, 25.04, 0.2, 8.62, 30.39, 0.66, 4.36, 501, 0.34, 25.54, 0, 1),
(238, 'Roots', 'vegetables', 'F009', 'Radish , elongate , red skin', 'Radish(muda)', 100, 100, 134, 32.027, 32, 2.147, 6.71, 0.67, 2.46, 0.49, 1.96, 0.13, 0, 0.03, 0.02, 0.31, 2.65, 24.65, 17.63, 0.04, 28.44, 27.51, 0.37, 24.73, 255, 0.16, 13.34, 0, 1),
(239, 'Roots', 'vegetables', 'F010', 'Radish , elongate , white skin', 'Radish(muda)', 100, 100, 135, 32.266, 32, 2.099, 6.56, 0.77, 2.65, 0.67, 1.98, 0.15, 0, 0.02, 0.02, 0.3, 2.48, 29.75, 19.91, 0.05, 30.2, 30.1, 0.36, 28.2, 288, 0.22, 16.07, 0, 1),
(240, 'Roots', 'vegetables', 'F011', 'Radish , round , red skin', 'Radish(muda)', 100, 100, 130, 31.071, 32, 1.942, 6.07, 0.89, 2.29, 0.73, 1.56, 0.16, 0, 0.03, 0.02, 0.3, 2.92, 24.59, 15.69, 0.05, 35.76, 28.27, 0.42, 32.27, 308, 0.18, 22.25, 0, 1),
(241, 'Roots', 'vegetables', 'F012', 'Radish , round , white skin', 'Radish(muda)', 100, 100, 129, 30.832, 32, 1.962, 6.13, 0.8, 2.37, 0.74, 1.63, 0.14, 0, 0.03, 0.02, 0.24, 2.59, 22.6, 14, 0.04, 34.23, 29.47, 0.41, 24.14, 287, 0.17, 15.46, 0, 1),
(242, 'Roots', 'vegetables', 'F013', 'Sweet potato , brown skin', 'Sweet potato(sakkaria)', 100, 100, 456, 108.987, 61, 14.793, 24.25, 1.33, 3.99, 1.43, 2.57, 0.26, 0, 0.07, 0.04, 0.67, 5.19, 15.62, 17.94, 1.26, 27.5, 42.96, 0.35, 29.6, 345, 0.16, 17.37, 0, 1),
(243, 'Roots', 'vegetables', 'F014', 'Sweet potato , pink skin', 'Sweet potato(sakkaria)', 100, 100, 452, 108.031, 61, 14.597, 23.93, 1.27, 3.94, 1.41, 2.53, 0.33, 0, 0.06, 0.04, 0.69, 5.71, 14.44, 22.2, 1.64, 28.93, 37.6, 0.51, 29.04, 329, 0.14, 21.05, 0, 1),
(244, 'Roots', 'vegetables', 'F015', 'Tapioca ', 'Tapioca(aararoot)', 100, 100, 334, 79.828, 0, 0, 17.81, 1.03, 4.61, 0.76, 3.85, 0.2, 0, 0.07, 0.02, 0.45, 1.93, 25.64, 15.51, 0.13, 25.89, 42.55, 0.81, 10.86, 255, 0.17, 23.08, 0, 1),
(245, 'Roots', 'vegetables', 'F016', ' colocasia', ' colocasia(shingoda)', 100, 100, 400, 95.602, 0, 0, 21.46, 0.86, 3.02, 0.87, 2.15, 0.37, 0, 0.02, 0.02, 0.74, 1.08, 9.8, 5.26, 1.2, 37.15, 62.83, 0.77, 13.08, 382, 0.67, 57.43, 0, 1),
(246, 'Roots', 'vegetables', 'F017', 'Yam , wild', 'Yam(suran)', 100, 100, 353, 84.369, 37, 6.46, 17.46, 2.56, 4.17, 0.92, 3.25, 0.14, 0, 0.04, 0.05, 0.61, 4.51, 20.54, 15.22, 1.3, 46.91, 43.06, 1.22, 14.33, 501, 0.26, 33.51, 0, 1),
(247, 'Roots', 'vegetables', 'F018', 'Potato , brown skin ,big', 'Ratadu', 100, 100, 349, 83.413, 37, 6.531, 17.65, 2.18, 4.08, 0.76, 3.32, 0.17, 0, 0.04, 0.02, 0.56, 4.19, 15.68, 13.88, 0.23, 16.19, 49.46, 0.77, 15.28, 463, 0.33, 30.4, 0, 1),
(248, 'Roots', 'vegetables', 'F019', 'Yam , wild', 'Ratadu', 100, 100, 430, 102.772, 37, 7.752, 20.95, 3.07, 4.57, 1.29, 3.29, 0.3, 0, 0.121, 0.015, 0.7, 4.09, 21.01, 14.06, 1.18, 44.13, 55.94, 1.04, 12.8, 654, 0.31, 31.75, 0, 1),
(249, 'Condiments & Spices-Fresh', 'vegetables', 'G001', 'Chillies , green-1', 'Chillies(marcha)', 100, 100, 191, 45.65, 32, 2.02, 6.32, 2.62, 4.86, 1.55, 3.31, 0.73, 0, 0.11, 0.09, 0.8, 0.5, 25.31, 79.5, 3.14, 24.1, 62.16, 1.46, 3.32, 431, 0.31, 34.72, 0, 1),
(250, 'Condiments & Spices-Fresh', 'vegetables', 'G002', 'Chillies , green-2', 'Chillies(marcha)', 100, 100, 167, 39.91, 32, 1.68, 5.27, 2.28, 5.13, 1.34, 3.79, 0.75, 0, 0.08, 0.09, 0.93, 0.64, 25.93, 90.97, 3.49, 16.86, 51.72, 1.24, 2.47, 321, 0.26, 27.54, 0, 1),
(251, 'Condiments & Spices-Fresh', 'vegetables', 'G003', 'Chillies , green-3', 'Chillies(marcha)', 100, 100, 169, 40.39, 32, 1.67, 5.23, 2.38, 5.1, 1.5, 3.61, 0.75, 0, 0.09, 0.11, 0.87, 0.64, 20.45, 93.63, 3.17, 18.04, 50.24, 1.25, 2.56, 317, 0.27, 29.9, 0, 1),
(252, 'Condiments & Spices-Fresh', 'vegetables', 'G004', 'Chillies , green-4', 'Chillies(marcha)', 100, 100, 190, 45.41, 32, 2.12, 6.63, 2.33, 4.15, 1.31, 2.84, 0.74, 0, 0.09, 0.12, 0.9, 0.62, 15.92, 102, 2.87, 15.87, 42.79, 1.08, 1.94, 318, 0.28, 29.74, 0, 1),
(253, 'Condiments & Spices-Fresh', 'vegetables', 'G005', 'Chillies , green-5', 'Chillies(marcha)', 100, 100, 180, 43.02, 32, 2.12, 6.64, 2.01, 3.95, 1.12, 2.83, 0.65, 0, 0.08, 0.16, 1.06, 0.57, 17.75, 97.77, 3.26, 15.31, 44.35, 0.93, 2.19, 317, 0.31, 23.96, 0, 1),
(254, 'Condiments & Spices-Fresh', 'vegetables', 'G006', 'Chillies , green-6', 'Chillies(marcha)', 100, 100, 175, 41.82, 32, 1.69, 5.31, 3.01, 5.15, 1.24, 3.91, 0.64, 0, 0.07, 0.13, 0.92, 0.73, 18.87, 108, 2.19, 24.82, 56.05, 0.75, 2.43, 340, 0.29, 34.8, 0, 1),
(255, 'Condiments & Spices-Fresh', 'vegetables', 'G007', 'Chillies , green-7', 'Chillies(marcha)', 100, 100, 163, 38.95, 32, 1.79, 5.61, 2.12, 4.95, 1.2, 3.75, 0.6, 0, 0.08, 0.11, 0.8, 1.21, 19.39, 112, 2.43, 16.85, 45.58, 1.23, 2, 319, 0.17, 26.71, 0, 1),
(256, 'Condiments & Spices-Fresh', 'vegetables', 'G008', 'Chillies , green - all varieties', 'Chillies(marcha)', 100, 100, 177, 42.3, 32, 1.87, 5.86, 2.36, 4.77, 1.37, 3.41, 0.72, 0, 0.09, 0.11, 0.89, 0.63, 21.5, 94.07, 3.11, 18.45, 50.91, 1.2, 2.5, 341, 0.27, 29.51, 0, 1),
(257, 'Condiments & Spices-Fresh', 'vegetables', 'G009', 'Coriander leaves', 'Coriander leaves(dhana)', 100, 100, 130, 31.071, 32, 0.618, 1.93, 3.52, 4.66, 1.42, 3.24, 0.7, 0, 0.09, 0.05, 0.73, 4.17, 51.01, 23.87, 3.55, 146, 64.69, 5.3, 37, 546, 0.68, 72.68, 0, 1),
(258, 'Condiments & Spices-Fresh', 'vegetables', 'G010', 'Curry leaves', 'Curry leaves(mitho limdo)', 100, 100, 266, 63.576, 32, 1.443, 4.51, 7.41, 16.83, 3.02, 13.81, 1.06, 0, 0.07, 0.13, 0.85, 1.77, 117, 6.04, 117, 659, 83.29, 8.67, 18.66, 584, 1.18, 182, 0, 1),
(259, 'Condiments & Spices-Fresh', 'vegetables', 'G011', 'Garlic , big clove', 'Garlic(lasan)', 100, 100, 518, 123.805, 32, 7.018, 21.93, 6.92, 5.22, 2.66, 2.56, 0.16, 0, 0.2, 0.25, 0.38, 2.55, 85.77, 12.62, 1.88, 20.08, 119, 1.05, 9.42, 430, 0.89, 27.08, 0, 1),
(260, 'Condiments & Spices-Fresh', 'vegetables', 'G012', 'Garlic , small clove', 'Garlic(lasan)', 100, 100, 514, 122.849, 32, 6.989, 21.84, 6.75, 5.47, 2.86, 2.61, 0.14, 0, 0.2, 0.23, 0.36, 2.54, 78.82, 13.57, 1.97, 17.63, 116, 0.88, 10.56, 453, 0.81, 25.78, 0, 1),
(261, 'Condiments & Spices-Fresh', 'vegetables', 'G013', 'Garlic , single clove , kashmir', 'Garlic(lasan)', 100, 100, 523, 125, 32, 7.507, 23.46, 6.12, 4.01, 1.81, 2.2, 0.16, 0, 0.25, 0.22, 0.42, 2.85, 92.25, 15.38, 2.89, 19, 128, 1.01, 8.87, 584, 0.66, 41.13, 0, 1),
(262, 'Condiments & Spices-Fresh', 'vegetables', 'G014', 'Ginger , fresh', 'Ginger(aadu)', 100, 100, 230, 54.971, 0, 0, 8.97, 2.22, 5.36, 1.08, 4.28, 0.85, 0, 0.04, 0.04, 0.42, 1.07, 10.82, 5.43, 4.09, 18.88, 44.36, 1.9, 10.03, 407, 0.39, 54.66, 0, 1),
(263, 'Condiments & Spices-Fresh', 'vegetables', 'G015', 'Mango ginger', 'Mango ginger(amba haldad)', 100, 100, 177, 42.304, 0, 0, 6.98, 1.45, 4.74, 0.95, 3.79, 0.7, 0, 0.02, 0.07, 0.45, 1.49, 22.62, 1.62, 3.1, 13.74, 68.33, 2.31, 5.51, 384, 0.47, 36.86, 0, 1),
(264, 'Condiments & Spices-Fresh', 'vegetables', 'G016', 'Mint leaves', 'Mint leaves(fudino)', 100, 100, 155, 37.046, 0, 0, 2.39, 4.66, 5.89, 1.4, 4.49, 0.65, 0, 0.02, 0.019, 0.74, 2.21, 106, 17.16, 3.37, 205, 65.25, 8.56, 16.87, 539, 0.75, 110, 0, 1),
(265, 'Condiments & Spices-Fresh', 'vegetables', 'G017', 'Onion , big ', 'Onion(dungri)', 100, 100, 201, 48.04, 32, 3.059, 9.56, 1.5, 2.45, 0.53, 1.92, 0.24, 0, 0.04, 0.01, 0.34, 2.61, 28.88, 6.69, 0.73, 21.03, 32.34, 0.43, 5.5, 171, 0.35, 17.96, 0, 1),
(266, 'Condiments & Spices-Fresh', 'vegetables', 'G018', 'Onion , small', 'Onion(dungri)', 100, 100, 237, 56.644, 32, 3.706, 11.58, 1.82, 1.16, 0.46, 0.7, 0.16, 0, 0.07, 0.02, 0.21, 2.69, 29.68, 10.96, 0.12, 19.92, 39.65, 0.53, 4.06, 160, 0.24, 15.16, 0, 1),
(267, 'Condiments & Spices-Dry', 'spices', 'G019', 'Asafoetida', 'Asafoetida(hing)', 100, 0, 1387, 331.501, 0, 0, 71.95, 6.34, 5.13, 1.23, 3.9, 1.26, 0, 0.82, 0.01, 0.43, 2.27, 26.28, 0, 12.59, 266, 69.09, 15.68, 16.04, 245, 0.98, 96.4, 0, 1),
(268, 'Condiments & Spices-Dry', 'spices', 'G020', 'Cardamom , green', 'Cardamom(alechi)', 100, 0, 1067, 255.019, 0, 0, 47.76, 8.1, 23.1, 2.64, 20.46, 2.6, 0, 0.12, 0.07, 1.13, 4.94, 2.85, 0, 43.72, 378, 132, 8.33, 15.51, 1262, 3.71, 330, 0, 1),
(269, 'Condiments & Spices-Dry', 'spices', 'G021', 'Cardamom , black', 'Cardamom(alechi)', 100, 0, 1132, 270.554, 0, 0, 52.53, 6.69, 23.46, 2.74, 20.73, 2.8, 0, 0.05, 0.13, 0.52, 4.76, 4.96, 0, 73.55, 312, 117, 7.94, 16.25, 1331, 4.75, 286, 0, 1),
(270, 'Condiments & Spices-Dry', 'spices', 'G022', 'Chillies , red', 'Chillies, red(lal marcha)', 100, 0, 990, 236.616, 32, 9.427, 29.46, 12.69, 31.15, 4.6, 26.55, 6.4, 0, 0.46, 0.83, 6.94, 0.92, 51.5, 0, 24.36, 99.83, 280, 6.23, 19.45, 2245, 1.66, 231, 0, 1),
(271, 'Condiments & Spices-Dry', 'spices', 'G023', 'Cloves', 'Cloves(laving)', 100, 0, 781, 186.663, 0, 0, 18.73, 5.86, 34.52, 6.46, 28.07, 8.41, 0, 0.53, 0.22, 1.15, 2.41, 32.81, 0, 45.07, 567, 83.1, 9.41, 183, 1434, 1.13, 334, 0, 1),
(272, 'Condiments & Spices-Dry', 'spices', 'G024', 'Coriander seeds', 'Coriander seeds(suka dhana)', 100, 0, 1125, 268.881, 0, 0, 12.98, 10.66, 44.81, 9.54, 35.27, 17.47, 0, 0.19, 0.23, 1.2, 1.46, 22.07, 0, 1.31, 718, 293, 17.64, 34.41, 1473, 3.91, 343, 0, 1),
(273, 'Condiments & Spices-Dry', 'spices', 'G025', 'Cumin seeds', 'Cumin seeds(jiru)', 100, 0, 1274, 304.493, 0, 0, 22.62, 13.91, 30.35, 4.62, 25.73, 16.64, 0, 0.52, 0.13, 2.87, 1.2, 27.79, 0, 12.1, 878, 382, 20.58, 125, 1886, 4.29, 442, 0, 1),
(274, 'Condiments & Spices-Dry', 'spices', 'G026', 'Fenugreek seeds', 'Fenugreek seeds(methi dana)', 100, 0, 983, 234.943, 0, 0, 10.57, 25.41, 47.55, 19.92, 27.63, 5.72, 0, 0.28, 0.14, 1.19, 1.54, 51.11, 0, 1.98, 135, 435, 8.47, 40.2, 891, 3.8, 167, 0, 1),
(275, 'Condiments & Spices-Dry', 'spices', 'G027', 'Mace ', 'Mace(javantri)', 100, 0, 1488, 355.641, 0, 0, 26.51, 6.24, 20.31, 3.54, 16.78, 24.41, 0, 0.13, 0.13, 0.92, 1.8, 32.65, 0, 44.92, 174, 110, 22.69, 27.17, 623, 1.16, 207, 0, 1),
(276, 'Condiments & Spices-Dry', 'spices', 'G028', 'Nutmeg', 'Nutmeg(jayphad)', 100, 0, 1940, 463.671, 0, 0, 27.64, 6.3, 11.99, 1.46, 10.54, 36.52, 0, 0.04, 0.05, 0.51, 1.59, 74.78, 0, 46.67, 148, 207, 2.33, 14.31, 474, 1.45, 212, 0, 1),
(277, 'Condiments & Spices-Dry', 'spices', 'G029', 'Omum', 'Omum(ajmo)', 100, 0, 1495, 357.314, 0, 0, 24.53, 15.89, 20.58, 3.38, 17.2, 21.11, 0, 0.3, 0.23, 1.23, 1.78, 51.79, 0, 2.62, 1034, 329, 13.65, 28.58, 1692, 5.67, 273, 0, 1),
(278, 'Condiments & Spices-Dry', 'spices', 'G030', 'Pippali', 'Pippali(khus khus)', 100, 0, 906, 216.539, 0, 0, 35.7, 10.53, 34.14, 4.57, 29.57, 2.27, 0, 0.06, 0.14, 1.06, 2.34, 66.45, 0, 118, 414, 181, 7.99, 16.28, 1852, 1.52, 189, 0, 1),
(279, 'Condiments & Spices-Dry', 'spices', 'G031', 'Pepper , black', 'Pepper(mari)', 100, 0, 910, 217.495, 0, 0, 36.22, 10.12, 33.16, 2.54, 30.61, 2.74, 0, 0.06, 0.09, 0.85, 3.49, 21.89, 0, 25.68, 405, 144, 11.91, 24.08, 1487, 1.24, 196, 0, 1),
(280, 'Condiments & Spices-Dry', 'spices', 'G032', 'Poppy seeds', 'Poppy seeds(aphina)', 100, 0, 1768, 422.562, 0, 0, 12.37, 20.31, 26.68, 11.06, 15.62, 30.38, 0, 0.87, 0.1, 0.77, 3.25, 78.73, 0, 33.92, 1372, 804, 10.13, 25.35, 646, 6.38, 393, 0, 1),
(281, 'Condiments & Spices-Dry', 'spices', 'G033', 'Turmeric powder', 'Turmeric powder(haddar)', 100, 0, 1174, 280.593, 0, 0, 49.22, 7.66, 21.38, 2.59, 18.79, 5.03, 0, 0.06, 0.01, 1.55, 0.76, 13.86, 0, 18.67, 122, 276, 46.08, 24.41, 2374, 2.64, 260, 0, 1),
(282, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H001', 'Almond ', 'Almond(badam)', 100, 10, 2549, 609.226, 0, 0, 3.04, 18.41, 13.06, 2.52, 10.55, 58.49, 0, 0.15, 0.26, 3.71, 2.39, 36.46, 0.74, 1.61, 228, 446, 4.59, 1.5, 699, 3.5, 318, 0, 1),
(283, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H002', 'Arecanut , dried , brown', 'Arecanut(supari)', 100, 10, 1467, 350.621, 0, 0, 70.42, 5.78, 11.44, 1.3, 10.14, 4.35, 0, 0.04, 0.03, 0.71, 1.66, 7.54, 0, 12.77, 61, 105, 2.74, 12.6, 524, 0.89, 76.39, 0, 1),
(284, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H003', 'Arecanut , dried , red color', 'Arecanut(supari)', 100, 10, 1477, 353.011, 0, 0, 70.27, 6.46, 11.11, 1.03, 10.09, 4.46, 0, 0.03, 0.24, 0.8, 2.94, 8.57, 0, 12.6, 51, 127, 3.26, 17.13, 617, 1.02, 91.01, 0, 1),
(285, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H004', 'Arecanut , fresh', 'Arecanut(supari)', 100, 10, 1024, 244.742, 0, 0, 45, 2.73, 7.63, 1.03, 6.69, 5.51, 0, 0.038, 0.031, 0.74, 1.7, 26.51, 0, 11.03, 34.03, 90.48, 1.04, 5.53, 329, 0.56, 47.6, 0, 1),
(286, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H005', 'Cashew nut', 'Cashew nut(kaju)', 100, 10, 2438, 582.696, 22, 5.601, 25.46, 18.78, 3.86, 1.63, 2.23, 45.2, 0, 0.61, 0.03, 1.03, 2.58, 25.2, 0, 3.85, 34, 500, 5.95, 9, 635, 5034, 307, 0, 1),
(287, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H006', 'Coconut , kernal , dry', 'Coconut dry(kopru)', 100, 10, 2611, 624.044, 0, 0, 8.01, 7.27, 15.88, 1.33, 14.55, 63.26, 0, 0.04, 0.04, 0.71, 1.01, 24.27, 0, 0, 32, 203, 3.13, 16.68, 739, 1041, 97.21, 0, 1),
(288, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H007', 'Coconut , kernel , fresh', 'Coconut fresh(kopru)', 100, 10, 1711, 408.939, 0, 0, 6.3, 3.84, 10.42, 0.99, 9.43, 41.38, 0, 0.03, 0.08, 0.3, 0.63, 25.41, 0.8, 0, 8, 67.73, 1.3, 8.12, 246, 0.58, 35, 0, 1),
(289, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H008', 'Garden cress , seeds', 'Garden cress(asadiyo)', 100, 10, 1863, 445.268, 0, 0, 33.66, 23.36, 8.27, 1.95, 6.33, 23.74, 0, 0.52, 0.15, 5.67, 8.66, 30.92, 0, 1.92, 318, 539, 17.2, 21.84, 952, 4.83, 307, 0, 1),
(290, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H009', 'Gingelly seeds , black', 'Gingelly seeds(kada til)', 100, 10, 2124, 507.648, 0, 0, 10.29, 19.17, 17.16, 3.59, 13.57, 43.1, 0, 0.34, 0.1, 3.12, 3.06, 127, 0, 67.83, 1664, 568, 13.9, 15.91, 480, 8.59, 390, 0, 1),
(291, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H010', 'Gingelly seeds , brown', 'Gingelly seeds(brown til)', 100, 10, 2161, 516.49, 0, 0, 9.76, 21.61, 17.21, 3.63, 13.58, 43.22, 0, 0.27, 0.08, 3.05, 3.48, 92.63, 0, 76.51, 1174, 613, 14.95, 11.94, 491, 7.84, 328, 0, 1),
(292, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H011', 'Gingelly seed , white', 'Gingelly seed(white til)', 100, 10, 2174, 519.598, 0, 0, 10.83, 21.7, 16.99, 3.51, 13.49, 43.05, 0, 0.36, 0.07, 3.94, 3.46, 131, 0, 62.74, 1283, 754, 15.04, 15.43, 460, 7.77, 372, 0, 1),
(293, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H012', 'Ground nut', 'Ground nut(sing dana)', 100, 10, 2176, 520.076, 0, 0, 17.27, 23.65, 10.38, 1.79, 8.58, 39.63, 0, 0.57, 0.12, 11.35, 1.61, 90.87, 0, 7.1, 54, 391, 3.44, 12.21, 679, 3.18, 197, 0, 1),
(294, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H013', 'Mustard seeds', 'Mustard seeds(rai)', 100, 10, 2132, 509.56, 0, 0, 16.8, 19.51, 14.1, 3.47, 10.63, 40.19, 0, 0.55, 0.33, 3.8, 1.45, 94.88, 0, 31.79, 402, 715, 13.49, 3.97, 694, 4.03, 266, 0, 1),
(295, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H014', 'Linseeds', 'Linseeds(adsi)', 100, 10, 1857, 443.834, 0, 0, 10.99, 18.55, 26.17, 4.33, 21.83, 35.67, 0, 0.28, 0.05, 1.09, 21.25, 86.5, 0, 0.55, 257, 445, 5.44, 32.93, 655, 4.86, 349, 0, 1),
(296, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H015', 'Niger seeds , black', 'Niger seeds(kada tal)', 100, 10, 2144, 512.428, 0, 0, 22.98, 18.92, 10.93, 0.43, 10.5, 38.61, 0, 0.46, 0.23, 1.14, 2.37, 140, 0, 2.52, 572, 461, 18.19, 10.7, 716, 4.98, 346, 0, 1),
(297, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H016', 'Niger seeds , gray', 'Niger seeds(gray tal)', 100, 10, 2128, 508.604, 0, 0, 20.59, 18.34, 10.96, 0.41, 10.54, 39.53, 0, 0.38, 0.35, 0.88, 2.4, 73.13, 0, 2.7, 375, 474, 19.61, 8.08, 874, 3.62, 379, 0, 1),
(298, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H017', 'Pine seed', 'Pine seed(chilgoza)', 100, 10, 2486, 594.168, 0, 0, 26.77, 12.55, 3.79, 1.57, 2.23, 48.79, 0, 0.36, 0.08, 3.52, 18.46, 31.64, 0, 0.61, 17, 618, 4.5, 1.31, 686, 4.18, 268, 0, 1),
(299, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H018', 'Pistachio nuts', 'Pistachio nuts(pista)', 100, 10, 2257, 539.436, 0, 0, 15.82, 23.35, 10.64, 2.41, 8.23, 42.49, 0, 0.98, 0.04, 0.86, 11.82, 64.9, 0, 1.8, 135, 537, 4.5, 6.93, 1053, 2.42, 149, 0, 1),
(300, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H019', 'Safflower seeds', 'Safflower seeds(kusumbo)', 100, 10, 1981, 473.47, 0, 0, 30.18, 17.66, 13.49, 3.25, 10.24, 30.87, 0, 0.85, 0.15, 1.12, 17.37, 82.41, 0, 1.91, 211, 644, 4.06, 3.05, 550, 3.9, 321, 0, 1),
(301, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H020', 'Sunflower seeds', 'Sunflower seeds(suryamukhi na bee)', 100, 10, 2453, 586.281, 0, 0, 6.85, 23.53, 10.8, 2.29, 8.51, 51.85, 0, 0.59, 0.13, 1.6, 2.44, 81.79, 0, 1.54, 176, 752, 5.85, 1.9, 559, 7.07, 413, 0, 1),
(302, 'Nuts &  Oil Seeds', 'Nuts &  Oil Seeds', 'H021', 'Walnut', 'Walnut(akhrot)', 100, 10, 2809, 671.367, 20, 2.028, 10.14, 14.92, 5.39, 0.65, 4.74, 64.27, 0, 0.4, 0.12, 0.86, 13.05, 57.95, 0.88, 46.31, 105, 400, 3.21, 1.33, 457, 2.94, 180, 0, 1),
(303, 'Sugars', 'sugar', 'I001', 'Jaggery , can', 'Jaggery(god)', 100, 5, 1480, 353.728, 0, 0, 84.87, 1.85, 0, 0, 0, 0.16, 0, 0.04, 0.01, 0.02, 0.58, 14.4, 0, 0.47, 107, 74.53, 4.63, 25.38, 488, 0.45, 115, 0, 1),
(304, 'Sugars', 'sugar', 'I002', 'Sugarcane , juice', 'Sugarcane , juice(serdi no ras)', 100, 5, 242, 57.83, 0, 0, 13.11, 0.16, 0.56, 0.16, 0.4, 0.4, 0, 0.03, 0.04, 0.14, 0.59, 44.53, 6.73, 0.41, 18, 22.08, 1.12, 1.16, 150, 0.14, 13.03, 0, 1),
(305, 'Mushrooms', 'vegetables', 'J001', 'Button mushroom , fresh', 'Button mushroom(mushroom)', 100, 100, 115, 27.486, 32, 0.634, 1.98, 3.68, 3.11, 0.35, 2.76, 0.42, 0, 0.01, 0.03, 0.68, 9.23, 8.28, 0, 20.54, 18.38, 87.11, 0.29, 7.72, 318, 0.17, 18.3, 0, 1),
(306, 'Mushrooms', 'vegetables', 'J002', 'Chicken mushroom , fresh', 'Chicken mushroom(mushroom)', 100, 100, 89, 21.272, 32, 0.883, 2.76, 1.84, 1.99, 0.18, 1.82, 0.25, 0, 0.37, 0.06, 1.45, 8.94, 11.13, 0.45, 27.58, 4.83, 79.74, 0.3, 10.22, 340, 0.55, 10.78, 0, 1),
(307, 'Mushrooms', 'vegetables', 'J003', 'Shiitake mushroom , fresh', 'Shiitake mushroom(mushroom)', 100, 100, 243, 58.078, 32, 2.874, 8.98, 3.19, 3.02, 0.99, 2.03, 0.76, 0, 0.05, 0.16, 1.92, 10.6, 10.92, 0, 36.4, 5.3, 96.36, 1.93, 9.3, 323, 1.21, 24.47, 0, 1),
(308, 'Mushrooms', 'vegetables', 'J004', 'Oyster mushroom , dried', 'Oyster mushroom(mushroom)', 100, 100, 1019, 243.547, 32, 10.582, 33.07, 19.04, 39.12, 3.48, 35.64, 2.86, 0, 0.24, 0.17, 3.77, 22.51, 10.4, 0, 109, 23.61, 702, 3.58, 8.67, 350, 8.67, 136, 0, 1),
(309, 'Miscellaneouos Food', '', 'K001', 'Toddy', 'Toddy(tadi)', 100, 100, 101, 24.14, 0, 0, 5.72, 0.18, 0, 0, 0, 0.03, 0, 0.01, 0.27, 0.35, 1.96, 0.73, 0.92, 0, 0.44, 5.52, 0.42, 1.64, 83.54, 0.01, 3.99, 0, 1),
(310, 'Miscellaneouos Food', '', 'K002', 'Coconut water', 'Coconut water(nariyel pani)', 100, 200, 64, 15.296, 0, 0, 3.16, 0.26, 0, 0, 0, 0.16, 0, 0.01, 0.01, 0.04, 0.21, 10.88, 0.64, 0, 27.47, 18.05, 0.06, 28.09, 215, 0.04, 18.19, 0, 1),
(311, 'Milk', 'milk and milk product', 'L001', 'Milk , whole , buffalo', 'Milk , whole , buffalo', 100, 250, 449, 107.314, 35, 2.937, 8.39, 3.68, 0, 0, 0, 6.58, 0, 0.05, 0.13, 0.07, 2.16, 8.57, 2.37, 1.63, 121, 86.94, 0.16, 30.1, 109, 0.3, 10.05, 0, 1),
(312, 'Milk', 'milk and milk product', 'L002', 'Milk , whole , cow', 'Milk , whole , cow', 100, 250, 305, 72.897, 31, 1.531, 4.94, 3.26, 0, 0, 0, 4.48, 0, 0.03, 0.11, 0.08, 1.98, 7.03, 2.01, 1.22, 118, 96.56, 0.15, 25.46, 115, 0.33, 8.28, 0, 1),
(313, 'Milk', 'milk and milk product', 'L003', 'Paneer(homemade)', 'Paneer(homemade)', 100, 44, 1079, 257.88, 30, 3.72, 12.41, 18.86, 0, 0, 0, 14.78, 0, 0.02, 0.1, 0.13, 21.04, 93.31, 0, 0.13, 476, 330, 0.9, 18.04, 63.53, 2.74, 26.62, 0, 1),
(314, 'Milk', 'milk and milk product', 'L004', 'Khoa', 'Khoa(mavo)', 100, 50, 1322, 315.966, 65, 10.745, 16.53, 16.34, 0, 0, 0, 20.62, 0, 0.11, 0.11, 0.43, 20.39, 94.25, 0, 0.12, 602, 476, 2.32, 48.1, 536, 2.34, 58.53, 0, 1),
(315, 'Egg & Egg Products', 'egg', 'M001', 'Egg , poultry, whole , raw', 'Egg , poultry, whole , raw', 100, 40, 564, 134.799, 50, 0, 0, 13.28, 0, 0, 0, 9.15, 0, 0.06, 0.19, 0.11, 18.24, 49.32, 0, 0.84, 49.44, 185, 1.82, 123, 138, 1.23, 12.01, 0, 1),
(316, 'Egg & Egg Products', 'egg', 'M002', 'Egg , poultry , white , raw', 'Egg , poultry , white , raw', 100, 40, 187, 44.694, 50, 0, 0, 10.84, 0, 0, 0, 0.06, 0, 0.02, 0.16, 0.01, 4.36, 4.36, 0, 1.05, 5.64, 15.81, 0.07, 166, 152, 0.03, 11.42, 0, 1),
(317, 'Egg & Egg Products', 'egg', 'M003', 'Egg , poultry , yolk , raw', 'Egg , poultry , yolk , raw', 100, 40, 1242, 296.845, 50, 0, 0, 15.74, 0, 0, 0, 26.34, 0, 0.11, 0.16, 0.69, 65.22, 112, 0, 3.25, 116, 549, 3.17, 46.33, 118, 1.64, 13.17, 0, 1),
(318, 'Egg & Egg Products', 'egg', 'M004', 'Egg , poultry , whole , boiled', 'Egg , poultry , whole , boiled', 100, 40, 618, 147.706, 50, 0, 0, 13.43, 0, 0, 0, 10.54, 0, 0.06, 0.18, 0.21, 15.36, 48.25, 0, 0.74, 55.12, 209, 1.87, 121, 127, 1.31, 13.76, 0, 1),
(319, 'Egg & Egg Products', 'egg', 'M005', 'Egg , poultry , white , boiled', 'Egg , poultry , white , boiled', 100, 40, 220, 52.581, 50, 0, 0, 12.37, 0, 0, 0, 0.26, 0, 0.02, 0.18, 0.01, 4.37, 4.1, 0, 0.18, 8.07, 23, 0.15, 144, 147, 0.09, 11.62, 0, 1),
(320, 'Egg & Egg Products', 'egg', 'M006', 'Egg , poultry  , yolk , boiled', 'Egg , poultry  , yolk , boiled', 100, 40, 1290, 308.317, 50, 0, 0, 16.13, 0, 0, 0, 26.46, 0, 0.17, 0.15, 0.45, 58.43, 110, 0, 3.04, 120, 586, 4.92, 44.83, 106, 3.59, 15.52, 0, 1),
(321, 'Egg & Egg Products', 'egg', 'M007', 'Egg , poultry , omlet', 'Egg , poultry , omlet', 100, 40, 710, 169.694, 50, 0, 0, 16.53, 0, 0, 0, 11.6, 0, 0.11, 0.3, 0.33, 17.13, 37.66, 0, 2.98, 53.26, 222, 2.16, 169, 163, 1.31, 14.84, 0, 1),
(322, 'Egg & Egg Products', 'egg', 'M008', 'Egg , country hen , whole , raw', 'Egg , country hen , whole , raw', 100, 40, 704, 168.26, 50, 0, 0, 13.14, 0, 0, 0, 13, 0, 0.14, 0.08, 0.14, 19.35, 54.6, 0, 4.46, 50.14, 198, 1.64, 157, 117, 1.12, 11, 0, 1),
(323, 'Egg & Egg Products', 'egg', 'M009', 'Egg , country hen , whole , boiled', 'Egg , country hen , whole , boiled', 100, 40, 767, 183.317, 50, 0, 0, 14.43, 0, 0, 0, 14.1, 0, 0.11, 0.08, 0.12, 20.15, 59.98, 0, 2.99, 57.79, 206, 1.73, 149, 120, 1.25, 11, 0, 1),
(324, 'Egg & Egg Products', 'egg', 'M010', 'Egg country hen , omlet', 'Egg country hen , omlet', 100, 40, 855, 204.35, 50, 0, 0, 14.8, 0, 0, 0, 16.3, 0, 0.14, 0.07, 0.14, 18.55, 58.79, 0, 3.44, 55.88, 243, 2.15, 157, 151, 1.26, 13, 0, 1),
(325, 'Egg & Egg Products', 'egg', 'M011', 'Egg , duck , whole , bolied', 'Egg , duck , whole , bolied', 100, 40, 738, 176.386, 50, 0, 0, 13.8, 0, 0, 0, 13.61, 0, 0.21, 0.07, 0.18, 13.87, 73.32, 0, 1.9, 56.12, 263, 2.61, 110, 221, 1.58, 12, 0, 1),
(326, 'Egg & Egg Products', 'egg', 'M012', 'Egg , duck , whole , raw', 'Egg , duck , whole , raw', 100, 40, 760, 181.644, 50, 0, 0, 14.6, 0, 0, 0, 13.83, 0, 0.18, 0.07, 0.13, 14.52, 75.48, 0, 2.67, 52.46, 247, 2.46, 113, 228, 1.49, 12, 0, 1),
(327, 'Egg & Egg Products', 'egg', 'M013', 'Egg , duck , whole , omlet', 'Egg , duck , whole , omlet', 100, 40, 804, 192.161, 50, 0, 0, 15.1, 0, 0, 0, 14.8, 0, 0.31, 0.09, 0.14, 13.81, 67.95, 0, 2.1, 71.79, 309, 3.28, 175, 154, 1.89, 15, 0, 1),
(328, 'Egg & Egg Products', 'egg', 'M014', 'Egg , quial , whole , raw', 'Egg , quial , whole , raw', 100, 40, 635, 151.769, 50, 0, 0, 12.39, 0, 0, 0, 11.46, 0, 0.15, 0.11, 0.12, 18.82, 54.86, 0, 5.72, 60.67, 236, 2.55, 132, 119, 1.51, 11, 0, 1),
(329, 'Egg & Egg Products', 'egg', 'M015', 'Egg , quial , whole , bolied', 'Egg , quial , whole , bolied', 100, 40, 647, 154.637, 50, 0, 0, 13.03, 0, 0, 0, 11.5, 0, 0.11, 0.08, 0.15, 16.53, 51.72, 0, 4.91, 61.35, 237, 2.63, 130, 115, 1.55, 12, 0, 1),
(330, 'Poultry', 'Poultry', 'N001', 'Chicken , poultry , leg , skinless', 'Chicken , poultry , leg , skinless', 100, 30, 1605, 383.604, 0, 0, 0, 19.44, 0, 0, 0, 12.64, 0, 0.17, 0.13, 5.6, 4.58, 7.47, 0, 1.12, 20.52, 199, 1.27, 65.07, 283, 1.77, 23.82, 0, 1),
(331, 'Poultry', 'Poultry', 'N002', 'Chicken , poultry , thigh , skinless', 'Chicken , poultry , thigh , skinless', 100, 30, 836, 199.809, 0, 0, 0, 18.18, 0, 0, 0, 14.23, 0, 0.13, 0.1, 5.62, 3.86, 9, 0, 1.22, 18.37, 186, 1.11, 64.59, 263, 1.42, 22.55, 0, 1),
(332, 'Poultry', 'Poultry', 'N003', 'Chicken , poultry , brest  , skinless', 'Chicken , poultry , brest  , skinless', 100, 30, 704, 168.26, 0, 0, 0, 21.81, 0, 0, 0, 9, 0, 0.1, 0.06, 8.06, 4.11, 10.44, 0, 1.38, 12.91, 178, 0.83, 36.7, 295, 0.78, 20.2, 0, 1),
(333, 'Poultry', 'Poultry', 'N004', 'Chicken , poultry , wing , skinless', 'Chicken , poultry , wing , skinless', 100, 30, 807, 192.878, 0, 0, 0, 17.42, 0, 0, 0, 13.81, 0, 0.08, 0.07, 6.66, 3.61, 7.87, 0, 1.11, 28.13, 189, 1.38, 72.78, 185, 1.48, 22.81, 0, 1),
(334, 'Poultry', 'Poultry', 'N005', 'Poultry , chicken , liver', 'Poultry , chicken , liver', 100, 30, 518, 123.805, 0, 0, 0, 21.57, 0, 0, 0, 4.08, 0, 0.28, 0.2, 4.44, 4.07, 1032, 0, 2.62, 4.1, 244, 9.92, 61.58, 241, 2.65, 16, 0, 1),
(335, 'Poultry', 'Poultry', 'N006', 'Poultry , chicken , gizzard', 'Poultry , chicken , gizzard', 100, 30, 386, 92.256, 0, 0, 0, 18.22, 0, 0, 0, 2.07, 0, 0.01, 0.11, 2.87, 5.12, 8.72, 0, 1.6, 5.46, 119, 3.19, 50.6, 244, 2.65, 14, 0, 1),
(336, 'Poultry', 'Poultry', 'N007', 'Country hen , leg , with skin', 'Country hen , leg , with skin', 100, 30, 723, 172.801, 0, 0, 0, 17.01, 0, 0, 0, 11.73, 0, 0.17, 0.1, 2.54, 4.6, 8.1, 0, 1.12, 22.56, 250, 1.66, 50.46, 357, 2.71, 25, 0, 1),
(337, 'Poultry', 'Poultry', 'N008', 'Country hen , thigh , with skin', 'Country hen , thigh , with skin', 100, 30, 785, 187.62, 0, 0, 0, 18.29, 0, 0, 0, 12.82, 0, 0.11, 0.13, 3.62, 2.91, 10.42, 0, 1.05, 20.12, 232, 1.4, 51.14, 330, 2.16, 24, 0, 1),
(338, 'Poultry', 'Poultry', 'N009', 'Country hen , breast , with skin', 'Country hen , breast , with skin', 100, 30, 753, 179.971, 0, 0, 0, 22.08, 0, 0, 0, 10.2, 0, 0.11, 0.04, 5.62, 3.06, 12.98, 0, 0.8, 12.49, 222, 1.09, 23.13, 365, 0.78, 22, 0, 1),
(339, 'Poultry', 'Poultry', 'N010', 'Country hen , wing , with skin', 'Country hen , wing , with skin', 100, 30, 764, 182.6, 0, 0, 0, 18.65, 0, 0, 0, 12.09, 0, 0.07, 0.03, 3.19, 5.13, 9.19, 0, 0.61, 35.46, 235, 1.45, 54.15, 249, 1.64, 25, 0, 1),
(340, 'Poultry', 'Poultry', 'N011', 'Duck , meat , with skin', 'Duck , meat , with skin', 100, 30, 547, 130.736, 0, 0, 0, 19.07, 0, 0, 0, 6.03, 0, 0.22, 0.13, 2.24, 4.27, 27.98, 0, 0.91, 22.77, 237, 4.26, 82.25, 273, 2.92, 26, 0, 1),
(341, 'Poultry', 'Poultry', 'N012', 'Emu , meat , skinless', 'Emu , meat , skinless', 100, 30, 556, 132.887, 0, 0, 0, 22.65, 0, 0, 0, 4.52, 0, 0.1, 0.17, 3.26, 0, 7.07, 0, 0.67, 7.4, 243, 3.95, 48.48, 275, 2.91, 25, 0, 1),
(342, 'Poultry', 'Poultry', 'N013', 'Guinea fowl , meat , with skin', 'Guinea fowl , meat , with skin', 100, 30, 469, 112.094, 0, 0, 0, 20.52, 0, 0, 0, 3.24, 0, 0.02, 0.18, 3.64, 0, 5.69, 0, 1.02, 30.77, 187, 2.2, 57.64, 240, 1.48, 21, 0, 1),
(343, 'Poultry', 'Poultry', 'N014', 'Pigeon , meat , with skin', 'Pigeon , meat , with skin', 100, 30, 528, 126.195, 0, 0, 0, 17.94, 0, 0, 0, 6.03, 0, 0.18, 0.39, 3.45, 0, 8.41, 0, 1.2, 18.11, 255, 3.81, 56.1, 346, 2.48, 29, 0, 1),
(344, 'Poultry', 'Poultry', 'N015', 'Quail , meat , skinless', 'Quail , meat , skinless', 100, 30, 576, 137.667, 0, 0, 0, 20.92, 0, 0, 0, 5.95, 0, 0.05, 0.24, 4.69, 0, 9.33, 0, 1.53, 20.6, 300, 1.9, 56.21, 333, 1.13, 31, 0, 1),
(345, 'Poultry', 'Poultry', 'N016', 'Turkey , leg , with skin', 'Turkey , leg , with skin', 100, 30, 647, 154.637, 0, 0, 0, 20.3, 0, 0, 0, 8.15, 0, 0.05, 0.11, 4.92, 0, 8.55, 0, 0.5, 20.44, 236, 2.01, 66.47, 308, 3.35, 26, 0, 1),
(346, 'Poultry', 'Poultry', 'N017', 'Turkey , thigh , with skin', 'Turkey , thigh , with skin', 100, 30, 581, 138.862, 0, 0, 0, 20.46, 0, 0, 0, 6.31, 0, 0.04, 0.12, 1.94, 0, 10.91, 0, 0.36, 23.52, 194, 1.58, 50.01, 280, 2.95, 23, 0, 1),
(347, 'Poultry', 'Poultry', 'N018', 'Turkey , brest , with skin', 'Turkey , brest , with skin', 100, 30, 671, 160.373, 0, 0, 0, 21.96, 0, 0, 0, 8.04, 0, 0.06, 0.1, 4.49, 0, 14.67, 0, 0.52, 14.35, 182, 1.01, 40.45, 315, 1.28, 22, 0, 1),
(348, 'Poultry', 'Poultry', 'N019', 'Turkey , wing , with skin', 'Turkey , wing , with skin', 100, 30, 771, 184.273, 0, 0, 0, 21.91, 0, 0, 0, 10.77, 0, 0.03, 0.09, 4.38, 0, 10.41, 0, 0.52, 33.49, 199, 1, 57, 262, 1.68, 24, 0, 1),
(349, 'Animal Meet', 'meet', 'O001', 'Goat , shoulder', 'Goat , shoulder', 100, 40, 787, 188.098, 0, 0, 0, 20.33, 0, 0, 0, 11.94, 0, 0.07, 0.17, 5.14, 0, 2.08, 0, 0.8, 6.18, 189, 1.48, 47.31, 332, 4.19, 21.39, 0, 1),
(350, 'Animal Meet', 'meet', 'O002', 'Goat , chops', 'Goat , chops', 100, 40, 568, 135.755, 0, 0, 0, 20.39, 0, 0, 0, 5.98, 0, 0.05, 0.13, 5.51, 0, 1.53, 0, 0.4, 7.44, 195, 1.87, 45.72, 334, 4.55, 21.13, 0, 1),
(351, 'Animal Meet', 'meet', 'O003', 'Goat , legs', 'Goat , legs', 100, 40, 669, 159.895, 0, 0, 0, 22.07, 0, 0, 0, 7.94, 0, 0.07, 0.15, 5.15, 0, 2.25, 0, 0.28, 5.76, 187, 1.77, 42.77, 339, 3.52, 21.71, 0, 1),
(352, 'Animal Meet', 'meet', 'O004', 'Goat , brain', 'Goat , brain', 100, 40, 533, 127.39, 0, 0, 0, 13.82, 0, 0, 0, 8.06, 0, 0.13, 0.17, 2.04, 0, 1.3, 0, 0.3, 10.61, 196, 1.63, 123, 296, 1.08, 13.94, 0, 1),
(353, 'Animal Meet', 'meet', 'O005', 'Goat , tongue', 'Goat , tongue', 100, 40, 789, 188.576, 0, 0, 0, 16.63, 0, 0, 0, 13.68, 0, 0.14, 0.22, 3.04, 0, 2.54, 0, 0.02, 7.11, 212, 2.09, 118, 223, 2.44, 19.39, 0, 1),
(354, 'Animal Meet', 'meet', 'O006', 'Goat , lungs', 'Goat , lungs', 100, 40, 401, 95.841, 0, 0, 0, 16.86, 0, 0, 0, 3.09, 0, 0.08, 0.32, 2.79, 0, 1.8, 0, 0.09, 10.44, 209, 7.1, 85.72, 180, 1.7, 11.48, 0, 1),
(355, 'Animal Meet', 'meet', 'O007', 'Goat , heart', 'Goat , heart', 100, 40, 492, 117.591, 0, 0, 0, 19.38, 0, 0, 0, 4.4, 0, 0.36, 0.33, 5.97, 0, 1.63, 0, 0.6, 5.71, 174, 3.38, 73.21, 224, 1.45, 18, 0, 1),
(356, 'Animal Meet', 'meet', 'O008', 'Goat , liver', 'Goat , liver', 100, 40, 526, 125.717, 0, 0, 0, 20.32, 0, 0, 0, 4.88, 0, 0.2, 0.37, 12.88, 0, 178, 0, 0.56, 6.09, 336, 6.56, 55.41, 284, 3.48, 18, 0, 1),
(357, 'Animal Meet', 'meet', 'O009', 'Goat , tripe', 'Goat , tripe', 100, 40, 386, 92.256, 0, 0, 0, 15.36, 0, 0, 0, 3.36, 0, 0.02, 0.1, 0.81, 0, 2.36, 0, 0, 20.87, 59.2, 0.81, 22.38, 45, 1.66, 13, 0, 1),
(358, 'Animal Meet', 'meet', 'O010', 'Goat , spleen', 'Goat , spleen', 100, 40, 401, 95.841, 0, 0, 0, 18.45, 0, 0, 0, 2.37, 0, 0.06, 0.16, 5.2, 0, 3.3, 0, 0.1, 8.35, 266, 51.41, 52.4, 368, 1.95, 15.3, 0, 1),
(359, 'Animal Meet', 'meet', 'O011', 'Goat , kidneys', 'Goat , kidneys', 100, 40, 374, 89.388, 0, 0, 0, 15.6, 0, 0, 0, 2.93, 0, 0.34, 0.34, 5.5, 0, 68.76, 0, 0, 12.37, 220, 6.73, 184, 195, 1.73, 18.6, 0, 1),
(360, 'Animal Meet', 'meet', 'O012', 'Goat , tube (small intestine)', 'Goat , tube (small intestine)', 100, 40, 525, 125.478, 0, 0, 0, 12.92, 0, 0, 0, 8.26, 0, 0.01, 0.11, 0.64, 0, 1.87, 0, 0, 27.52, 55.9, 2.21, 7.46, 130, 1.12, 7.14, 0, 1),
(361, 'Animal Meet', 'meet', 'O013', 'Goat , testis', 'Goat , testis', 100, 40, 298, 71.224, 0, 0, 0, 12.32, 0, 0, 0, 2.39, 0, 0.15, 0.11, 1.72, 0, 2.01, 0, 0.55, 5.95, 186, 1.43, 92.61, 253, 1.19, 13.66, 0, 1),
(362, 'Animal Meet', 'meet', 'O014', 'Sheep , shoulder', 'Sheep , shoulder', 100, 40, 840, 200.765, 0, 0, 0, 18.24, 0, 0, 0, 14.31, 0, 0.05, 0.18, 4.53, 0, 3.16, 0, 0.07, 5.46, 195, 1.63, 45.65, 336, 3.69, 21.31, 0, 1),
(363, 'Animal Meet', 'meet', 'O015', 'Sheep , chops ', 'Sheep , chops ', 100, 40, 496, 118.547, 0, 0, 0, 18, 0, 0, 0, 5.15, 0, 0.07, 0.16, 4.94, 0, 1.61, 0, 0.47, 7.98, 191, 2.24, 45.26, 323, 3.46, 21.42, 0, 1),
(364, 'Animal Meet', 'meet', 'O016', 'Sheep , leg', 'Sheep , leg', 100, 40, 686, 163.958, 0, 0, 0, 21.42, 0, 0, 0, 8.69, 0, 0.08, 0.16, 5.25, 0, 1.81, 0, 2.14, 6.87, 187, 1.54, 49.3, 333, 2.67, 22.22, 0, 1),
(365, 'Animal Meet', 'meet', 'O017', 'Sheep , brain', 'Sheep , brain', 100, 40, 492, 117.591, 0, 0, 0, 13.05, 0, 0, 0, 7.29, 0, 0.12, 0.21, 2.66, 0, 1.86, 0, 1.06, 10.27, 271, 1.93, 122, 312, 1.11, 14.08, 0, 1),
(366, 'Animal Meet', 'meet', 'O018', 'Sheep , tongue', 'Sheep , tongue', 100, 40, 783, 187.141, 0, 0, 0, 16.61, 0, 0, 0, 13.53, 0, 0.15, 0.2, 2.78, 0, 2.4, 0, 0, 8.05, 207, 2.46, 185, 220, 2.46, 24.53, 0, 1),
(367, 'Animal Meet', 'meet', 'O019', 'Sheep , lungs', 'Sheep , lungs', 100, 40, 363, 86.759, 0, 0, 0, 16.12, 0, 0, 0, 2.41, 0, 0.07, 0.23, 2.75, 0, 13.89, 0, 0.12, 7.74, 187, 8.58, 109, 204, 1.58, 11.68, 0, 1),
(368, 'Animal Meet', 'meet', 'O020', 'Sheep , heart', 'Sheep , heart', 100, 40, 445, 106.358, 0, 0, 0, 18.19, 0, 0, 0, 3.66, 0, 0.34, 0.3, 5.43, 0, 2.17, 0, 0.8, 6.79, 163, 3.07, 72.62, 225, 1.31, 15.19, 0, 1),
(369, 'Animal Meet', 'meet', 'O021', 'Sheep , liver', 'Sheep , liver', 100, 40, 559, 133.604, 0, 0, 0, 22.26, 0, 0, 0, 4.87, 0, 0.17, 0.35, 15.66, 0, 206, 0, 0.31, 5.92, 334, 6.15, 55.82, 280, 3.73, 17.91, 0, 1),
(370, 'Animal Meet', 'meet', 'O022', 'Sheep , tripe', 'Sheep , tripe', 100, 40, 435, 103.967, 0, 0, 0, 16.76, 0, 0, 0, 4.05, 0, 0.02, 0.08, 0.63, 0, 1.87, 0, 0, 14.85, 55.61, 0.9, 18.37, 48.75, 1.89, 17.81, 0, 1),
(371, 'Animal Meet', 'meet', 'O023', 'Sheep , spleen', 'Sheep , spleen', 100, 40, 384, 91.778, 0, 0, 0, 16.02, 0, 0, 0, 3.02, 0, 0.07, 0.23, 5.42, 0, 3.19, 0, 0, 11.49, 266, 53.11, 50.58, 327, 1.71, 17.23, 0, 1),
(372, 'Animal Meet', 'meet', 'O024', 'Sheep , kidneys', 'Sheep , kidneys', 100, 40, 384, 91.778, 0, 0, 0, 16.22, 0, 0, 0, 2.92, 0, 0.35, 0.31, 5.51, 0, 46.21, 0, 0.37, 14.15, 204, 6.11, 163, 198, 1.92, 17.46, 0, 1),
(373, 'Animal Meet', 'meet', 'O025', 'Beef , shoulder', 'Beef , shoulder', 100, 40, 889, 212.476, 0, 0, 0, 20.56, 0, 0, 0, 14.59, 0, 0.03, 0.12, 5.18, 0, 8.06, 0, 0.46, 6.5, 201, 2.22, 45.59, 367, 4.64, 22.24, 0, 1),
(374, 'Animal Meet', 'meet', 'O026', 'Beef , chops', 'Beef , chops', 100, 40, 585, 139.818, 0, 0, 0, 19.82, 0, 0, 0, 6.71, 0, 0.02, 0.06, 4.36, 0, 5.69, 0, 0.47, 4.64, 209, 1.95, 32.47, 383, 3.77, 24.72, 0, 1),
(375, 'Animal Meet', 'meet', 'O027', 'Beef roud(led)', 'Beef roud(led)', 100, 40, 658, 157.266, 0, 0, 0, 22.64, 0, 0, 0, 7.38, 0, 0.04, 0.06, 6.3, 0, 2.11, 0, 0.43, 5.86, 215, 2.3, 38.96, 366, 3.36, 26.59, 0, 1),
(376, 'Animal Meet', 'meet', 'O028', 'Beef , brain', 'Beef , brain', 100, 40, 523, 125, 0, 0, 0, 10.55, 0, 0, 0, 9.28, 0, 0.12, 0.13, 1.91, 0, 5.39, 0, 0.69, 11.38, 326, 2.15, 127, 320, 1.18, 15.84, 0, 1),
(377, 'Animal Meet', 'meet', 'O029', 'Beef , tongue', 'Beef , tongue', 100, 40, 731, 174.713, 0, 0, 0, 15.63, 0, 0, 0, 12.57, 0, 0.05, 0.13, 2.93, 0, 10.81, 0, 0.61, 9.49, 220, 2.17, 89.88, 260, 3.31, 22.82, 0, 1),
(378, 'Animal Meet', 'meet', 'O030', 'Beef , lungs', 'Beef , lungs', 100, 40, 351, 83.891, 0, 0, 0, 15.66, 0, 0, 0, 2.28, 0, 0.09, 0.12, 3.13, 0, 6.98, 0, 0, 9.31, 172, 6.85, 109, 216, 1.52, 11.6, 0, 1),
(379, 'Animal Meet', 'meet', 'O031', 'Beef ,heart', 'Beef ,heart', 100, 40, 433, 103.489, 0, 0, 0, 17.68, 0, 0, 0, 3.57, 0, 0.24, 0.3, 5.38, 0, 8.5, 0, 5.71, 6.16, 181, 3.62, 70.52, 258, 1.5, 15.66, 0, 1),
(380, 'Animal Meet', 'meet', 'O032', 'Beef , liver', 'Beef , liver', 100, 40, 499, 119.264, 0, 0, 0, 20.73, 0, 0, 0, 3.96, 0, 0.17, 0.34, 14.01, 0, 1744, 0, 0, 5.46, 332, 14.82, 50.14, 289, 4.36, 18.57, 0, 1),
(381, 'Animal Meet', 'meet', 'O033', 'Beef , tripe', 'Beef , tripe', 100, 40, 316, 75.526, 0, 0, 0, 13.1, 0, 0, 0, 2.51, 0, 0.03, 0.08, 1.31, 0, 1.45, 0, 4, 15.3, 60.17, 0.84, 41, 143, 2.02, 9.33, 0, 1),
(382, 'Animal Meet', 'meet', 'O034', 'Beef , spleen', 'Beef , spleen', 100, 40, 378, 90.344, 0, 0, 0, 17.42, 0, 0, 0, 2.22, 0, 0.31, 0.025, 7.45, 0, 3.4, 0, 0.33, 9.4, 252, 31.68, 58.94, 348, 2.01, 15.8, 0, 1),
(383, 'Animal Meet', 'meet', 'O035', 'Beef , kidneys', 'Beef , kidneys', 100, 40, 439, 104.924, 0, 0, 0, 17.09, 0, 0, 0, 4.01, 0, 0.26, 0.27, 6.52, 0, 53.68, 0, 0.53, 15.31, 180, 4.71, 160, 184, 1.4, 14.7, 0, 1),
(384, 'Animal Meet', 'meet', 'O036', 'Calf , shoulder', 'Calf , shoulder', 100, 40, 633, 151.291, 0, 0, 0, 20.98, 0, 0, 0, 7.47, 0, 0.1, 0.2, 6.11, 0, 9.25, 0, 0, 8.39, 197, 1.31, 77, 369, 3.31, 22.71, 0, 1),
(385, 'Animal Meet', 'meet', 'O037', 'Calf , chops', 'Calf , chops', 100, 40, 524, 125.239, 0, 0, 0, 20.47, 0, 0, 0, 3.85, 0, 0.07, 0.17, 5.11, 0, 2.13, 0, 0.74, 9.27, 195, 1.2, 64.94, 366, 3.29, 20.77, 0, 1),
(386, 'Animal Meet', 'meet', 'O038', 'Calf , round(leg)', 'Calf , round(leg)', 100, 40, 615, 146.989, 0, 0, 0, 21.1, 0, 0, 0, 6.92, 0, 0.03, 0.17, 5.97, 0, 7.81, 0, 0.97, 10.03, 185, 2.4, 67.04, 356, 2.64, 22.28, 0, 1),
(387, 'Animal Meet', 'meet', 'O039', 'Calf , brain', 'Calf , brain', 100, 40, 448, 107.075, 0, 0, 0, 9.84, 0, 0, 0, 7.6, 0, 0.07, 0.19, 3.19, 0, 1.5, 0, 0.61, 10.53, 296, 1.44, 115, 306, 1.11, 14.29, 0, 1),
(388, 'Animal Meet', 'meet', 'O040', 'Calf , tongue', 'Calf , tongue', 100, 40, 737, 176.147, 0, 0, 0, 17.78, 0, 0, 0, 11.76, 0, 0.11, 0.22, 4.31, 0, 5.2, 0, 0, 9.08, 178, 2.63, 91.64, 238, 2.67, 15.35, 0, 1),
(389, 'Animal Meet', 'meet', 'O041', 'Calf , heart', 'Calf , heart', 100, 40, 459, 109.704, 0, 0, 0, 18.84, 0, 0, 0, 3.75, 0, 0.26, 0.29, 5.3, 0, 9.41, 0, 0, 6.48, 185, 4.66, 58, 224, 1.63, 18.21, 0, 1),
(390, 'Animal Meet', 'meet', 'O042', 'Calf , liver', 'Calf , liver', 100, 40, 503, 120.22, 0, 0, 0, 21.02, 0, 0, 0, 3.95, 0, 0.17, 0.31, 12.98, 0, 1473, 0, 0, 5.19, 358, 16.26, 54.99, 307, 3.8, 21.16, 0, 1),
(391, 'Animal Meet', 'meet', 'O043', 'Calf , spleen', 'Calf , spleen', 100, 40, 379, 90.583, 0, 0, 0, 17.71, 0, 0, 0, 2.12, 0, 0.09, 0.28, 7.61, 0, 3.58, 0, 0.29, 10.56, 274, 25.42, 67.87, 372, 2.04, 18.95, 0, 1),
(392, 'Animal Meet', 'meet', 'O044', 'Calf , kidneys', 'Calf , kidneys', 100, 40, 387, 92.495, 0, 0, 0, 15.16, 0, 0, 0, 3.5, 0, 0.32, 0.35, 4.16, 0, 33.48, 0, 0, 12.63, 204, 4.92, 174, 206, 1.58, 17.35, 0, 1),
(393, 'Animal Meet', 'meet', 'O045', 'Mithun , shoulder', 'Mithun , shoulder', 100, 40, 736, 175.908, 0, 0, 0, 19.05, 0, 0, 0, 11.14, 0, 0.04, 0.06, 6.29, 0, 1.86, 0, 0.06, 4.27, 199, 2.05, 32.94, 307, 6.11, 18.86, 0, 1),
(394, 'Animal Meet', 'meet', 'O046', 'Mithun , chops', 'Mithun , chops', 100, 40, 536, 128.107, 0, 0, 0, 18.19, 0, 0, 0, 6.12, 0, 0.2, 0.18, 4.76, 0, 1.9, 0, 0.08, 4.88, 178, 2.25, 42.17, 222, 6.08, 18.2, 0, 1),
(395, 'Animal Meet', 'meet', 'O047', 'Mithun , round(leg)', 'Mithun , round(leg)', 100, 40, 485, 115.918, 0, 0, 0, 19.61, 0, 0, 0, 4.1, 0, 0.02, 0.05, 5.3, 0, 1.86, 0, 0.04, 5.32, 190, 2.18, 28.42, 338, 3.47, 22.23, 0, 1),
(396, 'Animal Meet', 'meet', 'O048', 'Pork , shoulder', 'Pork , shoulder', 100, 40, 993, 237.333, 0, 0, 0, 17.41, 0, 0, 0, 18.83, 0, 0.18, 0.1, 4.22, 0, 6.7, 0, 9.03, 9.95, 157, 0.91, 54.47, 234, 2.08, 15.01, 0, 1),
(397, 'Animal Meet', 'meet', 'O049', 'Pork , chops', 'Pork , chops', 100, 40, 748, 178.776, 0, 0, 0, 19.41, 0, 0, 0, 11.3, 0, 0.3, 0.11, 4.49, 0, 7.74, 0, 4.83, 8.12, 143, 1, 43.7, 243, 1.34, 11.62, 0, 1),
(398, 'Animal Meet', 'meet', 'O050', 'Pork , ham ', 'Pork , ham ', 100, 40, 1006, 240.44, 0, 0, 0, 18.83, 0, 0, 0, 18.55, 0, 0.24, 0.1, 4.59, 0, 1.51, 0, 5.85, 7.4, 140, 1.27, 40.44, 239, 1.76, 17.05, 0, 1),
(399, 'Animal Meet', 'meet', 'O051', 'Pork , lungs', 'Pork , lungs', 100, 40, 358, 85.564, 0, 0, 0, 15.13, 0, 0, 0, 2.74, 0, 0.08, 0.14, 3.11, 0, 6.36, 0, 1.91, 10.3, 161, 6.76, 61.41, 200, 1.18, 9.82, 0, 1),
(400, 'Animal Meet', 'meet', 'O052', 'Pork , heart', 'Pork , heart', 100, 40, 457, 109.226, 0, 0, 0, 16.31, 0, 0, 0, 4.87, 0, 0.28, 0.3, 5.13, 0, 4.73, 0, 0, 4.74, 187, 3.97, 70.52, 268, 1.6, 18.232, 0, 1),
(401, 'Animal Meet', 'meet', 'O053', 'Pork , liver', 'Pork , liver', 100, 40, 484, 115.679, 0, 0, 0, 19.89, 0, 0, 0, 3.94, 0, 0.16, 0.31, 13.76, 0, 954, 0, 2.97, 5.52, 310, 20.74, 64.89, 279, 4.19, 16.59, 0, 1),
(402, 'Animal Meet', 'meet', 'O054', 'Pork , stomach', 'Pork , stomach', 100, 40, 550, 131.453, 0, 0, 0, 15.36, 0, 0, 0, 7.81, 0, 0.1, 0.06, 1.9, 0, 6.87, 0, 0.42, 11.75, 125, 1.92, 109, 200, 2.34, 23.32, 0, 1),
(403, 'Animal Meet', 'meet', 'O055', 'Pork , spleen', 'Pork , spleen', 100, 40, 357, 85.325, 0, 0, 0, 15.13, 0, 0, 0, 2.71, 0, 0.13, 0.27, 7.8, 0, 5.92, 0, 0, 6.98, 230, 27.21, 41.14, 325, 2.09, 16.08, 0, 1),
(404, 'Animal Meet', 'meet', 'O056', 'Pork , kidneys ', 'Pork , kidneys ', 100, 40, 379, 90.583, 0, 0, 0, 14.35, 0, 0, 0, 3.65, 0, 0.24, 0.37, 6.46, 0, 59.61, 0, 2.92, 6.71, 201, 6.26, 138, 198, 1.9, 15.56, 0, 1),
(405, 'Animal Meet', 'meet', 'O057', 'Pork , tube (small intestine)', 'Pork , tube (small intestine)', 100, 40, 587, 140.296, 0, 0, 0, 14.96, 0, 0, 0, 8.98, 0, 0.08, 0.1, 0.9, 0, 7.84, 0, 1.01, 16.05, 124, 2.83, 60.17, 140, 1.36, 9.78, 0, 1),
(406, 'Animal Meet', 'meet', 'O058', 'Hare , shoulder', 'Hare , shoulder', 100, 40, 603, 144.12, 0, 0, 0, 21.13, 0, 0, 0, 6.58, 0, 0.07, 0.27, 5.04, 0, 2.2, 0, 0.06, 57.51, 260, 2.98, 55.03, 203, 2.72, 28, 0, 1),
(407, 'Animal Meet', 'meet', 'O059', 'Hare , chops', 'Hare , chops', 100, 40, 445, 106.358, 0, 0, 0, 20.62, 0, 0, 0, 2.55, 0, 0.07, 0.28, 4.85, 0, 3.85, 0, 0.09, 38.36, 295, 2.78, 48.61, 340, 1.45, 31, 0, 1),
(408, 'Animal Meet', 'meet', 'O060', 'Hare , leg', 'Hare , leg', 100, 40, 503, 120.22, 0, 0, 0, 20.52, 0, 0, 0, 4.16, 0, 0.08, 0.22, 5.63, 0, 1.95, 0, 0.08, 53.02, 275, 2.46, 42.48, 370, 1.62, 32, 0, 1);
INSERT INTO `ingredients` (`ingredient_id`, `ingrediant_type`, `food_group`, `food_code`, `food_name`, `guju_name`, `quantity`, `one_exchange`, `energy_kj`, `energy_kcal`, `gi_value`, `gl_value`, `carbohydrate`, `protein`, `total_fibre`, `solublf`, `in_solublf`, `invisible_totalfat`, `visiblefat`, `thiamine`, `riboflavin`, `niacin`, `biotin`, `folates`, `ascorbic_Acid`, `vitamin_d2d3`, `calcium`, `phosphorous`, `iron`, `sodium`, `potassium`, `zinc`, `magnesium`, `sfa`, `isActive`) VALUES
(409, 'Animal Meet', 'meet', 'O061', 'Rabbit , shouder', 'Rabbit , shouder', 100, 40, 635, 151.769, 0, 0, 0, 20.01, 0, 0, 0, 7.96, 0, 0.03, 0.14, 4.38, 0, 1.8, 0, 0.57, 46.37, 238, 1.74, 61.38, 361, 2.34, 32, 0, 1),
(410, 'Animal Meet', 'meet', 'O062', 'Rabbit , chops', 'Rabbit , chops', 100, 40, 565, 135.038, 0, 0, 0, 22.61, 0, 0, 0, 4.88, 0, 0.02, 0.08, 7.54, 0, 2.1, 0, 0.7, 25.48, 245, 2.42, 47.84, 374, 1.3, 33, 0, 1),
(411, 'Animal Meet', 'meet', 'O063', 'Rabbit , leg', 'Rabbit , leg', 100, 40, 584, 139.579, 0, 0, 0, 21.31, 0, 0, 0, 5.99, 0, 0.03, 0.1, 5.2, 0, 1.8, 0, 0.43, 22.31, 245, 1.21, 46.03, 389, 1.23, 21, 0, 1),
(412, 'Marine Fish', 'fish', 'P001', 'Allathi', 'Allathi', 100, 30, 406, 97.036, 0, 0, 0, 21.77, 0, 0, 0, 0.98, 0, 0.08, 0.04, 3.67, 0, 1230, 0, 1.03, 13.78, 215, 0.62, 32.68, 286, 0.3, 29.08, 0, 1),
(413, 'Marine Fish', 'fish', 'P002', 'Aluva', 'Aluva', 100, 30, 434, 103.728, 0, 0, 0, 21.63, 0, 0, 0, 1.8, 0, 0.05, 0.02, 2.35, 0, 1132, 0, 0.79, 11.32, 245, 0.42, 44.86, 470, 0.38, 34.38, 0, 1),
(414, 'Marine Fish', 'fish', 'P003', 'Anchovy', 'Anchovy', 100, 30, 367, 87.715, 0, 0, 0, 19.88, 0, 0, 0, 0.78, 0, 0.03, 0.04, 0.91, 0, 1170, 0, 2.76, 36.6, 246, 0.54, 212, 270, 0.65, 53, 0, 1),
(415, 'Marine Fish', 'fish', 'P004', 'Ari fish', 'Ari fish', 100, 30, 415, 99.187, 0, 0, 0, 22.01, 0, 0, 0, 1.11, 0, 0.06, 0.03, 3.65, 0, 602, 0, 1.02, 4.36, 265, 0.47, 37.35, 447, 0.31, 30.27, 0, 1),
(416, 'Marine Fish', 'fish', 'P005', 'Betki', 'Betki', 100, 30, 284, 67.878, 0, 0, 0, 15.28, 0, 0, 0, 0.29, 0, 0.01, 0.04, 1.54, 0, 2079, 0, 1.05, 8.84, 188, 0.31, 63.68, 355, 0.36, 24.16, 0, 1),
(417, 'Marine Fish', 'fish', 'P006', 'Black , snapper', 'Black , snapper', 100, 30, 377, 90.105, 0, 0, 0, 19.5, 0, 0, 0, 1.24, 0, 0, 0.02, 2.89, 0, 1772, 0, 1.31, 9.91, 195, 0.56, 41.23, 341, 0.4, 26.72, 0, 1),
(418, 'Marine Fish', 'fish', 'P007', 'Bombay duck', 'Bombay duck', 100, 30, 287, 68.595, 0, 0, 0, 13.53, 0, 0, 0, 1.03, 0, 0.03, 0.02, 0.64, 0, 2784, 0, 0.96, 159, 185, 0.81, 223, 188, 0.42, 24.27, 0, 1),
(419, 'Marine Fish', 'fish', 'P008', 'Bommuralu', 'Bommuralu', 100, 30, 485, 115.918, 0, 0, 0, 22.3, 0, 0, 0, 2.87, 0, 0.05, 0.02, 1.34, 0, 1004, 0, 3.19, 47.33, 207, 0.43, 61.87, 349, 0.67, 27.13, 0, 1),
(420, 'Marine Fish', 'fish', 'P009', 'Cat fish', 'Cat fish', 100, 30, 456, 108.987, 0, 0, 0, 22.18, 0, 0, 0, 2.13, 0, 0.05, 0.05, 1.38, 0, 1136, 0, 1.42, 5.54, 252, 0.72, 35.82, 429, 0.58, 25.69, 0, 1),
(421, 'Marine Fish', 'fish', 'P010', 'Chakla', 'Chakla', 100, 30, 406, 97.036, 0, 0, 0, 20.21, 0, 0, 0, 1.68, 0, 0.06, 0.04, 2.37, 0, 572, 0, 2.07, 6.55, 219, 0.41, 51.41, 343, 0.57, 24.71, 0, 1),
(422, 'Marine Fish', 'fish', 'P011', 'Chappal', 'Chappal', 100, 30, 317, 75.765, 0, 0, 0, 17.17, 0, 0, 0, 0.67, 0, 0.06, 0.02, 3.95, 0, 776, 0, 2.21, 10.22, 203, 1.29, 38.12, 306, 0.67, 25.85, 0, 1),
(423, 'Marine Fish', 'fish', 'P012', 'Chelu', 'Chelu', 100, 30, 366, 87.476, 0, 0, 0, 20.02, 0, 0, 0, 0.7, 0, 0.06, 0.02, 2.19, 0, 677, 0, 0.86, 8.17, 252, 0.67, 37.6, 406, 0.41, 31.68, 0, 1),
(424, 'Marine Fish', 'fish', 'P013', 'Chembali', 'Chembali', 100, 30, 406, 97.036, 0, 0, 0, 20.06, 0, 0, 0, 1.77, 0, 0.03, 0.06, 1.8, 0, 1221, 0, 0.72, 23.72, 211, 0.31, 38.98, 323, 0.32, 30.55, 0, 1),
(425, 'Marine Fish', 'fish', 'P014', 'Eri meen', 'Eri meen', 100, 30, 454, 108.509, 0, 0, 0, 22.3, 0, 0, 0, 2.02, 0, 0.04, 0.03, 2.88, 0, 579, 0, 0.33, 12.45, 243, 0.46, 41.19, 402, 0.31, 30.99, 0, 1),
(426, 'Marine Fish', 'fish', 'P015', 'Gobro', 'Gobro', 100, 30, 362, 86.52, 0, 0, 0, 19.37, 0, 0, 0, 0.88, 0, 0.07, 0.02, 1.27, 0, 302, 0, 0.15, 24.18, 170, 0.36, 52.68, 316, 0.37, 28.23, 0, 1),
(427, 'Marine Fish', 'fish', 'P016', 'Guitar fish', 'Guitar fish', 100, 30, 400, 95.602, 0, 0, 0, 22.56, 0, 0, 0, 0.44, 0, 0.03, 0.02, 2.01, 0, 1532, 0, 0.12, 17.32, 230, 0.44, 70.81, 342, 0.35, 27.45, 0, 1),
(428, 'Marine Fish', 'fish', 'P017', 'Hilsa', 'Hilsa', 100, 30, 1083, 258.843, 0, 0, 0, 21.8, 0, 0, 0, 18.49, 0, 0.01, 0.04, 2.85, 0, 2875, 0, 4.96, 19.82, 278, 1.19, 80.88, 341, 0.64, 30.62, 0, 1),
(429, 'Marine Fish', 'fish', 'P018', 'Jallal', 'Jallal', 100, 30, 420, 100.382, 0, 0, 0, 21.55, 0, 0, 0, 1.46, 0, 0.02, 0.02, 3.24, 0, 627, 0, 0.94, 14.73, 204, 0.46, 74.33, 368, 0.83, 29.12, 0, 1),
(430, 'Marine Fish', 'fish', 'P019', 'Jathi vela meen', 'Jathi vela meen', 100, 30, 453, 108.27, 0, 0, 0, 22.45, 0, 0, 0, 1.92, 0, 0.12, 0.02, 2.82, 0, 828, 0, 0.93, 6.65, 249, 0.28, 30.53, 467, 0.35, 31.12, 0, 1),
(431, 'Marine Fish', 'fish', 'P020', 'Kadal bral', 'Kadal bral', 100, 30, 368, 87.954, 0, 0, 0, 18.72, 0, 0, 0, 1.34, 0, 0.01, 0.06, 1.76, 0, 1178, 0, 1.2, 73.92, 219, 0.31, 53.66, 366, 0.38, 29.55, 0, 1),
(432, 'Marine Fish', 'fish', 'P021', 'Kadali', 'Kadali', 100, 30, 530, 126.673, 0, 0, 0, 22.07, 0, 0, 0, 4.2, 0, 0.04, 0.01, 1.86, 0, 1317, 0, 0.84, 8.62, 207, 0.38, 36.06, 390, 0.35, 26.23, 0, 1),
(433, 'Marine Fish', 'fish', 'P022', 'Kalamaara', 'Kalamaara', 100, 30, 523, 125, 0, 0, 0, 20.89, 0, 0, 0, 4.54, 0, 0.06, 0.03, 2.22, 0, 657, 0, 1.45, 7.54, 227, 0.5, 29.33, 420, 0.38, 34.29, 0, 1),
(434, 'Marine Fish', 'fish', 'P023', 'Kalava', 'Kalava', 100, 30, 374, 89.388, 0, 0, 0, 19.38, 0, 0, 0, 1.2, 0, 0.06, 0.05, 2.24, 0, 1194, 0, 1.86, 10.66, 177, 0.26, 40.14, 279, 0.82, 22.87, 0, 1),
(435, 'Marine Fish', 'fish', 'P024', 'Kanamayya', 'Kanamayya', 100, 30, 367, 87.715, 0, 0, 0, 20.19, 0, 0, 0, 0.65, 0, 0.06, 0.01, 1.22, 0, 1167, 0, 0.82, 7.72, 194, 0.36, 50.53, 346, 0.31, 27.07, 0, 1),
(436, 'Marine Fish', 'fish', 'P025', 'Kannadi paarai', 'Kannadi paarai', 100, 30, 423, 101.099, 0, 0, 0, 22.09, 0, 0, 0, 1.27, 0, 0.04, 0.03, 1.81, 0, 561, 0, 0.1, 9.04, 252, 0.31, 59.57, 432, 0.4, 32.36, 0, 1),
(437, 'Marine Fish', 'fish', 'P026', 'Karimeen', 'Karimeen', 100, 30, 386, 92.256, 0, 0, 0, 19.68, 0, 0, 0, 1.38, 0, 0.08, 0.05, 1.15, 0, 1199, 0, 0.87, 11.73, 192, 0.6, 23.72, 452, 0.46, 28.49, 0, 1),
(438, 'Marine Fish', 'fish', 'P027', 'Karnagawala', 'Karnagawala', 100, 30, 363, 86.759, 0, 0, 0, 19.52, 0, 0, 0, 0.84, 0, 0.07, 0.01, 0.98, 0, 377, 0, 1.24, 60.03, 178, 0.44, 63.27, 228, 0.41, 44.3, 0, 1),
(439, 'Marine Fish', 'fish', 'P028', 'Kayrai', 'Kayrai', 100, 30, 454, 108.509, 0, 0, 0, 20.15, 0, 0, 0, 3, 0, 0.08, 0.07, 5.18, 0, 884, 0, 3.12, 6, 266, 0.98, 25.12, 321, 0.39, 31.74, 0, 1),
(440, 'Marine Fish', 'fish', 'P029', 'Kiriyan', 'Kiriyan', 100, 30, 556, 132.887, 0, 0, 0, 22.49, 0, 0, 0, 4.7, 0, 0.04, 0.13, 2.75, 0, 604, 0, 0.38, 19.42, 214, 1, 35.88, 277, 0.82, 31.97, 0, 1),
(441, 'Marine Fish', 'fish', 'P030', 'Kite fish', 'Kite fish', 100, 30, 413, 98.709, 0, 0, 0, 23.07, 0, 0, 0, 0.56, 0, 0.04, 0.07, 2.5, 0, 1334, 0, 0.03, 11.02, 231, 1.38, 59.03, 387, 0.55, 28.46, 0, 1),
(442, 'Marine Fish', 'fish', 'P031', 'Korka', 'Korka', 100, 30, 528, 126.195, 0, 0, 0, 23.72, 0, 0, 0, 3.36, 0, 0.03, 0.17, 3.42, 0, 751, 0, 0.34, 11.12, 229, 0.73, 43.3, 349, 1.47, 28.55, 0, 1),
(443, 'Marine Fish', 'fish', 'P032', 'Kulam paarai', 'Kulam paarai', 100, 30, 501, 119.742, 0, 0, 0, 21.62, 0, 0, 0, 3.6, 0, 0.06, 0.01, 1.97, 0, 699, 0, 2.45, 15.17, 244, 0.5, 49.17, 366, 0.52, 30.79, 0, 1),
(444, 'Marine Fish', 'fish', 'P033', 'Maagaa', 'Maagaa', 100, 30, 366, 87.476, 0, 0, 0, 20.11, 0, 0, 0, 0.67, 0, 0.02, 0.01, 0.73, 0, 695, 0, 1.18, 8.42, 181, 0.23, 52.28, 375, 0.35, 30.32, 0, 1),
(445, 'Marine Fish', 'fish', 'P034', 'Mackerel', 'Mackerel', 100, 30, 423, 101.099, 0, 0, 0, 21.51, 0, 0, 0, 1.53, 0, 0.07, 0.1, 2.67, 0, 713, 0, 0.22, 31.27, 231, 1.46, 83.01, 309, 0.67, 37.46, 0, 1),
(446, 'Marine Fish', 'fish', 'P035', 'Manda clathi', 'Manda clathi', 100, 30, 398, 95.124, 0, 0, 0, 21.27, 0, 0, 0, 1, 0, 0.03, 0.02, 2.77, 0, 738, 0, 1.46, 11.48, 320, 0.43, 58.5, 431, 0.37, 37.88, 0, 1),
(447, 'Marine Fish', 'fish', 'P036', 'Matha', 'Matha', 100, 30, 389, 92.973, 0, 0, 0, 21.17, 0, 0, 0, 0.79, 0, 0.05, 0.05, 2.37, 0, 1157, 0, 1.95, 14.02, 263, 0.32, 62.58, 450, 0.32, 40.24, 0, 1),
(448, 'Marine Fish', 'fish', 'P037', 'Milk fish', 'Milk fish', 100, 30, 442, 105.641, 0, 0, 0, 23.66, 0, 0, 0, 1.09, 0, 0.05, 0.07, 5.21, 0, 1132, 0, 1.2, 29.18, 292, 1.35, 43.98, 301, 2.43, 35.38, 0, 1),
(449, 'Marine Fish', 'fish', 'P038', 'Moon fish', 'Moon fish', 100, 30, 526, 125.717, 0, 0, 0, 20.74, 0, 0, 0, 4.69, 0, 0.07, 0.07, 1.83, 0, 772, 0, 0.48, 29.18, 169, 1.7, 65.17, 157, 0.93, 37.14, 0, 1),
(450, 'Marine Fish', 'fish', 'P039', 'Mullet', 'Mullet', 100, 30, 393, 93.929, 0, 0, 0, 20.23, 0, 0, 0, 1.32, 0, 0.05, 0.09, 2.52, 0, 1189, 0, 0.31, 35.2, 222, 1.31, 66.09, 331, 0.45, 34.09, 0, 1),
(451, 'Marine Fish', 'fish', 'P040', 'Mural', 'Mural', 100, 30, 345, 82.457, 0, 0, 0, 19.04, 0, 0, 0, 0.58, 0, 0.06, 0.03, 2.65, 0, 1146, 0, 0.86, 8.61, 224, 0.24, 110, 330, 0.71, 27.1, 0, 1),
(452, 'Marine Fish', 'fish', 'P041', 'Myil meen', 'Myil meen', 100, 30, 410, 97.992, 0, 0, 0, 22.89, 0, 0, 0, 0.56, 0, 0.04, 0.04, 4.41, 0, 808, 0, 0.18, 7.2, 268, 1.2, 61.96, 365, 0.58, 30.08, 0, 1),
(453, 'Marine Fish', 'fish', 'P042', 'Nalla bontha', 'Nalla bontha', 100, 30, 364, 86.998, 0, 0, 0, 19.82, 0, 0, 0, 0.72, 0, 0.04, 0.01, 0.56, 0, 1714, 0, 0.54, 9.04, 197, 0.31, 57.87, 403, 0.3, 29.2, 0, 1),
(454, 'Marine Fish', 'fish', 'P043', 'Narba', 'Narba', 100, 30, 432, 103.25, 0, 0, 0, 21.95, 0, 0, 0, 1.6, 0, 0.05, 0.04, 1.51, 0, 1303, 0, 0.19, 7.21, 235, 1.11, 49.51, 384, 0.45, 26.33, 0, 1),
(455, 'Marine Fish', 'fish', 'P044', 'Paarai', 'Paarai', 100, 30, 435, 103.967, 0, 0, 0, 21.58, 0, 0, 0, 1.84, 0, 0.03, 0.02, 2.86, 0, 1612, 0, 1.4, 13.52, 284, 0.69, 45.22, 384, 0.45, 27.59, 0, 1),
(456, 'Marine Fish', 'fish', 'P045', 'Padayappa', 'Padayappa', 100, 30, 360, 86.042, 0, 0, 0, 19.7, 0, 0, 0, 0.69, 0, 0.03, 0.05, 4.53, 0, 1337, 0, 0.62, 9.83, 256, 0.33, 33.87, 490, 1.48, 28.98, 0, 1),
(457, 'Marine Fish', 'fish', 'P046', 'Pali kora', 'Pali kora', 100, 30, 394, 94.168, 0, 0, 0, 19.25, 0, 0, 0, 1.81, 0, 0.03, 0.05, 0.78, 0, 887, 0, 0.11, 17.03, 195, 0.42, 54.85, 364, 0.38, 28, 0, 1),
(458, 'Marine Fish', 'fish', 'P047', 'Pambada', 'Pambada', 100, 30, 537, 128.346, 0, 0, 0, 21.95, 0, 0, 0, 4044, 0, 0.04, 0.03, 1.96, 0, 1163, 0, 1.15, 16.53, 170, 0.38, 82.65, 263, 0.41, 29.87, 0, 1),
(459, 'Marine Fish', 'fish', 'P048', 'Pandukopa', 'Pandukopa', 100, 30, 360, 86.042, 0, 0, 0, 19.73, 0, 0, 0, 0.65, 0, 0.04, 0.02, 0.54, 0, 1651, 0, 0.2, 12.18, 203, 0.47, 49.15, 427, 0.33, 29.15, 0, 1),
(460, 'Marine Fish', 'fish', 'P049', 'Parava', 'Parava', 100, 30, 467, 111.616, 0, 0, 0, 21.5, 0, 0, 0, 2.74, 0, 0.03, 0.03, 0.98, 0, 796, 0, 1.12, 29.12, 194, 3.58, 84.08, 363, 0.56, 32.52, 0, 1),
(461, 'Marine Fish', 'fish', 'P050', 'Parcus', 'Parcus', 100, 30, 361, 86.281, 0, 0, 0, 19.87, 0, 0, 0, 0.62, 0, 0.04, 0.02, 0.88, 0, 488, 0, 0.57, 21.08, 218, 0.28, 64.38, 446, 0.33, 28.84, 0, 1),
(462, 'Marine Fish', 'fish', 'P051', 'Parrot fish', 'Parrot fish', 100, 30, 375, 89.627, 0, 0, 0, 20.82, 0, 0, 0, 0.57, 0, 0.06, 0.02, 1.89, 0, 556, 0, 0.67, 9.21, 316, 0.38, 51.79, 432, 0.31, 28.88, 0, 1),
(463, 'Marine Fish', 'fish', 'P052', 'Perinkillichai', 'Perinkillichai', 100, 30, 387, 92.495, 0, 0, 0, 20.89, 0, 0, 0, 0.87, 0, 0.08, 0.01, 1.48, 0, 511, 0, 0.36, 7.25, 236, 0.29, 34.16, 365, 0.36, 29.01, 0, 1),
(464, 'Marine Fish', 'fish', 'P053', 'Phopat', 'Phopat', 100, 30, 424, 101.338, 0, 0, 0, 22.05, 0, 0, 0, 1.33, 0, 0.06, 0.04, 4.28, 0, 502, 0, 0.43, 9.32, 258, 0.47, 36.2, 439, 0.36, 32.27, 0, 1),
(465, 'Marine Fish', 'fish', 'P054', 'Piranha', 'Piranha', 100, 30, 549, 131.214, 0, 0, 0, 20.46, 0, 0, 0, 5.43, 0, 0.04, 0.05, 0.97, 0, 774, 0, 1.06, 14.85, 170, 0.5, 38.97, 323, 0.43, 23.41, 0, 1),
(466, 'Marine Fish', 'fish', 'P055', 'Pomfert , black', 'Pomfert , black', 100, 30, 515, 123.088, 0, 0, 0, 18.91, 0, 0, 0, 4.83, 0, 0.06, 0.02, 2.61, 0, 2056, 0, 2.28, 18.1, 195, 0.78, 69.09, 295, 0.5, 28.22, 0, 1),
(467, 'Marine Fish', 'fish', 'P056', 'Pomfert , snub nose', 'Pomfert , snub nose', 100, 30, 375, 89.627, 0, 0, 0, 21.05, 0, 0, 0, 0.46, 0, 0.08, 0.05, 1.94, 0, 651, 0, 0.51, 6.57, 247, 0.41, 36.1, 483, 0.92, 29.85, 0, 1),
(468, 'Marine Fish', 'fish', 'P057', 'Pomfert , white', 'Pomfert , white', 100, 30, 513, 122.61, 0, 0, 0, 19.02, 0, 0, 0, 5.12, 0, 0.05, 0.03, 1.38, 0, 961, 0, 0.61, 13.64, 211, 0.31, 46.09, 255, 0.53, 32.2, 0, 1),
(469, 'Marine Fish', 'fish', 'P058', 'Pranel', 'Pranel', 100, 30, 405, 96.797, 0, 0, 0, 19.69, 0, 0, 0, 1.89, 0, 0.04, 0.13, 3.37, 0, 1251, 0, 0.54, 21.88, 166, 0.41, 52.37, 251, 0.55, 26.26, 0, 1),
(470, 'Marine Fish', 'fish', 'P059', 'Pulli paarai', 'Pulli paarai', 100, 30, 399, 95.363, 0, 0, 0, 20.06, 0, 0, 0, 1.55, 0, 0.05, 0.04, 1.94, 0, 1387, 0, 1.6, 21.84, 232, 0.35, 58.56, 335, 0.52, 31.12, 0, 1),
(471, 'Marine Fish', 'fish', 'P060', 'Queen fish', 'Queen fish', 100, 30, 400, 95.602, 0, 0, 0, 20.97, 0, 0, 0, 1.17, 0, 0.06, 0.04, 3.24, 0, 1073, 0, 0.19, 5.75, 235, 0.49, 48.93, 440, 0.35, 28.1, 0, 1),
(472, 'Marine Fish', 'fish', 'P061', 'Raai fish', 'Raai fish', 100, 30, 430, 102.772, 0, 0, 0, 21.61, 0, 0, 0, 1.69, 0, 0.07, 0.02, 1.63, 0, 1638, 0, 2.99, 11.09, 213, 0.46, 47.62, 347, 0.36, 21.99, 0, 1),
(473, 'Marine Fish', 'fish', 'P062', 'Raai vanthu', 'Raai vanthu', 100, 30, 410, 97.992, 0, 0, 0, 19.39, 0, 0, 0, 2.17, 0, 0.03, 0.01, 0.72, 0, 1562, 0, 1.23, 8.72, 178, 0.36, 50.83, 311, 0.35, 27.39, 0, 1),
(474, 'Marine Fish', 'fish', 'P063', 'Rani', 'Rani', 100, 30, 377, 90.105, 0, 0, 0, 18.83, 0, 0, 0, 1.49, 0, 0, 0.01, 1.33, 0, 1217, 0, 1.84, 37.9, 208, 0.87, 63.17, 335, 0.4, 29.91, 0, 1),
(475, 'Marine Fish', 'fish', 'P064', 'Ray fish , bow head , spotted', 'Ray fish , bow head , spotted', 100, 30, 349, 83.413, 0, 0, 0, 19.03, 0, 0, 0, 0.7, 0, 0.05, 0.03, 1.99, 0, 1244, 0, 0.81, 9.64, 196, 0.25, 105, 353, 0.49, 19.25, 0, 1),
(476, 'Marine Fish', 'fish', 'P065', 'Red snapper', 'Red snapper', 100, 30, 437, 104.446, 0, 0, 0, 22.79, 0, 0, 0, 1.34, 0, 0.02, 0.02, 3.14, 0, 1386, 0, 2.32, 8.39, 204, 0.37, 59.89, 446, 0.34, 32.65, 0, 1),
(477, 'Marine Fish', 'fish', 'P066', 'Red snapper , small', 'Red snapper , small', 100, 30, 451, 107.792, 0, 0, 0, 21.5, 0, 0, 0, 2.3, 0, 0.06, 0.03, 3.43, 0, 906, 0, 3.05, 17.43, 204, 0.57, 38.97, 327, 0.4, 31.03, 0, 1),
(478, 'Marine Fish', 'fish', 'P067', 'Sadaya', 'Sadaya', 100, 30, 462, 110.421, 0, 0, 0, 20.68, 0, 0, 0, 2.97, 0, 0.07, 0.38, 2.45, 0, 459, 0, 1.56, 9.08, 221, 0.47, 49.41, 360, 0.68, 26.27, 0, 1),
(479, 'Marine Fish', 'fish', 'P068', 'Salmon', 'Salmon', 100, 30, 721, 172.323, 0, 0, 0, 20.97, 0, 0, 0, 9.86, 0, 0.07, 0.06, 4.45, 0, 1136, 0, 0.86, 24.3, 211, 0.98, 20.25, 345, 0.51, 31.18, 0, 1),
(480, 'Marine Fish', 'fish', 'P069', 'Sangada', 'Sangada', 100, 30, 443, 105.88, 0, 0, 0, 20.26, 0, 0, 0, 2.67, 0, 0.01, 0.02, 0.68, 0, 1675, 0, 0.92, 7.9, 211, 0.99, 77.82, 217, 0.32, 28.37, 0, 1),
(481, 'Marine Fish', 'fish', 'P070', 'Sankata paarai', 'Sankata paarai', 100, 30, 434, 103.728, 0, 0, 0, 21.87, 0, 0, 0, 1.68, 0, 0.03, 0.06, 3.7, 0, 1076, 0, 0.58, 6.03, 246, 0.99, 22.23, 379, 0.39, 27.53, 0, 1),
(482, 'Marine Fish', 'fish', 'P071', 'Sardine', 'Sardine', 100, 30, 637, 152.247, 0, 0, 0, 17.91, 0, 0, 0, 8.99, 0, 0.01, 0.06, 0.91, 0, 2266, 0, 3.51, 42.26, 191, 0.83, 38.49, 228, 0.89, 24.39, 0, 1),
(483, 'Marine Fish', 'fish', 'P072', 'Shark', 'Shark', 100, 30, 398, 95.124, 0, 0, 0, 21.6, 0, 0, 0, 0.83, 0, 0.03, 0.04, 2.68, 0, 857, 0, 0.18, 8.44, 263, 0.38, 63.63, 372, 0.46, 32.58, 0, 1),
(484, 'Marine Fish', 'fish', 'P073', 'Shark , hammer head', 'Shark , hammer head', 100, 30, 432, 103.25, 0, 0, 0, 23.4, 0, 0, 0, 0.8, 0, 0.02, 0.04, 2.72, 0, 2006, 0, 0.58, 7.92, 200, 0.86, 53.55, 304, 0.4, 25.11, 0, 1),
(485, 'Marine Fish', 'fish', 'P074', 'Shark , spotted', 'Shark , spotted', 100, 30, 384, 91.778, 0, 0, 0, 20.95, 0, 0, 0, 0.75, 0, 0.05, 0.05, 1.02, 0, 1323, 0, 1.23, 8.1, 179, 0.54, 131, 318, 0.55, 19.05, 0, 1),
(486, 'Marine Fish', 'fish', 'P075', 'Shelavu', 'Shelavu', 100, 30, 446, 106.597, 0, 0, 0, 22.46, 0, 0, 0, 1.74, 0, 0.05, 0.06, 2.1, 0, 790, 0, 1.77, 11.42, 251, 0.52, 38.73, 453, 0.42, 29.9, 0, 1),
(487, 'Marine Fish', 'fish', 'P076', 'Silan', 'Silan', 100, 30, 633, 151.291, 0, 0, 0, 22.72, 0, 0, 0, 6.68, 0, 0.02, 0.07, 1.27, 0, 2438, 0, 0.18, 28.82, 163, 0.56, 29.39, 223, 0.58, 22.64, 0, 1),
(488, 'Marine Fish', 'fish', 'P077', 'Silk fish', 'Silk fish', 100, 30, 408, 97.514, 0, 0, 0, 20.65, 0, 0, 0, 1.53, 0, 0.03, 0.04, 2.24, 0, 802, 0, 0.68, 10.46, 211, 0.3, 41.57, 440, 0.34, 27.13, 0, 1),
(489, 'Marine Fish', 'fish', 'P078', 'Silver carp', 'Silver carp', 100, 30, 555, 132.648, 0, 0, 0, 21.71, 0, 0, 0, 5.17, 0, 0.02, 0.02, 1.87, 0, 2462, 0, 0.69, 85.55, 187, 0.58, 19.6, 249, 0.57, 24.97, 0, 1),
(490, 'Marine Fish', 'fish', 'P079', 'Sole fish', 'Sole fish', 100, 30, 367, 87.715, 0, 0, 0, 19.05, 0, 0, 0, 1.18, 0, 0.01, 0.02, 0.47, 0, 1393, 0, 1.12, 47.28, 123, 0.33, 74.57, 199, 0.17, 27.96, 0, 1),
(491, 'Marine Fish', 'fish', 'P080', 'Stingray', 'Stingray', 100, 30, 408, 97.514, 0, 0, 0, 23.98, 0, 0, 0, 6.68, 0, 0.03, 0.02, 2.74, 0, 2559, 0, 0.67, 9.16, 174, 0.74, 64.14, 270, 0.44, 24.61, 0, 1),
(492, 'Marine Fish', 'fish', 'P081', 'Tarlava', 'Tarlava', 100, 30, 414, 98.948, 0, 0, 0, 21.72, 0, 0, 0, 1.2, 0, 0.04, 0.04, 2.13, 0, 1380, 0, 2.35, 11.68, 199, 0.53, 67.4, 370, 0.31, 30.1, 0, 1),
(493, 'Marine Fish', 'fish', 'P082', 'Rholam', 'Rholam', 100, 30, 432, 103.25, 0, 0, 0, 20.78, 0, 0, 0, 2.13, 0, 0.04, 0.03, 2.74, 0, 824, 0, 2.8, 11.4, 241, 0.6, 28, 382, 0.36, 26.14, 0, 1),
(494, 'Marine Fish', 'fish', 'P083', 'Tilapis', 'Tilapis', 100, 30, 349, 83.413, 0, 0, 0, 18.48, 0, 0, 0, 1.08, 0, 0.02, 0.18, 1.4, 0, 829, 0, 0.85, 99.39, 184, 2.84, 52.55, 255, 0.88, 24.56, 0, 1),
(495, 'Marine Fish', 'fish', 'P084', 'Tuna', 'Tuna', 100, 30, 470, 112.333, 0, 0, 0, 24.5, 0, 0, 0, 1.44, 0, 0.06, 0.07, 4.73, 0, 1374, 0, 0.11, 9.82, 292, 1.6, 52.89, 357, 0.69, 35.85, 0, 1),
(496, 'Marine Fish', 'fish', 'P085', 'Tuna , striped', 'Tuna , striped', 100, 30, 403, 96.319, 0, 0, 0, 21.28, 0, 0, 0, 1.12, 0, 0.07, 0.15, 5.04, 0, 789, 0, 0.65, 6.45, 209, 1.43, 22.6, 273, 0.46, 26.02, 0, 1),
(497, 'Marine Fish', 'fish', 'P086', 'Valava', 'Valava', 100, 30, 410, 97.992, 0, 0, 0, 21.8, 0, 0, 0, 1.06, 0, 0.13, 0.02, 0.86, 0, 1438, 0, 0.25, 37.06, 229, 0.24, 91.91, 365, 0.42, 39.05, 0, 1),
(498, 'Marine Fish', 'fish', 'P087', 'Vanjaram', 'Vanjaram', 100, 30, 570, 136.233, 0, 0, 0, 22.28, 0, 0, 0, 5.18, 0, 0.03, 0.07, 3.46, 0, 1545, 0, 1.57, 9.85, 302, 0.41, 34.85, 473, 0.74, 36.73, 0, 1),
(499, 'Marine Fish', 'fish', 'P088', 'Vela meen', 'Vela meen', 100, 30, 537, 128.346, 0, 0, 0, 22.16, 0, 0, 0, 4.34, 0, 0.05, 0.04, 5.15, 0, 1632, 0, 0.92, 14.9, 280, 0.64, 38.15, 387, 0.36, 31.93, 0, 1),
(500, 'Marine Fish', 'fish', 'P089', 'Vora', 'Vora', 100, 30, 422, 100.86, 0, 0, 0, 20.14, 0, 0, 0, 2.14, 0, 0.06, 0.07, 3.72, 0, 1480, 0, 0.6, 7.64, 246, 0.27, 43.66, 401, 0.29, 32.27, 0, 1),
(501, 'Marine Fish', 'fish', 'P090', 'Whale shark', 'Whale shark', 100, 30, 401, 95.841, 0, 0, 0, 21.83, 0, 0, 0, 0.82, 0, 0.06, 0.04, 2.9, 0, 1605, 0, 1.82, 8.32, 274, 0.33, 116, 365, 0.38, 20.61, 0, 1),
(502, 'Marine Fish', 'fish', 'P091', 'Xiphinis', 'Xiphinis', 100, 30, 370, 88.432, 0, 0, 0, 19.82, 0, 0, 0, 0.88, 0, 0.06, 0.05, 3.24, 0, 820, 0, 0.02, 12.08, 255, 0.54, 66.21, 306, 0.56, 26.38, 0, 1),
(503, 'Marine Fish', 'fish', 'P092', 'Eggs , cat fish', 'Eggs , cat fish', 100, 30, 600, 143.403, 0, 0, 0, 24.68, 0, 0, 0, 5.28, 0, 0, 0.19, 1.09, 0, 2059, 0, 2.8, 61.69, 445, 6.65, 54.83, 252, 3.11, 59.93, 0, 1),
(504, 'Marine ShellFish', 'fish', 'Q001', 'Crab', 'Crab', 100, 30, 343, 81.979, 0, 0, 0, 10.23, 0, 0, 0, 1.41, 0, 0.01, 0.1, 1.66, 0, 2304, 0, 0.21, 128, 100, 1.1, 244, 171, 0.76, 38.04, 0, 1),
(505, 'Marine ShellFish', 'fish', 'Q002', 'Crab , sea', 'Crab , sea', 100, 30, 283, 67.639, 0, 0, 0, 15.36, 0, 0, 0, 0.6, 0, 0.05, 0.06, 0.97, 0, 774, 0, 0.63, 333, 193, 0.98, 313, 252, 3.07, 80.04, 0, 1),
(506, 'Marine ShellFish', 'fish', 'Q003', 'Lobster , brown', 'Lobster , brown', 100, 30, 292, 69.79, 0, 0, 0, 15.96, 0, 0, 0, 0.56, 0, 0.01, 0.01, 0.63, 0, 1129, 0, 0.78, 73.06, 223, 0.77, 140, 212, 1.16, 45.34, 0, 1),
(507, 'Marine ShellFish', 'fish', 'Q004', 'Lobster , king size', 'Lobster , king size', 100, 30, 375, 89.627, 0, 0, 0, 18.54, 0, 0, 0, 0.78, 0, 0.01, 0.02, 1.87, 0, 1997, 0, 0.19, 66.44, 261, 0.35, 191, 315, 1.92, 50.16, 0, 1),
(508, 'Marine ShellFish', 'fish', 'Q005', 'Mud crab', 'Mud crab', 100, 30, 190, 45.411, 0, 0, 0, 10, 0, 0, 0, 0.55, 0, 0.06, 0.14, 0.6, 0, 1383, 0, 0.94, 201, 153, 0.87, 305, 227, 3.3, 46.92, 0, 1),
(509, 'Marine ShellFish', 'fish', 'Q006', 'Oyster', 'Oyster', 100, 30, 252, 60.229, 0, 0, 0, 9.51, 0, 0, 0, 2.44, 0, 0.06, 0.07, 0.71, 0, 1612, 0, 0.82, 126, 170, 0.9, 41.01, 122, 7.35, 22.24, 0, 1),
(510, 'Marine ShellFish', 'fish', 'Q007', 'Tiger prawns , brown', 'Tiger prawns , brown', 100, 30, 273, 65.249, 0, 0, 0, 14.85, 0, 0, 0, 0.56, 0, 0.01, 0.03, 1.03, 0, 1537, 0, 1.18, 37.81, 189, 0.73, 188, 141, 1.1, 45.93, 0, 1),
(511, 'Marine ShellFish', 'fish', 'Q008', 'Tiger prawns , orange', 'Tiger prawns , orange', 100, 30, 270, 64.532, 0, 0, 0, 14.25, 0, 0, 0, 0.74, 0, 0.03, 0.03, 1.18, 0, 807, 0, 1.62, 71.89, 191, 0.9, 61.05, 140, 1.16, 30.51, 0, 1),
(512, 'Marine Mollusks', 'fish', 'R001', 'Clam , green shell', 'Clam , green shell', 100, 30, 243, 58.078, 0, 0, 0, 12.14, 0, 0, 0, 0.98, 0, 0.06, 0.1, 0.96, 0, 907, 0, 0.86, 121, 128, 1.01, 322, 152, 1.64, 73.64, 0, 1),
(513, 'Marine Mollusks', 'fish', 'R002', 'Clam , white shell , ribbed', 'Clam , white shell , ribbed', 100, 30, 250, 59.751, 0, 0, 0, 11.82, 0, 0, 0, 1.34, 0, 0.06, 0.11, 0.9, 0, 900, 0, 2.08, 50, 192, 0.94, 404, 245, 1.16, 86.64, 0, 1),
(514, 'Marine Mollusks', 'fish', 'R003', 'Octopus', 'Octopus', 100, 30, 334, 79.828, 0, 0, 0, 14.71, 0, 0, 0, 1.12, 0, 0.05, 0.05, 1.18, 0, 2087, 0, 0.43, 22.1, 131, 1.08, 230, 181, 4.07, 50.92, 0, 1),
(515, 'Marine Mollusks', 'fish', 'R004', 'Squid , black', 'Squid , black', 100, 30, 335, 80.067, 0, 0, 0, 16.1, 0, 0, 0, 1.07, 0, 0.02, 0.04, 1.04, 0, 1233, 0, 0.57, 22.98, 173, 0.5, 179, 162, 1.24, 41.99, 0, 1),
(516, 'Marine Mollusks', 'fish', 'R005', 'Squid , hard shell', 'Squid , hard shell', 100, 30, 320, 76.482, 0, 0, 0, 16.82, 0, 0, 0, 0.93, 0, 0.02, 0.02, 0.65, 0, 622, 0, 1.05, 8.73, 173, 0.62, 99.14, 116, 1.3, 35.46, 0, 1),
(517, 'Marine Mollusks', 'fish', 'R006', 'Squid , red ', 'Squid , red ', 100, 30, 329, 78.633, 0, 0, 0, 16.25, 0, 0, 0, 1.44, 0, 0.03, 0.02, 0.71, 0, 1300, 0, 0.55, 14.15, 167, 0.26, 121, 134, 0.95, 35.74, 0, 1),
(518, 'Marine Mollusks', 'fish', 'R007', 'Squid , white , small', 'Squid , white , small', 100, 30, 353, 84.369, 0, 0, 0, 17.41, 0, 0, 0, 1.15, 0, 0.01, 0.03, 0.71, 0, 1833, 0, 1.37, 36.46, 151, 0.39, 154, 134, 1.64, 38.53, 0, 1),
(519, 'Freshwater Fish & Shellfish', 'fish', 'S001', 'Cat fish', 'Cat fish', 100, 30, 518, 123.805, 0, 0, 0, 15.86, 0, 0, 0, 6.24, 0, 0.01, 0.07, 1.74, 0, 1395, 0, 1.37, 21.99, 157, 0.82, 28.29, 250, 0.71, 18.78, 0, 1),
(520, 'Freshwater Fish & Shellfish', 'fish', 'S002', 'Catla', 'Catla', 100, 30, 394, 94.168, 0, 0, 0, 17.94, 0, 0, 0, 2.15, 0, 0.01, 0.03, 2.21, 0, 1926, 0, 1.9, 43.53, 182, 1.14, 36.56, 301, 0.68, 25.58, 0, 1),
(521, 'Freshwater Fish & Shellfish', 'fish', 'S003', 'Freshwater eel', 'Freshwater eel', 100, 30, 451, 107.792, 0, 0, 0, 20.41, 0, 0, 0, 2.63, 0, 0, 0.31, 2.3, 0, 1294, 0, 3.81, 52.99, 361, 1.54, 88.67, 450, 2.23, 42.5, 0, 1),
(522, 'Freshwater Fish & Shellfish', 'fish', 'S004', 'Gold fish', 'Gold fish', 100, 30, 396, 94.646, 0, 0, 0, 16.91, 0, 0, 0, 2.94, 0, 0, 0.05, 1.86, 0, 2457, 0, 0.21, 47.89, 185, 0.76, 27.53, 243, 1.69, 21.66, 0, 1),
(523, 'Freshwater Fish & Shellfish', 'fish', 'S005', 'Pangas', 'Pangas', 100, 30, 852, 203.633, 0, 0, 0, 17.12, 0, 0, 0, 16.77, 0, 0, 0.05, 1.28, 0, 1323, 0, 0.2, 11.19, 179, 0.69, 37.42, 282, 0.69, 25.09, 0, 1),
(524, 'Freshwater Fish & Shellfish', 'fish', 'S006', 'Rohu', 'Rohu', 100, 30, 428, 102.294, 0, 0, 0, 19.71, 0, 0, 0, 2.39, 0, 0, 0.04, 2.33, 0, 1263, 0, 0.84, 39.37, 200, 1.04, 35.56, 303, 0.8, 26.53, 0, 1),
(525, 'Freshwater Fish & Shellfish', 'fish', 'S007', 'Crab', 'Crab', 100, 30, 327, 78.155, 0, 0, 0, 13.23, 0, 0, 0, 0.89, 0, 0.01, 0.11, 1.54, 0, 1783, 0, 1.2, 199, 208, 1.1, 280, 286, 2.49, 66.77, 0, 1),
(526, 'Freshwater Fish & Shellfish', 'fish', 'S008', 'Prawns , big', 'Prawns , big', 100, 30, 380, 90.822, 0, 0, 0, 19.24, 0, 0, 0, 5.52, 0, 0, 0.02, 1.31, 0, 1826, 0, 0.35, 48.55, 237, 0.78, 849, 269, 1.44, 39.25, 0, 1),
(527, 'Freshwater Fish & Shellfish', 'fish', 'S009', 'Prawns , small', 'Prawns , small', 100, 30, 297, 70.985, 0, 0, 0, 13.07, 0, 0, 0, 0.78, 0, 0.01, 0.03, 0.54, 0, 1306, 0, 0.95, 67.99, 192, 0.87, 77.71, 224, 0.87, 26.91, 0, 1),
(528, 'Freshwater Fish & Shellfish', 'fish', 'S010', 'Tiger prawns', 'Tiger prawns', 100, 30, 284, 67.878, 0, 0, 0, 14.24, 0, 0, 0, 0.66, 0, 0.01, 0.04, 1.28, 0, 1875, 0, 1.34, 57.9, 155, 0.84, 80.77, 149, 1.02, 22.94, 0, 1),
(529, 'Fat', 'Fat', 'Z001', 'Oil', 'Oil', 100, 5, 3765.6, 900, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(530, 'Fat', 'Fat', 'Z002', 'Ghee', 'Ghee', 100, 5, 3765.6, 900, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(531, 'Cereal', 'Cereal', 'Z003', 'Bajara flour', 'Bajara flour(bajara atta)', 100, 20, 1456, 347.99, 71, 43.86, 61.78, 10.96, 11.49, 2.34, 9.14, 5.43, 0, 0.25, 0.2, 0.86, 0.64, 36.11, 0, 5.65, 27.35, 289, 6.42, 4.11, 365, 2.76, 124, 0, 1),
(532, 'Cereal', 'Cereal', 'Z004', 'Rice flour', 'Rice flour(chaval atta)', 100, 20, 1531.34, 366, 0, 0, 80.13, 5.95, 2.4, 0, 0, 1.42, 0, 0.13, 0.02, 2.59, 0, 4, 0, 0, 10, 98, 0.35, 0, 76, 0.8, 35, 0.38, 1),
(533, 'Cereal', 'Cereal', 'Z005', 'Jowar flour', 'Jowar flour (jowar atta)', 100, 20, 1502.05, 359, 0, 0, 76.64, 8.83, 6.6, 0, 0, 3.34, 0, 0.32, 0.06, 4.49, 0, 25, 0.8, 0, 12, 278, 3.14, 3, 324, 1.63, 123, 0.52, 1),
(534, 'Cereal', 'Cereal', 'Z006', 'Barley flour', 'Barley flour(jav atta)', 100, 20, 1443.48, 345, 0, 0, 74.52, 10.5, 10.1, 0, 0, 1.6, 0, 0.37, 0.11, 6.26, 0, 8, 0, 0, 32, 296, 2.68, 4, 309, 2, 96, 0.33, 1),
(535, 'Cereal', 'Cereal', 'Z007', 'Amaranth flour', 'Amaranth flour(rajgira atta)', 100, 20, 1489, 355.88, 35, 21.51, 61.46, 13.27, 7.47, 1.67, 5.8, 5.56, 0, 0.04, 0.04, 0.52, 1.87, 24.65, 0, 53.98, 162, 412, 8.02, 2.81, 413, 2.52, 270, 0, 1),
(536, 'Cereal', 'Cereal', 'Z008', 'Maize flour', 'Maize flour(makai atta)', 100, 20, 1510.42, 361, 0, 0, 76.85, 6.93, 7.3, 0, 0, 3.86, 0, 0.24, 0.08, 1.9, 0, 25, 0, 0, 7, 272, 2.38, 5, 315, 1.73, 93, 0.54, 1),
(537, 'Cereal', 'Cereal', 'Z009', 'Ragi flour', 'Ragi flour(nachni atta)', 100, 20, 1405.82, 336, 0, 0, 72.6, 7.7, 3.6, 0, 0, 1.3, 0, 0.42, 0.19, 1.1, 0, 0, 0, 0, 350, 0, 3.9, 0, 0, 0, 0, 0, 1),
(538, 'Fruit', 'Fruit', 'z010', 'Kiwi', 'Kiwi', 100, 100, 225.22, 61, 0, 0, 14.66, 1.14, 3, 0, 0, 0.52, 0, 0.02, 0.02, 0.34, 0, 25, 92.7, 0, 34, 0, 0.31, 3, 312, 0.14, 17, 0, 1),
(539, 'Water', 'Water', 'Z011', 'Water', 'Water', 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(540, 'Grain', 'Pulses and Legumes', 'z012', 'Mung chilka dal', 'Mung chilka dal', 100, 30, 1229, 293.73, 31, 14.3, 46.13, 22.53, 17.04, 2.44, 14.59, 1.14, 0, 0.45, 0.27, 2.16, 1.35, 145, 0, 3.15, 92.43, 353, 4.89, 12.48, 1177, 2.67, 198, 0, 1),
(541, 'Grain', 'pulses and legumes', 'z013', 'gram flour', 'gram flour(besan)', 100, 30, 1617.66, 387, 0, 0, 58, 22, 11, 0, 0, 6.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(542, 'milk', 'milk and milk product', 'z014', 'skim milk ', 'skim milk ', 100, 300, 121.59, 29.06, 0, 0, 4.59, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(543, 'milk', 'milk and milk product', 'z015', 'Whole milk powder', 'Whole milk powder', 100, 30, 2078.5, 496.66, 0, 0, 38.06, 25.8, 0, 0, 0, 25.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(544, 'milk', 'milk and milk product', 'z016', 'skim milk powder', 'skim milk powder', 100, 20, 2353.5, 562.5, 0, 0, 80.25, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(545, 'milk', 'milk and milk product', 'z017', 'butter milk', 'butter milk(chaas)', 100, 1000, 64.85, 15.5, 0, 0, 0.5, 0.8, 0, 0, 0, 1.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(546, 'milk', 'milk and milk product', 'z018', 'curd', 'curd(dahi)', 100, 250, 251.36, 60.07, 0, 0, 2.98, 3.1, 0, 0, 0, 3.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(547, 'milk', 'milk and milk product', 'z019', 'paneer cow\'s milk', 'paneer cow\'s milk', 100, 50, 1112.56, 265.9, 0, 0, 1.12, 18.18, 0, 0, 0, 20.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(548, 'milk', 'milk and milk product', 'z020', 'paneer buffalo\'s milk', 'paneer buffalo\'s milk', 100, 50, 1220.32, 291.66, 0, 0, 7.82, 13.32, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(549, 'Sugars', 'sugar', 'z021', 'Sugar (white)', 'Sugar (white)', 100, 5, 2092, 500, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(550, 'Sugars', 'sugar', 'z022', 'Honey (madh)', 'Honey (madh)', 100, 5, 2092, 500, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(551, 'Biscuit', 'Cereal', 'Z023', 'Glucose biscuit', 'Glucose biscuit', 100, 20, 1895.35, 453, 0, 0, 103.1, 7, 1.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(552, 'Cereal', 'Cereal', 'z024', 'Oatmeal cookie', 'Oatmeal cookie', 100, 20, 2087.81, 499, 0, 0, 82, 8.2, 6.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(553, 'Cereal', 'Cereal', 'z025', 'Cream biscuit', 'Cream biscuit', 100, 20, 2083.63, 498, 0, 0, 110, 7, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(554, 'Cereal', 'Cereal', 'z026', 'Salted biscuit', 'Salted biscuit', 100, 20, 2071.08, 495, 0, 0, 76.6, 7.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(555, 'Cereal', 'Cereal', 'z027', 'Marie biscuit', 'marie biscuit', 100, 20, 2075.26, 496, 0, 0, 88, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(556, 'Milk', 'Milk and milk product', 'z028', 'Diamond milk packed', 'Diamond milk packed', 100, 250, 401.66, 96, 0, 0, 5, 3.3, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(557, 'Milk', 'Milk and milk product', 'z029', 'Gold milk packed', 'Gold milk packed', 100, 250, 364, 87, 0, 0, 5, 3.3, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(558, 'Milk', 'Milk and milk product', 'z030', 'Shakti milk packed', 'Shakti milk packed', 100, 250, 301.25, 72, 0, 0, 4.7, 3.1, 0, 0, 0, 4.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(559, 'Milk', 'Milk and milk product', 'z031', 'Cow milk packed', 'Cow milk packed', 100, 250, 259.4, 62, 0, 0, 4.4, 3.2, 0, 0, 0, 3.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(560, 'Milk', 'Milk and milk product', 'z032', 'Taaza milk packed', 'Taaza milk packed', 100, 250, 242.67, 58, 0, 0, 4.7, 3.1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(561, 'Milk', 'Milk and milk product', 'z033', 'Slim and trim milk packed', 'Slim and trim milk packed', 100, 250, 196.64, 47, 0, 0, 5, 3.3, 0, 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(562, 'Protein', 'Whey protein', 'z034', 'Concentrate whey protein', 'Concentrate whey protein', 100, 30, 1813.06, 433.33, 0, 0, 16.66, 66.66, 3.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(563, 'Protein', 'Whey protein', 'z035', 'Whey protein', 'Whey protein', 100, 30, 1813.06, 433.33, 0, 0, 6.66, 80, 3.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `license` varchar(15) NOT NULL DEFAULT 'basic',
  `validity` datetime NOT NULL,
  `org_secret` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `email`, `license`, `validity`, `org_secret`, `is_active`, `secret`) VALUES
(1, 'Default Organization', 'superadmin@example.com', 'super', '0000-00-00 00:00:00', '206b2dbe-ecc9-490b-b81b-83767288bc5e', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(255) NOT NULL,
  `package_code` varchar(255) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `dietitian_name` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `isGroupPackage` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_code`, `package_name`, `plan_name`, `dietitian_name`, `duration`, `isGroupPackage`, `description`) VALUES
(1, 'PACK1', 'package1', 'Customize plan', 'Fitmix', 'Monthly', 'TRUE', '-'),
(2, 'PACK2', 'package2', 'Customize plan', 'Neha Nutrition Center', 'Monthly', 'TRUE', '-'),
(3, 'PACK3', 'package3', 'Customize plan', 'Fitmix', 'Yearly', 'TRUE', '-'),
(4, 'PACK4', 'package4', 'Customize plan', 'Neha Nutrition Center', 'Yearly', 'TRUE', '-'),
(5, 'PACK5', 'package5', 'Customize plan', 'Fitmix', 'Quaterly', 'TRUE', '-'),
(6, 'PACK6', 'package6', 'Customize plan', 'Neha Nutrition Center', 'Quaterly', 'TRUE', '-'),
(7, 'PACK7', 'package7', 'Customize plan', 'Fitmix', 'HalfYearly', 'TRUE', '-'),
(8, 'PACK8', 'package8', 'Customize plan', 'Neha Nutrition Center', 'HalfYearly', 'TRUE', '-'),
(9, 'PACK9', 'package9', 'Free Plan', 'Fitmix', 'Yearly', 'TRUE', '-');

-- --------------------------------------------------------

--
-- Table structure for table `picker_lists`
--

CREATE TABLE `picker_lists` (
  `uom_name` varchar(255) NOT NULL,
  `display_value` float NOT NULL,
  `picker_value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picker_lists`
--

INSERT INTO `picker_lists` (`uom_name`, `display_value`, `picker_value`) VALUES
('Cup', 0.25, 0.25),
('Cup', 0.5, 0.5),
('Cup', 1, 1),
('Cup', 1.5, 1.5),
('Cup', 2, 2),
('Cup', 2.5, 2.5),
('Cup', 3, 3),
('Cup', 3.5, 3.5),
('Cup', 4, 4),
('Cup', 4.5, 4.5),
('Cup', 5, 5),
('Cup', 0.75, 0.75),
('Gram', 5, 5),
('Gram', 10, 10),
('Gram', 15, 15),
('Gram', 20, 20),
('Gram', 25, 25),
('Gram', 50, 50),
('Gram', 100, 100),
('Gram', 150, 150),
('Gram', 200, 200),
('Gram', 250, 250),
('Gram', 300, 300),
('Gram', 350, 350),
('Gram', 400, 400),
('Gram', 450, 450),
('Gram', 500, 500),
('Gram', 75, 75),
('Gram', 30, 30),
('Gram', 40, 40),
('Small', 1, 1),
('Small', 2, 2),
('Small', 3, 3),
('Small', 4, 4),
('Small', 5, 5),
('Small', 6, 6),
('Small', 7, 7),
('Small', 8, 8),
('Small', 9, 9),
('Small', 10, 10),
('Medium', 1, 1),
('Medium', 2, 2),
('Medium', 3, 3),
('Medium', 4, 4),
('Medium', 5, 5),
('Medium', 6, 6),
('Medium', 7, 7),
('Medium', 8, 8),
('Medium', 9, 9),
('Medium', 10, 10),
('Large	', 1, 1),
('Large	', 2, 2),
('Large	', 3, 3),
('Large	', 4, 4),
('Large	', 5, 5),
('Large	', 6, 6),
('Large	', 7, 7),
('Large	', 8, 8),
('Large	', 9, 9),
('Large	', 10, 10),
('ML', 5, 5),
('ML', 10, 10),
('ML', 15, 15),
('ML', 20, 20),
('ML', 25, 25),
('ML', 30, 30),
('ML', 35, 35),
('ML', 40, 40),
('ML', 45, 45),
('ML', 50, 50),
('ML', 55, 55),
('ML', 60, 60),
('ML', 65, 65),
('ML', 70, 70),
('ML', 75, 75),
('ML', 80, 80),
('ML', 85, 85),
('ML', 90, 90),
('ML', 95, 95),
('ML', 100, 100),
('ML', 125, 125),
('ML', 150, 150),
('ML', 175, 175),
('ML', 200, 200),
('ML', 250, 250),
('ML', 300, 300),
('ML', 350, 350),
('ML', 400, 400),
('ML', 450, 450),
('ML', 500, 500),
('Mug', 1, 1),
('Mug', 2, 2),
('Mug', 3, 3),
('Mug', 4, 4),
('Mug', 5, 5),
('Piece', 1, 1),
('Piece', 2, 2),
('Piece', 3, 3),
('Piece', 4, 4),
('Piece', 5, 5),
('Piece', 6, 6),
('Piece', 7, 7),
('Piece', 8, 8),
('Piece', 9, 9),
('Piece', 10, 10),
('Piece', 11, 11),
('Piece', 12, 12),
('Piece', 13, 13),
('Piece', 14, 14),
('Piece', 15, 15),
('Piece', 16, 16),
('Piece', 17, 17),
('Piece', 18, 18),
('Piece', 19, 19),
('Piece', 20, 20),
('Piece', 21, 21),
('Piece', 22, 22),
('Piece', 23, 23),
('Piece', 25, 25),
('Piece', 24, 24),
('Piece', 30, 30),
('Piece', 35, 35),
('Piece', 40, 40),
('Piece', 45, 45),
('Piece', 50, 50),
('Table Spoon', 1, 1),
('Table Spoon', 2, 2),
('Table Spoon', 3, 3),
('Table Spoon', 4, 4),
('Table Spoon', 6, 6),
('Table Spoon', 7, 7),
('Table Spoon', 8, 8),
('Table Spoon', 9, 9),
('Table Spoon', 10, 10),
('ML Glass', 50, 0.5),
('ML Glass', 100, 1),
('ML Glass', 150, 1.5),
('ML Glass', 200, 2),
('ML Glass', 250, 2.5),
('ML Glass', 300, 3),
('ML Glass', 350, 3.5),
('ML Glass', 400, 4),
('ML Glass', 450, 4.5),
('ML Glass', 500, 5),
('Tea Cup', 1, 1),
('Tea Cup', 2, 2),
('Tea Cup', 3, 3),
('Tea Cup', 4, 4),
('Tea Cup', 5, 5),
('Tea Cup', 0.5, 0.5),
('Tea Spoon', 1, 1),
('Tea Spoon', 2, 2),
('Tea Spoon', 3, 3),
('Tea Spoon', 4, 4),
('Tea Spoon', 5, 5),
('Tea Spoon', 6, 6),
('Tea Spoon', 7, 7),
('Tea Spoon', 8, 8),
('Tea Spoon', 9, 9),
('Tea Spoon', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `plan_code` varchar(255) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `isCustomPlan` varchar(255) NOT NULL,
  `isDefault` varchar(255) NOT NULL,
  `isActive` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`plan_code`, `plan_name`, `description`, `isCustomPlan`, `isDefault`, `isActive`) VALUES
('PLAN1', 'Free Plan', '-', 'FALSE', 'TRUE', 'TRUE'),
('PLAN2', 'Free Diet Tips- Parent Recipe', '-', 'FALSE', 'FALSE', 'TRUE'),
('PLAN3', 'Customize plan', '-', 'TRUE', 'FALSE', 'TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(10) NOT NULL,
  `recipe_name` varchar(255) NOT NULL,
  `parent_recipe` varchar(255) NOT NULL,
  `variants` varchar(255) NOT NULL,
  `reference_url` varchar(255) NOT NULL,
  `possible_measurements` varchar(255) NOT NULL,
  `recipetype_name` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `energy_kj_total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `recipe_name`, `parent_recipe`, `variants`, `reference_url`, `possible_measurements`, `recipetype_name`, `upload_image`, `description`, `energy_kj_total`) VALUES
(1, 'pulav', 'rice', 'rice,flavor', 'zdsvrvzc', 'Cup', 'Lunch', 'dftyjg', '-', NULL);

--
-- Triggers `recipes`
--
DELIMITER $$
CREATE TRIGGER `recipes_bi` BEFORE INSERT ON `recipes` FOR EACH ROW SET new.energy_kj_total = (SELECT SUM(energy_kj) FROM recipe_ingreinfo WHERE recipe_id = new.recipe_id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `recipetypes`
--

CREATE TABLE `recipetypes` (
  `recipetype_code` varchar(255) NOT NULL,
  `recipetype_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipetypes`
--

INSERT INTO `recipetypes` (`recipetype_code`, `recipetype_name`) VALUES
('RTC01', 'Break Fast'),
('RTC06', 'Dinner'),
('RTC03', 'Early Morning'),
('RTC05', 'Evening Snack'),
('RTC02', 'Lunch'),
('RTC04', 'Mid Morning'),
('RTC12', 'Non veg food'),
('RTC07', 'Post Dinner'),
('RTC10', 'Post Workout'),
('RTC08', 'Pre Dinner'),
('RTC09', 'Pre Workout'),
('RTC11', 'Vegan Diet');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ingreinfo`
--

CREATE TABLE `recipe_ingreinfo` (
  `reci_ingreinfo_id` bigint(10) NOT NULL,
  `recipe_id` int(10) NOT NULL,
  `default_serving` float NOT NULL,
  `uom_name` varchar(255) NOT NULL,
  `uom_value` float NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `cooking_measurements` float NOT NULL,
  `serving_measurements` float NOT NULL,
  `food_code` varchar(255) NOT NULL,
  `ingredient_qty` float NOT NULL,
  `qty` float DEFAULT NULL,
  `exchanges_per_amount` float DEFAULT NULL,
  `energy_kj` float DEFAULT NULL,
  `energy_kcal` float DEFAULT NULL,
  `carbohydrate` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `total_fibre` float DEFAULT NULL,
  `solublf` float DEFAULT NULL,
  `in_solublf` float DEFAULT NULL,
  `invisible_totalfat` float DEFAULT NULL,
  `visiblefat` float DEFAULT NULL,
  `thiamine` float DEFAULT NULL,
  `riboflavin` float DEFAULT NULL,
  `niacin` float DEFAULT NULL,
  `biotin` float DEFAULT NULL,
  `folates` float DEFAULT NULL,
  `ascorbic_Acid` float DEFAULT NULL,
  `vitamin_d2d3` float DEFAULT NULL,
  `calcium` float DEFAULT NULL,
  `phosphorous` float DEFAULT NULL,
  `iron` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  `potassium` float DEFAULT NULL,
  `zinc` float DEFAULT NULL,
  `magnesium` float DEFAULT NULL,
  `sfa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_ingreinfo`
--

INSERT INTO `recipe_ingreinfo` (`reci_ingreinfo_id`, `recipe_id`, `default_serving`, `uom_name`, `uom_value`, `unit_name`, `cooking_measurements`, `serving_measurements`, `food_code`, `ingredient_qty`, `qty`, `exchanges_per_amount`, `energy_kj`, `energy_kcal`, `carbohydrate`, `protein`, `total_fibre`, `solublf`, `in_solublf`, `invisible_totalfat`, `visiblefat`, `thiamine`, `riboflavin`, `niacin`, `biotin`, `folates`, `ascorbic_Acid`, `vitamin_d2d3`, `calcium`, `phosphorous`, `iron`, `sodium`, `potassium`, `zinc`, `magnesium`, `sfa`) VALUES
(29, 1, 1, 'Cup', 250, 'GM', 200, 200, 'A015', 40, 40, 2, 596.4, 142.543, 31.296, 3.176, 1.124, 0.328, 0.796, 0.208, 0, 0.02, 0.02, 0.676, 0.24, 3.728, 0, 0, 2.996, 38.4, 0.26, 0.936, 43.2, 0.484, 7.72, 0);

--
-- Triggers `recipe_ingreinfo`
--
DELIMITER $$
CREATE TRIGGER `recipe_ingreinfo_bi` BEFORE INSERT ON `recipe_ingreinfo` FOR EACH ROW SET new.qty = (new.serving_measurements * new.ingredient_qty / new.cooking_measurements),

new.exchanges_per_amount =  ( (new.qty) / (SELECT one_exchange FROM ingredients WHERE food_code  = new.food_code) ), 

new.energy_kj =   (SELECT energy_kj FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),

new.energy_kcal =   (SELECT energy_kcal FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.carbohydrate =   (SELECT carbohydrate FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.protein =   (SELECT protein FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.total_fibre =   (SELECT total_fibre FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.solublf =   (SELECT solublf FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.in_solublf =   (SELECT in_solublf FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.invisible_totalfat =   (SELECT invisible_totalfat FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.visiblefat =   (SELECT visiblefat FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.thiamine =   (SELECT thiamine FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.riboflavin =   (SELECT riboflavin FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.niacin =   (SELECT niacin FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.biotin =   (SELECT biotin FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.folates =   (SELECT folates FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.ascorbic_Acid =   (SELECT ascorbic_Acid FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.vitamin_d2d3 =   (SELECT vitamin_d2d3 FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.calcium =   (SELECT calcium FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.phosphorous =   (SELECT phosphorous FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.iron =   (SELECT iron FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.sodium =   (SELECT sodium FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.potassium =   (SELECT potassium FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.zinc =   (SELECT zinc FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.magnesium =   (SELECT magnesium FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code)),
new.sfa =   (SELECT sfa FROM ingredients WHERE food_code  = new.food_code) * (new.qty / (SELECT quantity FROM ingredients WHERE food_code  = new.food_code))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `secret` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `total_recipe`
--

CREATE TABLE `total_recipe` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_qty` float DEFAULT NULL,
  `energy_kj` float DEFAULT NULL,
  `energy_kcal` float DEFAULT NULL,
  `gi_value` float DEFAULT NULL,
  `carbohydrate` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `total_fibre` float DEFAULT NULL,
  `solublf` float DEFAULT NULL,
  `in_solublf` float DEFAULT NULL,
  `invisible_totalfat` float DEFAULT NULL,
  `visiblefat` float DEFAULT NULL,
  `thiamine` float DEFAULT NULL,
  `riboflavin` float DEFAULT NULL,
  `niacin` float DEFAULT NULL,
  `biotin` float DEFAULT NULL,
  `folates` float DEFAULT NULL,
  `ascorbic_Acid` float DEFAULT NULL,
  `vitamin_d2d3` float DEFAULT NULL,
  `calcium` float DEFAULT NULL,
  `phosphorous` float DEFAULT NULL,
  `iron` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  `potassium` float DEFAULT NULL,
  `zinc` float DEFAULT NULL,
  `magnesium` float DEFAULT NULL,
  `sfa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_recipe`
--

INSERT INTO `total_recipe` (`recipe_id`, `ingredient_qty`, `energy_kj`, `energy_kcal`, `gi_value`, `carbohydrate`, `protein`, `total_fibre`, `solublf`, `in_solublf`, `invisible_totalfat`, `visiblefat`, `thiamine`, `riboflavin`, `niacin`, `biotin`, `folates`, `ascorbic_Acid`, `vitamin_d2d3`, `calcium`, `phosphorous`, `iron`, `sodium`, `potassium`, `zinc`, `magnesium`, `sfa`) VALUES
(1, NULL, 863.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Triggers `total_recipe`
--
DELIMITER $$
CREATE TRIGGER `total_recipe_bi` BEFORE INSERT ON `total_recipe` FOR EACH ROW SET new.energy_kj = (Select SUM(energy_kj) FROM recipe_ingreinfo WHERE recipe_id = new.recipe_id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `uoms`
--

CREATE TABLE `uoms` (
  `uom_id` int(255) NOT NULL,
  `uom_name` varchar(255) NOT NULL,
  `uom_value` decimal(10,0) NOT NULL,
  `parent_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uoms`
--

INSERT INTO `uoms` (`uom_id`, `uom_name`, `uom_value`, `parent_name`) VALUES
(9, 'Cup', '250', 'null'),
(10, 'Gram', '1', 'null'),
(11, 'Large	', '1', 'null'),
(12, 'Medium', '1', 'null'),
(13, 'ML', '1', 'null'),
(14, 'ML Glass', '100', 'null'),
(15, 'Mug', '300', 'null'),
(16, 'Piece', '1', 'null'),
(17, 'Small', '1', 'null'),
(18, 'Table Spoon', '15', 'null'),
(19, 'Tea Cup', '200', 'null'),
(20, 'Tea Spoon', '5', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '00000000-00000-0000-0000-000000000000',
  `lease` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role` varchar(50) DEFAULT 'user',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `token`, `lease`, `role`, `is_active`, `secret`) VALUES
(1, 'superadmin@example.com', 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', '1', '0000-00-00 00:00:00', 'superadmin', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'admin@example.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '0000-00-00 00:00:00', 'admin', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 'user@example.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '1', '0000-00-00 00:00:00', 'user', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `secret` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_diets`
--
ALTER TABLE `admin_diets`
  ADD PRIMARY KEY (`admindiet_id`),
  ADD UNIQUE KEY `code` (`code`,`date`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `customer_signups`
--
ALTER TABLE `customer_signups`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_contactno` (`customer_contactno`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `cus_groups`
--
ALTER TABLE `cus_groups`
  ADD PRIMARY KEY (`group_code`),
  ADD KEY `dietitian_name` (`dietitian_name`);

--
-- Indexes for table `cus_imports`
--
ALTER TABLE `cus_imports`
  ADD PRIMARY KEY (`cusimport_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `package_code` (`package_code`);

--
-- Indexes for table `dietitians`
--
ALTER TABLE `dietitians`
  ADD PRIMARY KEY (`dietitian_id`),
  ADD UNIQUE KEY `dietitian_name` (`dietitian_name`);

--
-- Indexes for table `diet_details`
--
ALTER TABLE `diet_details`
  ADD PRIMARY KEY (`dietdetails_id`),
  ADD KEY `recipe_name` (`recipe_name`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD UNIQUE KEY `food_code` (`food_code`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `org_secret` (`org_secret`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `package_code` (`package_code`),
  ADD KEY `plan_name` (`plan_name`),
  ADD KEY `dietitian_name` (`dietitian_name`);

--
-- Indexes for table `picker_lists`
--
ALTER TABLE `picker_lists`
  ADD KEY `uom_name` (`uom_name`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`plan_code`),
  ADD UNIQUE KEY `plan_name` (`plan_name`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`),
  ADD UNIQUE KEY `recipe_name` (`recipe_name`),
  ADD KEY `recipetype_name` (`recipetype_name`);

--
-- Indexes for table `recipetypes`
--
ALTER TABLE `recipetypes`
  ADD PRIMARY KEY (`recipetype_code`),
  ADD UNIQUE KEY `recipetype_name` (`recipetype_name`);

--
-- Indexes for table `recipe_ingreinfo`
--
ALTER TABLE `recipe_ingreinfo`
  ADD PRIMARY KEY (`reci_ingreinfo_id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `uom_name` (`uom_name`),
  ADD KEY `food_code` (`food_code`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_recipe`
--
ALTER TABLE `total_recipe`
  ADD UNIQUE KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `uoms`
--
ALTER TABLE `uoms`
  ADD PRIMARY KEY (`uom_id`),
  ADD UNIQUE KEY `uom_name` (`uom_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_group_id_secret` (`user_id`,`group_id`,`secret`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_diets`
--
ALTER TABLE `admin_diets`
  MODIFY `admindiet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cus_imports`
--
ALTER TABLE `cus_imports`
  MODIFY `cusimport_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dietitians`
--
ALTER TABLE `dietitians`
  MODIFY `dietitian_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `diet_details`
--
ALTER TABLE `diet_details`
  MODIFY `dietdetails_id` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recipe_ingreinfo`
--
ALTER TABLE `recipe_ingreinfo`
  MODIFY `reci_ingreinfo_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uoms`
--
ALTER TABLE `uoms`
  MODIFY `uom_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `cus_groups`
--
ALTER TABLE `cus_groups`
  ADD CONSTRAINT `cus_groups_ibfk_1` FOREIGN KEY (`dietitian_name`) REFERENCES `dietitians` (`dietitian_name`);

--
-- Constraints for table `cus_imports`
--
ALTER TABLE `cus_imports`
  ADD CONSTRAINT `cus_imports_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_signups` (`customer_id`),
  ADD CONSTRAINT `cus_imports_ibfk_2` FOREIGN KEY (`package_code`) REFERENCES `packages` (`package_code`),
  ADD CONSTRAINT `cus_imports_ibfk_3` FOREIGN KEY (`package_code`) REFERENCES `packages` (`package_code`);

--
-- Constraints for table `diet_details`
--
ALTER TABLE `diet_details`
  ADD CONSTRAINT `diet_details_ibfk_3` FOREIGN KEY (`recipe_name`) REFERENCES `recipes` (`recipe_name`),
  ADD CONSTRAINT `diet_details_ibfk_4` FOREIGN KEY (`code`) REFERENCES `admin_diets` (`code`);

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`plan_name`) REFERENCES `plans` (`plan_name`),
  ADD CONSTRAINT `packages_ibfk_2` FOREIGN KEY (`dietitian_name`) REFERENCES `dietitians` (`dietitian_name`);

--
-- Constraints for table `picker_lists`
--
ALTER TABLE `picker_lists`
  ADD CONSTRAINT `picker_lists_ibfk_1` FOREIGN KEY (`uom_name`) REFERENCES `uoms` (`uom_name`);

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`recipetype_name`) REFERENCES `recipetypes` (`recipetype_name`);

--
-- Constraints for table `recipe_ingreinfo`
--
ALTER TABLE `recipe_ingreinfo`
  ADD CONSTRAINT `recipe_ingreinfo_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`),
  ADD CONSTRAINT `recipe_ingreinfo_ibfk_3` FOREIGN KEY (`uom_name`) REFERENCES `uoms` (`uom_name`),
  ADD CONSTRAINT `recipe_ingreinfo_ibfk_4` FOREIGN KEY (`food_code`) REFERENCES `ingredients` (`food_code`);

--
-- Constraints for table `total_recipe`
--
ALTER TABLE `total_recipe`
  ADD CONSTRAINT `total_recipe_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`);

--
-- Constraints for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
