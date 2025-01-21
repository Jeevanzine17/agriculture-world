-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 01:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aermsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898911, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-07-01 06:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `ProductID` int(10) DEFAULT NULL,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `UsedFor` varchar(250) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `DeliveryAddress` mediumtext DEFAULT NULL,
  `AddressProof` varchar(250) DEFAULT NULL,
  `DateofBooking` timestamp NULL DEFAULT current_timestamp(),
  `TotalCost` decimal(10,0) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `BookingNumber`, `UserID`, `ProductID`, `FromDate`, `ToDate`, `UsedFor`, `Quantity`, `DeliveryAddress`, `AddressProof`, `DateofBooking`, `TotalCost`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 169354933, 4, 1, '2024-07-14', '2024-08-07', 'Corporate', 50, 'ghfhfdhgasdfghs', 'ecebbecf28c2692aeb021597fbddb174.jpg', '2024-07-12 10:39:40', '600000', 'Approved', 'Approved', '2024-10-26 03:20:55'),
(2, 684980827, 4, 6, '2024-07-17', '2024-07-23', 'Individual', 2, 'dfrtghyututf', 'ecebbecf28c2692aeb021597fbddb174.jpg', '2024-07-12 10:40:48', '5460', 'Unapproved', 'Unapproved', '2024-10-26 03:20:51'),
(3, 531427662, 8, 2, '2024-07-26', '2024-07-30', 'Individual', 4, 'A1223 XYZ Street New Delhi', '305026d4af935ad4e8d20f641bde1b85.png', '2024-07-25 05:06:02', NULL, NULL, NULL, '2024-10-26 03:20:43'),
(4, 143024627, 9, 3, '2024-07-30', '2024-08-05', 'Individual', 1, 'D232 ABC Street New Delhi', 'c4493008b023313d9e5213d9e609a348.png', '2024-07-25 05:24:08', '3000', 'Booking has been confirmed', 'Approved', '2024-10-26 03:20:37'),
(5, 865669883, 10, 9, '2024-08-20', '2024-08-24', 'Individual', 5, 'J&K 411', '87d0de889766a6f3f0c1e35d4d2c60e9.jpg', '2024-08-20 06:26:21', NULL, NULL, NULL, NULL),
(6, 601708839, 10, 2, '2024-08-21', '2024-08-25', 'Individual', 10, 'hkjhjkhjkhjkhdwaeiyrwe', '982fc684ddfbc90f3097470c23740bba.jpg', '2024-08-20 07:02:02', '4000', 'Approved', 'Approved', '2024-08-20 11:55:30'),
(7, 495469836, 11, 2, '2024-09-25', '2024-09-30', 'Individual', 1, 'hno 123 Mayur vihar Delhi', 'a0545a75bbded80f0fd00a991aa4e33d.jpg', '2024-09-23 15:22:08', '500', 'Booking Approved and Devlivered', 'Approved', '2024-09-23 15:25:31'),
(8, 412286841, 11, 1, '2024-09-26', '2024-09-28', 'Individual', 4, 'rterterter', 'a0545a75bbded80f0fd00a991aa4e33d.jpg', '2024-09-24 02:28:01', NULL, NULL, NULL, NULL),
(9, 860119065, 11, 2, '2024-09-26', '2024-09-28', 'Individual', 534, 'fdgfdg', 'a0545a75bbded80f0fd00a991aa4e33d.jpg', '2024-09-24 02:29:28', NULL, NULL, NULL, NULL),
(10, 972475695, 12, 2, '2024-09-30', '2024-10-05', 'Individual', 2, 'H no 123 XYZ Street Ghaziabad', 'a0545a75bbded80f0fd00a991aa4e33d.jpg', '2024-09-25 02:29:53', '1000', 'Equipment Delivered', 'Approved', '2024-09-25 02:30:55'),
(11, 804976572, 13, 3, '2024-10-25', '2024-10-27', 'Individual', 2, 'abc road pune', '4ee59acc80064a9cd8f67efd0c61f880.jpg', '2024-10-25 12:59:06', '800', 'Done', 'Approved', '2024-10-25 13:20:06'),
(12, 398112215, 14, 1, '2024-10-26', '2024-10-27', 'Individual', 1, 'Pune', 'a5d908b2411e0864672fbc0717f5e9af.jpg', '2024-10-26 03:08:36', NULL, NULL, NULL, NULL),
(13, 300971571, 15, 1, '2024-10-28', '2024-11-01', 'Individual', 5, 'test', '87d07f90f10c40ed8075f45c042fe6f6.jpg', '2024-10-26 07:44:57', NULL, NULL, NULL, NULL),
(14, 739236670, 15, 2, '2024-12-27', '2024-12-19', 'Individual', 1, 'Pune', 'a78d19b7d0177ba5262e0e75dcf86f4d.jpg', '2024-12-11 12:57:01', NULL, NULL, NULL, NULL),
(15, 623180471, 15, 4, '2024-12-14', '2024-12-17', 'Individual', 1, 'Pune', 'a78d19b7d0177ba5262e0e75dcf86f4d.jpg', '2024-12-11 13:10:48', '600', 'Verified', 'Approved', '2024-12-11 13:34:49'),
(16, 982608633, 15, 13, '2024-12-11', '2024-12-14', 'Individual', 2, 'Pune', 'a5b5aa134bf9214d8fb3e022672ad98e.png', '2024-12-11 13:37:11', NULL, NULL, NULL, NULL),
(17, 945997141, 15, 7, '2024-12-11', '2024-12-12', 'Individual', 1, 'Pune', '308de258e6b91e6abf59887e92da3c7d.jpg', '2024-12-11 15:30:30', '100', 'NA', 'Unapproved', '2024-12-11 15:32:15'),
(18, 619685914, 18, 1, '2024-12-12', '2024-12-13', 'Individual', 2, 'Nashik', '648ceb8542ea732ca09eece8f6fdaedc.png', '2024-12-12 16:32:53', '1000', 'Verified', 'Approved', '2024-12-12 16:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(11) NOT NULL,
  `CategoryName` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(1, 'Lawn and Gardening', '2024-08-13 05:45:19'),
(2, 'Hands Tools', '2024-08-13 05:45:30'),
(3, 'Earth Auger', '2024-08-13 05:45:45'),
(4, 'Harvester', '2024-08-13 05:45:58'),
(5, 'Sprayers', '2024-08-13 05:46:12'),
(7, 'Water Pump', '2024-08-13 05:46:31'),
(8, 'Lighting and Electric', '2024-08-13 05:46:51'),
(9, 'Brush Cutters', '2024-08-13 05:47:03'),
(15, 'Farming Instrument', '2024-12-12 16:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'Farmer Rental System &nbsp;', NULL, NULL, '2024-12-11 12:44:55'),
(2, 'contactus', 'Contact Us', 'MG Road,Pune-411003', 'info@gmail.com', 7894561239, '2024-10-25 12:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `ID` int(5) NOT NULL,
  `CategoryID` int(10) DEFAULT NULL,
  `SubcategoryID` int(5) DEFAULT NULL,
  `ProductName` varchar(250) DEFAULT NULL,
  `ModelNumber` varchar(250) DEFAULT NULL,
  `PowerSource` varchar(250) DEFAULT NULL,
  `RentPrice` decimal(10,0) DEFAULT NULL,
  `ProductSpecifications` mediumtext DEFAULT NULL,
  `ProductDescription` mediumtext DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(250) DEFAULT NULL,
  `Image4` varchar(250) DEFAULT NULL,
  `Image5` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`ID`, `CategoryID`, `SubcategoryID`, `ProductName`, `ModelNumber`, `PowerSource`, `RentPrice`, `ProductSpecifications`, `ProductDescription`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`, `CreationDate`) VALUES
(1, 9, 9, 'WOLF GARTEN BATTERY MOWER', 'LYCOS 40/400 M', 'Battery', '500', 'gfdgfdg', 'Powerful Engine: Equipped with a robust engine designed to handle dense vegetation and challenging terrain.\r\nVersatile Attachments: Choose from a range of attachments, including blades, trimmer heads, and saws, to customize your cutting needs.\r\nErgonomic Design: Comfortable grip and shoulder strap for reduced fatigue during extended use.\r\nEasy Start: Reliable starting mechanism for hassle-free operation.', '871f169b9c9471b10705283fde2218ab1723527457.jpg', '76e2412d5341ff31c31a655c155d3ac31723527457.jpg', '69e4bbe08c1817cfba4e540032ce0c6b1723527457.jpg', '69e4bbe08c1817cfba4e540032ce0c6b1723527457.jpg', '9a0b7273135c76df08af25e6fffed0701723527457.jpg', '9a0b7273135c76df08af25e6fffed0701723527457.jpg', '2024-08-13 05:37:37'),
(2, 1, 1, 'Wolf Garten  TT 350S', ' TT 350S', 'NA', '100', 'Brand:	Wolf Garten\r\nOrigin:	Made in Germany\r\nModel:	TT350S\r\nCutting Width	35 cm\r\nMowing Area:	up to 150 square meter\r\nHeight:	Adjustment :1,3 & 3,8 cm\r\nFrame:	Steel\r\nWheels:	PVC Bearing\r\nAreas of application:	Gardens, Lawns, Resorts, Educational Institutes\r\n', 'Lovers of a beautiful lawn with an English look will certainly be enthralled by the TT 350 S. The Wolf-Garten TT 350 S cylinder mower has a cutting width of 35 cm and is intended for lawns up to 150 m². Mowing with a cylinder mower is a healthy and environmentally friendly way of mowing.', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', 'fa8fd0c2b8fcec7dbd18efb9eef3f3bd1723529032.jpg', '09cfb0fdd6512379bd293922cfb7806b1723529032.jpg', '9800728043e9d7cb2f1eab6fb06347621723529032.jpg', 'f47454d1d3644127f42070181a8b9afc1723529032.jpg', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', '2024-08-13 06:03:52'),
(3, 2, 6, 'Agriculture Manual Seeder', 'S-12', 'Manual', '200', 'Model:	S-12\r\nColor:	Red\r\nNumber of Teeth:	12\r\nSuitable For: 	Field and gardening crops\r\n', '\r\nAgriculture Manual Hand Operated Seeding Machine is a premium quality product.  All Manual Hand Operated Seeding Machines, are manufactured by using quality-assured material and advanced techniques, which make them up to the standard in this highly challenging field. The materials utilized to manufacture this are sourced from the most reliable and official vendors, chosen after performing detailed market surveys. products are widely acknowledged in the market for their high quality\r\n', '5a7e627044986469b32803f5ae2cc30c1723529302.jpg', '0850f37e0aa47c042887262a117c14b21723529302.jpg', '8e4f5a203e156aecaaaadde55b979a1f1723529302.jpg', '0850f37e0aa47c042887262a117c14b21723529302.jpg', '0850f37e0aa47c042887262a117c14b21723529302.jpg', '8e4f5a203e156aecaaaadde55b979a1f1723529302.jpg', '2024-08-13 06:08:22'),
(4, 2, 7, 'Lawn Rake', 'UF-M', 'Manual', '200', 'Brand	Wolf-Garten (German Origin)\r\nModel:	UF-M\r\nWorking Width:	50 cm\r\nWeight:	16 Grams\r\nTines Material:	Flexible Hardened spring (Unbendable)\r\nSuggested Handles:	ZM V4 & ZM 170 (Can be used with other handles too)\r\nApplication:	Lawn and garden Cleaning, Leaves cleaning, etc.\r\n', 'The Lawn Rake (UF-M) 50cm will revolutionize your ability to garden. This powerful tool is lightweight (16 grams) and has a 50cm operating width, making it easy to use. It gives flexibility for your gardening needs because it works with a variety of handles.', 'e0958844fe0c3aa818c090607c20c3eb1723529975.jpg', 'ed2dfdd854405d7171a004d296d5d0911723529975.jpg', '7ab6bdcfeebbeae4c9234b6452493e031723529975.jpg', '7ab6bdcfeebbeae4c9234b6452493e031723529975.jpg', '5ea893412b1a830b68fbbf753ce272391723529975.jpg', 'e0958844fe0c3aa818c090607c20c3eb1723529975.jpg', '2024-08-13 06:19:35'),
(5, 2, 6, 'Agriculture Manual Seeder', 'S-12', 'Manual', '200', 'Model:	S-12\r\nColor:	Red\r\nNumber of Teeth:	12\r\nSuitable For: 	Field and gardening crops\r\n', '\r\nAgriculture Manual Hand Operated Seeding Machine is a premium quality product.  All Manual Hand Operated Seeding Machines, are manufactured by using quality-assured material and advanced techniques, which make them up to the standard in this highly challenging field. The materials utilized to manufacture this are sourced from the most reliable and official vendors, chosen after performing detailed market surveys. products are widely acknowledged in the market for their high quality\r\n', '5a7e627044986469b32803f5ae2cc30c1723529302.jpg', '0850f37e0aa47c042887262a117c14b21723529302.jpg', '8e4f5a203e156aecaaaadde55b979a1f1723529302.jpg', '0850f37e0aa47c042887262a117c14b21723529302.jpg', '0850f37e0aa47c042887262a117c14b21723529302.jpg', '8e4f5a203e156aecaaaadde55b979a1f1723529302.jpg', '2024-08-13 06:08:22'),
(6, 1, 1, 'Wolf Garten  TT 350S', ' TT 350S', 'NA', '100', 'Brand:	Wolf Garten\r\nOrigin:	Made in Germany\r\nModel:	TT350S\r\nCutting Width	35 cm\r\nMowing Area:	up to 150 square meter\r\nHeight:	Adjustment :1,3 & 3,8 cm\r\nFrame:	Steel\r\nWheels:	PVC Bearing\r\nAreas of application:	Gardens, Lawns, Resorts, Educational Institutes\r\n', 'Lovers of a beautiful lawn with an English look will certainly be enthralled by the TT 350 S. The Wolf-Garten TT 350 S cylinder mower has a cutting width of 35 cm and is intended for lawns up to 150 m². Mowing with a cylinder mower is a healthy and environmentally friendly way of mowing.', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', 'fa8fd0c2b8fcec7dbd18efb9eef3f3bd1723529032.jpg', '09cfb0fdd6512379bd293922cfb7806b1723529032.jpg', '9800728043e9d7cb2f1eab6fb06347621723529032.jpg', 'f47454d1d3644127f42070181a8b9afc1723529032.jpg', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', '2024-08-13 06:03:52'),
(7, 1, 1, 'Wolf Garten  TT 350S', ' TT 350S', 'NA', '100', 'Brand:	Wolf Garten\r\nOrigin:	Made in Germany\r\nModel:	TT350S\r\nCutting Width	35 cm\r\nMowing Area:	up to 150 square meter\r\nHeight:	Adjustment :1,3 & 3,8 cm\r\nFrame:	Steel\r\nWheels:	PVC Bearing\r\nAreas of application:	Gardens, Lawns, Resorts, Educational Institutes\r\n', 'Lovers of a beautiful lawn with an English look will certainly be enthralled by the TT 350 S. The Wolf-Garten TT 350 S cylinder mower has a cutting width of 35 cm and is intended for lawns up to 150 m². Mowing with a cylinder mower is a healthy and environmentally friendly way of mowing.', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', 'fa8fd0c2b8fcec7dbd18efb9eef3f3bd1723529032.jpg', '09cfb0fdd6512379bd293922cfb7806b1723529032.jpg', '9800728043e9d7cb2f1eab6fb06347621723529032.jpg', 'f47454d1d3644127f42070181a8b9afc1723529032.jpg', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', '2024-08-13 06:03:52'),
(8, 2, 7, 'Lawn Rake', 'UF-M', 'Manual', '200', 'Brand	Wolf-Garten (German Origin)\r\nModel:	UF-M\r\nWorking Width:	50 cm\r\nWeight:	16 Grams\r\nTines Material:	Flexible Hardened spring (Unbendable)\r\nSuggested Handles:	ZM V4 & ZM 170 (Can be used with other handles too)\r\nApplication:	Lawn and garden Cleaning, Leaves cleaning, etc.\r\n', 'The Lawn Rake (UF-M) 50cm will revolutionize your ability to garden. This powerful tool is lightweight (16 grams) and has a 50cm operating width, making it easy to use. It gives flexibility for your gardening needs because it works with a variety of handles.', 'e0958844fe0c3aa818c090607c20c3eb1723529975.jpg', 'ed2dfdd854405d7171a004d296d5d0911723529975.jpg', '7ab6bdcfeebbeae4c9234b6452493e031723529975.jpg', '7ab6bdcfeebbeae4c9234b6452493e031723529975.jpg', '5ea893412b1a830b68fbbf753ce272391723529975.jpg', 'e0958844fe0c3aa818c090607c20c3eb1723529975.jpg', '2024-08-13 06:19:35'),
(9, 1, 1, 'Wolf Garten  TT 350S', ' TT 350S', 'NA', '100', 'Brand:	Wolf Garten\r\nOrigin:	Made in Germany\r\nModel:	TT350S\r\nCutting Width	35 cm\r\nMowing Area:	up to 150 square meter\r\nHeight:	Adjustment :1,3 & 3,8 cm\r\nFrame:	Steel\r\nWheels:	PVC Bearing\r\nAreas of application:	Gardens, Lawns, Resorts, Educational Institutes\r\n', 'Lovers of a beautiful lawn with an English look will certainly be enthralled by the TT 350 S. The Wolf-Garten TT 350 S cylinder mower has a cutting width of 35 cm and is intended for lawns up to 150 m². Mowing with a cylinder mower is a healthy and environmentally friendly way of mowing.', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', 'fa8fd0c2b8fcec7dbd18efb9eef3f3bd1723529032.jpg', '09cfb0fdd6512379bd293922cfb7806b1723529032.jpg', '9800728043e9d7cb2f1eab6fb06347621723529032.jpg', 'f47454d1d3644127f42070181a8b9afc1723529032.jpg', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', '2024-08-13 06:03:52'),
(10, 9, 9, 'WOLF GARTEN BATTERY MOWER', 'LYCOS 40/400 M', 'Battery', '500', 'gfdgfdg', 'gfdgfdg', '871f169b9c9471b10705283fde2218ab1723527457.jpg', '76e2412d5341ff31c31a655c155d3ac31723527457.jpg', '69e4bbe08c1817cfba4e540032ce0c6b1723527457.jpg', '69e4bbe08c1817cfba4e540032ce0c6b1723527457.jpg', '9a0b7273135c76df08af25e6fffed0701723527457.jpg', '9a0b7273135c76df08af25e6fffed0701723527457.jpg', '2024-08-13 05:37:37'),
(11, 1, 1, 'Wolf Garten  TT 350S', ' TT 350S', 'NA', '100', 'Brand:	Wolf Garten\r\nOrigin:	Made in Germany\r\nModel:	TT350S\r\nCutting Width	35 cm\r\nMowing Area:	up to 150 square meter\r\nHeight:	Adjustment :1,3 & 3,8 cm\r\nFrame:	Steel\r\nWheels:	PVC Bearing\r\nAreas of application:	Gardens, Lawns, Resorts, Educational Institutes\r\n', 'Lovers of a beautiful lawn with an English look will certainly be enthralled by the TT 350 S. The Wolf-Garten TT 350 S cylinder mower has a cutting width of 35 cm and is intended for lawns up to 150 m². Mowing with a cylinder mower is a healthy and environmentally friendly way of mowing.', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', 'fa8fd0c2b8fcec7dbd18efb9eef3f3bd1723529032.jpg', '09cfb0fdd6512379bd293922cfb7806b1723529032.jpg', '9800728043e9d7cb2f1eab6fb06347621723529032.jpg', 'f47454d1d3644127f42070181a8b9afc1723529032.jpg', 'fa7f10f437b04eb1c0d6c8d58bc8578a1723529032.jpg', '2024-08-13 06:03:52'),
(14, 15, 15, 'Tractor ', '561233', 'Battery', '200', 'NA', 'NA', '1a18217e42ba5a0a955c074be11c216d1734021749.jpg', 'a1ddb6479af8a65ec0b5d97c8e32fa6b1734021749jpeg', 'afadf1ddb224aef8a213e08e5cd728c01734021749.jpg', '43bea0127ffe6d2739d712039c9bcab51734021749.jpg', 'fcfe971969c03dc2d5f143ba368747301734021749.jpg', '42d38fdff39b0a3a1fa757ed574b2f681734021749.jpg', '2024-12-12 16:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `ID` int(11) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `SubcategoryName` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`ID`, `CategoryID`, `SubcategoryName`, `CreationDate`) VALUES
(1, 1, 'Lawn mowers', '2024-08-13 05:47:32'),
(2, 1, 'Hedge Trimmer', '2024-08-13 05:47:48'),
(3, 1, 'Leaf Blowers', '2024-08-13 05:48:15'),
(4, 1, 'Shreeders', '2024-08-13 05:48:57'),
(5, 1, 'Trimmers', '2024-08-13 05:49:11'),
(6, 2, 'Multi Change Tools', '2024-08-13 05:49:46'),
(7, 2, 'Multi Cleaning Tools', '2024-08-13 05:50:04'),
(8, 2, 'Tree Care Tools', '2024-08-13 05:50:23'),
(9, 3, 'On men operated', '2024-08-13 05:51:00'),
(10, 3, 'Two men operated', '2024-08-13 05:51:13'),
(11, 3, 'Foldable Trolley', '2024-08-13 05:51:41'),
(12, 3, 'Unfordable Trolley', '2024-08-13 05:52:03'),
(13, 4, 'Power Reaper', '2024-08-13 05:52:27'),
(14, 5, 'Power Sprayers', '2024-08-13 05:54:52'),
(15, 5, 'HTP Sprayers', '2024-08-13 05:55:34'),
(16, 6, 'Chaff Cutter', '2024-08-13 05:56:16'),
(17, 6, 'Corn Threser', '2024-08-13 05:56:29'),
(18, 7, 'Water Pump', '2024-08-13 05:56:58'),
(19, 7, 'Run Gun', '2024-08-13 05:57:11'),
(20, 9, 'Back Pack', '2024-08-13 05:57:33'),
(21, 9, 'Side Pack', '2024-08-13 05:57:42'),
(22, 9, 'Multi use', '2024-08-13 05:57:54'),
(25, 12, 'tractor', '2024-12-11 13:23:53'),
(26, 13, 'tractor', '2024-12-11 13:24:48'),
(27, 15, 'Tractor', '2024-12-12 16:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Rishi', 'Bhardwaj', 'rishi@gmail.com', 5646545645, '202cb962ac59075b964b07152d234b70', '2024-08-10 07:13:47'),
(2, 'Meenakashi', 'Singh', 'singh@gmail.com', 9878775464, '202cb962ac59075b964b07152d234b70', '2024-08-10 07:13:47'),
(3, 'Devesh', 'Gupta', 'devesh@gmail.com', 5656565656, '202cb962ac59075b964b07152d234b70', '2024-08-10 07:13:47'),
(4, 'Abir', 'Rahwans', 'abir@gmail.com', 2556444557, '202cb962ac59075b964b07152d234b70', '2024-08-10 07:13:47'),
(5, 'Perth', 'Kaushal', 'perth@gmail.com', 3232565690, '202cb962ac59075b964b07152d234b70', '2024-08-10 07:13:47'),
(6, 'Shagun', 'Mishra', 'shagun@gmail.com', 7897978798, '202cb962ac59075b964b07152d234b70', '2024-08-10 07:13:47'),
(7, 'Anuj', ' kumar', 'anc@test.com', 1234567809, '5c428d8875d2948607f3e3fe134d71b4', '2024-08-10 07:13:47'),
(8, 'Kumar', 'abc', 'abc@gmail.com', 9798797897, '202cb962ac59075b964b07152d234b70', '2024-08-10 07:13:47'),
(9, 'John ', 'Doe', 'jdoe@gmail.com', 1212343455, 'f925916e2754e5e03f75dd58a5733251', '2024-08-10 07:13:47'),
(10, 'Rajendra', 'Mishra', 'raj@gmail.com', 1313131313, '81dc9bdb52d04dc20036dbd8313ed055', '2024-08-20 05:01:00'),
(11, 'Garima', 'Singh', 'garima12@gmail.com', 1425363625, 'f925916e2754e5e03f75dd58a5733251', '2024-09-23 15:16:31'),
(12, 'test', 'User', 'testuser@t.com', 7845698741, 'f925916e2754e5e03f75dd58a5733251', '2024-09-25 02:28:48'),
(13, 'Yash', 'Gate', 'yashgate776@gmail.com', 8987858890, 'e10adc3949ba59abbe56e057f20f883e', '2024-10-25 10:17:25'),
(14, 'Vikas', 'Kumar', 'v@gmail.com', 7897984899, '71b3b26aaa319e0cdf6fdb8429c112b0', '2024-10-26 03:01:12'),
(15, 'Yash', 'Gate', 'yash@gmail.com', 1234567890, 'e10adc3949ba59abbe56e057f20f883e', '2024-10-26 07:38:20'),
(16, 'PO', 'BN', 'po@gmail.com', 8888888888, 'e10adc3949ba59abbe56e057f20f883e', '2024-12-11 12:46:10'),
(17, 'a', 'a', 'a@gmail.com', 1231457890, '4297f44b13955235245b2497399d7a93', '2024-12-11 12:51:05'),
(18, 'IOP', 'JKL', 'j@gmail.com', 1234567890, 'e10adc3949ba59abbe56e057f20f883e', '2024-12-12 16:12:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
