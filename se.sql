-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 06:38 PM
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
-- Database: `se`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_price`
--

CREATE TABLE `order_price` (
  `price_id` int(60) NOT NULL,
  `product_id` int(60) NOT NULL,
  `size` varchar(60) NOT NULL,
  `price` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_price`
--

INSERT INTO `order_price` (`price_id`, `product_id`, `size`, `price`) VALUES
(1, 35, 'Medium', 38),
(2, 36, 'Medium', 38),
(3, 37, 'Medium', 38),
(4, 38, 'Medium', 38),
(5, 39, 'Medium', 38),
(6, 40, 'Medium', 38),
(7, 41, 'Medium', 38),
(8, 42, 'Medium', 38),
(9, 43, 'Medium', 38),
(10, 44, 'Medium', 45),
(11, 45, 'Medium', 45),
(12, 46, 'Medium', 45),
(13, 47, 'Medium', 45),
(14, 48, 'Medium', 45),
(15, 49, 'Medium', 45),
(16, 50, 'Medium', 45),
(17, 51, 'Medium', 45),
(18, 52, 'Medium', 35),
(19, 53, 'Medium', 35),
(20, 54, 'Medium', 35),
(21, 55, 'Medium', 35),
(22, 56, 'Medium', 35),
(23, 57, 'Medium', 35),
(24, 58, 'Medium', 35),
(25, 59, 'Medium', 45),
(26, 60, 'Medium', 45),
(27, 61, 'Medium', 45),
(28, 62, 'Medium', 45),
(29, 63, 'Medium', 45),
(30, 64, 'Medium', 45),
(31, 65, 'Medium', 45),
(32, 66, 'Medium', 45),
(33, 67, 'Medium', 55),
(34, 68, 'Medium', 55),
(35, 69, 'Medium', 55),
(36, 70, 'Large', 88),
(37, 71, 'Large', 88),
(38, 72, 'Large', 88),
(39, 73, 'Large', 88),
(40, 74, 'Large', 88),
(41, 75, 'Large', 88),
(42, 76, 'Large', 88),
(43, 77, 'Large', 88),
(44, 78, 'Large', 88),
(45, 79, 'Large', 88),
(46, 35, 'Large', 48),
(47, 36, 'Large', 48),
(48, 37, 'Large', 48),
(49, 38, 'Large', 48),
(50, 39, 'Large', 48),
(51, 40, 'Large', 48),
(52, 41, 'Large', 48),
(53, 42, 'Large', 48),
(54, 43, 'Large', 48),
(55, 44, 'Large', 55),
(56, 45, 'Large', 55),
(57, 46, 'Large', 55),
(58, 47, 'Large', 55),
(59, 48, 'Large', 55),
(60, 49, 'Large', 55),
(61, 50, 'Large', 55),
(62, 51, 'Large', 55),
(63, 52, 'Large', 45),
(64, 53, 'Large', 45),
(65, 54, 'Large', 45),
(66, 55, 'Large', 45),
(67, 56, 'Large', 45),
(68, 57, 'Large', 45),
(69, 58, 'Large', 45),
(70, 59, 'Large', 55),
(71, 60, 'Large', 55),
(72, 61, 'Large', 55),
(73, 62, 'Large', 55),
(74, 63, 'Large', 55),
(75, 64, 'Large', 55),
(76, 65, 'Large', 55),
(77, 66, 'Large', 55),
(78, 67, 'Large', 65),
(79, 68, 'Large', 65),
(80, 69, 'Large', 65);

-- --------------------------------------------------------

--
-- Table structure for table `order_slip`
--

CREATE TABLE `order_slip` (
  `order_id` int(100) NOT NULL,
  `user_id` int(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `status` varchar(60) DEFAULT NULL,
  `product_id` int(60) NOT NULL,
  `price_id` int(60) NOT NULL,
  `Quantity` int(60) NOT NULL,
  `payment` varchar(60) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_slip`
--

INSERT INTO `order_slip` (`order_id`, `user_id`, `email`, `username`, `status`, `product_id`, `price_id`, `Quantity`, `payment`, `date`) VALUES
(44, 13, 'glenn@gmail.com', 'glenn', '3', 36, 47, 15, '332251712_1920255624987101_825217884079271646_n.jpg', '2023-07-26'),
(45, 13, 'glenn@gmail.com', 'glenn', '3', 37, 3, 25, '332251712_1920255624987101_825217884079271646_n.jpg', '2023-07-26'),
(47, 13, 'glenn@gmail.com', 'glenn', '3', 40, 51, 12, '3e0bd3d64e7cce9dadbeefc64f6db558.jpg', '2023-07-26'),
(48, 13, 'glenn@gmail.com', 'glenn', '3', 53, 19, 23, '305254383_5872530452777580_2762444561240814105_n.jpg', '2023-07-26'),
(49, 13, 'glenn@gmail.com', 'glenn', '3', 36, 47, 12, '331467979_3445643898983238_6747380703550708180_n.png', '2023-07-26'),
(50, 13, 'glenn@gmail.com', 'glenn', '3', 37, 48, 12, 'Choice.png', '2023-07-26'),
(51, 13, 'glenn@gmail.com', 'glenn', '3', 61, 27, 12, '12.png', '2023-07-26'),
(52, 13, 'glenn@gmail.com', 'glenn', '3', 53, 64, 37, '12.png', '2023-07-26'),
(53, 13, 'glenn@gmail.com', 'glenn', '4', 57, 23, 28, '320688853_2120842538111490_4577826102244144127_n.jpg', '2023-07-27'),
(54, 13, 'glenn@gmail.com', 'glenn', '3', 36, 47, 69, 'Choice.png', '2023-07-27'),
(55, 13, 'glenn@gmail.com', 'glenn', '3', 37, 48, 5, 'Cash', '2023-07-29'),
(56, 13, 'glenn@gmail.com', 'glenn', '3', 36, 2, 3, 'Cash', '2023-07-29'),
(57, 13, 'glenn@gmail.com', 'glenn', '3', 37, 48, 1, 'image_2023-07-29_184217208.png', '2023-07-29'),
(58, 13, 'glenn@gmail.com', 'glenn', '3', 41, 52, 100, 'Cash', '2023-07-29'),
(60, 13, 'glenn@gmail.com', 'glenn', '3', 36, 47, 20, 'Cash', '2023-08-01'),
(61, 13, 'glenn@gmail.com', 'glenn', '1', 35, 46, 103, 'Cash', '2023-08-02'),
(62, 13, 'glenn@gmail.com', 'glenn', '1', 35, 1, 97, 'Cash', '2023-08-02'),
(63, 13, 'glenn@gmail.com', 'glenn', '1', 41, 52, 98, 'Cash', '2023-08-02'),
(64, 13, 'glenn@gmail.com', 'glenn', '1', 54, 20, 50, 'Cash', '2023-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(60) NOT NULL,
  `product` varchar(60) NOT NULL,
  `poster` varchar(60) NOT NULL,
  `category` varchar(60) NOT NULL,
  `hidden` tinyint(4) NOT NULL COMMENT '0 = show 1 = hidden'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product`, `poster`, `category`, `hidden`) VALUES
(35, 'Wintermelon', 'Wintermelon.png', 'Milk Tea', 1),
(36, 'Dark Chocolate', 'Dark-Chocolate.png', 'Milk Tea', 0),
(37, 'Okinawa', 'Okinawa.png', 'Milk Tea', 0),
(38, 'Salted Caramel', 'Salted-Caramel.png', 'Milk Tea', 0),
(39, 'Taro', 'Taro.png', 'Milk Tea', 0),
(40, 'Red Velvet', 'Red-Velvet.png', 'Milk Tea', 0),
(41, 'Matcha', 'Matcha.png', 'Milk Tea', 0),
(42, 'Cookies and Cream', 'Cookies-and-Cream.png', 'Milk Tea', 0),
(43, 'Choco Strawberry', 'Choco-Strawberry.png', 'Milk Tea', 0),
(44, 'Caramel Macchiato', 'Caramel-Macchiato.png', 'Cold Brew', 0),
(45, 'Salted Caramel Latte', 'Salted-Caramel-Latte.png', 'Cold Brew', 0),
(46, 'Spanish Latte', 'Spanish-Latte.png', 'Cold Brew', 0),
(47, 'Mocha Latte', 'Mocha-Latte.png', 'Cold Brew', 0),
(48, 'French Vanilla', 'French-Vanilla.png', 'Cold Brew', 0),
(49, 'White Mocha', 'White-Mocha.png', 'Cold Brew', 0),
(50, 'Iced Chocolate', 'Iced-Chocolate.png', 'Cold Brew', 0),
(51, 'Iced Americano', 'Iced-Amerikano.png', 'Cold Brew', 0),
(52, 'Strawberry', 'Strawberry.png', 'Fruit Tea', 1),
(53, 'Blueberry', 'Blueberry.png', 'Fruit Tea', 0),
(54, 'Lemon', 'Lemon.png', 'Fruit Tea', 0),
(55, 'Green Apple', 'Green-Apple.png', 'Fruit Tea', 0),
(56, 'Mango', 'Mango.png', 'Fruit Tea', 0),
(57, 'Passion Fruit', 'Passion-Fruit.png', 'Fruit Tea', 0),
(58, 'Kiwi', 'Kiwi.png', 'Fruit Tea', 0),
(59, 'Java Chip', 'Java-Chip.png', 'Frappe', 0),
(60, 'Dark Mocha', 'Dark-Mocha.png', 'Frappe', 0),
(61, 'Dark Caramel', 'Dark-Caramel.png', 'Frappe', 0),
(62, 'Macha Frappe', 'Macha-Frappe.png', 'Frappe', 0),
(63, 'Dark Choco Berry', 'Dark-Choco-Berry.png', 'Frappe', 0),
(64, 'Triple Chocolate', 'Triple-Chocolate.png', 'Frappe', 0),
(65, 'Strawberries and Cream', 'Strawberries-and-Cream.png', 'Frappe', 0),
(66, 'Blueberries and Cream', 'Blueberries-and-Cream.png', 'Frappe', 0),
(67, 'Strawberries and Milk', 'Strawberries-and-Milk.png', 'Milk Series', 0),
(68, 'Blueberries and Milk', 'Blueberries-and-Milk.png', 'Milk Series', 0),
(69, 'Mango and Milk', 'Mango-and-Milk.png', 'Milk Series', 0),
(70, 'Dark Choco Lava', 'Dark-Choco-Lava.png', 'Premium Frappe', 0),
(71, 'Red Velvet Cheese and Cream', 'Red-Velvet-Cheese-and-Cream.png', 'Premium Frappe', 0),
(72, 'KOPI Caramel', 'KOPI-Caramel.png', 'Premium Frappe', 0),
(73, 'Dark Forest', 'Dark-Forest.png', 'Premium Frappe', 0),
(74, 'Mango Cheesecake', 'Mango-Cheesecake.png', 'Premium Frappe', 0),
(75, 'Lava Cheesecake', 'Lava-Cheesecake.png', 'Premium Frappe', 0),
(76, 'Strawberry Cheesecake', 'Strawberry-Cheesecake.png', 'Premium Frappe', 0),
(77, 'Oreo Cheesecake', 'Oreo-Cheesecake.png', 'Premium Frappe', 0),
(78, 'White Choco Mocha', 'White-Choco-Mocha.png', 'Premium Frappe', 0),
(79, 'Dark Choco Cream Cheese', 'Dark-Choco-Cream-Cheese.png', 'Premium Frappe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(60) NOT NULL,
  `user_id` int(60) NOT NULL,
  `status` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(60) NOT NULL,
  `datein` date NOT NULL,
  `product_id` int(60) NOT NULL,
  `quantity` int(60) NOT NULL,
  `remaining` int(60) NOT NULL,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `datein`, `product_id`, `quantity`, `remaining`, `expiration_date`) VALUES
(106, '2023-07-25', 35, 100, 0, '2023-07-31'),
(107, '2023-07-26', 36, 100, 100, '2023-10-31'),
(108, '2023-07-27', 37, 100, 100, '2023-11-01'),
(109, '2023-07-28', 38, 100, 100, '2023-11-02'),
(110, '2023-07-29', 39, 100, 100, '2023-11-03'),
(111, '2023-07-30', 40, 100, 100, '2023-11-04'),
(112, '2023-07-31', 41, 100, 2, '2023-11-05'),
(113, '2023-08-01', 42, 100, 100, '2023-11-06'),
(114, '2023-08-02', 43, 100, 100, '2023-11-07'),
(115, '2023-08-03', 44, 100, 100, '2023-11-08'),
(116, '2023-08-04', 45, 100, 100, '2023-11-09'),
(117, '2023-08-05', 46, 100, 100, '2023-11-10'),
(118, '2023-08-06', 47, 100, 100, '2023-11-11'),
(119, '2023-08-07', 48, 100, 100, '2023-11-12'),
(120, '2023-08-08', 49, 100, 100, '2023-11-13'),
(121, '2023-08-09', 50, 100, 100, '2023-11-14'),
(122, '2023-08-10', 51, 100, 100, '2023-11-15'),
(123, '2023-08-11', 52, 100, 100, '2023-11-16'),
(124, '2023-08-12', 53, 100, 100, '2023-11-17'),
(125, '2023-08-13', 54, 100, 50, '2023-11-18'),
(126, '2023-08-14', 55, 100, 100, '2023-11-19'),
(127, '2023-08-15', 56, 100, 100, '2023-11-20'),
(128, '2023-08-16', 57, 100, 100, '2023-11-21'),
(129, '2023-08-17', 58, 100, 100, '2023-11-22'),
(130, '2023-08-18', 59, 100, 100, '2023-11-23'),
(131, '2023-08-19', 60, 100, 100, '2023-11-24'),
(132, '2023-08-20', 61, 100, 100, '2023-11-25'),
(133, '2023-08-21', 62, 100, 100, '2023-11-26'),
(134, '2023-08-22', 63, 100, 100, '2023-11-27'),
(135, '2023-08-23', 64, 100, 100, '2023-11-28'),
(136, '2023-08-24', 65, 100, 100, '2023-11-29'),
(137, '2023-08-25', 66, 100, 100, '2023-11-30'),
(138, '2023-08-26', 67, 100, 100, '2023-12-01'),
(139, '2023-08-27', 68, 100, 100, '2023-12-02'),
(140, '2023-08-28', 69, 100, 100, '2023-12-03'),
(141, '2023-08-29', 70, 100, 100, '2023-12-04'),
(142, '2023-08-30', 71, 100, 100, '2023-12-05'),
(143, '2023-08-31', 72, 100, 100, '2023-12-06'),
(144, '2023-09-01', 73, 100, 100, '2023-12-07'),
(145, '2023-09-02', 74, 100, 100, '2023-12-08'),
(146, '2023-09-03', 75, 100, 100, '2023-12-09'),
(147, '2023-09-04', 76, 100, 100, '2023-12-10'),
(148, '2023-09-05', 77, 100, 100, '2023-12-11'),
(149, '2023-09-06', 78, 100, 100, '2023-12-12'),
(150, '2023-09-07', 79, 100, 100, '2023-12-13'),
(151, '2023-08-01', 35, 100, 0, '2023-10-01'),
(152, '2023-08-02', 35, 100, 100, '2023-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `avatar` varchar(60) DEFAULT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `role` varchar(60) NOT NULL,
  `user_status` tinyint(1) NOT NULL COMMENT 'if 0 then user inactive when 1 user is active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `avatar`, `firstName`, `lastName`, `username`, `password`, `email`, `role`, `user_status`) VALUES
(3, 'aizy.jfif', 'Aizilyn', 'Capillanes', 'aizy', 'YWl6eQ==', 'aizy@yahoo.com', 'Client', 0),
(4, 'claire.gif', 'Claire', 'Salazar', 'claire', 'Y2xhaXJl', 'claire@gmail.com', 'Client', 0),
(9, 'admin.jpg', 'Admin', 'Administrator', 'admin', 'YWRtaW4=', 'admin@yahoo.com', 'Admin', 0),
(13, 'glenn.jpg', 'Glenn Christian', 'Terrible', 'glenn', 'Z2xlbm4=', 'glenn@gmail.com', 'Client', 0),
(41, NULL, 'John', 'Doe', 'john', 'am9obg==', 'john@gmail.com', 'Client', 0),
(43, NULL, 'Robby', 'Protomartir', 'robby', 'MTIz', 'robby@gmail.com', 'Client', 0),
(44, NULL, 'staff', 'staff', 'staff1', 'c3RhZmY=', 'staff@yahoo.com', 'Staff', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_price`
--
ALTER TABLE `order_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_slip`
--
ALTER TABLE `order_slip`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_price` (`price_id`),
  ADD KEY `order_product` (`product_id`),
  ADD KEY `order_user` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_price`
--
ALTER TABLE `order_price`
  MODIFY `price_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `order_slip`
--
ALTER TABLE `order_slip`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_price`
--
ALTER TABLE `order_price`
  ADD CONSTRAINT `order_price_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `order_slip`
--
ALTER TABLE `order_slip`
  ADD CONSTRAINT `order_price` FOREIGN KEY (`price_id`) REFERENCES `order_price` (`price_id`),
  ADD CONSTRAINT `order_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `order_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
