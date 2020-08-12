-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2020 at 05:05 PM
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
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(20) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `directory` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `duedate` varchar(50) NOT NULL,
  `class_id` int(20) NOT NULL,
  `section_id` int(20) NOT NULL,
  `subject_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(20) NOT NULL,
  `classname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `classname`) VALUES
(8, 'Eight');

-- --------------------------------------------------------

--
-- Table structure for table `consult`
--

CREATE TABLE `consult` (
  `consult_id` int(20) NOT NULL,
  `teacher_id` int(20) NOT NULL,
  `consultday` date NOT NULL,
  `consultstarting` time NOT NULL,
  `consultending` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `download_id` int(20) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `class_id` int(20) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL,
  `finalgrade` varchar(50) NOT NULL,
  `section_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `userpassword` varchar(100) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lostfound`
--

CREATE TABLE `lostfound` (
  `lostfound_id` int(20) NOT NULL,
  `lostname` varchar(50) NOT NULL,
  `lostdescription` varchar(50) NOT NULL,
  `lostday` date NOT NULL,
  `found` varchar(50) NOT NULL,
  `received` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lostfound`
--

INSERT INTO `lostfound` (`lostfound_id`, `lostname`, `lostdescription`, `lostday`, `found`, `received`) VALUES
(10, 'Pencil Box', 'Blue color box with two pencils', '2020-07-02', 'not', 'not');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `note_id` int(20) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `directory` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `subject_id` int(20) NOT NULL,
  `section_id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(20) NOT NULL,
  `noticedate` datetime NOT NULL,
  `class_id` int(20) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `section_id` int(20) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `noticedate`, `class_id`, `subject_id`, `section_id`, `description`) VALUES
(10, '2020-08-10 00:00:00', 8, 81, 1, 'Today\'s class cancel.'),
(10, '2020-08-11 00:00:00', 8, 86, 1, 'Class test in 20th August'),
(10, '2020-08-05 00:00:00', 8, 85, 1, 'Submit your assignment before 15th august');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `parent_id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `parentname` varchar(50) NOT NULL,
  `parentemail` varchar(50) NOT NULL,
  `parentphone` int(20) NOT NULL,
  `parentrelation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `result_id` int(11) NOT NULL,
  `class_id` int(20) NOT NULL,
  `section_id` int(11) NOT NULL,
  `attendance` int(11) NOT NULL,
  `midmarks` int(11) NOT NULL,
  `finalmarks` int(11) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `routine_id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL,
  `section_id` int(20) NOT NULL,
  `teacher_id` int(20) NOT NULL,
  `startingtime` time NOT NULL,
  `endingtime` time NOT NULL,
  `day` varchar(50) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `teachername` varchar(50) NOT NULL,
  `sectionname` varchar(50) NOT NULL,
  `subjectname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`routine_id`, `class_id`, `section_id`, `teacher_id`, `startingtime`, `endingtime`, `day`, `subject_id`, `teachername`, `sectionname`, `subjectname`) VALUES
(801, 8, 1, 8101, '09:00:00', '10:00:00', 'Sunday', 81, 'Mr. Teacher Bangla', 'A', 'Bangla'),
(802, 8, 1, 8102, '10:00:00', '11:00:00', 'Sunday', 82, 'Mr. Teacher English', 'A', 'English'),
(803, 8, 1, 8103, '11:00:00', '12:00:00', 'Sunday', 83, 'Mr. Teacher Math', 'A', 'Math'),
(804, 8, 1, 8104, '13:00:00', '14:00:00', 'Sunday', 84, 'Mr. Teacher Science', 'A', 'Science'),
(805, 8, 1, 8105, '09:00:00', '10:00:00', 'Saturday', 85, 'Mr. Teacher Sociology', 'A', 'Sociology'),
(806, 8, 1, 8106, '10:00:00', '11:00:00', 'Saturday', 86, 'Mr. Teacher Religion', 'A', 'Religion'),
(807, 8, 1, 8107, '11:00:00', '12:00:00', 'Saturday', 87, 'Mr. Teacher ICT', 'A', 'ICT'),
(808, 8, 1, 8108, '13:00:00', '14:00:00', 'Saturday', 88, 'Mr. Teacher World Knowledge', 'A', 'World Knowledge'),
(809, 8, 1, 8109, '09:00:00', '10:00:00', 'Monday', 89, 'Mr. Teacher Home Economics', 'A', 'Home Economics'),
(800, 8, 1, 8100, '10:00:00', '11:00:00', 'Monday', 80, 'Mr. Teacher Agriculture', 'A', 'Agriculture'),
(801, 8, 1, 8101, '11:00:00', '12:00:00', 'Monday', 81, 'Mr. Teacher Bangla', 'A', 'Bangla'),
(802, 8, 1, 8102, '13:00:00', '14:00:00', 'Monday', 82, 'Mr. Teacher English', 'A', 'English'),
(803, 8, 1, 8103, '09:00:00', '10:00:00', 'Tuesday', 83, 'Mr. Teacher Math', 'A', 'Math'),
(804, 8, 1, 8104, '10:00:00', '11:00:00', 'Tuesday', 84, 'Mr. Teacher Science', 'A', 'Science'),
(805, 8, 1, 8105, '11:00:00', '12:00:00', 'Tuesday', 85, 'Mr. Teacher Sociology', 'A', 'Sociology'),
(806, 8, 1, 8106, '13:00:00', '14:00:00', 'Tuesday', 86, 'Mr. Teacher Religion', 'A', 'Religion'),
(807, 8, 1, 8107, '09:00:00', '10:00:00', 'Wednessday', 87, 'Mr. Teacher ICT', 'A', 'ICT'),
(808, 8, 1, 8108, '10:00:00', '11:00:00', 'Wednessday', 88, 'Mr. Teacher World Knowledge', 'A', 'World Knowledge'),
(809, 8, 1, 8109, '11:00:00', '12:00:00', 'Wednessday', 89, 'Mr. Teacher Home Economics', 'A', 'Home Economics'),
(800, 8, 1, 8100, '13:00:00', '14:00:00', 'Wednessday', 80, 'Mr. Teacher Agriculture', 'A', 'Agriculture'),
(801, 8, 1, 8101, '09:00:00', '10:00:00', 'Thursday', 81, 'Mr. Teacher Bangla', 'A', 'Bangla'),
(802, 8, 1, 8102, '10:00:00', '11:00:00', 'Thursday', 82, 'Mr. Teacher English', 'A', 'English'),
(803, 8, 1, 8103, '11:00:00', '12:00:00', 'Thursday', 83, 'Mr. Teacher Math', 'A', 'Math'),
(804, 8, 1, 8104, '13:00:00', '14:00:00', 'Thursday', 84, 'Mr. Teacher Science', 'A', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `schooladmin`
--

CREATE TABLE `schooladmin` (
  `id` int(11) NOT NULL,
  `schooladminname` varchar(50) NOT NULL,
  `schooladminemail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL,
  `sectionname` varchar(50) NOT NULL,
  `classteacher` varchar(50) NOT NULL,
  `subject_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `class_id`, `sectionname`, `classteacher`, `subject_id`) VALUES
(801, 8, 'A', 'Mr. Teacher Bangla', 1),
(802, 8, 'B', 'Mr. Teacher English', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `staffname` varchar(50) NOT NULL,
  `staffphone` int(20) NOT NULL,
  `stafffathername` varchar(50) NOT NULL,
  `staffmothername` varchar(50) NOT NULL,
  `staffaddress` varchar(250) NOT NULL,
  `staffdob` varchar(50) NOT NULL,
  `staffphoto` varchar(50) NOT NULL,
  `staffgender` varchar(50) NOT NULL,
  `staffreligion` varchar(50) NOT NULL,
  `staffjoiningdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL,
  `section_id` int(20) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `studentemail` varchar(50) NOT NULL,
  `studentaddress` varchar(250) NOT NULL,
  `studentimage` varchar(50) NOT NULL,
  `studentbloodgroup` varchar(50) NOT NULL,
  `studentfathername` varchar(50) NOT NULL,
  `studentmothername` varchar(50) NOT NULL,
  `guardiannumber` int(20) NOT NULL,
  `admissionclass` varchar(50) NOT NULL,
  `studentdob` varchar(50) NOT NULL,
  `studentgender` varchar(10) NOT NULL,
  `studentreligion` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `disorder` varchar(50) NOT NULL,
  `allergic` varchar(50) NOT NULL,
  `heartproblem` varchar(50) NOT NULL,
  `otherdisease` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `class_id`, `section_id`, `studentname`, `studentemail`, `studentaddress`, `studentimage`, `studentbloodgroup`, `studentfathername`, `studentmothername`, `guardiannumber`, `admissionclass`, `studentdob`, `studentgender`, `studentreligion`, `admissiondate`, `disorder`, `allergic`, `heartproblem`, `otherdisease`) VALUES
(1, 1608001, 8, 1, 'student001', 'student001@student.ac.bd', '58/2 A, Mirpur,Dhaka', 'student.jpg', 'B+', 'Mr. Rahman', 'Mrs. Rahman', 801935245, 'One', '5/08/2004', 'Male', 'Muslim', '2012-01-01', 'No', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(20) NOT NULL,
  `subjectname` varchar(50) NOT NULL,
  `class_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subjectname`, `class_id`) VALUES
(81, 'Bangla', 8),
(82, 'English', 8),
(83, 'Math', 8),
(84, 'Science', 8),
(85, 'Sociology', 8),
(86, 'Religion', 8),
(87, 'ICT', 8),
(88, 'World Knowledge', 8),
(89, 'Home Economics', 8),
(80, 'Agriculture', 8);

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id` int(11) NOT NULL,
  `superadmin_id` int(20) NOT NULL,
  `superadminname` varchar(50) NOT NULL,
  `superadminemail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `syllabus_id` int(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `section_id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`syllabus_id`, `title`, `directory`, `subject_id`, `section_id`, `class_id`) VALUES
(801, 'Bangla Syllabus', 'class8_syllabus.pdf', 81, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `teacher_id` int(20) NOT NULL,
  `teachername` varchar(50) NOT NULL,
  `teacheremail` varchar(50) NOT NULL,
  `teacherdesignation` varchar(50) NOT NULL,
  `teacherdepartment` varchar(50) NOT NULL,
  `teacheraddress` varchar(50) NOT NULL,
  `teacherdob` varchar(50) NOT NULL,
  `teachergender` varchar(10) NOT NULL,
  `teacherreligion` varchar(50) NOT NULL,
  `teacherjoiningdate` date NOT NULL,
  `teacherfathername` varchar(50) NOT NULL,
  `teachermothername` varchar(50) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teacher_id`, `teachername`, `teacheremail`, `teacherdesignation`, `teacherdepartment`, `teacheraddress`, `teacherdob`, `teachergender`, `teacherreligion`, `teacherjoiningdate`, `teacherfathername`, `teachermothername`, `subject_id`) VALUES
(1, 8101, 'Mr. Teacher Bangla', 'teacherB@gmail.com', 'Lecturer', 'Bangla', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Male', 'Muslim', '2010-01-01', 'Mr. Khan', 'Mrs. Khan', 81),
(2, 8102, 'Teacher English', 'teacherE@gmail.com', 'Lecturer', 'English', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Female', 'Muslim', '2010-01-01', 'Mr. Rahman', 'Mrs. Rahman', 82),
(3, 8103, 'Mr. Teacher Math', 'teacherM@gmail.com', 'Lecturer', 'Math', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Male', 'Muslim', '2010-01-01', 'Mr. Alam', 'Mrs. Alam', 83),
(4, 8104, 'Mr. Teacher Science', 'teacherS@gmail.com', 'Lecturer', 'Science', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Male', 'Muslim', '2010-01-01', 'Mr. Chowdhury', 'Mrs. Chowdhury', 84),
(5, 8105, 'Teacher Sociology', 'teacherSS@gmail.com', 'Lecturer', 'Sociology', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Female', 'Muslim', '2010-01-01', 'Mr. Haque', 'Mrs. Haque', 85),
(6, 8106, 'Mr. Teacher Religion', 'teacherR@gmail.com', 'Lecturer', 'Religion', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Male', 'Muslim', '2010-01-01', 'Mr. Kabir', 'Mrs. Kabir', 86),
(7, 8107, 'Mr. Teacher ICT', 'teacherICT@gmail.com', 'Lecturer', 'ICT', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Male', 'Muslim', '2010-01-01', 'Mr. Islam', 'Mrs. Islam', 87),
(8, 8108, 'Mr. Teacher World Knowledge', 'teacherWK@gmail.com', 'Lecturer', 'World Knowledge', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Male', 'Muslim', '2010-01-01', 'Mr. Khan', 'Mrs. Khan', 88),
(9, 8109, 'Teacher Home Economics', 'teacherHE@gmail.com', 'Lecturer', 'Home Economics', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Female', 'Muslim', '2010-01-01', 'Mr. Rahman', 'Mrs. Rahman', 89),
(10, 8100, 'Mr. Teacher Agriculture', 'teacherA@gmail.com', 'Lecturer', 'Agriculture', '98/2,Dhanmondi. 32 Dhaka-1209', '5/2/1986', 'Male', 'Muslim', '2010-01-01', 'Mr. Alam', 'Mrs. Alam', 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schooladmin`
--
ALTER TABLE `schooladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schooladmin`
--
ALTER TABLE `schooladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
