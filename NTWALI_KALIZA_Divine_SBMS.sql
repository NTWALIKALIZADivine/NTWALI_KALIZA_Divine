-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 02:28 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milk_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `message` varchar(90) DEFAULT NULL,
  `date_added` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `names` varchar(90) DEFAULT NULL,
  `address` varchar(90) DEFAULT NULL,
  `age` varchar(90) DEFAULT NULL,
  `gender` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `password` varchar(90) DEFAULT NULL,
  `role` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `distributionsales`
--

CREATE TABLE `distributionsales` (
  `id` int(11) NOT NULL,
  `client_name` varchar(90) DEFAULT NULL,
  `product` varchar(90) DEFAULT NULL,
  `quantity` varchar(90) DEFAULT NULL,
  `amount` varchar(90) DEFAULT NULL,
  `date_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distributionsales`
--

INSERT INTO `distributionsales` (`id`, `client_name`, `product`, `quantity`, `amount`, `date_`) VALUES
(1, 'mm', 'Milk', 'mm', 'mm', '2024-02-18 18:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `distributiondtock`
--

CREATE TABLE `distributiondtock` (
  `id` int(11) NOT NULL,
  `product_name` varchar(90) DEFAULT NULL,
  `product_id` varchar(90) DEFAULT NULL,
  `amount` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distributiondtock`
--

INSERT INTO `distributiondtock` (`id`, `product_name`, `product_id`, `amount`) VALUES
(1, 'Juice', '67', '78'),
(2, 'Milk', '90', '78'),
(3, 'Milk', '', ''),
(4, 'Milk', '90', '78');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `distributer_names` varchar(90) DEFAULT NULL,
  `message` varchar(90) DEFAULT NULL,
  `date_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `distributer_names`, `message`, `date_`) VALUES
(1, NULL, 'asas', '2024-02-18 18:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE `commands` (
  `id` int(11) NOT NULL,
  `distributer_names` varchar(90) DEFAULT NULL,
  `distributer_id` varchar(90) DEFAULT NULL,
  `date_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_` varchar(90) DEFAULT NULL,
  `amount` varchar(90) DEFAULT NULL,
  `confirm_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commands`
--

INSERT INTO `commands` (`id`, `distributer_names`, `distributer_id`, `date_`, `product_`, `amount`, `confirm_status`) VALUES
(1, 'rt', '1', '2024-02-18 19:38:11', 'Milk', '232', 0),
(2, 'bn', '1', '2024-02-18 19:39:27', 'Milk', '11', 0),
(3, 'w', '1', '2024-02-18 19:40:15', 'Milk', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `distributer_names` varchar(90) DEFAULT NULL,
  `distributer_id` varchar(90) DEFAULT NULL,
  `date_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(90) DEFAULT NULL,
  `boxes` varchar(90) DEFAULT NULL,
  `amount` varchar(90) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `boxes`, `amount`, `date_added`) VALUES
(1, 'qw', '21', '21', '2024-02-18 17:22:14'),
(2, 'skol', '111', '200', '2024-02-18 17:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `distributer_names` varchar(90) DEFAULT NULL,
  `distributer_id` varchar(90) DEFAULT NULL,
  `date_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_` varchar(90) DEFAULT NULL,
  `amount` varchar(90) DEFAULT NULL,
  `boxes` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `distributer_names`, `distributer_id`, `date_`, `product_`, `amount`, `boxes`) VALUES
(1, 'mike', '111', '2024-02-18 16:46:00', 'Milk', '20000', ''),
(2, 'mike', '11111', '2024-02-18 16:46:12', 'Milk', '20000', ''),
(3, 'mike', '1', '2024-02-18 16:53:50', 'Milk', '1111', '111');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `names` varchar(90) DEFAULT NULL,
  `address` varchar(90) DEFAULT NULL,
  `age` varchar(90) DEFAULT NULL,
  `gender` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `password` varchar(90) DEFAULT NULL,
  `role` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `names`, `address`, `age`, `gender`, `email`, `password`, `role`) VALUES
(1, 'setString', 'setString', '56', 'Male', 'setString', 'setString', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributionsales`
--
ALTER TABLE `distributionsales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributiondtock`
--
ALTER TABLE `distributiondtock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distributionsales`
--
ALTER TABLE `distributionsales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `distributiondtock`
--
ALTER TABLE `distributiondtock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;