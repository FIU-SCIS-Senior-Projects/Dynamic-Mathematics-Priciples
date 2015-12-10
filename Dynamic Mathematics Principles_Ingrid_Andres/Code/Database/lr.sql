-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 10, 2015 at 04:17 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lr`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `message` text NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `location` varchar(64) NOT NULL,
  `page_type` enum('a','f','h') NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `name`, `description`, `location`, `page_type`) VALUES
(2, 'Archimedes', 'Archimedes was an ancient Greek mathematician, physicist, engineer, and astronomer who lived around c.287 BC - c.212 BC. He was arguably the most brilliant person who lived in his era...', 'Archimedes.php', 'h'),
(3, 'Carl Friedrich Gauss', 'Carl Friedrich Gauss was born on 30 April 1777 in Brunswick (Braunschweig), in the Duchy of Brunswick-Wolfenbüttel (now part of Lower Saxony, Germany), as the son of poor working-class parents...', 'CarlFriedrichGauss.php', 'h'),
(4, 'Infinity', 'Infinity is a concept that is alien to any living thing because it would never be able to experience such a number. However, our minds are able to imagine the concept of something having no limits. Is this concept as rediculous as a children''s fairy tale?...', 'Infinity.php', 'f'),
(5, 'Invariance in Geometry', 'This page is dedicated to discussing invariance in Geometry, but first, let’s talk about the concept of invariance in Mathematics. The basic notion of invariance in Mathematics is the observation that the set of “transformations” or “changes” on a mathematical object may change other properties of the object but more importantly may always keep a set of properties unchanged...', 'InvariantGeometry.php', 'f'),
(6, 'Invariant Geometry Activity', 'Try to find an invariant on your own in this interactive Geometry figure! ', 'invariantgeometryactivity.php', 'a'),
(7, 'Invariant Geometry Activity 2', 'Try to find an invariant on your own in this other interactive Geometry figure!', 'invariantgeometry2activity.php', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE IF NOT EXISTS `quizes` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_name` varchar(256) NOT NULL,
  `quiz_description` varchar(256) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `quizes`
--

INSERT INTO `quizes` (`quiz_id`, `quiz_name`, `quiz_description`) VALUES
(3, 'Carl Friedrich Gauss', 'Did you follow all of the historical facts of Gauss?'),
(4, 'tester', 'this is a tester'),
(5, 'Test', 'for testing'),
(6, 'QuizTest', 'This is a description'),
(7, 'Dynamic Activity Quiz 1', 'This quiz test basic knowledge related to the Invariant Geometry Activity.'),
(8, 'Dynamic Activity Quiz 2', 'This quiz test basic knowledge related to the second Invariant Geometry Activity.');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE IF NOT EXISTS `quiz_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(256) NOT NULL,
  `correct` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `quiz_id`, `question_id`, `answer`, `correct`) VALUES
(17, 4, 6, 'True', '1'),
(18, 4, 6, 'False', '0'),
(19, 4, 7, 'test', '1'),
(20, 4, 7, 's', '0'),
(21, 4, 7, 'a', '0'),
(22, 4, 7, 'f', '0'),
(23, 5, 8, 'True', '1'),
(24, 5, 8, 'False', '0'),
(25, 5, 9, 'miami', '1'),
(26, 5, 9, 'orlando', '0'),
(27, 5, 9, 'texas', '0'),
(28, 5, 9, 'california', '0'),
(29, 6, 10, 'True', '1'),
(30, 6, 10, 'False', '0'),
(31, 6, 11, 'new', '1'),
(32, 6, 11, 'other', '0'),
(33, 6, 11, 'the', '0'),
(34, 6, 11, 'this', '0'),
(35, 7, 12, 'False', '1'),
(36, 7, 12, 'True', '0'),
(37, 7, 13, 'angle A', '0'),
(38, 7, 13, 'angle B', '0'),
(39, 7, 13, 'angle C', '0'),
(40, 7, 13, 'none of the angles', '1'),
(41, 7, 14, 'side AB', '0'),
(42, 7, 14, 'side BC', '0'),
(43, 7, 14, 'side AC', '0'),
(44, 7, 14, 'none of the sides', '1'),
(45, 7, 15, 'False', '1'),
(46, 7, 15, 'True', '0'),
(47, 8, 16, 'True', '1'),
(48, 8, 16, 'False', '0'),
(49, 8, 17, 'True', '1'),
(50, 8, 17, 'False', '0'),
(51, 8, 18, 'False', '1'),
(52, 8, 18, 'True', '0'),
(53, 8, 19, 'angle A', '1'),
(54, 8, 19, 'angle B and angle C', '0'),
(55, 8, 19, 'angle A, angle B, and angle C ', '0'),
(56, 8, 19, 'none of the angles', '0');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE IF NOT EXISTS `quiz_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `question_id`, `quiz_id`, `question`, `type`) VALUES
(6, 6, 4, 'This is a test', 'tf'),
(7, 7, 4, 'Pick test', 'mc'),
(8, 8, 5, 'are we taking senior project?', 'tf'),
(9, 9, 5, 'where are we?', 'mc'),
(10, 10, 6, 'Pick true', 'tf'),
(11, 11, 6, 'Pick new', 'mc'),
(12, 12, 7, 'Moving a third point of a triangle parallel to it''s opposite side changes it''s area.', 'tf'),
(13, 13, 7, 'Which of the angles of the triangle are left invariant with all allowable movements from the activity?', 'mc'),
(14, 14, 7, 'Which of the sides of the triangle are left invariant under all allowable movements in the activity?', 'mc'),
(15, 15, 7, 'The perimeter of the triangle is left invariant on all allowable movements in the activity.', 'tf'),
(16, 16, 8, 'There are two sides that are always the same length for all allowable movements of the activity.', 'tf'),
(17, 17, 8, 'The movement of point A allowed for the construction of an equilateral triangle.', 'tf'),
(18, 18, 8, 'All angles could be made with different measures at the same time with the allowable movements of the activity', 'tf'),
(19, 19, 8, 'Which of the following angles of the triangle could have been made a right angle using the allowable movements of the activity.', 'mc');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_takers`
--

CREATE TABLE IF NOT EXISTS `quiz_takers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `percentage` varchar(24) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `quiz_takers`
--

INSERT INTO `quiz_takers` (`id`, `quiz_id`, `username`, `percentage`, `date_time`) VALUES
(22, 4, 'Andres', '100', '2015-12-04 00:05:30'),
(23, 5, 'Test', '100', '2015-12-04 00:05:30'),
(24, 6, 'This is my name', '100', '2015-12-04 00:05:30'),
(25, 7, 'andres', '75', '2015-12-04 06:23:24'),
(26, 8, 'milton', '50', '2015-12-04 07:05:22'),
(27, 8, 'Jorge', '50', '2015-12-04 11:58:12'),
(28, 8, 'Ingrid', '75', '2015-12-04 11:59:11'),
(29, 8, 'Pedro', '25', '2015-12-04 12:02:22'),
(30, 8, 'Pepe', '25', '2015-12-04 12:04:53'),
(31, 8, 'Joe', '50', '2015-12-04 12:06:57'),
(32, 7, 'Andres', '75', '2015-12-04 12:45:18'),
(33, 8, 'Andres', '75', '2015-12-04 12:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameofactivity` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `nameofactivity`, `activity`, `rating`, `hits`) VALUES
(1, 'archimedes activity', 'archimedes', 2.325, 5),
(2, 'CarlFriedrichGauss activity', 'CarlFriedrichGauss ', 5.5, 2),
(3, 'invariantGeometry activity', 'invariantgeometryactivity', 15, 2),
(4, 'Invariant Geometry Activity 2', 'invariantgeometry2activity', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `survey_id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_name` varchar(64) NOT NULL,
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`survey_id`, `survey_name`) VALUES
(1, 'testSurvey'),
(2, 'testSurvey2'),
(3, 'behaviorSurvey'),
(4, 'Archimedes Questionaire');

-- --------------------------------------------------------

--
-- Table structure for table `survey_answers`
--

CREATE TABLE IF NOT EXISTS `survey_answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `answer_body` text NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE IF NOT EXISTS `survey_questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `question_body` text NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`question_id`, `survey_id`, `question_body`) VALUES
(1, 1, 'This is a question =D'),
(2, 2, 'This is a bad question =('),
(3, 1, 'This is a second question =P'),
(4, 3, 'I feel anxious/nervous during math tests.'),
(5, 3, 'I am willing to take more than the required amount of mathematics in my education.'),
(6, 3, 'My current teacher''s expectations of me doing well in mathematics makes me anxious/nervous.'),
(7, 3, 'I am willing to take more than the required amount of mathematics in my education. '),
(8, 3, 'I am happier in a math class than in any other class. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `passreset` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `confirmed` int(11) NOT NULL,
  `confirmcode` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `passreset`, `code`, `confirmed`, `confirmcode`) VALUES
(64, 'milton', '$2y$10$o5hJf7iawdfCQZXVW79gI.th.ZNEwKgF5F/Em7w1afPMHrdxBpjBq', 'milton', 'Last', 'mcubas@fiu.edu', 1, 0, 0, 0, 8392),
(81, 'acuba001', '$2y$10$xg1Fambvh0pC7fvv3PqeCuMlK7.MtofiRXYzr1FJz44jXtpF.Hdra', 'andres', 'Last', 'acuba001@fiu.edu', 1, 0, 0, 0, 1613616446),
(82, 'itroc001', '$2y$10$7r9p9RpUOO8I/rTDqN9k3uC//2wEvAAXPoI.BVPrLT6eE6/0nunP6', 'ingrid', 'Last', 'itroc001@fiu.edu', 1, 0, 0, 0, 1069278984);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE IF NOT EXISTS `user_accounts` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type` enum('g','r') NOT NULL DEFAULT 'g',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_count`
--

CREATE TABLE IF NOT EXISTS `user_count` (
  `counts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_count`
--

INSERT INTO `user_count` (`counts`) VALUES
(19);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
