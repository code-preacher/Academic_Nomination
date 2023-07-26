-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 10:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomination`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `user_id`, `password`, `phone`) VALUES
(1, 'Peter Goodnewz', 'a@a.com', 'oche', '123456', '08036474832'),
(2, 'Alex Odeh', 'alex@gmail.com', 'alex', '123456', '08035472787');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  `jamb` varchar(200) NOT NULL,
  `result` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  `course` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `name`, `email`, `address`, `nationality`, `jamb`, `result`, `status`, `course`, `date_created`) VALUES
(1, 'Alex Odeh', 'alex@gmail.com', 'Texas,London', 'American', '601d0edfe649d_undraw_choosing_house_v37h.png', '601d0edfe64a1_undraw_choosing_house_v37h.png', 0, 'PHYSICS', '2021-02-05 10:24:47'),
(2, 'Patty', 'm@m.com', '61 boniface street', 'Nigerian', '6304b606c9800_1.PNG', '6304b606c9804_a-c.PNG', 1, 'CHEMISTRY', '2022-08-23 12:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(30) NOT NULL,
  `dept_name` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`, `date`) VALUES
(1, 'PHYSICS', '07-11-20 @ 5:12 PM'),
(2, 'CHEMISTRY', '07-11-20 @ 5:12 PM'),
(3, 'COMPUTER SCIENCE', '22-02-21 @ 8:38 AM');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(30) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `sender`, `message`, `date`) VALUES
(1, 'White Kate Caro(Student)', 'hello\r\n\r\n                                                                                               ', '07-11-20 @ 6:17 PM'),
(2, 'Admin', 'hy,any complain                                                    ', '28-01-21 @ 8:55 AM');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `id` int(30) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `religion` varchar(200) NOT NULL,
  `hobby` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id`, `fname`, `mname`, `sname`, `address`, `phone`, `gender`, `dob`, `religion`, `hobby`, `image`, `email`, `password`, `department`, `level`, `date`) VALUES
(1, 'Bola', 'Seyi', 'Ade', 'Oyo', '08133451436', 'FEMALE', '1989-06-07', 'CHRISTIANITY', 'singing', '5fa6c7f15c41b_IMG-20200606-WA0011.jpg', 'b@b.com', '123456', 'PHYSICS', 'lecturer', '07-11-20 @ 5:14 PM'),
(2, 'Samera', 'yy', 'igiy', 'uiy', '08136473738', 'FEMALE', '2222-02-22', 'CHRISTIANITY', 'singing', '60335fae582e6_mypicx.jfif', 'z@z.com', '123456', 'COMPUTER SCIENCE', 'lecturer', '22-02-21 @ 8:39 AM');

-- --------------------------------------------------------

--
-- Table structure for table `session_log`
--

CREATE TABLE `session_log` (
  `id` int(30) NOT NULL,
  `level` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL,
  `device` varchar(200) NOT NULL,
  `status` varchar(2) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_log`
--

INSERT INTO `session_log` (`id`, `level`, `fullname`, `user_id`, `password`, `login_time`, `logout_time`, `device`, `status`, `date`) VALUES
(1, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '6:16 PM', '6:18 PM', 'DESKTOP-V6MC5VA', '0', '07/11/20'),
(2, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '6:27 PM', '9:04 PM', 'DESKTOP-V6MC5VA', '0', '07/11/20'),
(3, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '6:32 AM', '11:36 PM', 'DESKTOP-V6MC5VA', '0', '09/11/20'),
(4, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '10:45 AM', '11:29 AM', 'DESKTOP-V6MC5VA', '0', '10/11/20'),
(5, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '12:12 PM', '', 'DESKTOP-V6MC5VA', '1', '10/11/20'),
(6, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '1:22 AM', '2:33 AM', 'DESKTOP-V6MC5VA', '0', '11/11/20'),
(7, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '7:59 PM', '9:15 PM', 'DESKTOP-V6MC5VA', '0', '14/11/20'),
(8, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '8:41 PM', '8:46 PM', 'DESKTOP-V6MC5VA', '0', '14/11/20'),
(9, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '9:09 PM', '9:15 PM', 'DESKTOP-V6MC5VA', '0', '14/11/20'),
(10, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '9:13 PM', '9:15 PM', 'DESKTOP-V6MC5VA', '0', '14/11/20'),
(11, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '8:56 AM', '9:27 AM', 'DESKTOP-3MUDN68', '0', '28/01/21'),
(12, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '9:10 AM', '9:16 AM', 'DESKTOP-3MUDN68', '0', '28/01/21'),
(13, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '9:16 AM', '9:27 AM', 'DESKTOP-3MUDN68', '0', '28/01/21'),
(14, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '1:10 PM', '', 'CODE-PREACHER', '1', '01/02/21'),
(15, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '12:29 PM', '12:35 PM', 'CODE-PREACHER', '0', '05/02/21'),
(16, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '12:33 PM', '12:35 PM', 'CODE-PREACHER', '0', '05/02/21'),
(17, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '6:51 AM', '7:04 AM', 'CODE-PREACHER', '0', '22/02/21'),
(18, 'student', 'Lex Ogbu Alex', 'BSU/DIST/71946', '123456', '7:07 AM', '7:12 AM', 'CODE-PREACHER', '0', '22/02/21'),
(19, 'student', 'Lex Ogbu Alex', 'BSU/DIST/71946', '123456', '7:08 AM', '7:12 AM', 'CODE-PREACHER', '0', '22/02/21'),
(20, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '8:40 AM', '10:06 AM', 'CODE-PREACHER', '0', '22/02/21'),
(21, 'lecturer', 'igiy yy Samera', 'z@z.com', '123456', '8:41 AM', '10:02 AM', 'CODE-PREACHER', '0', '22/02/21'),
(22, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '8:42 AM', '10:06 AM', 'CODE-PREACHER', '0', '22/02/21'),
(23, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '8:45 AM', '10:06 AM', 'CODE-PREACHER', '0', '22/02/21'),
(24, 'lecturer', 'igiy yy Samera', 'z@z.com', '123456', '8:47 AM', '10:02 AM', 'CODE-PREACHER', '0', '22/02/21'),
(25, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '8:49 AM', '10:06 AM', 'CODE-PREACHER', '0', '22/02/21'),
(26, 'lecturer', 'igiy yy Samera', 'z@z.com', '123456', '8:50 AM', '10:02 AM', 'CODE-PREACHER', '0', '22/02/21'),
(27, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '8:54 AM', '10:06 AM', 'CODE-PREACHER', '0', '22/02/21'),
(28, 'lecturer', 'igiy yy Samera', 'z@z.com', '123456', '9:57 AM', '10:02 AM', 'CODE-PREACHER', '0', '22/02/21'),
(29, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '9:59 AM', '10:06 AM', 'CODE-PREACHER', '0', '22/02/21'),
(30, 'lecturer', 'igiy yy Samera', 'z@z.com', '123456', '10:02 AM', '10:02 AM', 'CODE-PREACHER', '0', '22/02/21'),
(31, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '10:02 AM', '10:06 AM', 'CODE-PREACHER', '0', '22/02/21'),
(32, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '12:19 PM', '12:20 PM', 'CODE-PREACHER', '0', '25/03/21'),
(33, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '6:22 PM', '', 'CODE-PREACHER', '1', '14/04/21'),
(34, 'lecturer', 'igiy yy Samera', 'z@z.com', '123456', '8:28 PM', '8:29 PM', 'CODE-PREACHER', '0', '27/04/21'),
(35, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '1:25 PM', '1:52 PM', 'CODE-PREACHER', '0', '10/09/21'),
(36, 'student', 'Lex Ogbu Alex', 'BSU/DIST/71946', '123456', '1:55 PM', '2:00 PM', 'CODE-PREACHER', '0', '10/09/21'),
(37, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '10:18 AM', '3:43 PM', 'CODE-PREACHER', '0', '11/09/21'),
(38, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '3:43 PM', '3:43 PM', 'CODE-PREACHER', '0', '11/09/21'),
(39, 'student', 'Lex Ogbu Alex', 'BSU/DIST/71946', '123456', '3:43 PM', '9:49 PM', 'CODE-PREACHER', '0', '11/09/21'),
(40, 'student', 'Lex Ogbu Alex', 'BSU/DIST/71946', '123456', '4:23 PM', '9:49 PM', 'CODE-PREACHER', '0', '11/09/21'),
(41, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '9:49 PM', '', 'CODE-PREACHER', '1', '11/09/21'),
(42, 'student', 'Lex Ogbu Alex', 'BSU/DIST/71946', '123456', '12:20 AM', '2:02 AM', 'CODE-PREACHER', '0', '12/09/21'),
(43, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '12:56 AM', '1:59 AM', 'CODE-PREACHER', '0', '12/09/21'),
(44, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '1:45 AM', '1:59 AM', 'CODE-PREACHER', '0', '12/09/21'),
(45, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '1:57 AM', '1:59 AM', 'CODE-PREACHER', '0', '12/09/21'),
(46, 'student', 'Lex Ogbu Alex', 'BSU/DIST/71946', '123456', '1:59 AM', '2:02 AM', 'CODE-PREACHER', '0', '12/09/21'),
(47, 'student', 'h kni Yusuf', 'BSU/DIST/115191', '123456', '10:31 AM', '12:42 PM', 'CODE-PREACHER', '0', '23/08/22'),
(48, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '12:58 PM', '1:07 PM', 'CODE-PREACHER', '0', '23/08/22'),
(49, 'student', 'Joe Sam John', 'NACEST/COM/ND85223', '123456', '1:09 PM', '1:09 PM', 'CODE-PREACHER', '0', '23/08/22');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(30) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `religion` varchar(200) NOT NULL,
  `hobby` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `matno` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `mname`, `sname`, `address`, `phone`, `gender`, `dob`, `religion`, `hobby`, `image`, `matno`, `email`, `password`, `department`, `level`, `year`, `date`) VALUES
(1, 'Caro', 'Kate', 'White', 'Houston', '07033451436', 'FEMALE', '2020-11-28', 'CHRISTIANITY', 'travelling', '5fa6c84fe8d39_IMG-20200606-WA0012.jpg', 'BSU/DIST/0', 'c@c.com', '123456', 'PHYSICS', 'student', '2017/2018', '07-11-20 @ 5:16 PM'),
(2, 'Alex', 'Ogbu', 'Lex', 'London', '08136473738', 'MALE', '2222-02-22', 'CHRISTIANITY', 'Reading', '60334a20d44a3_delight birthday.png', 'BSU/DIST/71946', 'o@o.com', '123456', 'PHYSICS', 'student', '2017/2018', '22-02-21 @ 7:07 AM'),
(3, 'Yusuf', 'kni', 'h', 'iih', '08136473738', 'MALE', '2222-02-22', 'CHRISTIANITY', 'Reading', '60335fd8c25ba_delight birthday.png', 'BSU/DIST/115191', 'y@y.com', '123456', 'COMPUTER SCIENCE', 'student', '2020/2021', '22-02-21 @ 8:40 AM'),
(4, 'John', 'Sam', 'Joe', '61 boniface street', '08136473738', 'MALE', '2022-08-12', 'CHRISTIANITY', 'Coding', '6304b536a0b47_ubongo2.jfif', 'NACEST/COM/ND85223', 'j@j.com', '123456', 'COMPUTER SCIENCE', 'student', '2005/2006', '23-08-22 @ 1:08 PM');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(30) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `sender`, `message`, `date`) VALUES
(1, 'b@b.com', 'i order for coke 50cl but got coke 75cl , how to i change it..\r\n\r\n                                                                                               ', '21-08-19 @ 12:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(30) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `password`, `level`) VALUES
(1, 'b@b.com', '123456', 'lecturer'),
(2, 'BSU/DIST/0', '123456', 'student'),
(3, 'BSU/DIST/71946', '123456', 'student'),
(4, 'z@z.com', '123456', 'lecturer'),
(5, 'BSU/DIST/115191', '123456', 'student'),
(6, 'NACEST/COM/ND85223', '123456', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_log`
--
ALTER TABLE `session_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `session_log`
--
ALTER TABLE `session_log`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
