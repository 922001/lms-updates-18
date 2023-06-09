-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 05:25 PM
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
-- Database: `creslms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `action` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `date`, `name`, `action`) VALUES
(11, '2023-03-15 18:30:00', 'admin1', 'Added student arish'),
(13, '2023-03-15 18:30:00', 'admin 2', 'Added subject javvaa'),
(14, '2023-03-16 17:14:07', 'admin 2', 'Added subject javaaaa'),
(15, '2023-03-16 17:15:40', 'admin 2', 'Added subject javaaa'),
(16, '2023-03-16 17:16:15', 'admin 2', 'Added subject javaaa'),
(17, '2023-03-16 17:16:15', 'admin 2', 'Added subject javaaa'),
(18, '2023-03-16 17:22:11', 'admin 2', 'Added subject javaaaa'),
(19, '2023-03-16 17:23:14', 'admin 2', 'Added subject aaaaa'),
(20, '2023-03-18 10:48:53', 'admin1', 'Added student priya'),
(21, '2023-03-18 11:12:06', 'admin1', 'Added student muzu'),
(22, '2023-03-18 11:32:20', 'admin1', 'Added student zzzz'),
(23, '2023-03-18 13:33:38', 'admin 2', 'Added subject java'),
(24, '2023-03-18 13:35:07', 'admin 2', 'Added subject Python'),
(25, '2023-03-18 14:27:42', 'admin 2', 'Added subject java2'),
(26, '2023-03-18 14:36:09', 'admin 2', 'Added subject java3'),
(27, '2023-03-18 14:37:26', 'admin 2', 'Added subject java2'),
(28, '2023-03-18 14:39:20', 'admin 2', 'Added subject java2'),
(29, '2023-03-18 14:41:27', 'admin 2', 'Added subject Python1');

-- --------------------------------------------------------

--
-- Table structure for table `addcontent`
--

CREATE TABLE `addcontent` (
  `sno` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `subjectname` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `modules` varchar(100) NOT NULL,
  `session` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `flipbook` varchar(100) NOT NULL,
  `assessment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addcontent`
--

INSERT INTO `addcontent` (`sno`, `department`, `subjectname`, `semester`, `modules`, `session`, `video`, `flipbook`, `assessment`) VALUES
(1, 'MBA', 'ds', '1', '', '1', 'aa', 'aa', 'aa'),
(2, 'MBA', 'java', '2', '', '1', 'xxx', 'xxx', 'xxx'),
(3, 'MCA', 'c', '1', '1', '1', 'xxx', 'xxx', 'xxx'),
(4, 'MCA', 'c++', '2', '2', '2', 'xx', 'xx', 'xx'),
(5, 'MCA', 'c++', '2', '2', '2', 'xx', 'xx', 'xx'),
(6, 'MCA', 'ds', '3', '1', '1', 'xxx', 'xxxx', 'xxx'),
(7, 'MBA', 'hr', '1', '1', '1', 'xxx', 'xxx', 'xxx'),
(8, 'MBA', 'hr', '1', '1', '1', 'xxx', 'xxx', 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `registernumber` int(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `registernumber`, `email`, `password`, `image`, `status`) VALUES
(1, 'ad1', 9876, 'ad1@gmail.com', '1234', '6410c8d594527picmba.jpg', ''),
(2, 'admin 2', 99, 'ad3@gmail.com', 'ad3', '6415b84ab5302admin-icon-male-person-profile-avatar-with-gear-vector-25811110.jpg', ''),
(15, 'admin123', 123, 'ad@gmail.com', '123456789', '', ''),
(16, 'adddd', 32456, 'ad@gmail.com', '123456789', '', 'registered'),
(17, 'admin4', 123456, 'admin4@gmail.com', '', '', ''),
(18, 'admin8989', 3235, 'am@gmail.com', '', '', ''),
(19, 'admin7', 878768, 'a7@gmail.com', NULL, NULL, ''),
(20, 'ad', 0, 'ad@gmail.com', '123456789', NULL, ''),
(21, 'Muzu Admin', 7888, 'muzuadmin@gmail.com', '123456789', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `announcement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `department`, `announcement`) VALUES
(1, 'MCA', 'welcome mca students'),
(3, 'MBA', 'welcome mba student'),
(4, 'MBA', 'welcome students'),
(5, 'MCA', 'hiiii'),
(6, 'MCA', 'welcome'),
(7, 'MCA', 'hii'),
(8, 'MCA', 'hii'),
(9, 'MCA', 'hii'),
(10, 'MCA', 'WELCOME TO ADMIN DASHBOARD'),
(11, 'MCA', 'welcome..');

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'pre'),
(2, 1, 1, 'Hypertext preprocessor'),
(3, 1, 0, 'hypertext'),
(4, 1, 0, 'processor'),
(5, 2, 1, 'php'),
(6, 2, 0, 'ph'),
(7, 2, 0, 'p'),
(8, 2, 0, 'h'),
(34, 3, 1, 'fyn'),
(35, 3, 0, 'no'),
(36, 3, 0, 'nooo'),
(37, 3, 0, 'nooo'),
(38, 4, 1, 'hey'),
(39, 4, 0, 'h'),
(40, 4, 0, 'e'),
(41, 4, 0, 'y'),
(42, 5, 0, 'hhhhh'),
(43, 5, 1, 'a'),
(44, 5, 0, 'b'),
(45, 5, 0, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `ebook_link` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `registernumber` int(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `phonenumber` int(20) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `registernumber`, `department`, `email`, `password`, `status`, `phonenumber`, `year`) VALUES
(1, 'srini v', 4321, 'MCA', 'srini@gmail.com', 'srinisrini', 'registered', 0, ''),
(2, 'faculty1', 0, 'MBA', 'fac@gmail.com', '', '', 2147483647, '2022'),
(3, 'faculty1', 0, 'MBA', 'fac@gmail.com', '', '', 2147483647, '2022'),
(4, 'priya2', 1011, 'MBA', 'priya2@gmail.com', '', '', 2147483647, '2022'),
(11, 'faculty2', 2424567, 'MBA', 'fa@gmail.com', NULL, NULL, 1234567, '2023'),
(12, 'fac', 99998888, 'MCA', 'fac@gmail.com', NULL, NULL, 767654, '2022-2023'),
(13, 'fac', 84657, 'MBA', 'fac@gmail.com', '123456789', NULL, 0, ''),
(14, 'muzu1', 788, 'MCA', 'muzu1@gmail.com', '123456789', 'registered', 123456728, '2023');

-- --------------------------------------------------------

--
-- Table structure for table `mca`
--

CREATE TABLE `mca` (
  `user` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mca`
--

INSERT INTO `mca` (`user`, `department`, `semester`, `subject`) VALUES
('user', 'MBA', '1', 'ds');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `subject_id` int(20) DEFAULT NULL,
  `session_id` int(20) DEFAULT NULL,
  `unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `video_link`, `subject_id`, `session_id`, `unit`) VALUES
(3, 'SESSION 1', 'videoo.mp4', 35, 1, 1),
(4, 'SESSION 1', 'videoplayback.mp4', 35, 1, 2),
(5, 'SESSION 1', 'video2.mp4', 35, 1, 1),
(6, 'SESSION 1', 'video3.mp4', 35, 1, 2),
(7, 'SESSION 2', 'video3.mp4', 35, 2, 0),
(8, 'Session 1', 'videoo.mp4', 36, 7, 0),
(10, 'Session 1', 'videoo.mp4', 37, 11, 0),
(20, 'session 3', 'videos/WhatsApp Video 2023-03-04 at 16.32.05.mp4', 35, 3, 0),
(36, '4', 'videos/WhatsApp Video 2023-03-04 at 16.32.05.mp4', 35, 4, 0),
(37, '4', 'videos/WhatsApp Video 2023-03-01 at 12.18.04 (1).mp4', 35, 4, 0),
(38, '1', 'videos/WhatsApp Video 2023-03-04 at 16.30.35.mp4', 36, 7, 0),
(39, '1', 'videos/WhatsApp Video 2023-03-04 at 16.30.35.mp4', 44, 12, 0),
(41, '1', 'videos/WhatsApp Video 2023-03-04 at 16.32.05.mp4', 35, 1, 1),
(42, '1', 'videos/WhatsApp Video 2023-03-04 at 16.30.35.mp4', 37, 1, 0),
(43, '1', 'videos/WhatsApp Video 2023-03-04 at 16.30.35.mp4', 37, 1, 0),
(44, 'Session 1', 'videos/WhatsApp Video 2023-03-01 at 12.18.04 (1).mp4', 35, 1, 2),
(45, 'Session 1', 'videos/videoplayback.mp4', 35, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_number`, `text`) VALUES
(1, 1, 'php stands for?'),
(2, 2, 'php Syntax'),
(16, 3, 'how are u'),
(17, 4, 'hey'),
(18, 5, 'hhhhh');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(255) NOT NULL,
  `que` text NOT NULL,
  `option 1` varchar(222) NOT NULL,
  `option 2` varchar(222) NOT NULL,
  `option 3` varchar(222) NOT NULL,
  `option 4` varchar(222) NOT NULL,
  `ans` varchar(222) NOT NULL,
  `userans` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `que`, `option 1`, `option 2`, `option 3`, `option 4`, `ans`, `userans`) VALUES
(1, 'What does PHP stand for?', 'Preprocessed Hypertext Page', 'Hypertext Markup Language', 'Hypertext Preprocessor', 'Hypertext Transfer Protocol', 'Hypertext Preprocessor', 'Hypertext Markup Language'),
(2, 'What will be the value of $var? ', '0', '1', '2', 'NULL', '0', '0'),
(3, ' ____________ function in PHP Returns a list of response headers sent (or ready to send)', 'header', 'headers_list', 'header_sent', 'header_send', 'headers_list', 'header'),
(4, 'Which of the following is the Server Side Scripting Language?', 'HTML', 'CSS', 'JS', 'PHP', 'PHP', 'HTML'),
(5, 'From which website you download this source code?', 'Softglobe.net', 'w3school.com', 'technopoints.co.in', 'php.net', 'technopoints.co.in', 'Softglobe.net');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `Id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ebook_link` text DEFAULT NULL,
  `assessment_link` text DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`Id`, `name`, `ebook_link`, `assessment_link`, `subject_id`, `unit`, `session_id`) VALUES
(36, 'Session 1', 'https://heyzine.com/flip-book/6201c2f11a.html#page/1', NULL, 35, 1, 1),
(37, 'Session 1', 'https', NULL, 35, 4, 1),
(38, 'Session 1', 'xaxa', NULL, 35, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(15) NOT NULL,
  `name` varchar(225) NOT NULL,
  `registernumber` int(15) NOT NULL,
  `department` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) DEFAULT NULL,
  `status` varchar(225) NOT NULL,
  `phonenumber` int(15) NOT NULL,
  `year` varchar(225) NOT NULL,
  `verify_token` varchar(220) DEFAULT NULL,
  `semester` int(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `registernumber`, `department`, `email`, `password`, `status`, `phonenumber`, `year`, `verify_token`, `semester`, `image`) VALUES
(1, 'snkeha', 103, 'MCA', 'studentcres06@gmail.com', '12345', 'registered', 0, '', '444a148b83f82ed5ce537d4b804c85c8', 1, '640b506eb8909male-student-graduation-avatar-profile-vector-12055254.jpg'),
(2, 'Nandhini.S', 81, 'MCA', 'nandhini@gmail.com', '123456789', 'registered', 0, '', '', 1, '640f2fdb7a05fsem image.jpg'),
(8, 'sttu', 2147483647, 'MBA', 'nandheny.engg@yahoo.com', '', '', 2147483647, '2022-2023', '', 0, ''),
(9, 'faculty', 6789, 'MCA', 'f@gmail.com', '', '', 765489321, '2022-2023', '', 0, ''),
(10, 'admin4', 12345, '', 'admin4@gmail.com', '', '', 0, '', '', 0, ''),
(11, 'admin4', 12345, '', 'admin4@gmail.com', '', '', 0, '', '', 0, ''),
(12, 'admin4', 12345, '', 'admin4@gmail.com', '', '', 0, '', '', 0, ''),
(27, 'arish', 36, 'MCA', '63@gmail.com', '123456789', 'registered', 99999, '2022-2023', NULL, 1, NULL),
(28, 'rish', 663, 'MCA', '6262@gmail.com', '123456789', '', 0, '', NULL, 1, NULL),
(29, 'snekha', 7788765, 'MBA', 'snekh@gmail.com', '123456789', '', 0, '', NULL, 1, NULL),
(30, 'nandhini', 99999, 'MCA', 'n@gmail.com', '123456789', '', 0, '', NULL, 1, NULL),
(31, 'Priya', 646464, 'MCA', 'p@gmail.com', '123456789', 'registered', 1234567896, '2022-2023', NULL, 1, NULL),
(32, 'muzu', 78, 'MCA', 'muzu@gmail.com', '123456789', 'registered', 2147483647, '2023', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `semester` int(10) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `department` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `video_content` varchar(255) DEFAULT NULL,
  `flip_book` varchar(255) DEFAULT NULL,
  `assessment` varchar(255) DEFAULT NULL,
  `subject_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `course_code`, `description`, `semester`, `created_date`, `department`, `session`, `video_content`, `flip_book`, `assessment`, `subject_image`) VALUES
(35, 'Mathematical foundation for Computer applications\r\n', 'MAD 6188', 'Maths subject \r\n', 1, '2023-02-20 06:54:27', 'MCA', '1', 'xxx', 'xxx', 'xxx', 'maths.jpeg'),
(36, 'Computer Organization and Operating system', 'CAD6121', NULL, 1, '2023-02-20 06:55:29', 'MCA', '1', 'xxx', 'xxx', 'xxxx', 'coos.jpg'),
(37, 'Database Management \r\nSystems', 'CAD 6122', NULL, 1, '2023-02-20 06:56:58', 'MCA', '1', 'xxx', 'xxx', 'xxx', 'DBMS.png'),
(38, 'Computer\r\nNetworks', 'CAD 6123', NULL, 1, '2023-02-20 06:58:37', 'MCA', '1', 'xxx', 'xxx', 'xxx', 'computer-networking.jpg'),
(39, 'Data Structure', 'CAD 6124', NULL, 1, '2023-02-20 06:59:47', 'MCA', '1', 'xxx', 'xxx', 'xxx', 'ds.jpg'),
(40, 'C prog', 'CAD 6127', 'coos subject', 4, '2023-02-20 07:01:17', 'MCA', '1', 'xxx', 'xxx', 'xxx', ''),
(42, 'java 2', 'C1111', 'java subject', 3, '2023-02-20 12:02:50', 'MCA', '1', 'xxx', 'xxx', 'xxx', ''),
(54, 'java', 'c5566', NULL, 2, '2023-03-13 19:58:59', 'MCA', '', '', '', '', ''),
(55, 'java2', 'c1212', NULL, 1, '2023-03-13 20:00:46', 'MCA', NULL, NULL, NULL, NULL, 'mca3.jpg'),
(75, 'java3', 'c4567', NULL, 1, '2023-03-18 13:33:38', 'MCA', '', '', '', '', 'mca4.jpg'),
(76, 'Python1', 'C6789', NULL, 2, '2023-03-18 13:35:07', 'MCA', NULL, NULL, NULL, NULL, 'mca3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subject_unit`
--

CREATE TABLE `subject_unit` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `image_url` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_unit`
--

INSERT INTO `subject_unit` (`id`, `subject_id`, `unit_id`, `image_url`) VALUES
(1, 35, 1, 'mca1.jpg'),
(2, 35, 2, 'mca2.jpg'),
(3, 35, 3, 'mca4.jpg'),
(4, 35, 4, 'mca4.jpg'),
(5, 35, 5, 'coos.jpg'),
(10, 36, 1, 'mca1.jpg'),
(11, 36, 2, 'mca2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `registernumber` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id`, `username`, `registernumber`, `password`, `image`) VALUES
(1, 'admin1', 11, '1234', '6411500ed617bmbaaaaa.jpg'),
(2, 'admin2', 12, '5678', '6412cf4f4d55bmbapic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `logged_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `reg_no`, `logged_time`) VALUES
(1, '81', '2023-03-18 07:46:34.000000'),
(2, '81', '2023-03-18 07:51:00.000000'),
(3, '81', '2023-03-18 08:53:13.000000'),
(4, '81', '2023-03-18 08:54:34.000000'),
(5, '81', '2023-03-18 10:07:45.000000'),
(6, '81', '2023-03-18 10:45:15.000000'),
(7, '99', '2023-03-18 10:45:26.000000'),
(8, '7888', '2023-03-18 11:15:53.000000'),
(9, '99', '2023-03-18 11:19:38.000000'),
(10, '9876', '2023-03-18 11:27:48.000000'),
(11, '123', '2023-03-18 11:28:17.000000'),
(12, '99', '2023-03-18 13:05:14.000000'),
(13, '99', '2023-03-18 14:06:52.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addcontent`
--
ALTER TABLE `addcontent`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_unit`
--
ALTER TABLE `subject_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `addcontent`
--
ALTER TABLE `addcontent`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `subject_unit`
--
ALTER TABLE `subject_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
