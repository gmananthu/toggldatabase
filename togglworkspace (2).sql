-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2022 at 12:34 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `togglworkspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `notification` varchar(2250) NOT NULL,
  `links` varchar(2250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `userId`, `notification`, `links`) VALUES
(62, 10, 'You have a team invite from gmananthu2@gmail.com to test team', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZWFtSWQiOjIwLCJpYXQiOjE2NjM1OTM0NjAsImV4cCI6MTY2MzU5NDQ2MH0.MOjITKyR4unAVmTnnnef0g-yWG4HYZFyudbL06v0CZM/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJpYXQiOjE2NjM1OTM0NjAsImV4cCI6MTY2MzU5NDQ2MH0.BRjB2LLnMd5jSnxXZV-vDEGI79kTGzV0G2g2f6HIbnM'),
(63, 31, 'You have a team invite from gmananthu2@gmail.com to hrx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZWFtSWQiOjI0LCJpYXQiOjE2NjM5MTAwODksImV4cCI6MTY2NDA4Mjg4OX0.Szu9UOhwC9Cq0yLcBXdwkZcRnnqDd-6fMgtwrXXMmg8/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJpYXQiOjE2NjM5MTAwODksImV4cCI6MTY2NDA4Mjg4OX0.Se6sIXNH8rk2t8baMvq1aVeLbzDSnFcG-U0TGXSiqBY'),
(64, 31, 'You have a team invite from gmananthu2@gmail.com to team eclipse', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZWFtSWQiOjIzLCJpYXQiOjE2NjM5MTA4MTUsImV4cCI6MTY2NDA4MzYxNX0.DwoOGr-bLU-o1b4qxfDfBW03jTQe95AhEG8GMJRZl_E/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJpYXQiOjE2NjM5MTA4MTUsImV4cCI6MTY2NDA4MzYxNX0.iD0SmLtrjMdzP3lwINPkwHufb_5fKS54lmexydIJ6Pg'),
(57, 29, 'You have a team invite from gmananthu2@gmail.com to hello', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZWFtSWQiOiIxOSIsImlhdCI6MTY2MzA2MzA3NSwiZXhwIjoxNjYzMDY0MDc1fQ.lG2sD6tJTwEkQ4rDrGixxd3ITgSEepfkCdI7ozJpRCA/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJpYXQiOjE2NjMwNjMwNzUsImV4cCI6MTY2MzA2NDA3NX0.kBfa2KqgkZZ5NRTeeyDcUXjwG1FlmpfuGLOPGJphScg');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(225) NOT NULL,
  `teamId` int(11) NOT NULL,
  `projectDescription` varchar(225) NOT NULL,
  `userId` int(11) NOT NULL,
  `projectDate` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`projectId`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectId`, `projectName`, `teamId`, `projectDescription`, `userId`, `projectDate`) VALUES
(10, 'Web designing and development D-COMPANY ', 15, 'Web designing and development for design and development', 3, NULL),
(27, 'dev website ', 16, 'developmnt', 3, NULL),
(48, 'test3', 19, 'nothing', 3, NULL),
(45, 'new project', 17, 'hai beee', 3, NULL),
(50, 'Raw head', 21, 'nothing', 3, '2022-09-19 14:52:53.341'),
(49, 'deskday', 20, 'new test', 3, '2022-09-19 13:27:05.548'),
(51, 'hello my dear guys here we f', 24, 'nothing', 3, '2022-09-23 10:41:44.345');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `taskId` int(225) NOT NULL AUTO_INCREMENT,
  `taskName` varchar(225) NOT NULL,
  `userId` int(225) NOT NULL,
  `projectId` int(225) DEFAULT NULL,
  `startTime` varchar(1080) NOT NULL DEFAULT '0',
  `endTime` varchar(1080) DEFAULT NULL,
  `startTaskDate` varchar(225) DEFAULT NULL,
  `endTaskDate` varchar(225) DEFAULT NULL,
  `estimateTime` varchar(225) DEFAULT NULL,
  `taskEnd` tinyint(1) NOT NULL DEFAULT '0',
  `intervalId` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`taskId`, `taskName`, `userId`, `projectId`, `startTime`, `endTime`, `startTaskDate`, `endTaskDate`, `estimateTime`, `taskEnd`, `intervalId`) VALUES
(176, 'hello world', 3, 45, '0', '1006', '2022-09-13 14:48:26.819', '2022-09-13 17:51:42.468', '60', 1, 402),
(177, 'new task', 10, 45, '0', '3542', '2022-09-13 15:19:55.047', '2022-09-16 18:41:09.552', NULL, 0, NULL),
(178, 'new task is going on', 29, 45, '0', '381', '2022-09-13 15:28:47.820', '2022-09-13 15:35:13.501', NULL, 0, NULL),
(179, 'gibin new task', 10, 45, '0', '822', '2022-09-13 16:07:55.183', '2022-09-16 15:16:35.526', '60', 1, NULL),
(180, 'test task in new design', 3, 45, '0', '26', '2022-09-13 16:21:12.001', '2022-09-13 17:36:29.579', '60', 1, NULL),
(183, 'new task twenty', 3, 39, '0', '15409', '2022-09-14 10:11:52.105', '2022-09-15 16:28:49.675', NULL, 0, NULL),
(184, 'task 2022', 3, 39, '0', '7', '2022-09-14 16:37:34.111', '2022-09-14 16:37:42.193', NULL, 1, NULL),
(185, 'new task', 3, 45, '0', '6', '2022-09-14 16:48:33.021', '2022-09-14 16:48:40.277', NULL, 1, NULL),
(189, 'timer check localhost', 3, 46, '0', '12844', '2022-09-15 09:56:56.081', '2022-09-15 13:33:17.429', NULL, 0, NULL),
(211, 'new task check', 3, 51, '0', '5', '2022-09-26 17:33:42.465', '2022-09-26 17:33:49.445', NULL, 0, NULL),
(190, 'next task', 3, 46, '0', '4', '2022-09-15 13:31:11.000', '2022-09-15 13:31:16.367', NULL, 0, NULL),
(191, 'hello', 3, 45, '0', '5369', '2022-09-15 13:33:27.368', '2022-09-15 15:50:27.222', NULL, 0, NULL),
(192, 'hoiit', 3, 45, '0', '164', '2022-09-15 13:34:46.496', '2022-09-15 13:37:33.462', NULL, 0, NULL),
(193, 'test8', 3, 48, '0', '2345', '2022-09-15 13:37:46.364', '2022-09-15 17:02:29.142', NULL, 0, NULL),
(194, 'next task for me', 3, 48, '0', NULL, NULL, NULL, '0', 0, NULL),
(195, 'next taskk3', 3, 48, '0', '7248', '2022-09-16 09:49:15.498', '2022-09-16 12:05:59.380', '60', 0, NULL),
(196, 'not doing now', 10, 45, '0', '7', '2022-09-16 15:24:44.659', '2022-09-16 15:24:53.064', NULL, 1, NULL),
(197, 'new task', 10, 45, '0', '40', '2022-09-16 16:34:18.759', '2022-09-16 18:41:13.493', NULL, 0, NULL),
(198, 'helelowo woorlldd', 10, 48, '0', '2', '2022-09-16 18:41:28.279', '2022-09-16 18:41:32.088', NULL, 0, NULL),
(199, 'hai', 3, 45, '0', '38', '2022-09-16 18:41:53.956', '2022-09-20 13:48:58.718', NULL, 0, NULL),
(200, 'hello my world', 10, 45, '0', '80', '2022-09-16 18:49:10.193', '2022-09-20 18:31:54.068', NULL, 0, NULL),
(201, 'new', 10, 45, '0', '14', '2022-09-16 18:50:37.204', '2022-09-20 18:31:48.903', NULL, 0, NULL),
(202, 'live task time check 1pm', 3, 48, '0', '28', '2022-09-20 11:55:07.305', '2022-09-20 13:47:50.278', NULL, 0, NULL),
(203, 'new task', 3, 49, '0', '25110', '2022-09-20 11:57:09.931', '2022-09-20 16:45:19.593', NULL, 0, NULL),
(204, 'new task', 10, 48, '0', '208', '2022-09-20 14:43:14.553', '2022-09-21 13:06:26.557', NULL, 0, NULL),
(205, 'day 21 september', 3, 50, '0', '143', '2022-09-21 09:30:54.996', '2022-09-21 09:33:37.229', NULL, 0, NULL),
(206, 'portfolio', 3, 50, '0', '96', '2022-09-21 10:56:26.650', '2022-09-21 10:58:04.898', '0', 0, NULL),
(207, 'portfolio2', 3, 50, '0', '17412', '2022-09-21 11:00:08.097', '2022-09-26 17:33:31.378', '60', 0, NULL),
(208, 'hello', 10, 49, '0', '6', '2022-09-21 15:40:06.662', '2022-09-21 15:40:14.610', NULL, 0, NULL),
(209, 'test task ', 31, 51, '0', '18', '2022-09-23 10:46:27.732', '2022-09-23 10:47:12.412', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taskcomments`
--

DROP TABLE IF EXISTS `taskcomments`;
CREATE TABLE IF NOT EXISTS `taskcomments` (
  `taskCommentId` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `comment` varchar(225) NOT NULL,
  PRIMARY KEY (`taskCommentId`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taskcomments`
--

INSERT INTO `taskcomments` (`taskCommentId`, `taskId`, `userId`, `comment`) VALUES
(54, 177, 3, 'Lorem Ipsinter took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange'),
(53, 177, 3, 'locallls'),
(52, 177, 3, 'hijss'),
(51, 177, 3, 'hijd'),
(50, 177, 3, 'hi'),
(49, 178, 3, 'ok'),
(48, 178, 3, 'ji'),
(47, 177, 3, 'hek'),
(46, 177, 3, 'hello'),
(45, 178, 3, 'hello'),
(44, 178, 3, 'hi'),
(43, 179, 3, 'hello'),
(42, 179, 3, 'hi'),
(41, 183, 3, 'ninja'),
(40, 183, 3, 'hai'),
(39, 183, 3, 'hello'),
(38, 183, 3, 'yjj'),
(37, 183, 3, 'hui'),
(36, 183, 3, 'hello'),
(35, 179, 10, 'sorry'),
(34, 179, 3, 'enthuva gibine'),
(33, 169, 3, 'check'),
(32, 169, 3, 'hi'),
(55, 183, 3, 'its not me'),
(56, 183, 3, 'antd'),
(57, 179, 3, 'hi all'),
(58, 179, 3, 'hello'),
(59, 183, 3, 'hello dude'),
(60, 179, 3, 'every thing was not working'),
(61, 189, 3, ''),
(62, 189, 3, 'hello'),
(63, 191, 3, 'hi hello'),
(64, 191, 3, 'hello world'),
(65, 179, 3, 'let me try'),
(66, 195, 3, 'hello'),
(67, 179, 10, 'ok lets do'),
(68, 197, 3, 'hello world'),
(69, 203, 3, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `taskpauseresume`
--

DROP TABLE IF EXISTS `taskpauseresume`;
CREATE TABLE IF NOT EXISTS `taskpauseresume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) NOT NULL,
  `taskResumeTimer` varchar(225) DEFAULT NULL,
  `taskResumeDate` varchar(225) DEFAULT NULL,
  `taskPauseTimer` varchar(225) DEFAULT NULL,
  `taskPauseDate` varchar(225) DEFAULT NULL,
  `dayName` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=492 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taskpauseresume`
--

INSERT INTO `taskpauseresume` (`id`, `taskId`, `taskResumeTimer`, `taskResumeDate`, `taskPauseTimer`, `taskPauseDate`, `dayName`) VALUES
(491, 211, '0', '2022-09-26 17:33:42.465', '5', '2022-09-26 17:33:49.445', 'Monday'),
(490, 207, '17410', '2022-09-26 17:33:27.855', '17412', '2022-09-26 17:33:31.378', 'Monday'),
(489, 207, '17410', '2022-09-26 11:58:46.045', NULL, NULL, NULL),
(488, 207, '17410', '2022-09-26 11:58:46.044', NULL, NULL, NULL),
(487, 207, '17368', '2022-09-26 11:53:10.728', '17410', '2022-09-26 11:53:55.082', 'Monday'),
(486, 207, '17341', '2022-09-26 11:52:23.906', '17368', '2022-09-26 11:52:52.749', 'Monday'),
(485, 210, '0', '2022-09-23 11:34:47.205', '8', '2022-09-23 11:34:57.071', 'Friday'),
(484, 209, '14', '2022-09-23 10:47:07.191', '18', '2022-09-23 10:47:12.412', 'Friday'),
(483, 209, '0', '2022-09-23 10:46:27.732', '14', '2022-09-23 10:46:43.571', 'Friday'),
(482, 207, '17331', '2022-09-23 10:12:35.612', '17341', '2022-09-23 10:12:47.557', 'Friday'),
(481, 207, '3224', '2022-09-22 13:19:49.864', '17331', '2022-09-22 17:18:56.881', 'Thursday'),
(480, 207, '3222', '2022-09-22 11:54:24.123', '3224', '2022-09-22 11:54:27.183', 'Thursday'),
(479, 208, '0', '2022-09-21 15:40:06.662', '6', '2022-09-21 15:40:14.610', 'Wednesday'),
(478, 204, '14', '2022-09-21 13:03:09.250', '208', '2022-09-21 13:06:26.557', 'Wednesday'),
(477, 207, '2057', '2022-09-21 12:37:47.543', '3222', '2022-09-21 12:57:24.177', 'Wednesday'),
(476, 207, '2053', '2022-09-21 11:53:24.646', '2057', '2022-09-21 11:53:30.663', 'Wednesday'),
(475, 207, '2049', '2022-09-21 11:53:01.994', '2053', '2022-09-21 11:53:07.511', 'Wednesday'),
(474, 207, '0', '2022-09-21 11:00:08.097', '2049', '2022-09-21 11:34:35.650', 'Wednesday'),
(473, 206, '0', '2022-09-21 10:56:26.650', '96', '2022-09-21 10:58:04.898', 'Wednesday'),
(472, 204, '9', '2022-09-21 10:29:00.321', '14', '2022-09-21 10:29:07.375', 'Wednesday'),
(471, 205, '33', '2022-09-21 09:31:44.363', '143', '2022-09-21 09:33:37.229', 'Wednesday'),
(470, 205, '0', '2022-09-21 09:30:54.996', '33', '2022-09-21 09:31:29.965', 'Wednesday'),
(469, 200, '78', '2022-09-20 18:31:50.518', '80', '2022-09-20 18:31:54.068', 'Tuesday'),
(468, 201, '10', '2022-09-20 18:31:43.375', '14', '2022-09-20 18:31:48.903', 'Tuesday'),
(467, 204, '5', '2022-09-20 18:31:32.424', '9', '2022-09-20 18:31:38.261', 'Tuesday'),
(466, 203, '25102', '2022-09-20 16:45:10.430', '25110', '2022-09-20 16:45:19.593', 'Tuesday'),
(465, 203, '25100', '2022-09-20 15:52:15.284', '25102', '2022-09-20 15:52:18.732', 'Tuesday'),
(464, 203, '25099', '2022-09-20 15:51:47.433', '25100', '2022-09-20 15:51:50.050', 'Tuesday'),
(463, 203, '25098', '2022-09-20 15:51:01.312', '25099', '2022-09-20 15:51:03.670', 'Tuesday'),
(462, 203, '25097', '2022-09-20 15:50:45.729', '25098', '2022-09-20 15:50:48.049', 'Tuesday'),
(461, 203, '25093', '2022-09-20 15:50:03.981', '25097', '2022-09-20 15:50:09.211', 'Tuesday'),
(460, 203, '25090', '2022-09-20 15:16:37.264', '25093', '2022-09-20 15:16:41.383', 'Tuesday'),
(459, 203, '25089', '2022-09-20 15:16:34.021', '25090', '2022-09-20 15:16:36.292', 'Tuesday'),
(458, 203, '25089', '2022-09-20 15:16:30.559', '25089', '2022-09-20 15:16:31.691', 'Tuesday'),
(457, 203, '25062', '2022-09-20 15:16:04.695', '25089', '2022-09-20 15:16:25.122', 'Tuesday'),
(456, 203, '25062', '2022-09-20 15:15:56.075', NULL, NULL, NULL),
(455, 203, '25062', '2022-09-20 15:15:52.434', NULL, NULL, NULL),
(454, 204, '0', '2022-09-20 14:43:14.553', '5', '2022-09-20 14:43:21.221', 'Tuesday'),
(453, 199, '36', '2022-09-20 13:48:55.461', '38', '2022-09-20 13:48:58.718', 'Tuesday'),
(452, 199, '3', '2022-09-20 13:47:56.971', '36', '2022-09-20 13:48:31.510', 'Tuesday'),
(451, 202, '25', '2022-09-20 13:47:46.188', '28', '2022-09-20 13:47:50.278', 'Tuesday'),
(450, 202, '13', '2022-09-20 13:47:29.317', '25', '2022-09-20 13:47:42.622', 'Tuesday'),
(449, 203, '25050', '2022-09-20 13:47:06.413', '25062', '2022-09-20 13:47:20.315', 'Tuesday'),
(448, 203, '25043', '2022-09-20 13:46:34.428', '25050', '2022-09-20 13:46:42.564', 'Tuesday'),
(446, 203, '25000', '2022-09-20 13:43:21.105', '25040', '2022-09-20 13:44:02.466', 'Tuesday'),
(447, 203, '25040', '2022-09-20 13:46:22.473', '25043', '2022-09-20 13:46:27.333', 'Tuesday'),
(444, 203, '10', '2022-09-20 12:25:30.057', '25000', '2022-09-20 12:25:46.584', 'Tuesday'),
(443, 203, '7', '2022-09-20 11:57:22.066', '10', '2022-09-20 11:57:26.698', 'Tuesday'),
(442, 203, '0', '2022-09-20 11:57:09.931', '7', '2022-09-20 11:57:18.966', 'Tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `teamId` int(225) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(225) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`teamId`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `userId`) VALUES
(19, 'hello', 3),
(20, 'test team', 3),
(21, 'Team dark', 3),
(22, 'hello world team', 3),
(23, 'team eclipse', 3),
(18, 'WordPress team', 3),
(17, 'Rexav team', 3),
(24, 'hrx', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teamuser`
--

DROP TABLE IF EXISTS `teamuser`;
CREATE TABLE IF NOT EXISTS `teamuser` (
  `teamUserId` int(11) NOT NULL AUTO_INCREMENT,
  `teamId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`teamUserId`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamuser`
--

INSERT INTO `teamuser` (`teamUserId`, `teamId`, `userId`) VALUES
(51, 23, 31),
(50, 24, 31),
(49, 24, 3),
(48, 20, 10),
(47, 23, 10),
(46, 22, 10),
(45, 23, 3),
(44, 22, 3),
(42, 20, 3),
(43, 21, 3),
(40, 19, 10),
(39, 19, 3),
(38, 18, 10),
(37, 18, 3),
(36, 17, 10),
(35, 17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(225) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `isAdmin`) VALUES
(3, 'Ananthu', 'gmananthu2@gmail.com', '893433838', '$2b$10$2awl71H3JWq1I6Efm1Fo3efJGT19/XpAy1Z4695YUpeWZai2zPWwS', 1),
(12, 'test', 'test1@gmail.com', '123456789012345678901234567890', '$2b$10$wlKbat25bobMKMYXnRKX9emZaJ0Z5qmMpxt/J/dD.exn50wnQZoEC', 0),
(10, 'gibin', 'gibin@gmail.com', '928828828', '$2b$10$7zvGzK0enSRUNPk6//4iKu5UvsB8sVZdNPv6JXQMpAli0vNklC/Li', 0),
(14, 'test02', 'giri1@gmail.com', '1234567890', '$2b$10$Ex5bMlXT9XovHHunVmMzx.Ol2ITc72c16XD4SyMLlrmNQRbVimPDO', 0),
(31, 'rahul', 'rahul@gmail.com', '9828282228', '$2b$10$bebFhXHmOMYUSJMbixJuP.O2..dmKOerM.ormIT.UjbZKe6Q/Tz0q', 0),
(29, 'joyal', 'joyal@gmail.com', '2222929922', '$2b$10$97i/cZQ6Dl0903ITFaishO/MTEIF0Tf6G8TwSCIADzO1NN.XVabwW', 0),
(30, 'raju', 'raju@gmail.com', '2828922202', '$2b$10$pWf756a/rfo/mwo4amOR6u6OZKHi75jHLkiBcoDZNPrJQHiLmNB3W', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
