-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 07:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tts9to12_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `allemp`
--

CREATE TABLE `allemp` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ename` varchar(200) NOT NULL,
  `eaddress` varchar(200) NOT NULL,
  `edesg` varchar(200) NOT NULL,
  `esal` int(200) NOT NULL,
  `dept_no` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allemp`
--

INSERT INTO `allemp` (`user_id`, `ename`, `eaddress`, `edesg`, `esal`, `dept_no`) VALUES
(1, 'ram', 'kolkata', 'HR', 18000, 101),
(2, 'rahim', 'kolkata', 'CEO', 95000, 102),
(3, 'karim', 'asam', 'Developer', 45000, 103),
(4, 'ayan', 'asam', 'Developer', 45000, 103),
(5, 'arindam', 'dellhi', 'Developer', 45000, 103),
(6, 'subha', 'noida', 'Developer', 45000, 103),
(7, 'bittu', 'mumbai', 'Web designer', 30000, 104),
(8, 'debu', 'mumbai', 'Web designer', 30000, 104),
(9, 'suvendu', 'pune', 'Sweeper', 15000, 105),
(10, 'subrata', 'pune', 'Sweeper', 15000, 105),
(11, 'santanu', 'chennai', 'Telecaller', 17000, 106);

-- --------------------------------------------------------

--
-- Table structure for table `bookdata`
--

CREATE TABLE `bookdata` (
  `Bid` int(200) NOT NULL,
  `Btitle` varchar(200) NOT NULL,
  `Copies` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookdata`
--

INSERT INTO `bookdata` (`Bid`, `Btitle`, `Copies`) VALUES
(101, 'c', 9);

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

CREATE TABLE `booking_table` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `person` varchar(100) NOT NULL,
  `f.items` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `extra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_table`
--

INSERT INTO `booking_table` (`id`, `name`, `address`, `email`, `password`, `person`, `f.items`, `place`, `image`, `extra`) VALUES
(1, 'Rajesh', 'Kolkata', 'rajesh@gmail.com', '', '1,2,3', 'undefined', 'AC', 'image/Pokmon Detective Pikachu HD Wallpaper Background Image.png', ''),
(2, '', '', '', '', '1,2,3', 'undefined', 'AC', 'image/', ''),
(3, 'ram', 'ram@gmail.com', 'rajesh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2,3', 'undefined', 'undefined', 'image/peakpx (3).jpg', ''),
(4, 'sam', 'ram@gmail.com', 'rajesh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2,3', 'undefined', 'undefined', 'image/peakpx (3).jpg', 'cola,icecream'),
(5, 'Rk', 'Kolkata', 'abc@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2,3', 'undefined', 'AC', 'image/1013808.jpg', 'cola,icecream'),
(6, 'mno', 'Kolkata', 'mno@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2,3', 'Fish fry', 'AC', 'image/peakpx (2).jpg', 'cola,icecream'),
(7, 'mno', 'Kolkata', 'mno@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2,3', 'Fish fry', 'AC', 'image/peakpx (2).jpg', 'cola,icecream'),
(8, 'mno', 'Kolkata', 'mno@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2,3', 'Fish fry', 'AC', 'image/peakpx (2).jpg', 'cola,icecream'),
(9, 'mm', 'Kolkata', 'mm@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2,3', 'Biryani', 'AC', 'image/peakpx (3).jpg', 'cola,icecream'),
(10, 'RR', 'Maharastra', 'rr@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1', 'Biryani', 'AC', 'image/peakpx.jpg', 'cola'),
(11, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '1,2,3', 'Fish fry', 'AC', 'image/peakpx (2).jpg', 'cola,icecream'),
(12, 'ggg', 'Maharastra', 'gg@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2,3', 'Mutton Curry', 'AC', 'image/Pokmon Detective Pikachu HD Wallpaper Background Image.png', 'cola,icecream,juice'),
(13, 'jhon', 'Kolkata', 'jhon@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1,2', 'Fish fry', 'AC', 'image/peakpx (4).jpg', 'icecream,juice');

-- --------------------------------------------------------

--
-- Table structure for table `bookissue`
--

CREATE TABLE `bookissue` (
  `Bid` int(200) NOT NULL,
  `Sid` int(200) NOT NULL,
  `Btittle` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookissue`
--

INSERT INTO `bookissue` (`Bid`, `Sid`, `Btittle`) VALUES
(101, 122, 'c');

--
-- Triggers `bookissue`
--
DELIMITER $$
CREATE TRIGGER `mno` AFTER INSERT ON `bookissue` FOR EACH ROW UPDATE bookdata
SET
Copies = Copies-1
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `roll` int(200) NOT NULL,
  `dept_name` varchar(200) DEFAULT NULL,
  `dept_no` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`roll`, `dept_name`, `dept_no`) VALUES
(0, 'IT', 122),
(1, 'IT', 123);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `uid` int(11) NOT NULL,
  `dept_name` varchar(200) DEFAULT NULL,
  `dept_address` varchar(200) DEFAULT NULL,
  `dept_head_name` varchar(200) DEFAULT NULL,
  `dept_no` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`uid`, `dept_name`, `dept_address`, `dept_head_name`, `dept_no`) VALUES
(1, 'HR', 'Mumbai', 'Raaj', 101),
(2, 'CEO', 'Delhi', 'Sumit', 102),
(3, 'Developer', 'Mumbai', 'Rohit', 103),
(4, 'Web designer', 'Pune', 'Raju', 104),
(5, 'Sweeper', 'Kolkata', 'Suresh', 105),
(6, 'Telecaller', 'Delhi', 'Rahul', 106),
(7, 'Back staff', 'Goa', 'Rishav', 107);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `user_id` int(11) NOT NULL,
  `ename` varchar(200) NOT NULL,
  `edesg` varchar(200) NOT NULL,
  `edddress` varchar(100) DEFAULT NULL,
  `esal` int(200) NOT NULL,
  `dept_no` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`user_id`, `ename`, `edesg`, `edddress`, `esal`, `dept_no`) VALUES
(1, 'ram', 'HR', 'kolkata', 18000, 101),
(2, 'ram', 'CEO', 'kolkata', 95000, 102),
(3, 'Sukumaram', 'Developer', 'asam', 45000, 103),
(4, 'ayan', 'Developer', 'asam', 45000, 103),
(5, 'arindam', 'Developer', 'dellhi', 45000, 103),
(6, 'subha', 'Developer', 'noida', 45000, 103),
(7, 'bittu', 'Web designer', 'mumbai', 30000, 104),
(8, 'debu', 'Web designer', 'mumbai', 30000, 104),
(9, 'suvendu', 'Sweeper', 'pune', 15000, 105),
(10, 'subrata', 'Sweeper', 'pune', 15000, 105),
(11, 'santanu', 'Telecaller', 'chennai', 17000, 106),
(12, 'Raju', 'Developer', 'Kolkata', 41000, 103),
(13, 'raja raja', 'Developer', 'Mumbai', 45000, 103),
(14, 'Kolkata', 'Developer', '', 45000, 103);

-- --------------------------------------------------------

--
-- Table structure for table `multi_image_import`
--

CREATE TABLE `multi_image_import` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `picsource` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multi_image_import`
--

INSERT INTO `multi_image_import` (`id`, `name`, `email`, `password`, `phone`, `picsource`) VALUES
(1, 'mno', 'mno@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'image/html-css-collage-concept-with-person.jpg'),
(2, 'Rk', 'abc@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'image/programming-background-collage (1).jpg/image/html-css-collage-concept-with-person.jpg'),
(3, 'ram', 'ram@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'image/img1.jpg / image/img2.jpg'),
(4, 'raju', 'raju@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'image/img1.jpg , image/img2.jpg'),
(5, 'Rajesh', 'rajesh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'image/img3.jpg , image/img4.jpg'),
(20, 'Rk', 'rk1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'image/img2.jpg , image/img1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `multi_user`
--

CREATE TABLE `multi_user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `user` varchar(100) NOT NULL,
  `auth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multi_user`
--

INSERT INTO `multi_user` (`id`, `name`, `email`, `password`, `phone`, `user`, `auth`) VALUES
(1, 'Admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 8001390655, 'admin', 0),
(2, 'Rajesh', 'rajesh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 6296155279, 'client', 0),
(3, 'abc', 'abc@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 9096155279, 'client', 0),
(5, 'Mno', 'mno@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 9096155279, 'client', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prent`
--

CREATE TABLE `prent` (
  `roll` int(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prent`
--

INSERT INTO `prent` (`roll`, `name`, `address`) VALUES
(0, 'Raj', 'Kolkata'),
(1, 'Raju', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `search_user`
--

CREATE TABLE `search_user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_user`
--

INSERT INTO `search_user` (`id`, `name`) VALUES
(1, 'ram'),
(2, 'raja'),
(3, 'raju'),
(4, 'rahul'),
(5, 'gopal'),
(6, 'isha'),
(7, 'abhi');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `roll` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`roll`, `name`, `address`) VALUES
(1, 'Rajesh', 'kolkata'),
(2, 'Gopal', 'Howra'),
(3, 'Manish', 'Mumbai'),
(4, 'Rahul', 'Kolkata'),
(5, 'Raaj', 'Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `student1`
--

CREATE TABLE `student1` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student1`
--

INSERT INTO `student1` (`user_id`, `name`, `address`, `phone`) VALUES
(1, 'raja', 'howrah', 2147483647),
(2, 'raja', 'howrah', 2147483647),
(3, 'Harun', 'Mumbai', 98994325678);

-- --------------------------------------------------------

--
-- Table structure for table `student2`
--

CREATE TABLE `student2` (
  `user_id` int(11) NOT NULL,
  `sub1` int(11) NOT NULL,
  `sub2` int(11) NOT NULL,
  `sum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student2`
--

INSERT INTO `student2` (`user_id`, `sub1`, `sub2`, `sum`) VALUES
(1, 60, 65, 225),
(2, 60, 60, 120),
(3, 50, 50, 100);

--
-- Triggers `student2`
--
DELIMITER $$
CREATE TRIGGER `abc` BEFORE INSERT ON `student2` FOR EACH ROW SET
new.sum =new.sub1+new.sub2
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`id`, `name`, `age`) VALUES
(1, 'Raaj', 20),
(2, 'rahul', 21),
(3, 'suvo', 21);

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`id`, `uid`, `address`) VALUES
(1, 1, 'kolkata'),
(2, 2, 'kolkata'),
(3, 3, 'howra');

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `id` int(11) NOT NULL,
  `roll` int(11) DEFAULT NULL,
  `class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`id`, `roll`, `class`) VALUES
(1, 1, 10),
(2, 2, 11),
(3, 3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `picsource` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `phone`, `picsource`) VALUES
(3, 'rohit', 'rohit@gmail.com', '5e25793647b3e5728d4276c2dadbbcd3', 7478959654, ''),
(4, 'abc1', 'abc@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 89747895965, 'image/10504573_4485963.jpg'),
(6, 'Rajesh Kayal', 'rajeshkayal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 6745785753, 'image/9925876_4243126.jpg'),
(12, 'Mno', 'mno@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 6296155279, 'image/Ecom Mart.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `address2`, `email`, `password`, `mobile`, `dob`, `gender`, `degree`, `language`, `picture`) VALUES
(2, 'Rajender Sing', 'Maharastra', '      pune,India', 'raju@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 986943567, '2023-03-01', 'Others', 'B.tech', 'English,Hindi,Bengali', 'image/1000_F_266078398_vXlKFR2KDOj8bpsly1lduNbvaDrZGMY2.jpg'),
(3, 'Abhi', 'Kolkata', '  West Bengal,India', 'abhi@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 745566966743, '2023-03-02', 'Male', 'B.sc', 'English,Hindi', 'image/wp10468044-doraemon-pc-wallpapers.jpg'),
(4, 'Subha', 'Kolkata', 'West Bengal,India', 'subha@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 885566966743, '2023-01-19', 'Male', 'M.sc', 'English,Hindi,Bengali', ''),
(5, 'Raju', 'Kolkata', '    West Bengal,India', 'raju@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 885586966743, '2023-01-19', 'Male', 'b.tech', 'English,Hindi', 'image/1009976.jpg'),
(7, 'raja', 'Kolkata', 'West bengal', 'raja@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 763542561128, '2023-03-29', 'Male', 'B.tech', 'English,Hindi,Bengali', ''),
(17, 'abc', 'Kolkata', '      West bengal', 'abc@gmail.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', 70878628961, '2023-03-30', 'Others', 'M.tech', 'English,Hindi,Bengali', 'image/1000_F_112185177_ZolUCbyZokyiiff4OeR05JUssbkJMEml.jpg'),
(18, 'raja deo', 'Maharastra', 'mumbai', 'deo@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5666686856, '2023-04-13', 'Male', 'B.tech', 'English,Bengali', 'image/72792aff8da221c4a91504c8a1c2e8875c02dcb3.jpg'),
(19, 'abcd', 'Kolkata', 'West Bengal', 'abcd@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 7337367536554, '2023-04-20', 'Others', 'M.tech', 'English,Hindi,Bengali', 'image/programming-background-collage.jpg'),
(20, 'Rajesh', 'Kolkata', '  India', 'rajesh1@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 565886587568, '2023-04-05', 'Others', 'M.tech', 'English,Hindi,Bengali', 'image/');

-- --------------------------------------------------------

--
-- Table structure for table `user_ajax`
--

CREATE TABLE `user_ajax` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `picsource` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_ajax`
--

INSERT INTO `user_ajax` (`id`, `name`, `email`, `password`, `phone`, `picsource`) VALUES
(6, 'raja', 'raja@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 9096155279, ''),
(10, 'raju', 'raju@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 9096155279, ''),
(112, 'ram', 'ram@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 8942648282, ''),
(115, 'abc', 'xyz@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 9096155279, 'image/pexels-snapwire-6992.jpg'),
(116, 'dhhh', 'dh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 6296155279, 'image/9925876_4243126.jpg'),
(117, 'rk', 'rk@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 489057504, 'image/pexels-artem-saranin-974061.jpg'),
(121, 'Mno', 'mno@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 8966979579, 'image/pexels-snapwire-6992.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`roll`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `multi_image_import`
--
ALTER TABLE `multi_image_import`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_user`
--
ALTER TABLE `multi_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prent`
--
ALTER TABLE `prent`
  ADD PRIMARY KEY (`roll`);

--
-- Indexes for table `search_user`
--
ALTER TABLE `search_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student1`
--
ALTER TABLE `student1`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `student2`
--
ALTER TABLE `student2`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `table3`
--
ALTER TABLE `table3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roll` (`roll`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ajax`
--
ALTER TABLE `user_ajax`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_table`
--
ALTER TABLE `booking_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `multi_image_import`
--
ALTER TABLE `multi_image_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `multi_user`
--
ALTER TABLE `multi_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `search_user`
--
ALTER TABLE `search_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student1`
--
ALTER TABLE `student1`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student2`
--
ALTER TABLE `student2`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_ajax`
--
ALTER TABLE `user_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `child_ibfk_1` FOREIGN KEY (`roll`) REFERENCES `prent` (`roll`);

--
-- Constraints for table `table2`
--
ALTER TABLE `table2`
  ADD CONSTRAINT `table2_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `table1` (`id`);

--
-- Constraints for table `table3`
--
ALTER TABLE `table3`
  ADD CONSTRAINT `table3_ibfk_1` FOREIGN KEY (`roll`) REFERENCES `table2` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
