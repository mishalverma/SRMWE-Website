-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2018 at 12:30 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weclub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `a_name`, `a_pass`) VALUES
(1, 'shiv1234', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(12) NOT NULL,
  `event_id` int(12) NOT NULL,
  `u_id` int(12) NOT NULL,
  `comment` text NOT NULL,
  `c_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `event_id`, `u_id`, `comment`, `c_time`) VALUES
(1, 5, 8, 'This is going to be awsome seminar guys...', '2018-01-21 21:53:53'),
(2, 5, 9, 'I know ritesh agrawal he is very very good speaker, this is really good for me and also for others.', '2018-01-21 22:01:07'),
(3, 4, 10, 'Fei-Fei Li is absolutely amazing.', '2018-01-22 22:11:36'),
(4, 6, 10, 'Financial Awareness, this is not good for cs student i think..', '2018-01-22 22:16:45'),
(5, 2, 10, 'Amazing hacking workshop', '2018-01-22 22:18:43'),
(6, 2, 8, 'you are right #ram mishra', '2018-01-22 22:20:51'),
(7, 4, 8, 'yeah she is', '2018-01-22 22:22:22'),
(8, 4, 8, '#mohit what are doing boy', '2018-01-22 22:31:48'),
(9, 4, 8, 'fast', '2018-01-22 22:32:56'),
(17, 7, 8, 'hurry up this is going to be amazing', '2018-01-22 22:42:34'),
(18, 4, 9, 'i watching presentation', '2018-01-22 22:44:52'),
(20, 3, 8, 'this is cool', '2018-01-23 04:41:41'),
(25, 2, 14, 'this is cool', '2018-01-25 10:30:46'),
(26, 4, 15, 'fggfdg', '2018-01-25 11:22:47'),
(27, 6, 26, 'hello', '2018-02-26 20:26:26'),
(28, 7, 26, 'Hello', '2018-03-06 07:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(12) NOT NULL,
  `event_id` int(12) NOT NULL,
  `u_id` int(12) NOT NULL,
  `en_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enroll_id`, `event_id`, `u_id`, `en_time`) VALUES
(1, 2, 8, '2018-01-22 19:13:03'),
(2, 2, 10, '2018-01-22 20:42:40'),
(3, 3, 10, '2018-01-22 20:43:11'),
(4, 2, 9, '2018-01-22 22:45:39'),
(5, 2, 11, '2018-01-23 03:37:42'),
(6, 3, 8, '2018-01-23 04:42:21'),
(7, 2, 12, '2018-01-23 05:24:57'),
(8, 3, 9, '2018-01-23 08:06:17'),
(9, 3, 12, '2018-01-23 10:39:23'),
(10, 2, 14, '2018-01-25 10:31:19'),
(11, 2, 15, '2018-01-25 11:23:43'),
(27, 7, 26, '2018-04-01 09:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(12) NOT NULL,
  `admin_id` int(12) NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `e_desc` text NOT NULL,
  `e_img_path` varchar(200) NOT NULL,
  `img_path1` varchar(200) NOT NULL,
  `img_path2` varchar(200) NOT NULL,
  `img_path3` varchar(200) NOT NULL,
  `e_type` varchar(20) NOT NULL,
  `e_start` date NOT NULL,
  `e_end` date NOT NULL,
  `no_topic` int(11) NOT NULL,
  `topic_title` text NOT NULL,
  `topic_desc` text NOT NULL,
  `event_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cost` bigint(100) DEFAULT NULL,
  `zone` varchar(20) NOT NULL,
  `venue` text NOT NULL,
  `s_time` time NOT NULL,
  `e_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `admin_id`, `event_title`, `e_desc`, `e_img_path`, `img_path1`, `img_path2`, `img_path3`, `e_type`, `e_start`, `e_end`, `no_topic`, `topic_title`, `topic_desc`, `event_upload`, `cost`, `zone`, `venue`, `s_time`, `e_time`) VALUES
(1, 1, 'Building Dynamic Websites', 'Today''s websites are increasingly dynamic. Pages are no longer static HTML files but instead generated by scripts and database calls. User interfaces are more seamless, with technologies like Ajax replacing traditional page reloads. \nThis workshop teaches students how to build dynamic websites with Ajax and with Linux, Apache, MySQL, and PHP (LAMP), one of today''s most popular frameworks.\nThe course explores issues of security, scalability,firewalling, and load-balancing.', '/img/event_1.png', '', '', '', 'workshop', '2018-05-02', '2018-05-10', 5, 'HTTP#PHP#MVC & XML#SQL#Java Script', 'This session about hyper text transfer protocol and it''s over view#This is quick overview about php and its dynamic functionality#MVC(model view controller) is a frame work which makes site fast and quick responsive and XML use for storing small amount of data.#Java script provide some check nodes and dynamasciam in website.', '2018-03-28 15:58:54', 0, 'Technology', 'SRM UNIVERSITY(ncr), mini auditorium', '00:00:00', '00:00:00'),
(2, 1, 'Password decryption hackthon', 'This is about Cryptography or cryptology is the practice and study of techniques for secure communication in the presence of third parties called adversaries.\n', 'img/wallpaper-cartoon-cartoons-monkey-garfield-cat.jpg', '', '', '', 'hackathon', '2018-04-17', '2018-05-09', 2, 'Encryption#Decryption', 'In cryptography, encryption is the process of encoding a message or information in such a way that only authorized parties can access it and those who are not authorized cannot.#The reverse process of encryption is called decryption.', '2018-03-29 11:44:26', 0, 'Technology', 'SRM UNIVERSITY(ncr), Room no-102', '00:00:00', '00:00:00'),
(3, 1, 'Crimson carpet', 'A hackathon is a design sprint-like event in which computer programmers and others involved in software development, including graphic designers, interface designers, project managers, and others.', 'img/Screenshot from 2017-12-02 18-45-39.png', '', '', '', 'hackathon', '2018-01-27', '2018-01-28', 1, 'Hackathon competition', 'Student will find loop holes and bugs in programs.and try to fix the bugs.and many more....', '2018-01-22 15:50:21', 0, 'Technology', 'SRM UNIVERSITY(ncr), beside NSO room', '00:00:00', '00:00:00'),
(4, 1, 'Computer vision', 'Computer vision is an interdisciplinary field that deals with how computers can be made for gaining high-level understanding from digital images or videos', 'img/Matroid-Computer-Vision.jpg', '', '', '', 'seminar', '2018-01-23', '2018-01-24', 1, 'Computer Vision#Image detection#Image Capation', 'Pattern recognition is a branch of machine learning that focuses on the recognition of patterns and regularities in data, although it is in some cases considered to be nearly synonymous with machine learning.#Image recognition is the process of identifying and detecting an object or a feature in a digital image or video. This concept is used in many applications like systems for factory automation, toll booth monitoring, and security surveillance.#Image capation means what is a capation of image.', '2018-01-22 15:50:25', 0, 'Technology', 'SRM UNIVERSITY(ncr), main auditorium', '00:00:00', '00:00:00'),
(5, 1, 'How to do startups', 'A startup company is an entrepreneurial venture which is typically a newly emerged, fast-growing business that aims to meet a marketplace need by developing a viable business model around an innovative product, service, process or a platform', 'img/7.jpg', 'img/2.jpg', 'img/3.png', 'img/4.jpg', 'seminar', '2018-04-12', '2018-05-31', 3, 'Team Building#Team Manage#Execution', 'Team building is a collective term for various types of activities used to enhance social relations and define roles within teams, often involving collaborative tasks.#Team management is the ability of an individual or an organization to administer and coordinate a group of individuals to perform a task. Team management involves teamwork, communication, objective setting and performance appraisals#For most people, execution is one of those things that seems obvious after the fact when done correctly, but is hard to specify for those trying to learn to do it better. ', '2018-04-01 10:01:35', 0, 'Business', 'SRM UNIVERSITY(ncr), main auditorium', '00:00:00', '00:00:00'),
(6, 1, 'Financial Awareness', 'Pay tax', 'img/finance.jpg', '', '', '', 'workshop', '2018-01-31', '2018-04-18', 2, 'Intro#Pay tax', 'Introduction#Balance sheet', '2018-03-29 11:56:37', 0, 'Business', 'SRM UNIVERSITY(ncr), mini auditorium', '00:00:00', '00:00:00'),
(7, 1, 'Ethical Hacking', 'Ethical hacking and ethical hacker are terms used to describe hacking performed by a company or individual to help identify potential threats on a computer or network. An ethical hacker attempts to bypass system security and search for any weak points that could be exploited by malicious hackers.', 'img/ethical-hacking-powerpoint-7-638.jpg', '', '', '', 'workshop', '2018-04-24', '2018-05-17', 3, 'Introduction#Tools and Rules#Example presentation', 'Hacking has been a part of computing for almost five decades and it is a very broad discipline, which covers a wide range of topics. The first known event of hacking had taken place in 1960 at MIT and at the same time, the term "Hacker" was originated. In this tutorial, we will take you through the various concepts of Ethical Hacking and explain how you can use them in a real-time environment.#Wireshark is a free application that allows you to capture and view the data traveling back and forth on your network, providing the ability to drill down and read the contents of each packet â€“ filtered to meet your specific needs. It is commonly utilized to troubleshoot network problems as well as to develop and test software. This open-source protocol analyzer is widely accepted as the industry standard, winning its fair share of awards over the years.#We will do one example hacking.', '2018-04-01 09:28:07', 0, 'Technology', 'SRM University(ncr), MBA building, Room no-002', '10:00:00', '16:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(12) NOT NULL,
  `admin_id` int(12) NOT NULL,
  `event_id` int(12) NOT NULL,
  `guest_name` varchar(100) NOT NULL,
  `guest_post` varchar(200) NOT NULL,
  `guest_link` text NOT NULL,
  `guest_about` text NOT NULL,
  `guest_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `admin_id`, `event_id`, `guest_name`, `guest_post`, `guest_link`, `guest_about`, `guest_upload`) VALUES
(1, 0, 1, 'Shivam Tripathi', 'Student at SRM University', 'https://www.linkedin.com/in/shivam-tripathi-642708136/', 'He is working on understanding language and image simultaneously with the help of NLP and Computer Vision algorithm. Most excited about deploying these skills to solve real world problems. after then, I will work on Deep Networks for Video Classification and Recognition and using video as a training set.', '2018-01-20 14:39:39'),
(4, 1, 2, 'Shivam tripathi#Pratik tripathi', 'Student at SRM University#Student at IIT Delhi', 'https://www.linkedin.com/in/shivam-tripathi-642708136/#https://www.linkedin.com/in/shivam-tripathi-642708136/', 'Very lazy guy#very handsome boy', '2018-01-20 19:49:19'),
(5, 1, 3, 'Ankit Fadia', 'Brand Ambassador for Digital India', 'http://www.ankitfadia.in/', 'Ankit Fadia (born 24 May 1985) is an Indian author, speaker, television host, and self-proclaimed "ethical hacker" of computer systems, whose skills and ethics have been debated. His work mostly involves OS and Networking based tips and tricks, proxy websites and lifestyle.', '2018-01-20 20:01:11'),
(6, 1, 4, 'Fei-Fei Li', 'director of the Stanford Artificial Intelligence Lab', 'http://vision.stanford.edu/feifeili/', 'I am an Associate Professor at the Computer Science Department at Stanford University. I received my Ph.D. degree from California Institute of Technology, and a B.S. in Physics from Princeton University.\r\nI am currently the Director of the Stanford Artificial Intelligence Lab and the Stanford Vision Lab, where I work with the most brilliant students and colleagues worldwide to build smart algorithms that enable computers and robots to see and think, as well as to conduct cognitive and neuroimaging experiments to discover how brains see and think.\r\n\r\n', '2018-01-20 23:24:34'),
(7, 1, 5, 'Ritesh Agarwal', 'Founder of OYO rooms', 'https://www.linkedin.com/in/riteshagar/', 'Ritesh Agarwal is the man who backs his own decision. He is the true motivation for the young entrepreneurs who are dreaming to be the next big thing. Right Now this man become the role modal for the young generation. I am really obliged to share the life story of this young man.', '2018-01-21 12:57:58'),
(8, 1, 6, 'Samar Vijay#himanshu Shankar', 'CEO at Lease.com #CEO at Vitartha', 'www.facebook.com/pra#www.facebook.com/hs', 'Mentor#Real life experience', '2018-01-21 20:20:08'),
(9, 1, 7, 'Gary McKinnon', 'Security hacker', 'https://en.wikipedia.org/wiki/Gary_McKinnon', 'Gary McKinnon is a Scottish systems administrator and hacker who was accused in 2002 of perpetrating the "biggest military computer hack of all time,"', '2018-01-22 16:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(12) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `m_no` bigint(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `img_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `f_name`, `l_name`, `m_no`, `email`, `pass`, `time`, `img_path`) VALUES
(8, 'shivam', 'tripathi', 8989748204, 'stripathi3397@gmail.com', '12345678', '2018-01-20 21:05:12', ''),
(25, 'Vahcb', 'fgtsdhja', 64734362358, 'gv23@gmail.com', 'abcd12!@', '2018-03-04 11:26:42', '../signup/img/vaib.jpg'),
(26, 'Vaibhav', 'Gupta', 8449411118, 'gvaibhav182@gmail.com', 'abcd12!@', '2018-02-26 20:22:40', 'img/Vaibhav.jpg'),
(27, 'ASD', 'dd', 1234567893, 'sd@ds.c0m', 'abcd12!@', '2018-03-02 08:44:54', 'img/cropped-logo.jpg'),
(28, 'Urvashi', 'Jindal', 8475956291, '1998urvashi@gmail.com', 'Abcd12!@', '2018-03-06 12:04:01', 'img/urvashi.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`),
  ADD UNIQUE KEY `event_id` (`event_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `m_no` (`m_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
