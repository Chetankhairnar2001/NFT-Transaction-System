-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 05:29 AM
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
-- Database: `btsdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `cell_number` varchar(255) DEFAULT NULL,
  `acc_status` varchar(50) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `acc_password` varchar(255) DEFAULT NULL,
  `ethereum` float DEFAULT NULL,
  `fiat_balance` float DEFAULT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `first_name`, `last_name`, `email`, `phone_number`, `cell_number`, `acc_status`, `username`, `acc_password`, `ethereum`, `fiat_balance`, `user_type`) VALUES
(100000000, 'abc0', 'xyz0', 'abc0@gmail.com', '9000000000', '4690000000', 'Gold', 'abcu0', 'abcp0', 89706.8, 60112.6, 'Client'),
(100000001, 'abc1', 'xyz1', 'abc1@gmail.com', '9000000001', '4690000001', 'Silver', 'abcu1', 'abcp1', 2, 1000000000, 'Client'),
(100000002, 'abc2', 'xyz2', 'abc2@gmail.com', '9000000002', '4690000002', 'Gold', 'abcu2', 'abcp2', 3, 1000000000, 'Client'),
(100000003, 'abc3', 'xyz3', 'abc3@gmail.com', '9000000003', '4690000003', 'Silver', 'abcu3', 'abcp3', 4, 1000000000, 'Client'),
(100000004, 'abc4', 'xyz4', 'abc4@gmail.com', '9000000004', '4690000004', 'Gold', 'abcu4', 'abcp4', 5, 1000000000, 'Client'),
(100000005, 'abc5', 'xyz5', 'abc5@gmail.com', '9000000005', '4690000005', 'Silver', 'abcu5', 'abcp5', 6, 1000000000, 'Client'),
(100000006, 'abc6', 'xyz6', 'abc6@gmail.com', '9000000006', '4690000006', 'Gold', 'abcu6', 'abcp6', 7, 1000000000, 'Client'),
(100000007, 'abc7', 'xyz7', 'abc7@gmail.com', '9000000007', '4690000007', 'Silver', 'abcu7', 'abcp7', 8, 1000000000, 'Client'),
(100000008, 'abc8', 'xyz8', 'abc8@gmail.com', '9000000008', '4690000008', 'Gold', 'abcu8', 'abcp8', 9, 1000000000, 'Client'),
(100000009, 'abc9', 'xyz9', 'abc9@gmail.com', '9000000009', '4690000009', 'Silver', 'abcu9', 'abcp9', 10, 1000000000, 'Client'),
(100000010, 'abc10', 'xyz10', 'abc10@gmail.com', '9000000010', '4690000010', NULL, 'abcu10', 'abcp10', NULL, NULL, 'Trader'),
(100000011, 'abc11', 'xyz11', 'abc11@gmail.com', '9000000011', '4690000011', NULL, 'abcu11', 'abcp11', NULL, NULL, 'Trader'),
(100000012, 'abc12', 'xyz12', 'abc12@gmail.com', '9000000012', '4690000012', NULL, 'abcu12', 'abcp12', NULL, NULL, 'Trader'),
(100000013, 'abc13', 'xyz13', 'abc13@gmail.com', '9000000013', '4690000013', NULL, 'abcu13', 'abcp13', NULL, NULL, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `client_address`
--

CREATE TABLE `client_address` (
  `client_id` int(11) NOT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_address`
--

INSERT INTO `client_address` (`client_id`, `street_address`, `city`, `state`, `zip_code`) VALUES
(100000000, 'frankford road7421', 'Dallas', 'Texas', '75252'),
(100000001, 'frankford road7422', 'Dallas', 'Texas', '75252'),
(100000002, 'frankford road7423', 'Dallas', 'Texas', '75252'),
(100000003, 'frankford road7424', 'Dallas', 'Texas', '75252'),
(100000004, 'frankford road7425', 'Dallas', 'Texas', '75252'),
(100000005, 'frankford road7426', 'Dallas', 'Texas', '75252'),
(100000006, 'frankford road7427', 'Dallas', 'Texas', '75252'),
(100000007, 'frankford road7428', 'Dallas', 'Texas', '75252'),
(100000008, 'frankford road7429', 'Dallas', 'Texas', '75252'),
(100000009, 'frankford road7430', 'Dallas', 'Texas', '75252');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `logs_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `trans_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `trader_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `trans_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nfts`
--

CREATE TABLE `nfts` (
  `token_id` int(11) NOT NULL,
  `smart_control_address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `bought` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nfts`
--

INSERT INTO `nfts` (`token_id`, `smart_control_address`, `name`, `cost`, `bought`) VALUES
(100, '500', 'abc', 1500, 0),
(101, '500', 'abcd', 200, 0),
(102, '501', 'abe', 18000, 0),
(103, '501', 'absc', 500, 0),
(104, '501', 'abec', 5000, 0),
(105, '502', 'abdc', 9850, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_transaction`
--

CREATE TABLE `order_transaction` (
  `trans_id` int(11) NOT NULL,
  `trans_type` varchar(50) NOT NULL,
  `ethereum_val` int(50) NOT NULL,
  `fiat_val` int(50) NOT NULL,
  `comm_type` varchar(255) NOT NULL,
  `nft_token_id` int(11) DEFAULT NULL,
  `trader_id` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_transaction`
--

INSERT INTO `order_transaction` (`trans_id`, `trans_type`, `ethereum_val`, `fiat_val`, `comm_type`, `nft_token_id`, `trader_id`, `timestamp`) VALUES
(1, 'Buy', 200, 240000, 'ethereum', 101, 100000000, '2022-11-26 22:14:37'),
(2, 'Buy', 5000, 6000000, 'ethereum', 104, 100000000, '2022-11-26 22:15:05'),
(3, 'Buy', 18000, 21600000, 'ethereum', 102, 100000000, '2022-11-26 22:15:35'),
(4, 'Sell', 200, 240000, 'ethereum', 101, 100000000, '2022-11-26 22:17:06'),
(5, 'Sell', 18000, 21600000, 'ethereum', 102, 100000000, '2022-11-26 22:27:30'),
(6, 'Sell', 5000, 6000000, 'ethereum', 104, 100000000, '2022-11-26 22:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `trader_id` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `payment_amount` varchar(255) NOT NULL,
  `payment_address` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `trader_id`, `payment_type`, `payment_amount`, `payment_address`, `timestamp`) VALUES
(1, 100000000, 'ethereum', '1000', '12nj', '2022-11-26 19:30:33'),
(2, 100000000, 'ethereum', '201', '12nj', '2022-11-26 19:31:04'),
(3, 100000000, 'fiat', '20000', '12nj', '2022-11-26 19:31:27'),
(4, 100000000, 'fiat', '10000', '12nj', '2022-11-26 22:15:55'),
(5, 100000000, 'ethereum', '6000', '12nj', '2022-11-26 22:16:05'),
(6, 100000000, 'ethereum', '5.8', '12nj', '2022-11-26 22:16:14'),
(7, 100000000, 'fiat', '12.58', '12nj', '2022-11-26 22:16:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_id` (`client_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `client_address`
--
ALTER TABLE `client_address`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_id` (`client_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`logs_id`),
  ADD UNIQUE KEY `logs_id` (`logs_id`);

--
-- Indexes for table `nfts`
--
ALTER TABLE `nfts`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `token_id` (`token_id`);

--
-- Indexes for table `order_transaction`
--
ALTER TABLE `order_transaction`
  ADD PRIMARY KEY (`trans_id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `payment_id` (`payment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
