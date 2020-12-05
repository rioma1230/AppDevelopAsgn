-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 06:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` char(4) NOT NULL,
  `branch_id` char(4) NOT NULL,
  `agent_name` varchar(30) NOT NULL,
  `agent_mobile` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `branch_id`, `agent_name`, `agent_mobile`) VALUES
('A001', 'B001', 'Lana Mills', '59855503'),
('A002', 'B002', 'Ruben Franklin ', '93755510'),
('A003', 'B003', 'Gerardo Holland ', '51755513'),
('A004', 'B004', 'Blanche Wade ', '67755529'),
('A005', 'B005', 'Nadine Fitzgerald', '67355522'),
('A006', 'B006', 'Jessica Weber ', '69055554'),
('A007', 'B007', 'Hubert Hampton', '67955505'),
('A008', 'B008', 'Julian Harrison ', '63455511'),
('A009', 'B009', 'Frederick Miles ', '56255553'),
('A010', 'B010', 'Sarah Holt ', '65955598');

-- --------------------------------------------------------

--
-- Table structure for table `allocation`
--

CREATE TABLE `allocation` (
  `team_id` char(4) NOT NULL,
  `agent_id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allocation`
--

INSERT INTO `allocation` (`team_id`, `agent_id`) VALUES
('0', 'A001'),
('0', 'A002'),
('0', 'A003'),
('0', 'A004'),
('0', 'A005'),
('0', 'A006'),
('0', 'A007'),
('0', 'A008'),
('0', 'A009'),
('0', 'A010');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` char(4) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_manager` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_address`, `branch_manager`) VALUES
('B001', '23/F Chung Kiu Commercail Buliding 47-51 Shantung St. Mongkok Kowloon, Kowloon City District', 'Willie Cortez '),
('B002', 'Unit H1 3/F Kaiser Estate Phase 2 47-53 Man Yue Street Hunghom Kowloon, Kowloon City District', 'Mandy Goodman '),
('B003', 'Room H15/F. Cheuk Nang 21st Century Plaza250 Hennessy Road Wanchai, Wan Chai District', 'Gordon Andrews '),
('B004', 'Room 2002 Multifield Centre 426 Shanghai Street, Tsim Sha Tsui', 'Emily Porter '),
('B005', '1210 12/F Hunghom Commercial Centre 39 Matauwai Road Hunghom Kowloon, Kowloon City District', 'Yolanda Graham '),
('B006', 'Unit C 2 / F. Wah Lik Ind. Ctr. 459-469 Castle Peak Road, Sham Shui Po District', 'Nettie Roy '),
('B007', 'Unit F1-13 6/F Phase 1 Hang Fung Ind Bldg 2g Hok Yuen St Hung Hom, Yau Tsim Mong District', 'Julian Goodwin'),
('B008', '1203-4 Wealth Commercial Centre 48 Kwong Wah Street, Yau Tsim Mong District', 'Marco Pierce '),
('B009', 'Room A212/F. Por Mee Factory Building No.500 Castle Peak Road Kowloon, Kowloon City District', 'Jonathan Dean '),
('B010', 'Suite 2303 Office Tower Convention Plaza 1 Harbour Road Wanchai, Wan Chai District', 'Clark Fisher ');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` char(4) NOT NULL,
  `cust_name` varchar(30) NOT NULL,
  `cust_mobile` char(8) NOT NULL,
  `pre_district` varchar(20) NOT NULL,
  `pre_estate` varchar(20) NOT NULL,
  `budget_buying` double(12,2) NOT NULL,
  `budget_rental` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_mobile`, `pre_district`, `pre_estate`, `budget_buying`, `budget_rental`) VALUES
('C001', 'Colin French', '56655520', 'Sha Tin District', 'City One', 8000000.00, 30000.00),
('C002', 'Joshua Daniel ', '65855549', 'Sha Tin District', 'City One', 8800000.00, 35000.00),
('C003', 'Ervin Armstrong ', '59355529', 'Sha Tin District', 'Chevalier Garden', 6670000.00, 29000.00),
('C004', 'Eleanor Montgomery ', '65955539', 'Kowloon City Distric', 'Tung Wui Estate', 9300000.00, 50000.00),
('C005', 'Albert Moss ', '61955571', 'Kowloon City Distric', 'Tung Wui Estate', 9900000.00, 55000.00),
('C006', 'Emily Romero ', '53555583', 'Kowloon City Distric', 'Tung Tau Estate', 8900000.00, 50000.00),
('C007', 'Phyllis Lambert ', '93055523', 'Chai Wan District', 'Kai Tsui Court', 12300000.00, 53000.00),
('C008', 'Maxine Nichols ', '59855571', 'Chai Wan District', 'Kai Tsui Court', 12000000.00, 56000.00),
('C009', 'Pam Phelps ', '51555523', 'Chai Wan District', 'Harmony Garden', 14300000.00, 60000.00),
('C010', 'Louise Hernandez ', '64855554', 'Chai Wan District', 'Harmony Garden', 15000000.00, 62000.00);

-- --------------------------------------------------------

--
-- Table structure for table `hk_property`
--

CREATE TABLE `hk_property` (
  `team_id` char(4) NOT NULL,
  `team_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hk_property`
--

INSERT INTO `hk_property` (`team_id`, `team_name`) VALUES
('0', 'HK Property Marketing Team');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `prop_id` char(4) NOT NULL,
  `prop_status_id` char(1) NOT NULL,
  `owner_id` char(4) NOT NULL,
  `district_name` varchar(20) NOT NULL,
  `estate_name` varchar(20) NOT NULL,
  `block_no` char(2) NOT NULL,
  `floor_no` char(2) NOT NULL,
  `flat_no` char(4) NOT NULL,
  `gfa` char(4) NOT NULL,
  `bedroom_no` char(1) NOT NULL,
  `car_part` char(1) NOT NULL,
  `selling_price` double(12,2) NOT NULL,
  `rental_price` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`prop_id`, `prop_status_id`, `owner_id`, `district_name`, `estate_name`, `block_no`, `floor_no`, `flat_no`, `gfa`, `bedroom_no`, `car_part`, `selling_price`, `rental_price`) VALUES
('P001', 'Y', 'O001', 'Sha Tin', 'City one', '6', '1', '101', '400', '4', 'N', 6000000.00, 28000.00),
('P002', 'Y', 'O001', 'Sha Tin', 'City one', '11', '9', '905', '430', '4', 'N', 6600000.00, 30000.00),
('P003', 'N', 'O001', 'Sha Tin', 'Chevalier Garden', '7', '13', '1303', '450', '2', 'N', 6600000.00, 28000.00),
('P004', 'Y', 'O001', 'Sha Tin', 'Chevalier Garden', '1', '8', '806', '460', '2', 'N', 6500000.00, 29000.00),
('P005', 'Y', 'O001', 'Sha Tin', 'Chevalier Garden', '1', '8', '812', '470', '4', 'N', 7000000.00, 32000.00),
('P006', 'N', 'O002', 'Sha Tin', 'City one', '2', '8', '801', '480', '2', 'N', 6100000.00, 28000.00),
('P007', 'Y', 'O002', 'Sha Tin', 'Chevalier Garden', '8', '15', '1504', '650', '3', 'N', 7000000.00, 35000.00),
('P008', 'Y', 'O002', 'Sha Tin', 'City one', '13', '13', '1313', '688', '4', 'N', 7200000.00, 36000.00),
('P009', 'N', 'O002', 'Sha Tin', 'Chevalier Garden', '1', '12', '1203', '688', '3', 'N', 7200000.00, 36000.00),
('P010', 'Y', 'O002', 'Sha Tin', 'City one', '12', '13', '1303', '430', '5', 'N', 7300000.00, 35000.00),
('P011', 'Y', 'O003', 'Kowloon City', 'Tung Tau Estate', '1', '11', '1101', '700', '4', 'Y', 7000000.00, 30000.00),
('P012', 'Y', 'O003', 'Kowloon City', 'Tung Wui Estate', '1', '12', '1201', '700', '4', 'Y', 7200000.00, 32000.00),
('P013', 'N', 'O003', 'Kowloon City', 'Tung Tau Estate', '1', '13', '1301', '710', '5', 'Y', 7300000.00, 32000.00),
('P014', 'N', 'O003', 'Kowloon City', 'Tung Wui Estate', '2', '14', '1401', '720', '4', 'Y', 7200000.00, 35000.00),
('P015', 'Y', 'O003', 'Kowloon City', 'Tung Tau Estate', '2', '15', '1501', '720', '5', 'Y', 7300000.00, 30000.00),
('P016', 'Y', 'O004', 'Kowloon City', 'Tung Tau Estate', '5', '16', '1605', '750', '5', 'Y', 8100000.00, 35000.00),
('P017', 'Y', 'O004', 'Kowloon City', 'Tung Tau Estate', '5', '17', '1709', '750', '5', 'Y', 8300000.00, 36000.00),
('P018', 'N', 'O004', 'Kowloon City', 'Tung Wui Estate', '8', '18', '1805', '760', '5', 'Y', 8300000.00, 38000.00),
('P019', 'Y', 'O004', 'Kowloon City', 'Tung Wui Estate', '7', '19', '1911', '780', '5', 'Y', 8300000.00, 38000.00),
('P020', 'Y', 'O004', 'Kowloon City', 'Tung Wui Estate', '7', '20', '2012', '799', '5', 'Y', 8100000.00, 40000.00),
('P021', 'Y', 'O005', 'Chai Wan District', 'Chai Wan Court', '1', '11', '1102', '800', '5', 'Y', 9000000.00, 45000.00),
('P022', 'N', 'O005', 'Chai Wan District', 'Chai Wan Court', '1', '11', '1103', '805', '5', 'Y', 9000000.00, 45000.00),
('P023', 'Y', 'O005', 'Chai Wan District', 'Kai Tsui Court', '2', '12', '1205', '850', '5', 'Y', 9300000.00, 48000.00),
('P024', 'Y', 'O005', 'Chai Wan District', 'Kai Tsui Court', '3', '13', '1301', '899', '5', 'Y', 9200000.00, 50000.00),
('P025', 'Y', 'O005', 'Chai Wan District', 'Kai Tsui Court', '3', '13', '1302', '856', '5', 'Y', 9000000.00, 52000.00),
('P026', 'N', 'O006', 'Chai Wan District', 'Chai Wan Court', '1', '8', '801', '845', '5', 'Y', 9000000.00, 56000.00),
('P027', 'Y', 'O006', 'Chai Wan District', 'Kai Tsui Court', '5', '9', '908', '877', '5', 'Y', 9500000.00, 55000.00),
('P028', 'Y', 'O006', 'Chai Wan District', 'Chai Wan Court', '1', '15', '1512', '888', '5', 'Y', 9000000.00, 57000.00),
('P029', 'Y', 'O006', 'Chai Wan District', 'Chai Wan Court', '6', '12', '1203', '888', '5', 'Y', 9000000.00, 63000.00),
('P030', 'Y', 'O006', 'Chai Wan District', 'Kai Tsui Court', '2', '11', '1105', '888', '5', 'Y', 12000000.00, 62000.00);

-- --------------------------------------------------------

--
-- Table structure for table `property_owner`
--

CREATE TABLE `property_owner` (
  `owner_id` char(4) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  `owner_mobile` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_owner`
--

INSERT INTO `property_owner` (`owner_id`, `owner_name`, `owner_mobile`) VALUES
('O001', 'Luke Gross', '56255573'),
('O002', 'Chad Nunez', '59655516'),
('O003', 'Theodore Morrison ', '54055561'),
('O004', 'Wendell Richards ', '64055530'),
('O005', 'Sylvester Clayton', '91255547'),
('O006', 'Maria Garcia ', '98355531');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `tran_id` char(4) NOT NULL,
  `prop_id` char(4) NOT NULL,
  `owner_id` char(4) NOT NULL,
  `cust_id` char(4) NOT NULL,
  `agent_id` char(4) NOT NULL,
  `tran_type` varchar(4) NOT NULL,
  `tran_dates` date NOT NULL,
  `tran_report` varchar(100) NOT NULL,
  `sold_price` double(12,2) NOT NULL,
  `rental_price` double(9,2) NOT NULL,
  `commission` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD UNIQUE KEY `agent_id` (`agent_id`);

--
-- Indexes for table `allocation`
--
ALTER TABLE `allocation`
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `hk_property`
--
ALTER TABLE `hk_property`
  ADD PRIMARY KEY (`team_id`),
  ADD UNIQUE KEY `team_id` (`team_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`prop_id`),
  ADD UNIQUE KEY `prop_id` (`prop_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `property_owner`
--
ALTER TABLE `property_owner`
  ADD PRIMARY KEY (`owner_id`),
  ADD UNIQUE KEY `owner_id` (`owner_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`tran_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
