-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2019 at 08:51 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fmsmy`
--

-- --------------------------------------------------------

--
-- Table structure for table `addbillitem`
--

CREATE TABLE `addbillitem` (
  `Bill_Number` char(50) NOT NULL,
  `Item_Code` char(20) NOT NULL,
  `Amount` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` varchar(100) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `User_Name`, `Password`) VALUES
('emp1', 'sa', '12'),
('emp3', 'pasan', 'pasan@123'),
('emp4', 'isuru', 'isuru@123'),
('emp5', 'anjana', 'anjana@123');

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `Item_type` varchar(200) NOT NULL,
  `Id` varchar(200) NOT NULL,
  `Item_name` varchar(200) NOT NULL,
  `Item_code` varchar(200) NOT NULL,
  `Price` varchar(200) NOT NULL,
  `Quantity` varchar(200) NOT NULL,
  `Date` varchar(200) NOT NULL,
  `Location` varchar(200) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auction`
--

INSERT INTO `auction` (`Item_type`, `Id`, `Item_name`, `Item_code`, `Price`, `Quantity`, `Date`, `Location`, `Description`) VALUES
('vegetables', '956020778v', 'Beans', 'B001', '500', '250kg', '2019-01-16', 'Matara', 'I search for suitable price'),
('vegetables', '956020778v', 'Brinjol', 'B002', '500', '250kg', '2019-01-09', 'Matara', 'jkxcjnjkmzxjnc'),
('vegetables', '956020778v', 'Brinjol', 'B003', '500', '250kg', '2019-01-16', 'Matara', 'zmxnzn'),
('vegetables', '956020778v', 'Brinjol', 'B004', '500', '250kg', '2019-01-09', 'Matara', 'hjsdhcjsdhf'),
('vegetables', '956020778v', 'carrot', 'C001', 'Rs.500.00', '1kg', '2019-01-11', 'Galle', 'mkskcmlzmclzmxc'),
('vegetables', '956020777v', 'carrot', 'C002', '250', '2kg', '2019-01-15', 'galle', 'vcvxcbxcbcb'),
('vegetables', '956020778v', 'Cabbage', 'C005', '360', '250kg', '2019-12-09', 'Matara', 'I sersn'),
('fruits', '956020777v', 'mango', 'M001', '200', '2kg', '2019-01-15', 'galle', 'vcvxcbxcbcb'),
('vegetables', '956020778v', 'Potatoes', 'P001', '500', '250kg', '2019-01-09', 'Matara', 'vcmv mxc'),
('vegetables', '956020778v', 'snak gourd', 'S001', '500', '', '2019-01-09', 'matara', 'bjnjhncjxnckxmkzx'),
('vegetables', '956020778v', 'Tomatoes', 'T001', '500', '250kg', '2019-01-09', 'Matara', 'kcklzxjc');

-- --------------------------------------------------------

--
-- Table structure for table `bid_history`
--

CREATE TABLE `bid_history` (
  `Bidder` varchar(200) NOT NULL,
  `Item_code` varchar(200) NOT NULL,
  `Amount` varchar(200) NOT NULL,
  `Date` varchar(200) NOT NULL,
  `confirm` tinyint(1) NOT NULL,
  `reject` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid_history`
--

INSERT INTO `bid_history` (`Bidder`, `Item_code`, `Amount`, `Date`, `confirm`, `reject`) VALUES
('956020778v', 'C002', '150', '2019-01-05', 0, 0),
('956020778v', 'C002', '150', '2019-01-05', 0, 0),
('952811282v', 'S001', '500', '2019-01-09', 0, 0),
('952811282v', 'S001', '500', '2019-01-09', 0, 0),
('952811282v', 'S001', '620', '2019-01-09', 0, 0),
('952811282v', 'M001', '360', '2019-01-09', 0, 0),
('952811282v', 'M001', '360', '2019-01-09', 0, 0),
('123244345v', 'C001', '260', '2019-01-10', 0, 0),
('957201423v', 'B001', '330', '2019-01-09', 1, 0),
('957201423v', 'C005', '520', '2019-01-16', 1, 0),
('957201423v', 'B002', '260', '2019-01-09', 0, 0),
('957201423v', 'P001', '360', '2019-01-09', 1, 0),
('957201423v', 'T001', '330', '2019-01-09', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_Number` char(50) NOT NULL,
  `Date` date NOT NULL,
  `Cashier_Id` char(50) NOT NULL,
  `Total` int(100) NOT NULL,
  `Cashier_Emp_Id` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_Id` char(20) NOT NULL,
  `Course_Image` blob NOT NULL,
  `Course_Name` char(50) DEFAULT NULL,
  `Course_description` varchar(200) NOT NULL,
  `Course_duration` varchar(200) NOT NULL,
  `Course_type` varchar(200) NOT NULL,
  `Course_fees` varchar(200) NOT NULL,
  `Location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_Id`, `Course_Image`, `Course_Name`, `Course_description`, `Course_duration`, `Course_type`, `Course_fees`, `Location`) VALUES
('c0001', '', 'Farming', 'It\'s good course', '6 month', 'parttime', '25000', 'Galle'),
('C002', '', 'Animal Product', 'How manage Animals.', '1 year', 'fulltime', '100000', 'Hambanthota'),
('C004', '', 'Milk Product', 'How get success', '1 year', 'parttime', '80000', 'Mathara');

-- --------------------------------------------------------

--
-- Table structure for table `courseregistration`
--

CREATE TABLE `courseregistration` (
  `course_name` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseregistration`
--

INSERT INTO `courseregistration` (`course_name`, `full_name`, `email`, `password`) VALUES
('computer science', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '12345'),
('computer science', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '12345'),
('Orchid plantation', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '12'),
('Orchid plantation', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '12'),
('Orchid plantation', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '111'),
('Orchid plantation', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '111'),
('Bee-keeping', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '123456'),
('Bee-keeping', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '123456'),
('Gardenning', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '14'),
('Gardenning', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '14'),
('Landscaping', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '12'),
('Landscaping', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '12'),
('Gardenning', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '145'),
('Gardenning', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '145'),
('Bee-keeping', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '145'),
('Bee-keeping', 'Anjana Rasadari Isurundi Daluwatta Galappaththi', 'anjanarasadari21@gmail.com', '145'),
('Farming', 'Amith', 'amith@gmail.com', 'amithme');

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `Id` char(20) DEFAULT NULL,
  `Name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `farmshopemployee`
--

CREATE TABLE `farmshopemployee` (
  `Id` char(20) NOT NULL,
  `First_Name` char(20) NOT NULL,
  `Last_Name` char(20) NOT NULL,
  `Tele_Number` char(20) NOT NULL,
  `Email` char(20) NOT NULL,
  `Address` char(50) NOT NULL,
  `Salary` char(50) NOT NULL,
  `Username` char(20) NOT NULL,
  `Password` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmshopemployee`
--

INSERT INTO `farmshopemployee` (`Id`, `First_Name`, `Last_Name`, `Tele_Number`, `Email`, `Address`, `Salary`, `Username`, `Password`) VALUES
('emp001', 'Amith', 'Liyanage', '0712586545', 'amith123@gmail.com', 'N0 5 Walgama matara', '50000', 'Amith123', '12345678'),
('emp003', 'hasee', 'Amarathunga', '0712155533', 'hasee@gmail.com', 'Omalpe, Embilipitiya', '36000', 'Haseee', 'ucsc@123'),
('emp103', 'Nisal', 'Bandara', '0124562146', 'Nisal@gmail.com', 'matara', '20000', 'nisal', 'nisal123');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Code` char(20) NOT NULL,
  `Name` char(50) NOT NULL,
  `Price` char(50) NOT NULL,
  `Amount` int(50) NOT NULL,
  `Unit` char(50) NOT NULL,
  `Discount` char(50) DEFAULT NULL,
  `Image` int(50) NOT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Code`, `Name`, `Price`, `Amount`, `Unit`, `Discount`, `Image`, `Type`) VALUES
('', '', '', 0, '', '', 131, ''),
('fru1', 'Papaya', '70', 1, 'kg', '0', 68, 'Fruit'),
('fru2', 'Banana', '70', 1, 'kg', '0', 69, 'Fruit'),
('fru3', 'Guvawa', '70', 1, 'kg', '0', 70, 'Fruit'),
('fru49', 'Mango', '200', 1, 'kg', '0', 77, 'Fruit'),
('fru500', 'Pineapple', '50', 1, 'kg', '0', 126, 'Fruit'),
('fru512', 'Lime', '500', 1, 'kg', '0', 128, 'Fruit'),
('veg3', 'Cabbage', '75', 1, 'kg', '0', 62, 'Vegetable'),
('veg39', 'Carrot', '75', 1, 'kg', '0', 91, 'Vegetable'),
('veg398', 'Cauliflower', '80', 1, 'kg', '0', 79, 'Vegetable'),
('veg4', 'Pumpkin', '80', 1, 'g', '0', 64, 'Vegetable'),
('veg501', 'Cucumber', '75', 1, 'kg', '0', 120, 'Vegetable'),
('veg502', 'Tomato', '80', 1, 'kg', '0', 121, 'Vegetable'),
('veg504', 'Potatoes', '90', 1, 'kg', '0', 122, 'Vegetable'),
('veg510', 'Leeks', '80', 1, 'kg', '0', 123, 'Vegetable'),
('veg516', 'Beet', '70', 1, 'kg', '0', 124, 'Vegetable'),
('veg528', 'Radish', '45', 1, 'kg', '0', 125, 'Vegetable'),
('veg55', 'Aubergine', '100', 1, 'kg', '0', 75, 'Vegetable');

-- --------------------------------------------------------

--
-- Table structure for table `loading_shop`
--

CREATE TABLE `loading_shop` (
  `Load_No` char(20) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loading_stores_invoice`
--

CREATE TABLE `loading_stores_invoice` (
  `Load_No` int(200) NOT NULL,
  `Dateorder` date DEFAULT NULL,
  `Income` varchar(200) DEFAULT NULL,
  `Reg_Farmer_Or_Farm_Id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loading_stores_invoice`
--

INSERT INTO `loading_stores_invoice` (`Load_No`, `Dateorder`, `Income`, `Reg_Farmer_Or_Farm_Id`) VALUES
(44, '2018-12-31', '2200', 'LabuduwaFarm'),
(45, '2018-12-31', '1200', 'LabuduwaFarm'),
(46, '2018-12-31', '60000', '952811282V'),
(47, '2018-12-31', '52000', '745621457V'),
(48, '2018-12-31', '5000', 'LabuduwaFarm'),
(49, '2019-01-01', '500', '956122142V'),
(50, '2019-01-01', '450', '965478412V'),
(51, '2019-01-01', '454', '965233214V'),
(52, '2019-01-01', '8000', '986844571V'),
(53, '2019-01-01', '10000', '986855241V'),
(54, '2019-01-01', '10000', '986855241V'),
(55, '2019-01-01', '10000', '986855241V'),
(56, '2019-01-01', '10000', '986855241V'),
(57, '2019-01-01', '10000', '986855241V'),
(58, '2019-01-01', '40000', '986855241V'),
(59, '2019-01-01', '123', '986855251V'),
(60, '2019-01-01', '123', '986855251V'),
(61, '2019-01-01', '123', '986855251V'),
(62, '2019-01-01', '10000', '123544789V'),
(63, '2019-01-01', '10000', '123544789V'),
(64, '2019-01-01', '100', '986687452V'),
(65, '2019-01-01', '123', '124578451V'),
(66, '2019-01-01', '122', 'LabuduwaFarm'),
(67, '2019-01-01', '12', 'LabuduwaFarm'),
(68, '2019-01-01', '122', 'LabuduwaFarm'),
(69, '2019-01-01', '123', 'LabuduwaFarm'),
(70, '2019-01-01', '12113', 'LabuduwaFarm'),
(71, '2019-01-01', '23121', 'LabuduwaFarm'),
(72, '2019-01-01', '654', 'LabuduwaFarm'),
(73, '2019-01-01', '45', 'LabuduwaFarm'),
(74, '2019-01-01', '3222', 'LabuduwaFarm'),
(75, '2019-01-01', '1', 'LabuduwaFarm'),
(76, '2019-01-01', '121', 'LabuduwaFarm'),
(77, '2019-01-01', '12', 'LabuduwaFarm'),
(78, '2019-01-01', '12', 'LabuduwaFarm'),
(79, '2019-01-01', '32', 'LabuduwaFarm'),
(80, '2019-01-01', '1222', 'LabuduwaFarm'),
(81, '2019-01-01', '12', 'LabuduwaFarm'),
(82, '2019-01-01', '12', 'LabuduwaFarm'),
(83, '2019-01-01', '45', 'LabuduwaFarm'),
(84, '2019-01-01', '455', 'LabuduwaFarm'),
(85, '2019-01-01', '12', 'LabuduwaFarm'),
(86, '2019-01-01', '22', '124577892V'),
(87, '2019-01-01', '456', '124578986V'),
(88, '2019-01-01', '12', '124566541V'),
(89, '2019-01-01', '322', '123244567V'),
(90, '2019-01-01', '1010101', 'LabuduwaFarm'),
(91, '2019-01-02', '50000', 'LabuduwaFarm'),
(92, '2019-01-02', '4444', '111111111V'),
(93, '2019-01-02', '8080', 'LabuduwaFarm'),
(94, '2019-01-02', '40000', 'LabuduwaFarm'),
(95, '2019-01-02', '5000', 'LabuduwaFarm'),
(96, '2019-01-02', '1412', '756544123V'),
(97, '2019-01-04', '123', 'LabuduwaFarm'),
(98, '2019-01-04', '333', 'LabuduwaFarm'),
(99, '2019-01-04', '23535', '124578983V'),
(100, '2019-01-04', '1000', '986833542V'),
(101, '2019-01-04', '1000', '546587982V'),
(102, '2019-01-04', '2000', '986355241V'),
(103, '2019-01-05', '100', 'LabuduwaFarm'),
(104, '2019-01-05', '141', 'LabuduwaFarm'),
(105, '2019-01-05', '4000', 'LabuduwaFarm'),
(106, '2019-01-07', '50000', 'LabuduwaFarm'),
(107, '2019-01-07', '5000', '789855752V'),
(108, '2019-01-07', '400', 'LabuduwaFarm'),
(109, '2019-01-07', '120', '124578986V'),
(110, '2019-01-08', '1250', 'LabuduwaFarm'),
(111, '2019-01-08', '1000', 'LabuduwaFarm'),
(112, '2019-01-08', '400', '124577845v');

-- --------------------------------------------------------

--
-- Table structure for table `load_shop_items`
--

CREATE TABLE `load_shop_items` (
  `Item_Code` char(20) NOT NULL,
  `Load_Num` int(200) NOT NULL,
  `Amount` varchar(200) DEFAULT NULL,
  `Date1` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `load_shop_items`
--

INSERT INTO `load_shop_items` (`Item_Code`, `Load_Num`, `Amount`, `Date1`) VALUES
('fru1', 57, '250kg', '2019-01-07'),
('fru2', 42, '1.2kg', '2019-01-07'),
('fru2', 58, '250kg', '2019-01-07'),
('fru3', 4, '900Kg', '2019-01-04'),
('fru3', 31, '500kg', '2019-01-04'),
('fru3', 59, '500kg', '2019-01-07'),
('fru49', 60, '200kg', '2019-01-07'),
('fru500', 61, '100.5kg', '2019-01-07'),
('fru512', 62, '520kg', '2019-01-07'),
('veg3', 5, '12', '2019-01-04'),
('veg3', 6, '123kg', '2019-01-04'),
('veg3', 8, '200kg', '2019-01-04'),
('veg3', 25, '800kg', '2019-01-04'),
('veg3', 26, '10kg', '2019-01-04'),
('veg3', 27, '50kg', '2019-01-04'),
('veg3', 28, '50kg', '2019-01-04'),
('veg3', 45, '4.1kg', '2019-01-07'),
('veg3', 46, '500kg', '2019-01-07'),
('veg39', 40, '12.5kg', '2019-01-07'),
('veg39', 41, '12.5kg', '2019-01-07'),
('veg39', 47, '750kg', '2019-01-07'),
('veg39', 64, '12kg', '2019-01-07'),
('veg39', 65, '5kg', '2019-01-08'),
('veg39', 67, '800kg', '2019-01-08'),
('veg398', 3, '500', '2019-01-04'),
('veg398', 48, '800kg', '2019-01-07'),
('veg4', 32, '3kg', '2019-01-04'),
('veg4', 33, '2.5kg', '2019-01-04'),
('veg4', 43, '5.5kg', '2019-01-07'),
('veg4', 49, '600kg', '2019-01-07'),
('veg4', 66, '5kg', '2019-01-08'),
('veg501', 50, '900kg', '2019-01-07'),
('veg502', 51, '200kg', '2019-01-07'),
('veg502', 63, '20kg', '2019-01-07'),
('veg504', 52, '56.5kg', '2019-01-07'),
('veg510', 53, '200.5kg', '2019-01-07'),
('veg516', 54, '900kg', '2019-01-07'),
('veg528', 55, '500kg', '2019-01-07'),
('veg55', 56, '250kg', '2019-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `load_stores_items`
--

CREATE TABLE `load_stores_items` (
  `Item_Code` char(20) NOT NULL,
  `Load_Num` int(200) NOT NULL,
  `Amount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `load_stores_items`
--

INSERT INTO `load_stores_items` (`Item_Code`, `Load_Num`, `Amount`) VALUES
('fru1', 91, '45kg'),
('fru1', 92, '4444'),
('fru1', 93, '8080kg'),
('fru3', 47, '1200kg'),
('fru3', 48, '45kg'),
('fru3', 59, '12'),
('fru3', 60, '12'),
('fru3', 61, '12'),
('fru3', 64, '12'),
('fru3', 65, '12'),
('fru3', 98, '80kg'),
('fru49', 102, '20kg'),
('veg3', 45, '700g'),
('veg3', 50, '45'),
('veg3', 52, '23kg'),
('veg3', 79, '12'),
('veg3', 80, '112'),
('veg3', 107, '2kg'),
('veg39', 108, '50kg'),
('veg398', 53, '12'),
('veg398', 54, '12'),
('veg398', 55, '12'),
('veg398', 56, '12'),
('veg398', 57, '12'),
('veg398', 67, '45'),
('veg398', 68, '123'),
('veg398', 69, '789'),
('veg398', 72, '455'),
('veg398', 73, '12'),
('veg398', 74, '122'),
('veg398', 75, '442'),
('veg398', 76, '121'),
('veg398', 77, '212'),
('veg398', 78, '21'),
('veg398', 81, '12'),
('veg398', 82, '112'),
('veg398', 83, '121'),
('veg398', 85, '1212'),
('veg398', 86, '22'),
('veg398', 88, '122'),
('veg398', 89, '122'),
('veg398', 90, '101010'),
('veg398', 97, '45kg'),
('veg4', 106, '50.5kg'),
('veg4', 109, '45kg'),
('veg55', 44, '120'),
('veg55', 58, '12');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`name`, `email`, `message`) VALUES
('sasadara', 'htag9320@gmail.com', 'hi how'),
('sasadara', 'jpssasadara95@gmail.com', 'hi'),
('jsha', 'Haahsghash@gmail.com', 'Hellwo');

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `productName` varchar(30) NOT NULL,
  `type` varchar(40) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`productName`, `type`, `quantity`, `price`) VALUES
('avacado', 'fruits', '1', 25),
('banana', 'fruits', '1', 6),
('brinjol', 'vegetables', '1kg', 90),
('Cabbage', 'vegetables', '1kg', 150),
('Carrot', 'vegetables', '1kg', 200),
('cashews', 'others', '1kg', 180),
('chicken', 'others', '1kg', 325),
('cocoa', 'fruits', '1', 30),
('curd', 'milkproduct', '1', 50),
('dhall', 'vegetables', '1kg', 120),
('eggs', 'others', '1', 17),
('grapes', 'fruits', '1', 3.5),
('guava', 'fruits', '1', 50),
('juice', 'milkproduct', '1', 80),
('leaks', 'vegetables', '1kg', 140),
('milkCup', 'milkproduct', '1', 60),
('orange', 'fruits', '1', 30),
('pineapple', 'fruits', '1', 100),
('Radish', 'vegetables', '1kg', 120),
('soy nuts', 'others', '1kg', 220),
('Turnip', 'vegetables', '1kg', 140),
('yougurt', 'milkproduct', '1', 35);

-- --------------------------------------------------------

--
-- Table structure for table `regfarmerorder`
--

CREATE TABLE `regfarmerorder` (
  `OrderNumber` int(20) NOT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Item_Code` char(20) DEFAULT NULL,
  `Amount` int(20) DEFAULT NULL,
  `Verified` tinyint(1) DEFAULT NULL,
  `Delivered` tinyint(1) DEFAULT NULL,
  `Reg_Farmer_Id` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registeredfarmer`
--

CREATE TABLE `registeredfarmer` (
  `Id` char(20) NOT NULL,
  `First_Name` char(20) NOT NULL,
  `Last_Name` char(20) NOT NULL,
  `Gender` char(10) NOT NULL,
  `Tele_Number` char(20) NOT NULL,
  `Email` char(20) DEFAULT NULL,
  `Address` char(50) NOT NULL,
  `variety` varchar(200) NOT NULL,
  `kind_of_variety` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeredfarmer`
--

INSERT INTO `registeredfarmer` (`Id`, `First_Name`, `Last_Name`, `Gender`, `Tele_Number`, `Email`, `Address`, `variety`, `kind_of_variety`, `username`, `password`) VALUES
('965645656v', 'Jps. Sasadara', '', 'male', '0758555666', 'jps@gmail.com', 'maharagama. pansala para.', 'Milk', '', 'Jps', 'sasadara@123'),
('956020778V', 'Anjana', '', 'female', '0716239954', 'anjanarasadari21@gma', 'Weligama', 'Vegetables', '', 'anjaname', 'anjaname'),
('956012748v', 'Pasindu', '', 'male', '0714758785', 'pasindu@gmail.com', 'Galle', 'Fruits', '', 'pasindume', 'pasindume'),
('974352128v', 'Leshani', '', 'female', '0717845123', 'leshani@gmail.com', 'Akuress,Matara', 'Vegetables', '', 'leshanime', 'leshanime'),
('974352128v', 'Leshani', '', 'female', '0717845123', 'leshani@gmail.com', 'Akuress,Matara', 'Vegetables', '', 'leshanime', 'leshanime'),
('54545', 'hash', '', 'male', '0795475515', 'hashahs@gmail.com', 'Hjhdjha', 'Vegetables', '', 'hasee', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `registeredshop`
--

CREATE TABLE `registeredshop` (
  `nic` char(20) NOT NULL,
  `fn` varchar(100) NOT NULL,
  `ln` varchar(100) NOT NULL,
  `pn` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `un` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeredshop`
--

INSERT INTO `registeredshop` (`nic`, `fn`, `ln`, `pn`, `address`, `email`, `un`, `pw`) VALUES
('120811232v', 'sasadara', 'jayaweera', '0784561214', 'matara', 'cyril123@gmail.com', 'cyril', 'cyril1234'),
('123244345v', '', '', '0714562354', 'matara', 'susara@gmail.com', 'susara', 'susara1234'),
('631200123v', '', '', '0748512365', 'ahhjxjJ', 'pasan@gmail.com', 'hp', 'Nipuni1*nnn'),
('686363279v', 'Thisara', 'Perera', '0815475571', 'Piliyandala, Kanaththa Road.', 'Panda@gmail.com', 'sasa', 'sahas123'),
('787878787V', 'Lasith', 'Malinga', '0745566662', 'Debarawewa', 'Malinga@gmail.com', 'Malinga&Son', 'thejan'),
('952811282v', 'sahas', 'jayaweera', '0702808565', 'weligama', 'jpssasadara95@gmail.com', 'sasa', 'sasadara123'),
('956020768V', 'Kumar', 'Sangakkara', '0718679886', 'weligama', 'Sanga@gmail.com', 'Sanga Farm', 'Anjana'),
('957201423v', 'Jinadi', 'Yasiruka', '0715883767', 'Kirimatimull,Matara', 'jinadi@gmail.com', 'jinime', 'jinime'),
('975245778v', 'Roshani', 'Ruwanthika', '0702643012', 'Deniyaya,Matara', 'roshanii@gmail.com', 'roshanime', 'roshanime'),
('98556565V', 'Criss', 'Graley', '0177826666', 'Triniband, Jemeica', 'Gaaaly@gmail.com', 'Graly Pvt.', 'graly@123');

-- --------------------------------------------------------

--
-- Table structure for table `registeredstudent`
--

CREATE TABLE `registeredstudent` (
  `nic` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `Mobile` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Occupation` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeredstudent`
--

INSERT INTO `registeredstudent` (`nic`, `fname`, `lname`, `Mobile`, `Gender`, `Address`, `Occupation`, `email`, `username`, `password`) VALUES
('956020778v', 'Anjana Rasadari Isurundi', 'Galappaththi', '716239954', 'female', 'No-:175/17,old galle road, walliwala, weligama', 'se', 'anjanarasadari21@gmail.com', '', '123'),
('956020778v', 'Anjana Rasadari Isurundi', 'Galappaththi', '716239954', 'female', 'No-:175/17,old galle road, walliwala, weligama', 'se', 'anjanarasadari21@gmail.com', 'Anjana', '1230'),
('951245752v', 'Amith', 'Liyanage', '0712341258', 'male', 'Godagama,Matara', 'farmer', 'amith@gmail.com', 'amithme', 'amithme');

-- --------------------------------------------------------

--
-- Table structure for table `regshoporder`
--

CREATE TABLE `regshoporder` (
  `OrderNumber` int(100) NOT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Item_Code` char(20) DEFAULT NULL,
  `Amount` varchar(20) DEFAULT NULL,
  `Verified` tinyint(1) DEFAULT NULL,
  `Delivered` tinyint(1) DEFAULT NULL,
  `Reg_Shop_Id` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regshoporder`
--

INSERT INTO `regshoporder` (`OrderNumber`, `Date`, `Item_Code`, `Amount`, `Verified`, `Delivered`, `Reg_Shop_Id`) VALUES
(72, '2018 12 25', 'fru2', '1kg', 1, 1, '686363279v'),
(73, '12/10/1900', 'fru49', '500g', 1, 1, '686363279v'),
(126, '6/5/1904', 'veg4', '3kg', 0, 0, '686363279v'),
(127, '6/5/1905', 'fru3', '3kg', 1, 0, '952811282v'),
(128, '24/1/1900', 'veg510', '5kg', 0, 0, '686363279v'),
(129, '23/1/1900', 'veg504', '2kg', 1, 0, '686363279v'),
(130, '23/1/1900', 'fru500', '3kg', 0, 0, '686363279v'),
(131, '13/1/1900', 'fru512', '3kg', 1, 0, '952811282v'),
(132, '31/1/1900', 'veg39', '4kg', 0, 0, '952811282v'),
(133, '23/1/1900', 'veg528', '1kg', 1, 0, '952811282v'),
(134, '31/1/1900', 'veg4', '5kg', 0, 0, '952811282v'),
(135, '15/1/1900', 'fru49', '3kg', 0, 0, '686363279v'),
(136, '29/1/1900', 'veg501', '2kg', 0, 0, '686363279v'),
(138, '23/1/1900', 'veg4', '2kg', 1, 1, '952811282v'),
(139, '24/1/1900', 'fru500', '23kg', 1, 1, '952811282v'),
(140, '18/1/1900', 'fru3', '4kg', 1, 1, '952811282v'),
(141, '23/1/1900', 'fru500', '80kg', 0, 0, '952811282v'),
(142, '23/1/1900', 'fru500', '4kg', 1, 1, '952811282v'),
(144, '6/5/1900', 'veg398', '12kg', 0, 0, '123244345v');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `Code` char(20) NOT NULL,
  `Amount` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `Cart_Id` char(20) NOT NULL,
  `Total_Cost` int(50) DEFAULT NULL,
  `Shop_Id` char(20) DEFAULT NULL,
  `Date_Wanted` date DEFAULT NULL,
  `Verified` tinyint(1) DEFAULT NULL,
  `Delivered` tinyint(1) DEFAULT NULL,
  `Reg_Shop_Id` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcartitems`
--

CREATE TABLE `shoppingcartitems` (
  `Shopping_Cart_Id` char(20) NOT NULL,
  `Item_Code` char(20) NOT NULL,
  `Amount` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `Code` char(20) NOT NULL,
  `NetAmount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`Code`, `NetAmount`) VALUES
('', '0'),
('fru1', '153'),
('fru2', '251.2'),
('fru3', '481'),
('fru49', '200'),
('fru500', '73.5'),
('fru512', '517'),
('veg3', '54.1'),
('veg39', '1592'),
('veg398', '800'),
('veg4', '613.5'),
('veg501', '900'),
('veg502', '220'),
('veg504', '54.5'),
('veg510', '200.5'),
('veg516', '900'),
('veg528', '499'),
('veg55', '250');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `St_Id` char(20) NOT NULL,
  `St_Name` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `name`) VALUES
(29, '20161016122151.jpg'),
(28, '20161016122151.jpg'),
(27, 'FB_IMG_1477801633877.jpg'),
(26, 'cola.jpg'),
(25, 'se.jpg'),
(24, 'slide_1.jpg'),
(23, 'Rahula_College_Crest_Color.svg.png'),
(30, '20161016122151.jpg'),
(31, '20161016122151.jpg'),
(32, '20161016121825.jpg'),
(33, '20161016121825.jpg'),
(34, '20161016121825.jpg'),
(35, '20161016121825.jpg'),
(36, '20161016121825.jpg'),
(37, '20161016121825.jpg'),
(38, 'Rcm.jpg'),
(39, 'FB_IMG_1478665009387.jpg'),
(40, 'FB_IMG_1475901990374.jpg'),
(41, 'IMG_20161109_222134.jpg'),
(42, 'FB_IMG_1473601414050.jpg'),
(43, 'FB_IMG_1477801633877.jpg'),
(44, 'FB_IMG_1480226764219.jpg'),
(45, 'images (47).jpg'),
(46, 'Snapshot.png'),
(47, 'Untitled.png'),
(48, 'cola.jpg'),
(49, 'Rahula_College_Crest_Color.svg.png'),
(50, 'se.jpg'),
(51, 'Rcm.jpg'),
(52, 'slide_1.jpg'),
(53, 'se2.jpg'),
(54, 'se2.jpg'),
(55, 'cola.jpg'),
(56, 'cola.jpg'),
(57, 'Rahula_College_Crest_Color.svg.png'),
(58, 'download.jpg'),
(59, 'download.jpg'),
(60, '1371616351150 (1).jpeg'),
(61, '800px_COLOURBOX1712223.jpg'),
(62, '800px_COLOURBOX1712223.jpg'),
(63, 'imagvbvnes.jpg'),
(64, 'imagvbvnes.jpg'),
(65, 'imagexvs.jpg'),
(66, 'imagescbvb.jpg'),
(67, 'imafhghges.jpg'),
(68, 'imagevbbhgs.jpg'),
(69, 'imagesgfg.jpg'),
(70, 'imagfgghes.jpg'),
(71, 'imagefhks.jpg'),
(72, 'imagefhks.jpg'),
(73, 'infbhgdex.jpg'),
(74, '227049676.jpg'),
(75, '533049552-612x612.jpg'),
(76, 'imagcbes.jpg'),
(77, 'imafhghges.jpg'),
(78, 'images.jpg'),
(79, 'Couve_Flor_135.jpg'),
(80, 'imagescbvb.jpg'),
(81, '1371616351150 (1).jpeg'),
(82, '1371616351150 (1).jpeg'),
(83, 'imagevbbhgs.jpg'),
(84, '37856d358bcb3ac2928bb55a7f96d177--pumpkin-butter-pumpkin-pumpkin.jpg'),
(85, '227049676.jpg'),
(86, '227049676.jpg'),
(87, 'imagfgghes.jpg'),
(88, '37856d358bcb3ac2928bb55a7f96d177--pumpkin-butter-pumpkin-pumpkin.jpg'),
(89, 'download.jpg'),
(90, 'download.jpg'),
(91, 'download.jpg'),
(92, 'single-vegetable-green-yellow-chili-pepper-habanero-white-background-76891216.jpg'),
(93, 'single-vegetable-green-yellow-chili-pepper-habanero-white-background-76891216.jpg'),
(94, 'fresh-drumsticks-1064893.jpg'),
(95, 'fresh-drumsticks-1064893.jpg'),
(96, 'imagev bvs.jpg'),
(97, 'fresh-drumsticks-1064893.jpg'),
(98, 'imagesgjh.jpg'),
(99, '1371616351150 (1).jpeg'),
(100, 'single-vegetable-green-yellow-chili-pepper-habanero-white-background-76891216.jpg'),
(101, 'single-vegetable-green-yellow-chili-pepper-habanero-white-background-76891216.jpg'),
(102, 'imagev bvs.jpg'),
(103, 'download.jpg'),
(104, '533049552-612x612.jpg'),
(105, '800px_COLOURBOX1712223.jpg'),
(106, '800px_COLOURBOX1712223.jpg'),
(107, 'imagesgfg.jpg'),
(108, 'imagesgfg.jpg'),
(109, 'Couve_Flor_135.jpg'),
(110, 'picggugu2.jpg'),
(111, 'picggugu2.jpg'),
(112, 'picggugu2.jpg'),
(113, 'Couve_Flor_135.jpg'),
(114, 'imagevbbhgs.jpg'),
(115, 'imagfgghes.jpg'),
(116, 'images.jpg'),
(117, '533049552-612x612.jpg'),
(118, '227049676.jpg'),
(119, 'Cucumber.jpg'),
(120, 'Cucumber.jpg'),
(121, 'tomato.jpeg'),
(122, 'potatoes.jpg'),
(123, 'fresh-leeks-500x500.png'),
(124, 'beetroot-on-a-white-background.jpg'),
(125, 'Health-Benefits-of-Radish.jpg'),
(126, 'Pineapple.jpg'),
(127, 'lime.jpg'),
(128, 'lime.jpg'),
(129, 'imagescbvb.jpg'),
(130, 'imagescbvb.jpg'),
(131, 'imagesgjh.jpg'),
(132, 'imagefhks.jpg'),
(133, 'imagesgjh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_no` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_amount` float DEFAULT NULL,
  `order_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_no`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_amount`, `order_datetime`) VALUES
(23, '120', '2018-09-01', 'Isuru', '', 3300, '2018-09-10 19:54:51'),
(24, '113', '2018-09-10', 'JPS Sasadara', 'Galle road, Colombo 06.', 1500, '2018-09-11 06:01:20'),
(26, '2145', '2018-09-13', 'Sam', 'hsda', 4200, '2018-09-14 01:26:45'),
(27, '223', '2018-09-12', 'Piyal', 'Ratnapura', 1240, '2018-09-15 15:18:17'),
(28, '78', '2018-09-10', 'Sumedha', 'Galle road,Colombo 06', 392, '2018-09-15 15:30:44'),
(29, '79', '2019-01-01', 'Kamal Perera', 'Kolonnawa', 8120, '2018-11-01 19:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,2) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_actual_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`order_item_id`, `order_id`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_actual_amount`) VALUES
(83, 24, 'Carrot', '15.00', '75.00', '1125.00'),
(84, 24, 'banana', '5.00', '5.00', '25.00'),
(85, 24, 'yougurt', '10.00', '35.00', '350.00'),
(90, 26, 'Cabbage', '20.00', '150.00', '3000.00'),
(91, 26, 'orange', '10.00', '120.00', '1200.00'),
(98, 23, 'milkCup', '12.00', '150.00', '1800.00'),
(99, 23, 'banana', '50.00', '6.00', '300.00'),
(100, 23, 'cocoa', '10.00', '20.00', '200.00'),
(101, 23, 'Carrot', '10.00', '50.00', '500.00'),
(102, 23, 'Cabbage', '5.00', '100.00', '500.00'),
(104, 28, 'grapes', '7.00', '56.00', '392.00'),
(105, 27, 'yougurt', '8.00', '145.00', '1160.00'),
(106, 27, 'banana', '4.00', '20.00', '80.00'),
(116, 29, 'Cabbage', '56.00', '145.00', '8120.00');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `password` varchar(12) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `Token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Token`) VALUES
(2, 'deHLYDAUpq4:APA91bHzzPU1FiJ-lqnO2ZoQiO78HRFk8T0hiDSXtGGKFye0JtVHrRxK9iRa3iWIxa1zLWMz3Y2vuhY0Gt9UeYgEjHmCRiYSuSl-m9jE7YIPvCgR7dftQ5plSpdQI6mWQEiecdL7L1v0'),
(3, 'dusQSUYlEXg:APA91bEovpd6IB4IqW9PP7ZJXUpxCvzC1wbnIXQUC1marupBC9KLodV2QXJ79myyMEGb7TT0D7J7SYNH9SFJ3ag1_jYcuFbsAHr31BPxC7tAUE-n42stFl8b4J0sJYBxO-dzrSzULT89'),
(1, 'fM_hwIF7xII:APA91bGJaBxIBZHfL4_ssUF3ZTWm1kKwH4vN-VbY-5ZsHrKPIrEl92URHFBNw7xvBzUqFVVqdJl3lVP5YxZ3NUigzxM84QND3UH-kV4U9cQ5hqZfkk2B71246vuI6R_yMPmlJ7zK3lKa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addbillitem`
--
ALTER TABLE `addbillitem`
  ADD PRIMARY KEY (`Bill_Number`,`Item_Code`),
  ADD KEY `Item_Code` (`Item_Code`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`Item_code`);

--
-- Indexes for table `bid_history`
--
ALTER TABLE `bid_history`
  ADD KEY `Item_code` (`Item_code`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_Number`),
  ADD KEY `Cashier_Emp_Id` (`Cashier_Emp_Id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_Id`);

--
-- Indexes for table `farmshopemployee`
--
ALTER TABLE `farmshopemployee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `loading_shop`
--
ALTER TABLE `loading_shop`
  ADD PRIMARY KEY (`Load_No`);

--
-- Indexes for table `loading_stores_invoice`
--
ALTER TABLE `loading_stores_invoice`
  ADD PRIMARY KEY (`Load_No`);

--
-- Indexes for table `load_shop_items`
--
ALTER TABLE `load_shop_items`
  ADD PRIMARY KEY (`Item_Code`,`Load_Num`),
  ADD KEY `Load_Num` (`Load_Num`);

--
-- Indexes for table `load_stores_items`
--
ALTER TABLE `load_stores_items`
  ADD PRIMARY KEY (`Item_Code`,`Load_Num`),
  ADD KEY `Load_Num` (`Load_Num`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`productName`);

--
-- Indexes for table `regfarmerorder`
--
ALTER TABLE `regfarmerorder`
  ADD PRIMARY KEY (`OrderNumber`),
  ADD KEY `Item_Code` (`Item_Code`),
  ADD KEY `Reg_Farmer_Id` (`Reg_Farmer_Id`);

--
-- Indexes for table `registeredshop`
--
ALTER TABLE `registeredshop`
  ADD PRIMARY KEY (`nic`);

--
-- Indexes for table `regshoporder`
--
ALTER TABLE `regshoporder`
  ADD PRIMARY KEY (`OrderNumber`),
  ADD KEY `Item_Code` (`Item_Code`),
  ADD KEY `Reg_Shop_Id` (`Reg_Shop_Id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`Cart_Id`),
  ADD KEY `Reg_Shop_Id` (`Reg_Shop_Id`);

--
-- Indexes for table `shoppingcartitems`
--
ALTER TABLE `shoppingcartitems`
  ADD PRIMARY KEY (`Shopping_Cart_Id`,`Item_Code`),
  ADD KEY `Item_Code` (`Item_Code`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`St_Id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Token` (`Token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loading_stores_invoice`
--
ALTER TABLE `loading_stores_invoice`
  MODIFY `Load_No` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `load_shop_items`
--
ALTER TABLE `load_shop_items`
  MODIFY `Load_Num` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `load_stores_items`
--
ALTER TABLE `load_stores_items`
  MODIFY `Load_Num` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `regfarmerorder`
--
ALTER TABLE `regfarmerorder`
  MODIFY `OrderNumber` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regshoporder`
--
ALTER TABLE `regshoporder`
  MODIFY `OrderNumber` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addbillitem`
--
ALTER TABLE `addbillitem`
  ADD CONSTRAINT `addbillitem_ibfk_1` FOREIGN KEY (`Bill_Number`) REFERENCES `bill` (`Bill_Number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addbillitem_ibfk_2` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bid_history`
--
ALTER TABLE `bid_history`
  ADD CONSTRAINT `bid_history_ibfk_1` FOREIGN KEY (`Item_code`) REFERENCES `auction` (`Item_code`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Cashier_Emp_Id`) REFERENCES `farmshopemployee` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `load_shop_items`
--
ALTER TABLE `load_shop_items`
  ADD CONSTRAINT `load_shop_items_ibfk_2` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `load_stores_items`
--
ALTER TABLE `load_stores_items`
  ADD CONSTRAINT `load_stores_items_ibfk_2` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regfarmerorder`
--
ALTER TABLE `regfarmerorder`
  ADD CONSTRAINT `regfarmerorder_ibfk_1` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regshoporder`
--
ALTER TABLE `regshoporder`
  ADD CONSTRAINT `regshoporder_ibfk_1` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regshoporder_ibfk_2` FOREIGN KEY (`Reg_Shop_Id`) REFERENCES `registeredshop` (`nic`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`Reg_Shop_Id`) REFERENCES `registeredshop` (`nic`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shoppingcartitems`
--
ALTER TABLE `shoppingcartitems`
  ADD CONSTRAINT `shoppingcartitems_ibfk_1` FOREIGN KEY (`Shopping_Cart_Id`) REFERENCES `shoppingcart` (`Cart_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shoppingcartitems_ibfk_2` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
