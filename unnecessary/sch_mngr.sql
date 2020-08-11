-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 11:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sch_mngr`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(10) NOT NULL,
  `class_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'One'),
(2, 'Two'),
(3, 'Three'),
(4, 'Four'),
(5, 'Five'),
(6, 'Six'),
(7, 'Seven'),
(8, 'Eight'),
(9, 'Nine'),
(10, 'Ten');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `starting` varchar(20) NOT NULL,
  `ending` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `starting`, `ending`) VALUES
(1, 'Christmas', '25 December', '25 December'),
(2, 'Craft Day', '06 January', '06 January'),
(3, 'School Picnic', '20 January', '30 January'),
(4, 'Multicultural Fair', '25 February', '29 February');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `not_id` int(20) NOT NULL,
  `studentid` int(20) NOT NULL,
  `not_from` varchar(30) NOT NULL,
  `not_msg` varchar(50) NOT NULL,
  `not_msg2` varchar(1000) NOT NULL,
  `not_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`not_id`, `studentid`, `not_from`, `not_msg`, `not_msg2`, `not_status`) VALUES
(1, 123456, 'email1@gmail.com', 'about extra classs', 'kcnfevjknvkjncm bnvcxsxsjbcnkjscn', 'unread'),
(2, 123456, 'email1@gmail.com', 'about extra classs', 'fjcnfj f fniefjrg f nhfirjvnjsnv', 'unread'),
(3, 125789, 'a@gmail.com', 'fhfrenf', 'niihynbcccccccccccccccccccccccccccccccccccccccccccccckkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiighhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `routine_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `section_id` int(10) NOT NULL,
  `day` varchar(15) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `starting` time NOT NULL,
  `ending` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`routine_id`, `class_id`, `section_id`, `day`, `sub_id`, `teacher_id`, `starting`, `ending`) VALUES
(1, 8, 2, 'Sunday', 1, 10802, '09:00:00', '10:00:00'),
(2, 8, 2, 'Monday', 2, 10801, '09:00:00', '10:00:00'),
(3, 8, 2, 'Tuesday', 3, 10803, '09:00:00', '10:00:00'),
(4, 8, 2, 'Wednessday', 4, 10805, '09:00:00', '10:00:00'),
(5, 8, 2, 'Thursday', 5, 10804, '09:00:00', '10:00:00'),
(6, 8, 2, 'Saturday', 1, 10802, '09:00:00', '10:00:00'),
(7, 8, 2, 'Thursday', 2, 10801, '10:00:00', '11:00:00'),
(8, 8, 2, 'Wednessday', 2, 10801, '10:00:00', '11:00:00'),
(9, 8, 2, 'Monday', 3, 10803, '10:00:00', '11:00:00'),
(10, 8, 2, 'Tuesday', 4, 10805, '10:00:00', '11:00:00'),
(11, 8, 2, 'Saturday', 5, 10804, '10:00:00', '11:00:00'),
(12, 8, 2, 'Sunday', 11, 10808, '10:00:00', '11:00:00'),
(13, 8, 2, 'Sunday', 4, 10805, '11:00:00', '12:00:00'),
(14, 8, 2, 'Monday', 5, 10804, '11:00:00', '12:00:00'),
(15, 8, 2, 'Tuesday', 1, 10802, '11:00:00', '12:00:00'),
(16, 8, 2, 'Wednessday', 2, 10801, '11:00:00', '12:00:00'),
(17, 8, 2, 'Thursday', 11, 10808, '11:00:00', '12:00:00'),
(18, 8, 2, 'Saturday', 6, 10807, '11:00:00', '12:00:00'),
(19, 8, 2, 'Tuesday', 5, 10804, '13:00:00', '14:00:00'),
(20, 8, 2, 'Wednessday', 1, 10802, '13:00:00', '14:00:00'),
(21, 8, 2, 'Thursday', 2, 10801, '13:00:00', '14:00:00'),
(22, 8, 2, 'Monday', 11, 10808, '13:00:00', '14:00:00'),
(23, 8, 2, 'Saturday', 6, 10807, '13:00:00', '14:00:00'),
(24, 8, 2, 'Sunday', 6, 10807, '13:00:00', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(10) NOT NULL,
  `sec_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `sec_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(15) NOT NULL,
  `s_id` int(20) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_address` varchar(500) NOT NULL,
  `s_phone` int(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `s_id`, `s_name`, `s_address`, `s_phone`, `password`, `email`, `image`) VALUES
(1, 112233, '', '', 0, '112233', '', ''),
(2, 123456, 'abcdef', 'wdwfregtrbhvc', 89966332, '123456', '123456@gmail.com', '274.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(10) NOT NULL,
  `subject_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'English'),
(2, 'Bangla'),
(3, 'Math'),
(4, 'Sociology'),
(5, 'Science'),
(6, 'Religion'),
(7, 'Physics'),
(8, 'Chemistry'),
(9, 'Biology'),
(10, 'ICT'),
(11, 'Home Economics');

-- --------------------------------------------------------

--
-- Table structure for table `sudent_2`
--

CREATE TABLE `sudent_2` (
  `sid` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `section_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sudent_2`
--

INSERT INTO `sudent_2` (`sid`, `student_id`, `class_id`, `section_id`) VALUES
(1, 123456, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `syllabus_id` int(10) NOT NULL,
  `syllabus_title` varchar(20) NOT NULL,
  `download` varchar(100) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `section_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`syllabus_id`, `syllabus_title`, `download`, `subject_id`, `class_id`, `section_id`) VALUES
(1, 'Final Syllabus', 'd108974ec9edd702a39271644329df4f.jpg', 3, 8, 2),
(2, 'First Term Syllabus', '2dfe9cc400d3d74b6ca254230b9d71af.png', 1, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `tid` int(10) NOT NULL,
  `t_id` varchar(20) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  `t_department` varchar(20) NOT NULL,
  `t_designation` varchar(20) NOT NULL,
  `t_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tid`, `t_id`, `t_name`, `t_department`, `t_designation`, `t_email`) VALUES
(1, '129826', 'Teacher 1', 'Physics', 'Assistant Prof', 'teacher1@gmail.com'),
(2, '369852', 'Teacher 2', 'Chemistry', 'lecturer', 'Teacher2@gmail.com'),
(3, '10801', 'Mr. Bangla', 'Bangla', 'Lecturer', 'teacherB@gmail.com'),
(4, '10802', 'Mr. English', 'English', 'Lecturer', 'TeacherE@gmail.com'),
(5, '10803', 'Mr. Math', 'Math', 'Lecturer', 'teacherM@gmail.com'),
(6, '10804', 'Mr. Science', 'Science', 'Lecturer', 'TeacherS@gmail.com'),
(7, '10805', 'Mr. Sociology', 'Sociology', 'Lecturer', 'TeacherSC@gmail.com'),
(8, '10806', 'Mr. ICT', 'ICT', 'Lecturer', 'TeacherICT@gmail.com'),
(9, '10807', 'Mr. Religion', 'Religion', 'Lecturer', 'TeacherR@gmail.com'),
(10, '10808', 'Mr. Home Economics', 'Home Economics', 'Lecturer', 'TeacherH@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`not_id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `sudent_2`
--
ALTER TABLE `sudent_2`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`syllabus_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `not_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `routine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sudent_2`
--
ALTER TABLE `sudent_2`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `syllabus_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
