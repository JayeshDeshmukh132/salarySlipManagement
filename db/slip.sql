-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 04:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slip`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `name`, `designation`, `password`) VALUES
(1, 'jayesh', 'accountant', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `designation`) VALUES
(1, 'admin', '', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `emp_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `pan_no` varchar(10) NOT NULL,
  `pf_no` varchar(25) NOT NULL,
  `uan_no` varchar(25) NOT NULL,
  `bank_acc` varchar(25) NOT NULL,
  `department` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `joining_date` date NOT NULL,
  `leaving_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`emp_id`, `name`, `gmail`, `phone_no`, `pan_no`, `pf_no`, `uan_no`, `bank_acc`, `department`, `designation`, `role`, `joining_date`, `leaving_date`) VALUES
(1, 'Ayush Rajput', 'ayushrajput396@gmail.com', '5678941230', 'ABC1234567', 'ABC1010101010101010101', '112233445566', '111111111111111', 'COMP', 'Teaching', 'Accountant', '2019-10-02', '0000-00-00'),
(2, 'Jayesh Deshmukh', 'hackur69@gmail.com', '1234567890', 'DEF1234567', 'DEF2020202020202020202', '223344556677', '222222222222222', 'COMP', 'Teaching', 'Accountant', '2019-10-03', NULL),
(3, 'Harshal Aponkar', 'harshalaponkar11@gmail.com', '5214569870', 'GHI1234567', 'GHI3030303030303030303', '334455667788', '333333333333333', 'COMP', 'Teaching', 'Accountant', '2019-10-04', NULL),
(4, 'Pranav Mhatre', 'pranav@gmail.com', '8974562158', 'JKL1234567', 'JKL4040404040404040404', '445566778899', '444444444444444', 'COMP', 'Teaching', 'Employee', '2019-10-05', '0000-00-00'),
(5, 'Samreen Chowlkar', 'samreen@gmail.com', '8745632109', 'MNO1234567', 'MNO5050505050505050505', '556677889911', '555555555555555', 'COMP', 'Teaching', 'Employee', '2019-10-06', NULL),
(6, 'Sanika Bagal', 'sanika@gmail.com', '3652147890', 'PQR1234567', 'PQR6060606060606060606', '667788991122', '666666666666666', 'COMP', 'Non Teaching', 'Employee', '2019-10-07', NULL),
(7, 'Rutuja Wagh', 'rutuja@gmail.com', '7896541230', 'STU1234567', 'STU7070707070707070707', '563214569875', '777777777777777', 'IT', 'Non Teaching', 'Employee', '2019-10-08', NULL),
(8, 'Kashish Raj', 'Kashish@gmail.com', '1234569852', 'HBG1234567', 'HGT8080808808080808080', '222266668899', '586974563215987', 'IT', 'Non Teaching', 'Employee', '2019-10-09', NULL),
(9, 'Jarjish Popo', 'popo@gmail.coom', '5263478930', 'HJN1234567', 'HNJ9090909090909099090', '959587456215', '526341526341526', 'IT', 'Non Teaching', 'Employee', '2019-10-10', NULL),
(10, 'Umesh Nehete', 'umesh@gmail.com', '5263789520', 'KJH1234567', 'KKI1234567896541230478', '523687952012', '789654123025896', 'DS', 'Teaching', 'Employee', '2019-10-11', NULL),
(11, 'Sakshi Rajshirke', 'sakshe@gmail.com', '8569856985', 'HJK1234567', 'DVG1234567891234567896', '456321789321', '526352634152638', 'AIML', 'Teaching', 'Employee', '2019-10-12', NULL),
(12, 'Alok Patil', 'alok@gmial.com', '1236547890', 'BUE1234567', 'HBN1234567896523412536', '666665545235', '123658963258963', 'COMP', 'Non Teaching', 'Employee', '2019-10-13', NULL),
(13, 'Rutul More', 'rutul@gmail.com', '5263748596', 'UJH1234567', 'KNP1234567890236526395', '123654789222', '526698745632154', 'MECH', 'Non Teaching', 'Employee', '2019-10-14', NULL),
(14, 'Pratik Rane', 'pratik@gmail.com', '5214639875', 'KLO1234567', 'ADE5369874563210236589', '123658963254', '123456789325685', 'MECH', 'Teaching', 'Employee', '2019-10-15', NULL),
(15, 'Rohit Nikumbh', 'rohit@gmail.com', '2536587412', 'AOC1234567', 'KLA1236987563259863256', '563256325632', '789654123654789', 'CIVIL', 'Non Teaching', 'Employee', '2019-10-16', NULL),
(5252, 'SA', 'sa@gmail.com', '1111111111', '111', '111', '111', '111', '1111', '1111', 'SA', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resetpass`
--

CREATE TABLE `resetpass` (
  `id` int(10) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `otp` varchar(64) DEFAULT NULL,
  `otp_expire` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resetpass`
--

INSERT INTO `resetpass` (`id`, `emp_id`, `otp`, `otp_expire`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 5252, NULL, NULL),
(17, 4, NULL, NULL),
(18, 5, NULL, NULL),
(19, 6, NULL, NULL),
(20, 7, NULL, NULL),
(21, 8, NULL, NULL),
(22, 9, NULL, NULL),
(23, 10, NULL, NULL),
(24, 11, NULL, NULL),
(25, 12, NULL, NULL),
(26, 13, NULL, NULL),
(27, 14, NULL, NULL),
(28, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `basic_salary` int(100) NOT NULL,
  `agp` int(100) NOT NULL,
  `days_worked` int(100) NOT NULL,
  `actual_basic` int(100) NOT NULL,
  `actual_agp` int(100) NOT NULL,
  `basic_add_agp` int(100) NOT NULL,
  `da` int(100) NOT NULL,
  `hra` int(100) NOT NULL,
  `cla` int(100) NOT NULL,
  `ta` int(100) NOT NULL,
  `exam_rem` int(100) NOT NULL,
  `spl_pay` int(100) NOT NULL,
  `gross` int(100) NOT NULL,
  `pf` int(100) NOT NULL,
  `pt` int(100) NOT NULL,
  `i_tax` int(100) NOT NULL,
  `add_ded` int(100) NOT NULL,
  `net_salary` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `emp_id`, `name`, `designation`, `basic_salary`, `agp`, `days_worked`, `actual_basic`, `actual_agp`, `basic_add_agp`, `da`, `hra`, `cla`, `ta`, `exam_rem`, `spl_pay`, `gross`, `pf`, `pt`, `i_tax`, `add_ded`, `net_salary`, `date`) VALUES
(174, 3, 'Harshal Aponkar', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 0, 1620, 0, 5, '2023-10-01'),
(175, 5, 'Samreen Chowlkar', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-10-01'),
(176, 7, 'Rutuja Wagh', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-10-01'),
(177, 8, 'Kashish Raj', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-10-01'),
(178, 9, 'Jarjish Popo', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-10-01'),
(179, 12, 'Alok Patil', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-10-01'),
(180, 14, 'Pratik Rane', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-10-01'),
(181, 11, 'Sakshe Rajshirke', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-10-01'),
(184, 7, 'Rutuja Wagh', 'Non Teaching 5', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-06-01'),
(185, 1, 'Ayush Rajput', 'Teaching', 5, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 3000, '2023-10-01'),
(186, 2, 'Jayesh Deshmukh', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-10-01'),
(187, 1, 'Ayush Rajput', 'Teaching', 5, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 3000, '2023-09-01'),
(188, 2, 'Jayesh Deshmukh', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-09-01'),
(189, 3, 'Harshal Aponkar', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 5, '2023-09-01'),
(190, 5, 'Samreen Chowlkar', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-09-01'),
(191, 7, 'Rutuja Wagh', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-09-01'),
(192, 8, 'Kashish Raj', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-09-01'),
(193, 9, 'Jarjish Popo', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-09-01'),
(194, 12, 'Alok Patil', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-09-01'),
(195, 14, 'Pratik Rane', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-09-01'),
(196, 1, 'Ayush Rajput', 'Teaching', 5, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 3000, '2023-08-01'),
(197, 2, 'Jayesh Deshmukh', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-08-01'),
(198, 3, 'Harshal Aponkar', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 5, '2023-08-01'),
(199, 5, 'Samreen Chowlkar', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-08-01'),
(200, 7, 'Rutuja Wagh', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-08-01'),
(201, 8, 'Kashish Raj', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-08-01'),
(202, 9, 'Jarjish Popo', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-08-01'),
(203, 12, 'Alok Patil', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-08-01'),
(204, 14, 'Pratik Rane', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-08-01'),
(205, 1, 'Ayush Rajput', 'Teaching', 5, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 3000, '2023-07-01'),
(206, 2, 'Jayesh Deshmukh', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-07-01'),
(207, 3, 'Harshal Aponkar', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 0, 1620, 0, 5, '2023-07-01'),
(208, 5, 'Samreen Chowlkar', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-07-01'),
(209, 7, 'Rutuja Wagh', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-07-01'),
(210, 8, 'Kashish Raj', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-07-01'),
(211, 9, 'Jarjish Popo', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-07-01'),
(212, 12, 'Alok Patil', 'Non Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-07-01'),
(213, 14, 'Pratik Rane', 'Teaching', 1000, 6000, 29, 935, 5613, 6548, 10739, 1964, 300, 2400, 0, 0, 21951, 1800, 200, 1620, 0, 18331, '2023-07-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `resetpass`
--
ALTER TABLE `resetpass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resetpass`
--
ALTER TABLE `resetpass`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
