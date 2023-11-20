-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 03, 2022 at 03:39 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarketdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `billtbl`
--

DROP TABLE IF EXISTS `billtbl`;
CREATE TABLE IF NOT EXISTS `billtbl` (
  `Billid` int NOT NULL,
  `SellerName` varchar(50) DEFAULT NULL,
  `BillDate` varchar(50) DEFAULT NULL,
  `TotAmt` int DEFAULT NULL,
  PRIMARY KEY (`Billid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `billtbl`
--

INSERT INTO `billtbl` (`Billid`, `SellerName`, `BillDate`, `TotAmt`) VALUES
(1, 'Seller', '5/10/2021', 22),
(2, 'Seller', '6/10/2021', 88),
(3, 'indu', '6/10/2021', 50),
(4, 'indu', '21/10/2021', 50),
(5, 'indu', '30/10/2021', 15),
(6, 'indu', '9/11/2021', 170),
(7, 'indu', '26/1/2022', 735),
(8, 'indu', '6/2/2022', 135),
(9, 'indu', '24/8/2022', 175);

-- --------------------------------------------------------

--
-- Table structure for table `categorytbl`
--

DROP TABLE IF EXISTS `categorytbl`;
CREATE TABLE IF NOT EXISTS `categorytbl` (
  `Catid` int NOT NULL,
  `CatName` varchar(50) DEFAULT NULL,
  `CatDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Catid`),
  KEY `CatName` (`CatName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorytbl`
--

INSERT INTO `categorytbl` (`Catid`, `CatName`, `CatDesc`) VALUES
(5, 'k', 'k'),
(4, 'Fruits', 'aa'),
(3, 'Cleaning', 'Cleaning products');

-- --------------------------------------------------------

--
-- Table structure for table `producttbl`
--

DROP TABLE IF EXISTS `producttbl`;
CREATE TABLE IF NOT EXISTS `producttbl` (
  `Prodid` int NOT NULL,
  `ProdName` varchar(50) DEFAULT NULL,
  `ProdQty` int DEFAULT NULL,
  `ProdPrice` varchar(50) DEFAULT NULL,
  `ProdCat` int DEFAULT NULL,
  PRIMARY KEY (`Prodid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `producttbl`
--

INSERT INTO `producttbl` (`Prodid`, `ProdName`, `ProdQty`, `ProdPrice`, `ProdCat`) VALUES
(3, 'apple', 80, '50', 0),
(2, 'fresh milk', 65, '35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sellertbl`
--

DROP TABLE IF EXISTS `sellertbl`;
CREATE TABLE IF NOT EXISTS `sellertbl` (
  `Sellerid` int NOT NULL,
  `SellerName` varchar(50) DEFAULT NULL,
  `SellerAge` int DEFAULT NULL,
  `SellerPhone` varchar(50) DEFAULT NULL,
  `SellerPass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Sellerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sellertbl`
--

INSERT INTO `sellertbl` (`Sellerid`, `SellerName`, `SellerAge`, `SellerPhone`, `SellerPass`) VALUES
(1, 'indu', 24, '0712232654', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
