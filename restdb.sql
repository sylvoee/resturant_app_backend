-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 04:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `id` int(12) NOT NULL,
  `username` varchar(27) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(90) NOT NULL,
  `time` datetime(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`id`, `username`, `name`, `password`, `time`) VALUES
(1, 'JamesMuller', 'James Muller', '$2y$10$730lJkScop/ukklE6IH2.ePshr/ue11ZN6mKwcHtRuLhF4WY9LmyG', '2024-03-25 11:10:36.0000'),
(2, 'JamesMuller', 'James Muller', '$2y$10$0h/1w8CqVeWeili6/kLVNuYiH4/tp8dC5Wf40DGmGwikr7PRoZRNO', '2024-04-01 23:37:39.0000'),
(3, 'JamesMuller', 'James Muller', '$2y$10$HM9w9YaNUcCd2/c0sf1.w.CLlAew6nSh1kBEe6ZXkTR/x2s91K5SW', '2024-04-01 23:41:42.0000'),
(4, 'JamesMuller33', 'Ben Isaq', '$2y$10$YagZWcaxaSN4vjZH8LMkZeKjsOPe3eaYOHM2nNT2ywmGvRcV5iWSy', '2024-04-01 23:42:45.0000'),
(5, 'James33', 'Ben Isaq', '$2y$10$H1RFvjdTcKk4yMPhyLzFhO8Mnlj5Tesw4GN9IPQoxfPZoa4m2s.vu', '2024-04-01 23:43:43.0000'),
(6, 'James33', 'Ben Isaq', '$2y$10$BkRB.V0rb0vwBt7b/8VKA.04Mp20XBxMU3I5juPIAvZ40bA6VuWEa', '2024-04-01 23:45:47.0000'),
(7, 'James4444', 'Ben Isaq', '$2y$10$nIPMEBsBWb6hI0UXPwjWYupL.CckR5GLpcQI6vIot31qfC3k5jU9W', '2024-04-01 23:46:08.0000'),
(8, 'James4444', 'Ben Isaq', '$2y$10$tohp6Hx39qzNHz0g/kwYauoB04XK6wyd0ftF7ld4FduTf/YDTnDBe', '2024-04-01 23:47:01.0000'),
(9, 'markerson23', 'Ben Isaq', '$2y$10$y6bNAITWgc19njDEDwdRyunjgTBCUgyjHNKrqDcIr9CeBVCxNBq1i', '2024-04-01 23:47:44.0000'),
(10, 'markerson23', 'Ben Isaq', '$2y$10$IJ86gUrNILRmm1UtJ/z9Oe.4EHzsXa0x49b1aOnNynLZ2pb.tZW2a', '2024-04-01 23:49:48.0000'),
(11, 'markerson23', 'Ben Isaq', '$2y$10$QQkCcdpRijdD6mKGLyZ2jOs1SH7RndGilibbx0uJPtySiPDmWoG3y', '2024-04-01 23:50:23.0000'),
(12, 'markerson23', 'Ben Isaq', '$2y$10$.FvDNIAQL/LFFe9XnChDAOuVrEkLKCbc3jGjqS2KQ0BQeRrtStNJC', '2024-04-01 23:50:39.0000'),
(13, 'markerson23', 'Ben Isaq', '$2y$10$Y9i01DnDrdMHlnxoy.eKWeBmi5E6DTy4YAmLbLT6/Abm2bUygLsFa', '2024-04-01 23:50:47.0000'),
(14, 'markerson23', 'Ben Isaq', '$2y$10$tYsF3MOO8V08bz.cjxaGreazVl3UZreABkuSY/IGcgQpM7w7kfy.C', '2024-04-01 23:51:43.0000'),
(15, 'markerson', 'Ben Isaq', '$2y$10$.kmXUXyqh6uLNiQmCzJcYOCHNfCGP7E4wejBTffo3Dn1gogyoaEk2', '2024-04-01 23:52:14.0000'),
(16, 'markerson', 'Ben Isaq', '$2y$10$rbe1es4iqAcFK.TBRMhEQeWy2a6zS0bBIZ4XPe2NCPdPa5yMpZBVW', '2024-04-01 23:53:27.0000'),
(17, 'markerson335', 'Ben Isaq', '$2y$10$LVqUkI.Kl3eOqxBKuZkl4.4jMQjbzYp1Ij5GG0.L1Hh2SD9qmaAv.', '2024-04-01 23:53:45.0000'),
(18, 'markerson335', 'Ben Isaq', '$2y$10$cb9nY3HfCGtPHpGpq7nUZeNEAdtq26SQjtNfRvmOsUsqmlgXqY1Y.', '2024-04-02 00:01:51.0000'),
(19, 'markerson33hhh5', 'Ben Isaq', '$2y$10$dbXLeKx2Dz4/nE6r20p1pOX8cdQuq.vdFcKLIyFU9R1MoiCgGgoXy', '2024-04-02 00:02:17.0000'),
(20, 'markerson33hhh5', 'Ben Isaq', '$2y$10$MWk1FbQNo8LvEcO5RebyFuhkeoLFifs5gzfN1vVgA7kJBZ1WpaOMi', '2024-04-02 00:03:36.0000'),
(21, 'markerson33h5', 'Ben Isaq', '$2y$10$t4FNJT2l4vhdPupAA2YsQ.aG3uLsV61xZ0f1J4Ud1/vyHiJqxTaji', '2024-04-02 00:04:06.0000'),
(22, 'markerson33h5', 'Ben Isaq', '$2y$10$CTxW0CpUkunxVkbRZvCj/OnGIZryEd25HEkHsn2sCYdMnme8zlZbW', '2024-04-02 10:32:20.0000'),
(23, 'godad3235', 'Ben Isaq', '$2y$10$/x5aLlab7PB1vCfvr4M9luzN8rUDP/7SGfXF/j/tTL2/qtFAtscEy', '2024-04-02 10:33:09.0000'),
(24, 'godad323r5', 'Ben Isaq', '$2y$10$mAwFRnVmQHihr6.yvDoMK.uMZZvHWATJMLMSFGCeUERLemN6cINr2', '2024-04-02 10:34:16.0000'),
(25, 'godaddd23r5', 'Ben Isaq', '$2y$10$jzoRe8RxPIUnswrmFuZX8ehkC3hTkr6YLRFIRAZ0t/0egKMEXcMKG', '2024-04-02 10:35:43.0000'),
(26, 'godaddde23r5', 'Ben Isaq', '$2y$10$/5k2z30Byeqna8RrYtYgY.R0GVnIL6bh674peB4qjlWUsBeS8Lm/.', '2024-04-02 10:36:40.0000'),
(27, 'godaddde23r5', 'Ben Isaq', '$2y$10$B7ac3g3I6VtdH6lf5Az/8eB5n66aBd8kBRX/F/ULAwbc7zTFdouzW', '2024-04-02 10:42:08.0000'),
(28, 'godadd23r5', 'Ben Isaq', '$2y$10$tfkZDMalqy/0j2T8cmi9IuXzVWSk5jUSom3JIEup.o.F1mks4.BxG', '2024-04-02 10:42:24.0000'),
(29, 'godad343r5', 'Ben Isaq', '$2y$10$u0zmS6gqnH5ykRIGMdM6LO7Rqv/fevEhBf5Z1xFy/QFPl.h77L7Iy', '2024-04-02 10:43:18.0000'),
(30, 'godadhgdjh343r5', 'Ben Isaq', '$2y$10$YKlO8iOo3zD88G1ST0eI7eoZ8Nbj7cjNnjwHXucxEJLbvEAHnX8WG', '2024-04-02 10:43:49.0000'),
(31, 'godadhgdjh33r5', 'Ben Isaq', '$2y$10$4l.PQmROqQXVlqi2VNc2Auyo8aYSoMmsO5IE4dOwCxRir.eMWqLFG', '2024-04-02 10:48:27.0000'),
(32, 'godadhgdjh3r5', 'Ben Isaq', '$2y$10$3DlzPfjLPW6FaGxLkFpxa.Rj51mhK/TlBnCLIWtwMd8MZiem2vAbu', '2024-04-02 10:49:25.0000'),
(33, 'godadhgdjhr5', 'Ben Isaq', '$2y$10$jrEfe4nfjk7dlAj/BP7Ap.WDGr3pEDWG9/xq0E3DJ.yNX1IJeZdXy', '2024-04-02 10:51:16.0000'),
(34, 'godadhgdjr5', 'Ben Isaq', '$2y$10$JeSnRlMPBoV9pm0.HIWJ.u5DwGhWhY/Yj6dK51R4UTej6iOjy9UpO', '2024-04-02 10:51:54.0000'),
(35, 'godadhfgdjr5', 'Ben Isaq', '$2y$10$Wl/FxscFl5HQMTR5xN7ZhO6OQq35l45jYF1Jo0Q4BZzUQh0quZGFm', '2024-04-02 10:53:11.0000'),
(36, 'godadhfgdjr5', 'Ben Isaq', '$2y$10$vXkp7qrEov5Ir3qRDYMmNuLGdHyzEnVHQm2fHt56eH90wVNhtd7hW', '2024-04-02 10:54:21.0000'),
(37, 'godadhfgdjrf5', 'Ben Isaq', '$2y$10$ihuJCuyITABkvx9sfbjMieMvGLSRIgvN/Tj2pG64z9wMmmn5fmA6W', '2024-04-02 10:58:34.0000'),
(38, 'godadhfgdjrf5', 'Ben Isaq', '$2y$10$n6I5hVQ1J8ers4uHmLAzBeI35NXaX6GHe9GUdRJTM1OoaLAknBila', '2024-04-02 10:59:27.0000'),
(39, 'godaddy1234', 'Ben Isaq', '$2y$10$3F5m/I6hUni3aXC/yYzWauthffDsZ8YiT19wIeZ45IjCpdVAmeiMa', '2024-04-02 11:00:05.0000'),
(40, 'godaddye343234', 'Ben Isaq', '$2y$10$j6xV1zdBEo3arvDhM.pLK.zUehbCtVszJplHi.MYqp5eGl92qI.Nq', '2024-04-02 11:00:48.0000'),
(41, 'godaddye34fhfh3234', 'Ben Isaq', '$2y$10$kLjWO.UGWxWlI6BbCB5ireUjiUiHGKYhrFPtZXJJeFZn31jYUFAvK', '2024-04-02 11:03:16.0000'),
(42, 'godaddye34fhfhsadfdfdf3234', 'Ben Isaq', '$2y$10$y781TJwyld838jUf2m5U6.7xjSyI.at.3Xd/ecyqZfugAGbuNoESu', '2024-04-02 11:03:44.0000'),
(43, 'godaddyadfdfdf3234', 'Ben Isaq', '$2y$10$90o2oM9BRC0NFp7A4Orw9.w6Z3KB8.KBlM49wSE24s1vtZMjrO0Vq', '2024-04-02 11:04:30.0000'),
(44, 'godaddyadff3234', 'Ben Isaq', '$2y$10$d/kEWVl0Om1K/HlLcYMzrOIqgiTDwqt4iAbVDN5oqesyI7OnzN1dG', '2024-04-02 11:05:35.0000'),
(45, 'godaddyadff3234', 'Ben Isaq', '$2y$10$PPprZa3aJOXPZyPGqDznhe2HW5TbyLk4YigZd7PICmD/F9K4YNXQO', '2024-04-02 11:06:48.0000'),
(46, 'godaddyadff34', 'Ben Isaq', '$2y$10$uWn46yA4jzmRjKNZCop.yuNT5D8Tq2wRuC7OOfVuSw8GW4TfnygX2', '2024-04-02 11:07:05.0000'),
(47, 'godaddyadff34f', 'Ben Isaq', '$2y$10$O2rCK4mw/tMuSCaLXcaR7.OKiNxOrTHi6.iqcLFbSZDoKsGjEdw1y', '2024-04-02 11:13:52.0000'),
(48, 'gomeeis', 'Wanke Fills', '$2y$10$mJvKK5zUx90oOPDgBo4R3u/4n0qSPt7FXVIqPEzABITFYk5s3iiF.', '2024-04-02 13:26:51.0000');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `id` int(14) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `total_cost` float NOT NULL,
  `address` varchar(100) NOT NULL,
  `time` datetime(1) NOT NULL,
  `employee` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`id`, `customer_name`, `description`, `total_cost`, `address`, `time`, `employee`) VALUES
(2, 'Bricky Hail', 'Some Roasted beef pie', 13.6, '12', '2024-04-01 23:06:05.0', 'James Muller'),
(3, 'Bricky Hail', 'Some Roasted beef pie', 13.6, '12', '2024-04-01 23:08:27.0', 'James Muller'),
(4, 'Benson Rose', 'Some rice.....', 13.6, 'plot 23 Beford Road', '2024-04-01 23:08:30.0', 'James Muller'),
(5, 'Bricky Hail', 'Some Roasted beef pie', 13.6, '12 James Park Avenue', '2024-04-01 23:20:23.0', 'James Muller'),
(6, 'Bricky Hail', 'Some Roasted beef pie', 13.6, '12 James Park Avenue', '2024-04-01 23:20:37.0', 'James Muller');

-- --------------------------------------------------------

--
-- Table structure for table `stock_table`
--

CREATE TABLE `stock_table` (
  `id` int(15) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee` varchar(50) NOT NULL,
  `category` varchar(60) NOT NULL,
  `time` datetime(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_table`
--

INSERT INTO `stock_table` (`id`, `item_name`, `price`, `description`, `employee`, `category`, `time`) VALUES
(1, 'fried rice', 5, 'Made with tomato and Irish melon', 'James Muller', '', '2024-03-25 21:19:59.00'),
(2, 'fried rice', 5, 'Made with tomato and Irish melon', 'James Muller', '', '2024-03-25 21:48:42.00'),
(8, 'juice', 3.2, 'Made with bread flour ....', 'James Muller', 'drinks', '2024-03-25 22:35:15.00'),
(14, 'Roasted Potato', 2, 'Made with tomato and Irish potato', 'James Muller', '', '2024-03-29 22:21:11.00'),
(16, 'Fish roll', 2.3, 'Made from fish', 'James Muller', '', '2024-03-29 23:12:52.00'),
(17, 'Burger', 2.3, 'Made from fish', '', 'food', '2024-04-02 13:42:45.00'),
(18, 'Burger', 2.3, 'Made from fish', '1', 'snacks', '2024-04-02 13:45:24.00'),
(19, 'Burger', 2.3, 'Made from fish', 'Wanke Fills', 'snacks', '2024-04-02 13:49:02.00'),
(20, 'Rice', 2.3, 'Made from fish', 'Wanke Fills', 'snacks', '2024-04-02 14:28:57.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_table`
--
ALTER TABLE `stock_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_table`
--
ALTER TABLE `employee_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_table`
--
ALTER TABLE `stock_table`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
