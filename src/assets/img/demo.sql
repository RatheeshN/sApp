-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2021 at 11:50 AM
-- Server version: 8.0.21-0ubuntu0.20.04.3
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int NOT NULL,
  `settings` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `settings`) VALUES
(1, '{\"edit_lock\":\"2\",\"handle_division\":false,\"student_show_multiple_divisions\":true}');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `course` int NOT NULL,
  `standard` int NOT NULL,
  `division` int NOT NULL,
  `subject` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `marks` int NOT NULL,
  `attachment` longtext NOT NULL,
  `answer_key` varchar(255) NOT NULL,
  `read_id` text NOT NULL,
  `delivered_id` text NOT NULL,
  `added_date` datetime NOT NULL,
  `acd_year` varchar(100) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `notes` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `teacher_id`, `course`, `standard`, `division`, `subject`, `name`, `description`, `date`, `marks`, `attachment`, `answer_key`, `read_id`, `delivered_id`, `added_date`, `acd_year`, `status`, `notes`) VALUES
(1, 291, 1, 2, 2, 4, 'Vedic mathematics', 'Prepare an Assignment based on Vedic Mathematics', '2020-05-14', 10, '', '', '153,156', '262,153,156,160,165,164,123', '2020-05-13 17:04:58', '2020-2021', 'approved', ''),
(2, 291, 1, 2, 2, 5, 'Photosynthesis', 'Collect 5 samples and explain photosynthesis', '2020-05-15', 20, '', '', '', '262,153,156,160,165,164,123', '2020-05-13 17:05:51', '2020-2021', 'approved', ''),
(3, 291, 1, 2, 2, 1, 'Content Writing', 'Prepare One page assignment about the importance of Social Distancing in the upcoming situations.', '2020-05-16', 20, '', '', '156', '262,153,156,160,165,164,123', '2020-05-13 17:07:07', '2020-2021', 'approved', ''),
(4, 291, 1, 1, 1, 1, 'Test', 'Assignment topic', '2020-05-18', 20, '', '', '123', '123,255,332,504', '2020-05-16 11:11:47', '2020-2021', 'approved', ''),
(5, 291, 1, 1, 1, 4, 'Maths Assignment', 'Assignment Content', '2020-05-19', 20, '', '', '123', '123,255,332,504', '2020-05-16 15:01:49', '2020-2021', 'approved', ''),
(6, 291, 1, 1, 1, 5, 'Science Assignment', 'Assignment details', '2020-05-18', 20, '', '', '', '123,255,332,504', '2020-05-16 15:02:32', '2020-2021', 'approved', ''),
(7, 291, 1, 2, 2, 1, 'Test Assignment', 'Assignment English', '2020-05-29', 20, '', '3', '123', '153,165,156,160,164,262,123', '2020-05-29 13:39:22', '2020-2021', 'approved', ''),
(10, 230, 1, 4, 6, 6, 'Collect pictures of input devices', 'Collect and paste', '2020-06-06', 10, '', '11', '', '57,111,175,293,313,106', '2020-06-05 12:08:39', '2020-2021', 'approved', ''),
(9, 230, 1, 2, 2, 2, 'Uuh', 'Gfhghbh', '2020-06-26', 0, '8', '10', '', '262,156,123', '2020-06-02 23:21:49', '2020-2021', 'approved', ''),
(11, 291, 1, 1, 1, 1, 'test', 'test', '2020-06-11', 20, '', '', '', '123,255,332,504', '2020-06-05 14:12:23', '2020-2021', 'approved', ''),
(12, 291, 1, 1, 1, 1, 'Create assignment', 'Prepare Vowels', '2020-06-12', 10, '', '16', '123', '123,255,332,504', '2020-06-05 16:36:12', '2020-2021', 'approved', ''),
(13, 291, 1, 4, 6, 1, 'asgnmnt 0y/08', '06/08', '2020-08-06', 10, '17,18,19', '', '', '57,111,175,293,313,106', '2020-08-06 12:14:55', '2020-2021', 'approved', ''),
(14, 291, 1, 4, 6, 1, 'asgnmnt 0y/08', '06/08', '2020-08-06', 10, '20,21,22', '', '', '57,111,175,293,313,106', '2020-08-06 12:15:55', '2020-2021', 'approved', ''),
(15, 291, 1, 4, 6, 1, 'asgnmnt 0y/08', '06/08', '2020-08-06', 10, '23,24,25', '', '', '57,111,175,293,313,106', '2020-08-06 12:16:26', '2020-2021', 'approved', ''),
(16, 291, 1, 4, 6, 7, 'Black white detection Robot', 'Black white detection Robot', '2020-08-13', 50, '47,48,49,50,51,52,53', '54,55,56', '', '111,175,57,293,313,106', '2020-08-11 11:21:23', '2020-2021', 'approved', ''),
(17, 291, 1, 4, 6, 1, 'this is test', 'this is thes', '2020-08-14', 10, '63,64', '', '175', '57,175', '2020-08-14 15:31:58', '2020-2021', 'approved', ''),
(18, 291, 1, 1, 1, 1, 'Testing Sk ASSIGNMENT', 'SK TESTING', '2020-09-20', 10, '66,67', '', '', '123,332', '2020-09-18 09:38:21', '2020-2021', 'approved', ''),
(19, 291, 1, 1, 1, 1, 'Test From Sk', 'ASSIGNMENT 1', '2020-09-18', 20, '', '', '', '123,332', '2020-09-18 12:14:29', '2020-2021', 'approved', ''),
(20, 291, 1, 1, 1, 1, 'Assignment 2', 'ABSCCDS', '2020-09-19', 10, '', '', '', '123,332', '2020-09-18 12:22:49', '2020-2021', 'approved', ''),
(21, 291, 1, 1, 1, 1, 'ASSIGNMENT ENG', 'COVID-19 affects different people in different ways. Most infected people will develop mild to moderate illness and recover without hospitalization.\nMost common symptoms:\nfever\ndry cough\ntiredness\nLess common symptoms:\naches and pains\nsore throat\ndiarrhoea\nconjunctivitis', '2020-09-19', 20, '', '', '123', '123,332', '2020-09-18 12:25:04', '2020-2021', 'approved', ''),
(22, 291, 1, 1, 1, 5, 'AGNMNT 22', 'Abcd', '2020-09-23', 10, '', '', '', '123,332', '2020-09-22 14:03:44', '2020-2021', 'approved', ''),
(23, 291, 1, 4, 6, 4, 'assignments test', 'assignment test paper', '2020-10-13', 20, ',71', '', '', '175', '2020-10-13 12:03:35', '2020-2021', 'approved', ''),
(25, 291, 1, 4, 6, 3, 'mahatma gandhi', 'Prepare live story of Gandhi', '2021-01-30', 10, '', '', '175', '175', '2021-01-16 12:30:54', '2020-2021', 'approved', ''),
(24, 291, 1, 16, 27, 0, 'wqwdsqw', 'dqwdadw', '2021-01-14', 20, '', '', '', '', '2021-01-07 15:34:16', '2020-2021', 'approved', ''),
(26, 230, 1, 2, 2, 1, 'Assignment 1 For Eng', 'white A letter to your Parent for leaves', '2021-01-31', 10, '72', '', '123', '123', '2021-01-31 11:19:16', '2020-2021', 'approved', ''),
(27, 230, 1, 2, 2, 4, 'Assignment 2 for Mathematics', 'write down 1 to 100 for five time', '2021-01-31', 10, '', '', '123', '123', '2021-01-31 11:20:29', '2020-2021', 'approved', ''),
(28, 230, 1, 2, 2, 3, 'Assignment 3 for Hindi', 'paragraph lekho netaji ka', '2021-01-31', 10, '73', '', '', '123', '2021-01-31 11:21:46', '2020-2021', 'approved', ''),
(29, 230, 1, 2, 2, 5, 'Assignment 4 for Science', 'Testing for science', '2021-01-31', 10, '74', '', '123', '123', '2021-01-31 11:23:13', '2020-2021', 'approved', ''),
(30, 238, 1, 2, 3, 1, 'Assignment 1', 'ddddsds', '2021-03-31', 20, '', '', '183', '183', '2021-03-30 15:34:41', '2020-2021', 'approved', ''),
(31, 238, 7, 0, 0, 0, 'SYLLABUS', 'vcvcfcbgbvbv', '2021-04-02', 30, '79', '80', '', '', '2021-03-30 15:50:51', '2020-2021', 'approved', ''),
(32, 238, 1, 2, 3, 2, 'Flowers', 'assignment 2', '2021-04-05', 40, '', '', '', '', '2021-03-31 10:50:25', '2020-2021', 'approved', ''),
(33, 238, 1, 2, 3, 1, 'Story Tales', 'assignment3', '2021-04-14', 25, '', '', '183', '183', '2021-03-31 10:58:37', '2020-2021', 'approved', ''),
(34, 291, 1, 2, 2, 4, 'Assignment test 1', 'Test Assignment 1', '2021-05-15', 50, '', '', '', '', '2021-05-06 11:10:50', '2020-2021', 'pending', ''),
(35, 291, 1, 1, 1, 1, 'Test from school', 'test', '2021-05-06', 50, '', '', '', '', '2021-05-06 15:19:39', '2020-2021', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_attachments`
--

CREATE TABLE `assignment_attachments` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assignment_attachments`
--

INSERT INTO `assignment_attachments` (`id`, `name`, `type`) VALUES
(1, 'Nonagon.pdf', 'application'),
(2, 'Presentation.pptx', 'application'),
(3, 'english.png', 'image'),
(4, '3.PNG', 'image'),
(5, 'Screenshot_20200602-191845_Facebook.jpg', 'image'),
(6, 'IMG-20200602-WA0033.jpg', 'image'),
(8, '20180605_193431.png', 'image'),
(10, 'ELEP-_class_2.pdf', 'application'),
(11, 'Screenshot_20200513-050027_Facebook.jpg', 'image'),
(12, 'PPT.pptx', 'application'),
(13, 'PPT1.pptx', 'application'),
(14, 'PPT2.pptx', 'application'),
(15, 'Notes.xlsx', 'application'),
(16, 'Notes_word.docx', 'application'),
(17, 'IMG-20200805-WA0006.jpg', 'image'),
(18, 'Payment_Receipt.docx', 'application'),
(19, 'fee.pdf', 'application'),
(20, 'IMG-20200805-WA00061.jpg', 'image'),
(21, 'Payment_Receipt1.docx', 'application'),
(22, 'fee1.pdf', 'application'),
(23, 'IMG-20200805-WA00062.jpg', 'image'),
(24, 'Payment_Receipt2.docx', 'application'),
(25, 'fee2.pdf', 'application'),
(26, 'IMG-20200805-WA0008.jpg', 'image'),
(27, 'fee3.pdf', 'application'),
(28, 'Payment_Receipt3.docx', 'application'),
(29, 'title.jpg', 'image'),
(30, 'Student_Report_Card_with_marks_final.xlsx', 'application'),
(31, 'ss_admission.xls', 'application'),
(32, 'sample.txt', 'text'),
(33, 'sample.pptx', 'application'),
(34, 'Merit_Certificate.pdf', 'application'),
(35, 'file-sample_100kB.doc', 'application'),
(36, 'IMG-20200811-WA0003.jpg', 'image'),
(37, 'V_STD_A.pdf', 'application'),
(38, 'title1.jpg', 'image'),
(39, 'Student_Report_Card_with_marks_final1.xlsx', 'application'),
(40, 'ss_admission1.xls', 'application'),
(41, 'sample1.txt', 'text'),
(42, 'sample1.pptx', 'application'),
(43, 'Merit_Certificate1.pdf', 'application'),
(44, 'file-sample_100kB1.doc', 'application'),
(45, 'IMG-20200811-WA00031.jpg', 'image'),
(46, 'V_STD_A1.pdf', 'application'),
(47, 'title2.jpg', 'image'),
(48, 'Student_Report_Card_with_marks_final2.xlsx', 'application'),
(49, 'ss_admission2.xls', 'application'),
(50, 'sample2.txt', 'text'),
(51, 'sample2.pptx', 'application'),
(52, 'Merit_Certificate2.pdf', 'application'),
(53, 'file-sample_100kB2.doc', 'application'),
(54, 'IMG-20200811-WA00032.jpg', 'image'),
(55, 'V_STD_A2.pdf', 'application'),
(56, 'sample3.pptx', 'application'),
(57, 'G736QzK-825442040.jpg', 'image'),
(58, 'obc.pdf', 'application'),
(59, 'User_manual_for_student.pdf', 'application'),
(60, 'Free-Wi-Fi-isnt-secure.png', 'image'),
(61, 'obc1.pdf', 'application'),
(62, 'ADPrEQa-827386531.jpg', 'image'),
(63, 'IMG-20200814-WA0012.jpg', 'image'),
(64, 'Payment.pdf', 'application'),
(65, 'IMG-20200814-WA0009.jpg', 'image'),
(66, 'download.jpg', 'image'),
(67, 'Student_Fee_Payment.pdf', 'application'),
(68, 'download1.jpg', 'image'),
(69, 'download2.jpg', 'image'),
(70, 'download3.jpg', 'image'),
(71, 'Screenshot_2020-10-13-11-59-06-527_com_akiraplc_smartpay.png', 'image'),
(72, 'card07.jpg', 'image'),
(73, 'download_(3).jpg', 'image'),
(74, 'download122.png', 'image'),
(75, 'download4.jpg', 'image'),
(76, 'LOGO-FINAL.png', 'image'),
(77, 'IMG-20210104-WA0012.jpg', 'image'),
(78, 'Student_Id_Card.pdf', 'application'),
(81, 'Maintenance_Request_Report_(2).pdf', 'application');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_details`
--

CREATE TABLE `assignment_details` (
  `id` int NOT NULL,
  `assignment_id` int NOT NULL,
  `student_id` int NOT NULL,
  `description` longtext NOT NULL,
  `attachment` text NOT NULL,
  `submitted_date` datetime NOT NULL,
  `mark` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `review_attachment` varchar(255) NOT NULL,
  `status` enum('pending','completed','resubmission') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assignment_details`
--

INSERT INTO `assignment_details` (`id`, `assignment_id`, `student_id`, `description`, `attachment`, `submitted_date`, `mark`, `review`, `review_attachment`, `status`) VALUES
(1, 4, 123, '<p>Attached</p>', '1', '2020-05-16 11:13:24', '15', 'good', '', 'completed'),
(2, 5, 123, 'Submittion', '', '2020-09-18 14:29:26', '10', '', '', 'pending'),
(3, 6, 123, '<p>Attached</p>', '2', '2020-05-24 18:49:39', '', '', '', 'pending'),
(4, 7, 153, '<p>Covering Letter</p>', '4', '2020-05-29 13:43:11', '7', 'Good Work', '', 'completed'),
(5, 12, 123, 'PFA', '12', '2020-06-16 21:15:20', '8', 'good', '', 'completed'),
(6, 11, 123, 'Dear Sir,\n\nPlease find the assignment', '15', '2020-07-15 14:55:18', '', '', '', 'pending'),
(7, 13, 57, '06 aug', '26,27,28', '2020-08-06 13:10:55', '8', 'nvsdjnvdsnv', '', 'completed'),
(8, 16, 111, 'When you mention another creator in your video title or description, their name will link to their channel page and they?ll get a notification in their inbox.\n\nA video that mentions your channel may show up to your fans as a recommendation, but the presence of your channel in that video doesn?t increase the likelihood of it appearing to your fans.\nWhen you mention another creator in your video title or description, their name will link to their channel page and they?ll get a notification in their inbox.\n\nA video that mentions your channel may show up to your fans as a recommendation, but the presence of your channel in that video doesn?t increase the likelihood of it appearing to your fans.', '57,58,59', '2020-08-11 13:16:45', '20', 'good work', '', 'completed'),
(9, 16, 175, '900000000190000000019000000001900000000190000000019000000001900000000190000000019000000001900000000190000000019000000001900000000190000000019000000001900000000190000000019000000001', '60,61,62', '2020-08-11 13:43:50', '50', 'Excellent', '', 'completed'),
(10, 17, 57, 'company akira', '65', '2020-08-14 15:43:41', '10', 'good', '', 'completed'),
(11, 18, 123, 'tes', '68', '2020-09-18 09:45:01', '7', 'good', '', 'completed'),
(12, 21, 123, 'tesdt', '', '2020-11-25 16:52:04', '5', 'improve', '', 'completed'),
(13, 20, 123, 'uyiui', '', '2020-12-24 16:28:57', '', '', '', 'pending'),
(14, 7, 123, 'test', '', '2020-12-28 21:48:07', '15', 'average', '', 'completed'),
(15, 3, 123, 'donvosdnvsodnv;osvmmvmnsvd', '', '2021-01-16 12:23:30', '', '', '', 'pending'),
(16, 27, 123, 'done please check my assignment 2', '75', '2021-01-31 11:30:06', '9', 'good', '', 'completed'),
(17, 2, 123, 'please check', '76', '2021-01-31 11:30:43', '', '', '', 'pending'),
(18, 26, 123, 'done my work', '77', '2021-01-31 11:40:10', '10', 'very good', '', 'completed'),
(19, 29, 123, 'test', '', '2021-02-01 14:54:34', '', '', '', 'pending'),
(20, 28, 123, 'xsxsxaxc', '78', '2021-02-18 18:07:00', '', '', '', 'pending'),
(21, 30, 183, 'lkmnlnjo', '', '2021-03-30 16:07:23', '5', 'pijopnm', '', 'completed'),
(22, 33, 183, 'tttt', '81', '2021-03-31 11:59:18', '20', 'good', '', 'completed'),
(23, 1, 123, 'submitted', '', '2021-04-27 13:33:52', '', '', '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int NOT NULL,
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `config`) VALUES
(1, '{\"common\":{\"school_code\":\"demo\",\"school_name\":\"Smart School ERP\",\"logo\":\"\",\"paytm_merchant_key\":\"eHmbzz8JsSMJoOox\",\"paytm_merchant_id\":\"BlueMo73254345265343\",\"paytm_merchant_website\":\"BlueMoWAP\",\"google_map_api_key\":\"AIzaSyCBec8tWE67v-PHcYiLGvnGbhJddrdrrZw\",\"api_path\":null,\"data_limit\":\"10\",\"drop_box_api_key\":\"wedwddwq\",\"vimeo_api_key\":\"qwdwerde\",\"enable_video_upload\":0},\"admin\":{\"ad_message\":1,\"ad_message_compose\":1,\"ad_allmessage\":1,\"ad_todo\":1,\"ad_todo_compose\":1,\"ad_todo_delete\":1,\"ad_timeline\":1,\"ad_timeline_compose\":1,\"ad_timeline_delete\":1,\"ad_assignment\":1,\"ad_assignment_compose\":1,\"ad_assignment_delete\":1,\"ad_leave\":1,\"ad_elearning\":0,\"ad_lesson\":1,\"ad_tracking\":0},\"faculty\":{\"fc_message\":1,\"fc_message_compose\":1,\"fc_message_approval\":1,\"fc_todo\":1,\"fc_todo_compose\":1,\"fc_todo_delete\":1,\"fc_todo_approval\":1,\"fc_timeline\":1,\"fc_timeline_compose\":1,\"fc_timeline_delete\":1,\"fc_timeline_approval\":1,\"fc_assignment\":1,\"fc_assignment_compose\":1,\"fc_assignment_delete\":1,\"fc_assignment_approval\":1,\"fc_attendance\":1,\"fc_leave\":0,\"fc_elearning\":1,\"fc_elearning_approval\":0,\"fc_lesson\":1,\"fc_exam\":1,\"fc_exam_approval\":1,\"fc_class_test\":0,\"fc_class_test_approval\":0,\"fc_extra\":0,\"fc_extra_approval\":0},\"student\":{\"st_message\":1,\"st_message_compose\":1,\"st_allmessage\":1,\"st_todo\":1,\"st_timeline\":1,\"st_timeline_compose\":1,\"st_timeline_delete\":1,\"st_timeline_approval\":1,\"st_assignment\":1,\"st_attendance\":1,\"st_elearning\":1,\"st_timetable\":1,\"st_lesson\":1,\"st_results\":1,\"st_tracking\":0,\"st_payment\":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `elearning_contents`
--

CREATE TABLE `elearning_contents` (
  `id` int NOT NULL,
  `topic_id` int NOT NULL,
  `division_id` int NOT NULL,
  `description` longtext NOT NULL,
  `status` enum('draft','published') NOT NULL,
  `approval_status` enum('pending','approved','rejected') NOT NULL,
  `reject_reason` text NOT NULL,
  `added_date` datetime NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_updated_by` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elearning_contents`
--

INSERT INTO `elearning_contents` (`id`, `topic_id`, `division_id`, `description`, `status`, `approval_status`, `reject_reason`, `added_date`, `last_updated_by`) VALUES
(1, 1, 0, '<p>asdasd</p>\n', 'published', 'pending', '', '2021-04-27 17:45:15', 291),
(2, 3, 0, '<p>zxczxc</p>\n', 'published', 'pending', '', '2021-04-27 17:52:26', 291),
(3, 5, 0, '<p>An alphabet is a standardized set of basic written symbols or graphemes that represent the phonemes of certain spoken languages.</p>\n', 'published', 'pending', '', '2021-04-27 18:33:37', 291),
(4, 4, 0, '<p>The modern&nbsp;<b>English alphabet</b>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Latin-script_alphabet\" title=\"Latin-script alphabet\">Latin alphabet</a>&nbsp;consisting of 26&nbsp;<a href=\"https://en.wikipedia.org/wiki/Letter_(alphabet)\" title=\"Letter (alphabet)\">letters</a>, each having an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Letter_case\" title=\"Letter case\">upper- and lower-case</a>&nbsp;form. It originated around the 7th century from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Latin_script\" title=\"Latin script\">Latin script</a>. Since then, letters have been added or removed to give the current Modern English&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alphabet\" title=\"Alphabet\">alphabet</a>&nbsp;of 26 letters with no&nbsp;<a href=\"https://en.wikipedia.org/wiki/Diacritic\" title=\"Diacritic\">diacritics</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Digraph_(orthography)\" title=\"Digraph (orthography)\">diagraphs</a>, and special characters. The word&nbsp;<i>alphabet</i>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Compound_(linguistics)\" title=\"Compound (linguistics)\">compound</a>&nbsp;of the first two letters of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Greek_alphabet\" title=\"Greek alphabet\">Greek alphabet</a>,&nbsp;<i><a href=\"https://en.wikipedia.org/wiki/Alpha\" title=\"Alpha\">alpha</a></i>&nbsp;and&nbsp;<i><a href=\"https://en.wikipedia.org/wiki/Beta\" title=\"Beta\">beta</a></i>.</p>\n', 'published', 'pending', '', '2021-04-27 18:38:53', 291),
(5, 6, 0, '<p>In linguistics, a word of a spoken language can be defined as the smallest sequence of phonemes that can be uttered in isolation with objective or practical meaning.</p>\n', 'published', 'pending', '', '2021-04-27 18:40:59', 291),
(6, 9, 0, '<p><b>Animals</b>&nbsp;(also called&nbsp;<b>Metazoa</b>) are&nbsp;<a href=\"https://en.wikipedia.org/wiki/Multicellular\" title=\"Multicellular\">multicellular</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Eukaryotic\" title=\"Eukaryotic\">eukaryotic</a>&nbsp;organisms that form the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kingdom_(biology)\" title=\"Kingdom (biology)\">biological kingdom</a>&nbsp;<b>Animalia</b>. With few exceptions, animals&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heterotroph\" title=\"Heterotroph\">consume organic material</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cellular_respiration#Aerobic_respiration\" title=\"Cellular respiration\">breathe oxygen</a>, are&nbsp;<a href=\"https://en.wikipedia.org/wiki/Motility\" title=\"Motility\">able to move</a>, can&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sexual_reproduction\" title=\"Sexual reproduction\">reproduce sexually</a>, and grow from a hollow sphere of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cell_(biology)\" title=\"Cell (biology)\">cells</a>, the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Blastula\" title=\"Blastula\">blastula</a>, during&nbsp;<a href=\"https://en.wikipedia.org/wiki/Embryogenesis\" title=\"Embryogenesis\">embryonic development</a>. Over 1.5 million&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extant_taxon\" title=\"Extant taxon\">living</a>&nbsp;animal&nbsp;<a href=\"https://en.wikipedia.org/wiki/Species\" title=\"Species\">species</a>&nbsp;have been&nbsp;<a href=\"https://en.wikipedia.org/wiki/Species_description\" title=\"Species description\">described</a>—of which around 1 million are&nbsp;<a href=\"https://en.wikipedia.org/wiki/Insecta\" title=\"Insecta\">insects</a>—but it has been estimated there are over 7 million animal species in total. Animals range in length from 8.5 micrometres (0.00033&nbsp;in) to 33.6 metres (110&nbsp;ft). They have&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ecology\" title=\"Ecology\">complex interactions</a>&nbsp;with each other and their environments, forming intricate&nbsp;<a href=\"https://en.wikipedia.org/wiki/Food_web\" title=\"Food web\">food webs</a>. The scientific study of animals is known as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Zoology\" title=\"Zoology\">zoology</a>.</p>\n', 'published', 'pending', '', '2021-04-27 18:45:52', 291),
(7, 13, 0, '<p>phontent content</p>\n', 'draft', 'pending', '', '2021-04-28 14:11:16', 291),
(8, 15, 0, '<p>test content</p>\n', 'published', 'pending', '', '2021-04-29 12:11:46', 291),
(9, 17, 0, '<p>test content</p>\n', 'published', 'pending', '', '2021-05-06 11:13:34', 291);

-- --------------------------------------------------------

--
-- Table structure for table `elearning_documents`
--

CREATE TABLE `elearning_documents` (
  `id` int NOT NULL,
  `topic_id` int NOT NULL,
  `division_id` int NOT NULL,
  `file_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elearning_documents`
--

INSERT INTO `elearning_documents` (`id`, `topic_id`, `division_id`, `file_id`, `name`, `size`, `type`, `added_date`) VALUES
(1, 5, 0, '', 'vector-english-alphabet-fonts-in-different-colors.jpeg', '56.4 KB', 'image/jpeg', '2021-04-27 18:36:34'),
(4, 4, 0, '', 'alphabet-696x373.jpeg', '36.18 KB', 'image/jpeg', '2021-04-27 18:39:57'),
(5, 6, 0, '', 'Common-Words-in-English-9.jpeg', '62.98 KB', 'image/jpeg', '2021-04-27 18:42:04'),
(7, 9, 0, '', 'mammals-400x300.webp', '24.5 KB', 'image/webp', '2021-04-27 18:46:38'),
(8, 15, 0, '', 'Hetzner_2020-09-04_R0011884561.pdf', '49.81 KB', 'application/pdf', '2021-04-29 12:13:21'),
(9, 15, 0, '', 'AKIRA LMS PPT.pptx', '170.26 KB', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2021-04-29 12:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `elearning_topics`
--

CREATE TABLE `elearning_topics` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `standard_id` int NOT NULL,
  `division_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `parent` int NOT NULL,
  `sort_order` int NOT NULL,
  `added_date` datetime NOT NULL,
  `edited_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_by` int NOT NULL,
  `last_edited_by` int NOT NULL,
  `views` int NOT NULL,
  `viewed_by` longtext NOT NULL,
  `delete_status` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elearning_topics`
--

INSERT INTO `elearning_topics` (`id`, `course_id`, `standard_id`, `division_id`, `subject_id`, `type`, `name`, `parent`, `sort_order`, `added_date`, `added_by`, `last_edited_by`, `views`, `viewed_by`, `delete_status`) VALUES
(6, 1, 2, 0, 1, 't', '1.2 Words', 4, 3, '2021-04-27 18:31:12', 291, 0, 1, '123', '0'),
(5, 1, 2, 0, 1, 't', '1.1 ABCD', 4, 2, '2021-04-27 18:30:55', 291, 0, 1, '123', '0'),
(4, 1, 2, 0, 1, 'c', 'Chapter 1', 0, 1, '2021-04-27 18:30:37', 291, 0, 1, '123', '0'),
(7, 1, 2, 0, 1, 't', '1.3 Fruits', 4, 4, '2021-04-27 18:31:26', 291, 0, 0, '', '0'),
(8, 1, 2, 0, 1, 'c', 'Chapter 2', 0, 3, '2021-04-27 18:31:36', 291, 0, 0, '', '0'),
(9, 1, 2, 0, 1, 't', '2.1 Animals', 8, 4, '2021-04-27 18:31:49', 291, 0, 1, '123', '0'),
(10, 1, 2, 0, 1, 't', '2.2 Birds', 8, 5, '2021-04-27 18:32:01', 291, 0, 0, '', '0'),
(11, 1, 2, 0, 1, 't', '2.3 Shapes', 8, 6, '2021-04-27 18:32:21', 291, 0, 0, '', '0'),
(12, 1, 2, 0, 1, 'c', 'Chapter 3', 0, 5, '2021-04-28 14:10:51', 291, 0, 0, '', '0'),
(13, 1, 2, 0, 1, 't', '3.1 Phonetics', 12, 6, '2021-04-28 14:11:03', 291, 0, 0, '', '0'),
(14, 1, 2, 0, 1, 'c', 'Chapter 4', 0, 7, '2021-04-29 12:11:05', 291, 0, 0, '', '0'),
(15, 1, 2, 0, 1, 't', '4.1 Test 4.1', 14, 8, '2021-04-29 12:11:30', 291, 0, 1, '123', '0'),
(16, 1, 2, 0, 1, 'c', 'Chapter 5', 0, 9, '2021-05-06 11:13:09', 291, 0, 0, '', '0'),
(17, 1, 2, 0, 1, 't', '5.1 Topic test', 16, 10, '2021-05-06 11:13:26', 291, 0, 0, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `elearning_videos`
--

CREATE TABLE `elearning_videos` (
  `id` int NOT NULL,
  `topic_id` int NOT NULL,
  `division_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `url` tinytext NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elearning_videos`
--

INSERT INTO `elearning_videos` (`id`, `topic_id`, `division_id`, `type`, `video_id`, `url`, `added_date`) VALUES
(12, 5, 0, 'youtube', 'YCIi5wBWdak', 'https://www.youtube.com/watch?v=YCIi5wBWdak', '2021-04-27 18:36:34'),
(11, 5, 0, 'youtube', 'EVTB8xIHWU0', 'https://www.youtube.com/watch?v=EVTB8xIHWU0', '2021-04-27 18:36:34'),
(10, 5, 0, 'youtube', 'w_-lz2BI2Co', 'https://www.youtube.com/watch?v=w_-lz2BI2Co', '2021-04-27 18:36:34'),
(14, 4, 0, 'youtube', 'EVTB8xIHWU0', 'https://www.youtube.com/watch?v=EVTB8xIHWU0', '2021-04-27 18:39:57'),
(19, 6, 0, 'youtube', 'DITn1RqVE04', 'http://youtube.com/watch?v=DITn1RqVE04', '2021-04-27 18:42:04'),
(18, 6, 0, 'youtube', '1sY22O_rBVQ', 'https://www.youtube.com/watch?v=1sY22O_rBVQ', '2021-04-27 18:42:04'),
(21, 9, 0, 'youtube', 'CA6Mofzh7jo', 'https://www.youtube.com/watch?v=CA6Mofzh7jo', '2021-04-27 18:46:38'),
(22, 13, 0, 'youtube', '', 'https://us02web.zoom.us/j/85129458420?pwd=MktDcGx4OTEwbFFvUVQwM2dBQ3gvQT09', '2021-04-28 14:11:20'),
(24, 15, 0, 'youtube', 'WPni755-Krg', 'https://www.youtube.com/watch?v=WPni755-Krg', '2021-04-29 12:13:21'),
(26, 17, 0, 'youtube', '6e0UJmm7baQ', 'https://www.youtube.com/watch?v=6e0UJmm7baQ', '2021-05-06 11:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `eta`
--

CREATE TABLE `eta` (
  `id` int NOT NULL,
  `route_id` int NOT NULL,
  `eta` varchar(100) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `session` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_work`
--

CREATE TABLE `home_work` (
  `id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `course` int NOT NULL,
  `standard` int NOT NULL,
  `division` int NOT NULL,
  `subject` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `marks` int NOT NULL,
  `attachment` longtext NOT NULL,
  `answer_key` varchar(255) NOT NULL,
  `read_id` text NOT NULL,
  `delivered_id` text NOT NULL,
  `added_date` datetime NOT NULL,
  `acd_year` varchar(100) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `notes` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `home_work`
--

INSERT INTO `home_work` (`id`, `teacher_id`, `course`, `standard`, `division`, `subject`, `name`, `description`, `date`, `marks`, `attachment`, `answer_key`, `read_id`, `delivered_id`, `added_date`, `acd_year`, `status`, `notes`) VALUES
(1, 291, 1, 1, 1, 1, 'Submit 10 words with VOWELS', 'Submit 10 words with VOWELS.', '2020-05-14', 0, '', '', '123', '123,255,332,504', '2020-05-13 16:36:04', '2020-2021', 'approved', ''),
(2, 291, 1, 1, 1, 2, 'Prepare a story about 5 Poems', 'Prepare a story about 5 Poems', '2020-05-15', 0, '', '', '', '255,123', '2020-05-13 16:37:17', '2020-2021', 'approved', ''),
(3, 291, 1, 2, 2, 4, 'Prepare the multiplication table from 11 to 22', 'Prepare the multiplication table from 11 to 22', '2020-05-14', 0, '', '', '153', '153,156,160,165,164,262,123', '2020-05-13 16:45:51', '2020-2021', 'approved', ''),
(4, 291, 1, 1, 1, 1, 'Demo Home work', 'Demo Home work description', '2020-05-21', 0, '', '', '123', '123,255,332,504', '2020-05-20 15:39:39', '2020-2021', 'approved', ''),
(5, 291, 1, 1, 1, 4, 'PoS', 'topic detauks', '2020-05-22', 0, '', '', '123', '255,123,332,504', '2020-05-22 12:02:45', '2020-2021', 'approved', ''),
(6, 291, 1, 1, 1, 1, 'Consumable', 'Home work', '2020-05-25', 0, '', '', '123', '255,123,332,504', '2020-05-24 18:53:10', '2020-2021', 'approved', ''),
(7, 291, 1, 2, 2, 1, 'Test homework', 'Test Homework', '2020-05-29', 0, '1', '', '262,123', '153,165,156,160,164,262,123', '2020-05-29 13:46:56', '2020-2021', 'approved', ''),
(8, 230, 1, 1, 1, 1, 'Write capital lettera', 'Write neatly from A toZ', '2020-06-05', 0, '3', '4', '123', '123', '2020-05-31 10:36:11', '2020-2021', 'approved', ''),
(11, 291, 0, 1, 1, 4, 'Ascending order', 'Ascending order', '2020-07-10', 0, '', '', '', '123', '2020-07-10 13:18:08', '2020-2021', 'approved', ''),
(10, 291, 0, 1, 1, 4, 'Ascending order', 'Ascending order', '2020-07-10', 0, '', '', '', '123', '2020-07-10 13:14:30', '2020-2021', 'approved', ''),
(12, 291, 0, 1, 1, 4, 'Ascending order', 'Ascending order', '2020-07-10', 0, '', '', '', '123', '2020-07-10 13:22:32', '2020-2021', 'approved', ''),
(13, 291, 0, 1, 1, 4, 'Ascending order', 'Ascending order', '2020-07-10', 0, '19', '', '', '', '2020-07-10 13:22:50', '2020-2021', 'approved', ''),
(14, 291, 1, 1, 1, 1, 'test', 'test', '2020-08-04', 0, '21', '', '', '123', '2020-08-04 14:29:32', '2020-2021', 'approved', ''),
(15, 291, 1, 1, 1, 4, 'test homework', 'Prepare the multiplication table', '2020-08-11', 0, '22', '', '123', '123', '2020-08-04 19:36:37', '2020-2021', 'approved', ''),
(22, 291, 1, 5, 8, 1, 'test at 5 pm', 'test contents', '2020-08-21', 0, '89', '104', '', '8,45', '2020-08-10 17:05:34', '2020-2021', 'approved', ''),
(18, 622, 0, 8, 13, 1, 'new homework from student', 'this is wrong', '2020-08-11', 0, '', '', '', '143', '2020-08-10 12:09:24', '2020-2021', 'approved', ''),
(19, 291, 0, 8, 13, 6, 'COVID-19 May Never Go Away ? With Or Without A Vaccine', '1.\nTikTok Is used to create short dance, lip-sync, comedy and talent videos.\n2. \nVault-Hide SMS, Pics & Videos, better known as `Vault, is an application which will allow us to create a small safe in our Android terminal, in which we can keep our most private text messages, photos or videos\n3. Vigo video\n\nVigo Video is a short video social network where you can share your daily lives with your friends, family, and other users from all over the world. Capture and create your own funny short videos with our special effects camera and tons of cute stickers. Discover and meet fun users with similar interests while sharing your life moments. Showcase your talents in 15 seconds with users from all over the world, whether it?s in dance, cooking, beauty, art, comedy, music, pets and more!\n\n4. On BIGO LIVE, you can go live to get many fans, live talk with your friends, video chat with new friends all over the world, and watch many wonderful live videos all the time.\nlink : - https://www.npr.org/2020/08/09/900490301/covid-19-may-never-go-away-with-or-without-a-vaccine', '2020-08-20', 0, '65,66,67,68,69,70,71,72,73', '74,75,76,77', '', '143', '2020-08-10 16:12:49', '2020-2021', 'approved', ''),
(20, 291, 0, 8, 13, 4, 'mathematics test homework', 'mathematics test homework', '2020-08-23', 0, '', '', '143', '143', '2020-08-10 16:26:56', '2020-2021', 'approved', ''),
(21, 291, 1, 8, 13, 7, 'robotics', 'robotics', '2020-08-10', 0, '78,79,81,82,83', '80', '', '142,143', '2020-08-10 16:28:37', '2020-2021', 'approved', ''),
(23, 291, 1, 4, 6, 1, 'this is test', 'test', '2020-08-14', 0, '105,106', '', '', '57,175,293,313,106', '2020-08-14 15:22:32', '2020-2021', 'approved', ''),
(24, 291, 1, 4, 6, 1, 'this is test', 'test', '2020-08-14', 0, '107,108', '', '175', '175,293,313,57,106', '2020-08-14 15:23:41', '2020-2021', 'approved', ''),
(25, 291, 1, 1, 1, 5, 'Test Home Work', 'Test Home work', '2020-08-19', 0, '', '', '', '123', '2020-08-14 15:58:29', '2020-2021', 'approved', ''),
(28, 291, 1, 1, 1, 1, 'Testing HOMEWORK', 'SK TESTING', '2020-09-20', 0, '114,115,116', '', '', '123', '2020-09-18 09:36:24', '2020-2021', 'approved', ''),
(27, 291, 1, 4, 6, 6, 'ict homework test', 'ict homework test before approval', '2020-08-14', 0, '111,112', '113', '175', '175,293,313,57,106', '2020-08-14 17:18:02', '2020-2021', 'approved', ''),
(29, 291, 1, 1, 1, 1, 'HOME WORK 1', 'COVID-19 affects different people in different ways. Most infected people will develop mild to moderate illness and recover without hospitalization.\nMost common symptoms:\nfever\ndry cough\ntiredness\nLess common symptoms:\naches and pains\nsore throat\ndiarrhoea\nconjunctivitis', '2020-09-19', 0, '', '', '', '123', '2020-09-18 12:26:10', '2020-2021', 'approved', ''),
(30, 291, 1, 1, 1, 1, 'HomeWork 2', 'You can be infected by breathing in the virus if you are within close proximity of someone who has COVID-19, or by touching a contaminated surface and then your eyes, nose or mouth.', '2020-09-20', 0, '118', '', '', '123', '2020-09-18 12:28:09', '2020-2021', 'approved', ''),
(31, 291, 1, 1, 1, 1, 'HOMEWORK 3', 'I\'m unstoppable, I\'m a Porsche with no brakes', '2020-09-19', 0, '', '', '', '123', '2020-09-18 12:29:43', '2020-2021', 'approved', ''),
(32, 291, 1, 4, 6, 1, 'homework', 'October home work', '2020-10-13', 0, '', '', '175', '293,313,57,175,106', '2020-10-13 11:45:54', '2020-2021', 'approved', ''),
(33, 291, 1, 4, 6, 2, 'home work test', 'homework grade 1', '2020-10-13', 0, '', '', '', '', '2020-10-13 11:47:28', '2020-2021', 'approved', ''),
(34, 291, 1, 4, 6, 4, 'homework grade 1', 'home work grade 1 maths', '2020-10-13', 0, '120', '', '', '175', '2020-10-13 11:59:35', '2020-2021', 'approved', ''),
(35, 291, 1, 4, 6, 1, 'keep', 'Keep waiting', '2020-11-30', 0, '', '124', '', '175', '2020-11-16 19:02:50', '2020-2021', 'approved', ''),
(36, 291, 1, 4, 6, 6, '12334', '12343', '2020-11-25', 0, '', '', '', '175', '2020-11-16 19:13:30', '2020-2021', 'approved', ''),
(37, 291, 1, 1, 1, 4, 'Maths HQ 1', 'Test HQ Home work', '2020-12-05', 0, '125', '', '', '', '2020-12-04 13:13:21', '2020-2021', 'approved', ''),
(38, 291, 1, 4, 6, 4, 'test', 'test HW', '2020-12-30', 0, '', '', '', '175', '2020-12-28 21:55:36', '2020-2021', 'approved', ''),
(39, 291, 1, 1, 1, 4, 'Test Homewok', 'test', '2021-01-22', 0, '', '', '', '', '2021-01-19 17:36:23', '2020-2021', 'approved', ''),
(40, 291, 1, 1, 1, 4, 'Test Homework', 'Test Maths', '2021-01-29', 0, '', '', '', '', '2021-01-21 13:03:07', '2020-2021', 'approved', ''),
(41, 230, 1, 2, 2, 1, 'English', 'English recitation for kids in primary classes helps in a child’s linguistic, emotional, analytical and mental development', '2021-01-31', 0, '128', '', '123', '123', '2021-01-31 11:11:40', '2020-2021', 'approved', ''),
(42, 230, 1, 2, 2, 4, 'Mathematics Home Work 2', 'White down 1 to 100 for ten times', '2021-01-31', 0, '129', '', '', '123', '2021-01-31 11:13:23', '2020-2021', 'approved', ''),
(43, 230, 1, 2, 2, 5, 'Science chapter 2 & 3', 'Testing for chapter 1', '2021-01-31', 0, '130', '', '', '123', '2021-01-31 11:15:16', '2020-2021', 'approved', ''),
(44, 230, 1, 2, 2, 3, 'Paragraph 1 for Hindi Language', 'white down a paragraph in Netaji subhash chandra Bose', '2021-01-31', 0, '131', '133', '123', '123', '2021-01-31 11:17:29', '2020-2021', 'approved', ''),
(45, 291, 1, 2, 2, 4, 'test homework', 'test', '2021-02-04', 0, '', '', '', '123', '2021-02-01 15:00:08', '2020-2021', 'approved', ''),
(46, 291, 1, 2, 2, 3, 'Bring notebook', 'Bring the notebook for correction', '2021-02-15', 0, '', '', '123', '123', '2021-02-12 13:23:01', '2020-2021', 'approved', ''),
(47, 291, 1, 2, 2, 14, 'Task 1', 'Task about Visual Arts', '2021-02-20', 0, '', '', '', '123', '2021-02-18 17:50:43', '2020-2021', 'approved', ''),
(48, 291, 1, 2, 2, 3, 'youtube video', 'https://www.youtube.com/watch?v=Q8RnrLi6XcI', '2021-03-20', 0, '', '', '123', '123', '2021-03-19 15:54:44', '2020-2021', 'approved', ''),
(50, 291, 1, 2, 2, 4, 'Home work 1', 'Send the multiplication table for 7', '2021-04-30', 0, '', '', '', '', '2021-04-27 13:42:15', '2020-2021', 'pending', ''),
(49, 889, 1, 12, 15, 1, 'VISHU SPECIAL', 'PLEASE WRITE AND SUBMIT A ESSAY ON VISHU AND HOW IT IS CELEBRATED IN KERALA', '2021-04-15', 0, '', '', '', '', '2021-04-13 11:25:45', '2020-2021', 'approved', ''),
(51, 291, 1, 2, 2, 3, 'Home work 2', 'Prepare 2 Doha', '2021-04-30', 0, '137', '', '', '', '2021-04-28 14:04:46', '2020-2021', 'pending', ''),
(52, 291, 1, 4, 6, 6, 'Covid 19', 'Covid 19', '2021-04-30', 0, '138', '', '', '', '2021-04-29 14:00:48', '2020-2021', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `home_work_attachments`
--

CREATE TABLE `home_work_attachments` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `home_work_attachments`
--

INSERT INTO `home_work_attachments` (`id`, `name`, `type`) VALUES
(1, '1.PNG', 'image'),
(2, '2.PNG', 'image'),
(3, 'ppt2.pptx', 'application'),
(4, 'newppt.pptx', 'application'),
(5, 'PDF.pdf', 'application'),
(6, 'Notes.xlsx', 'application'),
(19, 'Student_Report_Card_with_marks_final.xlsx', 'application'),
(8, 'PDF1.pdf', 'application'),
(9, 'PPT.pptx', 'application'),
(18, 'Rock_Tian_Jia_AD_003_2019-2020_Exam_Report.pdf', 'application'),
(20, 'PPT1.pptx', 'application'),
(21, 'Student_Id_Card_(3).pdf', 'application'),
(22, 'test.pdf', 'application'),
(85, 'IMG-20200810-WA0018.jpg', 'image'),
(86, 'Application_Early_Certification_V1_0_23022020.pdf', 'application'),
(84, 'FSIT_Fees_Paid_updated.xls', 'application'),
(30, 'Screenshot_2020-08-09-20-54-07-82.jpg', 'image'),
(29, 'IMG-20200810-WA0002.jpg', 'image'),
(31, 'Student_Report_Card_with_marks_final1.xlsx', 'application'),
(32, 'ss_admission.xls', 'application'),
(33, 'sample.txt', 'text'),
(34, 'Merit_Certificate.pdf', 'application'),
(35, 'sample.pptx', 'application'),
(36, 'file-sample_100kB.doc', 'application'),
(37, 'IMG-20200810-WA00021.jpg', 'image'),
(38, 'Screenshot_2020-08-09-20-54-07-821.jpg', 'image'),
(39, 'file-sample_100kB1.doc', 'application'),
(40, 'Merit_Certificate1.pdf', 'application'),
(41, 'sample1.pptx', 'application'),
(42, 'sample1.txt', 'text'),
(43, 'ss_admission1.xls', 'application'),
(44, 'IMG-20200810-WA00022.jpg', 'image'),
(45, 'Screenshot_2020-08-09-20-54-07-822.jpg', 'image'),
(46, 'Student_Report_Card_with_marks_final2.xlsx', 'application'),
(47, 'ss_admission2.xls', 'application'),
(48, 'sample2.txt', 'text'),
(49, 'Merit_Certificate2.pdf', 'application'),
(50, 'sample2.pptx', 'application'),
(51, 'file-sample_100kB2.doc', 'application'),
(52, 'title.jpg', 'image'),
(53, 'Student_Report_Card_with_marks_final3.xlsx', 'application'),
(54, 'ss_admission3.xls', 'application'),
(55, 'sample3.txt', 'text'),
(56, 'sample3.pptx', 'application'),
(57, 'Merit_Certificate3.pdf', 'application'),
(58, 'file-sample_100kB3.doc', 'application'),
(59, 'ss_admission4.xls', 'application'),
(60, 'ss_admission5.xls', 'application'),
(61, 'Student_Report_Card_with_marks_final4.xlsx', 'application'),
(62, 'file-sample_100kB4.doc', 'application'),
(63, 'sample4.pptx', 'application'),
(64, 'title1.jpg', 'image'),
(65, 'title2.jpg', 'image'),
(66, 'Student_Report_Card_with_marks_final5.xlsx', 'application'),
(67, 'ss_admission6.xls', 'application'),
(68, 'sample4.txt', 'text'),
(69, 'sample5.pptx', 'application'),
(70, 'Merit_Certificate4.pdf', 'application'),
(71, 'file-sample_100kB5.doc', 'application'),
(72, 'ss_admission7.xls', 'application'),
(73, 'ss_admission8.xls', 'application'),
(74, 'Student_Report_Card_with_marks_final6.xlsx', 'application'),
(75, 'file-sample_100kB6.doc', 'application'),
(76, 'sample6.pptx', 'application'),
(77, 'title3.jpg', 'image'),
(78, 'title4.jpg', 'image'),
(79, 'XI_MATHS-COMP.pdf', 'application'),
(80, 'sample5.txt', 'text'),
(81, 'V_STD_A.pdf', 'application'),
(82, 'sample7.pptx', 'application'),
(83, 'ss_admission9.xls', 'application'),
(87, 'IMG-20200810-WA0006.jpg', 'image'),
(88, 'sample8.pptx', 'application'),
(89, 'document_(11).pdf', 'application'),
(90, 'Screenshot_2020-08-10-15-36-12-92_48f0c512cefa6d28e7cf4fae90afd6813.jpg', 'image'),
(91, 'title8.jpg', 'image'),
(92, 'Student_Report_Card_with_marks_final10.xlsx', 'application'),
(93, 'Screenshot_2020-08-10-16-46-23-57_48f0c512cefa6d28e7cf4fae90afd681.jpg', 'image'),
(94, 'title11.jpg', 'image'),
(95, 'Screenshot_2020-08-10-16-46-23-57_48f0c512cefa6d28e7cf4fae90afd6811.jpg', 'image'),
(96, 'title12.jpg', 'image'),
(97, 'title13.jpg', 'image'),
(98, 'sample12.pptx', 'application'),
(99, 'Merit_Certificate8.pdf', 'application'),
(100, 'file-sample_100kB7.doc', 'application'),
(101, 'ss_admission18.xls', 'application'),
(102, 'Student_Report_Card_with_marks_final17.xlsx', 'application'),
(103, 'Letter(1).pdf', 'application'),
(104, 'FSIT_Fees_Paid_updated1.xls', 'application'),
(105, 'IMG-20200814-WA0012.jpg', 'image'),
(106, 'IMG-20200814-WA0011.jpg', 'image'),
(107, 'IMG-20200814-WA00121.jpg', 'image'),
(108, 'IMG-20200814-WA00111.jpg', 'image'),
(109, 'Screenshot_2020-08-13-17-36-34-67_c4b2fae5edd267b2847f1b32e9bc41c3.png', 'image'),
(110, 'Course_Certificate.pdf', 'application'),
(111, 'IMG-20200814-WA00122.jpg', 'image'),
(112, 'sample6.txt', 'text'),
(113, 'ss_admission19.xls', 'application'),
(114, 'download.jpg', 'image'),
(115, 'female-college-student-mst.jpg', 'image'),
(116, 'Student_Fee_Payment.pdf', 'application'),
(117, 'WhatsApp_Image_2020-08-11_at_12_25_57_AM.jpeg', 'image'),
(118, 'WhatsApp_Image_2020-08-11_at_12_22_49_AM.jpeg', 'image'),
(119, 'Student_Id_Card(2).pdf', 'application'),
(120, 'Screenshot_2020-10-13-11-59-06-527_com_akiraplc_smartpay.png', 'image'),
(122, 'Yuval_Noah_Harari_-_Sapiens.pdf', 'application'),
(124, 'Yuval_Noah_Harari_-_Sapiens1.pdf', 'application'),
(125, 'fys4-01.jpg', 'image'),
(126, 'ResumeChandniKJ.pdf', 'application'),
(128, 'download1.jpg', 'image'),
(129, 'download_(1).jpg', 'image'),
(130, 'download_(2).jpg', 'image'),
(131, 'download_(3).jpg', 'image'),
(132, 'WhatsApp_Image_2020-08-11_at_12_25_57_AM1.jpeg', 'image'),
(133, 'IMG_20201015_124852.jpg', 'image'),
(134, 'IMG-20210124-WA0001.jpg', 'image'),
(135, 'Screenshot_2021-04-27_at_12_02_06_PM.png', 'image'),
(136, 'Student_Id_Card.pdf', 'application'),
(137, 'Screenshot_2021-04-27_at_12_02_06_PM1.png', 'image'),
(138, 'BFPS_Phase_Time_Frame.xlsx', 'application');

-- --------------------------------------------------------

--
-- Table structure for table `home_work_details`
--

CREATE TABLE `home_work_details` (
  `id` int NOT NULL,
  `home_work_id` int NOT NULL,
  `student_id` int NOT NULL,
  `description` longtext NOT NULL,
  `attachment` text NOT NULL,
  `submitted_date` datetime NOT NULL,
  `mark` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `review_attachment` varchar(255) NOT NULL,
  `status` enum('pending','completed','resubmission') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `home_work_details`
--

INSERT INTO `home_work_details` (`id`, `home_work_id`, `student_id`, `description`, `attachment`, `submitted_date`, `mark`, `review`, `review_attachment`, `status`) VALUES
(1, 4, 123, '<p>Covering letter</p>', '', '2020-05-20 15:45:30', '', 'good work', '', 'completed'),
(2, 1, 123, '<p>Owl</p>', '', '2020-05-25 13:18:34', '', 'Good Work', '', 'completed'),
(3, 7, 153, '<p>Home work submit</p>', '2', '2020-05-29 13:48:32', '', 'good work', '', 'completed'),
(4, 3, 262, '<p>cnadlcnacknma</p>', '', '2020-06-01 18:50:09', '', '', '', 'pending'),
(5, 2, 123, '', '5', '2020-06-16 21:14:26', '', '', '', 'pending'),
(6, 5, 123, '', '6', '2020-06-17 18:26:01', '', 'Good Work', '', 'completed'),
(7, 6, 123, '', '8', '2020-06-18 12:16:30', '', 'eciecoim', '9', 'completed'),
(8, 8, 123, '', '20', '2020-07-14 16:30:53', '', '', '', 'pending'),
(9, 21, 142, 'no description', '84,85,86', '2020-08-10 16:34:03', '', 'please resubmit', '87,88', 'resubmission'),
(10, 21, 143, 'again description testing', '', '2020-08-10 16:46:07', '', 'wrong', '', 'resubmission'),
(11, 22, 8, 'computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or  computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or  computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or  computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or  computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or  computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or  computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or  computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or', '', '2020-08-10 17:17:58', '', 'veendum chey', '', 'resubmission'),
(12, 22, 8, 'computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or', '', '2020-08-10 17:18:35', '', 'veendum chey', '', 'resubmission'),
(13, 22, 8, 'computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or', '', '2020-08-10 17:18:51', '', 'veendum chey', '', 'resubmission'),
(14, 22, 8, 'computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or computing, plain text is a loose term for data that represent only characters of readable material but not its graphical representation nor other objects. It may also include a limited number of characters that control simple arrangement of text, such as spaces, line breaks, or', '93,94', '2020-08-10 17:19:37', '', 'veendum chey', '', 'resubmission'),
(15, 22, 8, 'computing, plain text is a loose term for data that represent only', '95,96', '2020-08-10 17:20:25', '', 'veendum chey', '', 'resubmission'),
(16, 22, 8, 'jejejjejsjekjejdjdjdjdjdjdjdjdjdjjdjdjdjsjdjjdjdjdjdjdjdjdjdjdjjdjshshsjheh', '97', '2020-08-10 17:20:40', '', 'veendum chey', '', 'resubmission'),
(17, 22, 45, 'ittikkglugugjhkhiihhjvjgjgjvjguguvufyfyfyvhvuvjv fyfhchgugugyugugugugugugugig', '', '2020-08-10 17:28:13', '', 'ygfyjfj', '', 'completed'),
(18, 22, 45, 'ittikkglugugjhkhiihhjvjgjgjvjguguvufyfyfyvhvuvjv fyfhchgugugyugugugugugugugig', '', '2020-08-10 17:28:30', '', 'ygfyjfj', '', 'completed'),
(19, 22, 45, 'ittikkglugugjhkhiihhjvjgjgjvjguguvufyfyfyvhvuvjv fyfhchgugugyugugugugugugugig', '', '2020-08-10 17:29:02', '', 'ygfyjfj', '', 'completed'),
(20, 22, 45, 'ittikkglugugjhkhiihhjvjgjgjvjguguvufyfyfyvhvuvjv fyfhchgugugyugugugugugugugig', '', '2020-08-10 17:29:34', '', 'ygfyjfj', '', 'completed'),
(21, 22, 45, 'ittikkglugugjhkhiihhjvjgjgjvjguguvufyfyfyvhvuvjv fyfhchgugugyugugugugugugugig', '98,99,100,101,102', '2020-08-10 17:30:17', '', 'ygfyjfj', '', 'completed'),
(22, 23, 57, 'skl', '109', '2020-08-14 15:42:39', '', 'good', '', 'completed'),
(23, 27, 175, 't7sutsutsutsuts', '', '2020-08-14 17:19:10', '', 'good wor', '', 'completed'),
(24, 28, 123, 'TEST', '117', '2020-09-18 09:44:27', '', 'good', '', 'completed'),
(25, 30, 123, 'cover', '119', '2020-10-05 17:03:08', '', '', '', 'completed'),
(26, 24, 175, 'hi', '122', '2020-11-16 18:55:14', '', 'Good', '', 'completed'),
(27, 23, 175, 'hlhk', '', '2020-11-16 19:10:18', '', '', '', 'pending'),
(28, 31, 123, 'test', '', '2020-11-25 16:49:03', '', 'good work', '', 'completed'),
(29, 29, 123, 'ffsdfsdvdsvsfdvsd', '', '2020-12-04 13:23:26', '', '', '', 'pending'),
(30, 10, 123, 'submitting home work', '', '2020-12-22 12:40:57', '', '', '', 'pending'),
(31, 25, 123, 'nn', '', '2020-12-24 12:19:36', '', '', '', 'pending'),
(32, 7, 123, 'cmdn vksdvn', '', '2020-12-28 21:45:10', '', 'good work', '', 'completed'),
(33, 3, 123, 'axaxcaxc', '', '2021-01-07 15:21:19', '', '', '', 'pending'),
(34, 41, 123, 'done please check.', '132', '2021-01-31 11:28:30', '', 'good', '', 'completed'),
(35, 43, 123, 'please check i have done  my work', '134', '2021-01-31 11:38:38', '', '', '', 'pending'),
(36, 44, 123, 'caCADcdACADvcad', '', '2021-02-01 14:52:22', '', '', '', 'pending'),
(37, 42, 123, 'compkleted', '', '2021-03-19 15:58:32', '', '', '', 'pending'),
(38, 48, 123, 'Submit homework..', '135', '2021-05-06 10:52:29', '', 'Bad work. Do it propoerly', '', 'pending'),
(39, 47, 123, 'Description/CV', '136', '2021-04-28 13:50:29', '', '', '', 'pending'),
(40, 45, 123, 'Dear Teacher,\n\nPlease find the Homework attached.', '', '2021-05-06 10:51:43', '', 'Good work, Keep it up', '', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `standard_id` int NOT NULL,
  `division_id` int NOT NULL,
  `start` varchar(255) NOT NULL,
  `end` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `applied_date` datetime NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lesson_planner`
--

CREATE TABLE `lesson_planner` (
  `id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `course` int NOT NULL,
  `standard` int NOT NULL,
  `division` int NOT NULL,
  `subject` int NOT NULL,
  `chapter` text NOT NULL,
  `topic` text NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `completed_date` datetime NOT NULL,
  `added_date` datetime NOT NULL,
  `acd_year` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lesson_planner`
--

INSERT INTO `lesson_planner` (`id`, `teacher_id`, `course`, `standard`, `division`, `subject`, `chapter`, `topic`, `date`, `status`, `completed_date`, `added_date`, `acd_year`) VALUES
(1, 2, 1, 4, 6, 1, 'Chapter 1', '1.1 Vowels', '2021-05-28 00:00:00', 'false', '0000-00-00 00:00:00', '2021-04-27 17:32:51', '2020-2021'),
(2, 2, 1, 4, 6, 1, 'Chapter 2', '2.1 Phonetics', '2021-07-30 00:00:00', 'false', '0000-00-00 00:00:00', '2021-04-27 17:33:26', '2020-2021'),
(3, 2, 1, 4, 6, 1, 'Chapter 3', '3.1 Grammer', '2021-10-30 00:00:00', 'false', '0000-00-00 00:00:00', '2021-04-27 17:34:03', '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `message_attachments`
--

CREATE TABLE `message_attachments` (
  `id` int NOT NULL,
  `attachment_id` int NOT NULL,
  `file_path` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `message_attachments`
--

INSERT INTO `message_attachments` (`id`, `attachment_id`, `file_path`, `type`, `added_date`) VALUES
(1, 2958, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/test.pdf', 'pdf', '2020-05-13 16:13:35'),
(2, 2962, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/test1.pdf', 'pdf', '2020-05-13 16:14:20'),
(3, 2969, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/covid1.jpg', 'image', '2020-05-13 16:25:07'),
(4, 2973, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/covid3.jpg', 'image', '2020-05-13 16:25:50'),
(5, 2986, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Presentation.pptx', 'pptx', '2020-05-24 17:12:48'),
(6, 2990, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/3.PNG', 'image', '2020-05-24 18:51:04'),
(7, 3107, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Nonagon.pdf', 'pdf', '2020-05-29 13:50:17'),
(8, 3111, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/31.PNG', 'image', '2020-05-29 13:50:45'),
(9, 3121, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Presentation1.pptx', 'pptx', '2020-05-29 13:51:43'),
(10, 3129, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/1591119627567-1697340918.jpg', 'image', '2020-06-02 23:11:16'),
(11, 3130, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sup7th.doc', 'doc', '2020-06-02 23:15:02'),
(12, 3132, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/accountancy.png', 'image', '2020-06-05 16:25:58'),
(13, 3184, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/profile_pic_21.jpg', 'image', '2020-06-05 16:32:33'),
(14, 3194, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Welcome_Scan.jpg', 'image', '2020-06-11 15:03:31'),
(15, 3198, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file_example_PPT_250kB.ppt', 'ppt', '2020-06-11 15:33:23'),
(16, 3199, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB.doc', 'doc', '2020-06-11 15:33:43'),
(17, 3200, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB.docx', 'docx', '2020-06-11 15:34:03'),
(18, 3201, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate.pdf', 'pdf', '2020-06-11 15:34:21'),
(19, 3202, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample.pptx', 'pptx', '2020-06-11 15:34:37'),
(20, 3203, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample.txt', 'txt', '2020-06-11 15:34:50'),
(21, 3204, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission.xls', 'xls', '2020-06-11 15:35:06'),
(22, 3205, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final.xlsx', 'xlsx', '2020-06-11 15:35:20'),
(23, 3206, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/unnamed.png', 'image', '2020-06-11 15:35:36'),
(24, 3237, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/PDF.pdf', 'pdf', '2020-06-11 16:18:16'),
(25, 3238, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/PPT.pptx', 'pptx', '2020-06-11 16:18:24'),
(26, 3239, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Notes_PDF.docx', 'docx', '2020-06-11 16:18:28'),
(27, 3297, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Notes_word.docx', 'docx', '2020-06-12 21:27:18'),
(28, 3298, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/PPT1.pptx', 'pptx', '2020-06-16 17:47:20'),
(29, 3299, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Notes_word1.docx', 'docx', '2020-06-16 17:47:27'),
(30, 3312, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/PDF1.pdf', 'pdf', '2020-06-17 18:45:53'),
(31, 3336, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/PPT2.pptx', 'pptx', '2020-07-03 20:27:51'),
(32, 3337, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/PDF2.pdf', 'pdf', '2020-07-03 20:28:07'),
(33, 3341, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/PDF3.pdf', 'pdf', '2020-07-08 16:26:05'),
(34, 3342, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Notes_PDF1.docx', 'docx', '2020-07-14 16:47:54'),
(35, 3346, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Notes.xlsx', 'xlsx', '2020-07-14 18:48:37'),
(36, 3360, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Bonafide_Certificate.pdf', 'pdf', '2020-07-28 17:38:11'),
(37, 3385, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Provisional.pdf', 'pdf', '2020-08-04 19:32:45'),
(38, 3386, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200806-WA0004.jpg', 'image', '2020-08-06 11:39:39'),
(39, 3387, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200806-WA0003.jpg', 'image', '2020-08-06 11:39:39'),
(40, 3388, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200806-WA0002.jpg', 'image', '2020-08-06 11:39:40'),
(41, 3389, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Payment.pdf', 'pdf', '2020-08-06 11:39:40'),
(42, 3393, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200810-WA0002.jpg', 'image', '2020-08-10 12:12:47'),
(43, 3397, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200810-WA0006.jpg', 'image', '2020-08-10 12:15:40'),
(44, 3398, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final1.xlsx', 'xlsx', '2020-08-10 12:15:41'),
(45, 3399, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission1.xls', 'xls', '2020-08-10 12:15:41'),
(46, 3400, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample1.txt', 'txt', '2020-08-10 12:15:41'),
(47, 3401, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample1.pptx', 'pptx', '2020-08-10 12:15:41'),
(48, 3402, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate1.pdf', 'pdf', '2020-08-10 12:15:41'),
(49, 3403, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB1.doc', 'doc', '2020-08-10 12:15:41'),
(50, 3413, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200810-WA00021.jpg', 'image', '2020-08-10 12:25:13'),
(51, 3414, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB2.doc', 'doc', '2020-08-10 12:25:13'),
(52, 3415, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate2.pdf', 'pdf', '2020-08-10 12:25:14'),
(53, 3422, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Employee_Hand_Book_.pdf', 'pdf', '2020-08-10 20:05:34'),
(54, 3423, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/holidays-2019.docx', 'docx', '2020-08-10 20:05:44'),
(55, 3445, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/title.jpg', 'image', '2020-08-10 21:10:00'),
(56, 3446, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final2.xlsx', 'xlsx', '2020-08-10 21:10:01'),
(57, 3447, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission2.xls', 'xls', '2020-08-10 21:10:01'),
(58, 3448, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample2.txt', 'txt', '2020-08-10 21:10:01'),
(59, 3449, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample2.pptx', 'pptx', '2020-08-10 21:10:01'),
(60, 3450, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate3.pdf', 'pdf', '2020-08-10 21:10:01'),
(61, 3451, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB3.doc', 'doc', '2020-08-10 21:10:01'),
(62, 3455, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200810-WA00022.jpg', 'image', '2020-08-10 21:14:49'),
(63, 3456, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final3.xlsx', 'xlsx', '2020-08-10 21:14:50'),
(64, 3457, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission3.xls', 'xls', '2020-08-10 21:14:50'),
(65, 3458, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample3.txt', 'txt', '2020-08-10 21:14:50'),
(66, 3459, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample3.pptx', 'pptx', '2020-08-10 21:14:50'),
(67, 3460, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate4.pdf', 'pdf', '2020-08-10 21:14:50'),
(68, 3461, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB4.doc', 'doc', '2020-08-10 21:14:50'),
(69, 3465, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/title1.jpg', 'image', '2020-08-10 21:17:38'),
(70, 3466, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final4.xlsx', 'xlsx', '2020-08-10 21:17:39'),
(71, 3467, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission4.xls', 'xls', '2020-08-10 21:17:39'),
(72, 3468, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample4.txt', 'txt', '2020-08-10 21:17:39'),
(73, 3469, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample4.pptx', 'pptx', '2020-08-10 21:17:39'),
(74, 3470, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate5.pdf', 'pdf', '2020-08-10 21:17:39'),
(75, 3471, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB5.doc', 'doc', '2020-08-10 21:17:39'),
(76, 3475, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/title2.jpg', 'image', '2020-08-10 21:19:51'),
(77, 3476, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final5.xlsx', 'xlsx', '2020-08-10 21:19:51'),
(78, 3477, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission5.xls', 'xls', '2020-08-10 21:19:51'),
(79, 3478, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample5.txt', 'txt', '2020-08-10 21:19:51'),
(80, 3479, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample5.pptx', 'pptx', '2020-08-10 21:19:51'),
(81, 3480, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate6.pdf', 'pdf', '2020-08-10 21:19:51'),
(82, 3481, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB6.doc', 'doc', '2020-08-10 21:19:51'),
(83, 3495, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG20200813185949.jpg', 'image', '2020-08-14 13:10:03'),
(84, 3496, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200813-WA0033.jpg', 'image', '2020-08-14 13:10:04'),
(85, 3497, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Screenshot_2020-08-13-17-36-34-67_c4b2fae5edd267b2847f1b32e9bc41c3.png', 'image', '2020-08-14 13:10:04'),
(86, 3498, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/fee.pdf', 'pdf', '2020-08-14 13:10:05'),
(87, 3508, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Screenshot_2020-08-14-15-17-42-82_48f0c512cefa6d28e7cf4fae90afd681.png', 'image', '2020-08-14 15:18:59'),
(88, 3509, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG-20200814-WA0014.jpg', 'image', '2020-08-14 15:19:00'),
(89, 3505, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/FSIT_Fees_Paid_updated.xls', 'xls', '2020-08-14 16:23:17'),
(90, 3509, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/IMG20191230142052.jpg', 'image', '2020-08-14 17:00:54'),
(91, 3510, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB7.doc', 'doc', '2020-08-14 17:00:55'),
(92, 3517, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/FB_IMG_1597237720705.jpg', 'image', '2020-08-14 20:15:35'),
(93, 3518, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final6.xlsx', 'xlsx', '2020-08-14 20:15:35'),
(94, 3519, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission6.xls', 'xls', '2020-08-14 20:15:35'),
(95, 3520, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample6.txt', 'txt', '2020-08-14 20:15:36'),
(96, 3521, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample6.pptx', 'pptx', '2020-08-14 20:15:36'),
(97, 3522, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate7.pdf', 'pdf', '2020-08-14 20:15:36'),
(98, 3523, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB8.doc', 'doc', '2020-08-14 20:15:36'),
(99, 3539, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Title_(1).jpg', 'image', '2020-08-14 21:22:00'),
(100, 3540, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final7.xlsx', 'xlsx', '2020-08-14 21:22:00'),
(101, 3541, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission7.xls', 'xls', '2020-08-14 21:22:00'),
(102, 3542, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample7.txt', 'txt', '2020-08-14 21:22:00'),
(103, 3543, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample7.pptx', 'pptx', '2020-08-14 21:22:00'),
(104, 3544, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate8.pdf', 'pdf', '2020-08-14 21:22:00'),
(105, 3545, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB9.doc', 'doc', '2020-08-14 21:22:00'),
(106, 3546, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Title_(1)1.jpg', 'image', '2020-08-17 09:30:40'),
(107, 3547, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Report_Card_with_marks_final8.xlsx', 'xlsx', '2020-08-17 09:30:41'),
(108, 3548, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ss_admission8.xls', 'xls', '2020-08-17 09:30:41'),
(109, 3549, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample8.txt', 'txt', '2020-08-17 09:30:41'),
(110, 3550, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample8.pptx', 'pptx', '2020-08-17 09:30:41'),
(111, 3551, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Merit_Certificate9.pdf', 'pdf', '2020-08-17 09:30:41'),
(112, 3552, 'http://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/file-sample_100kB10.doc', 'doc', '2020-08-17 09:30:41'),
(113, 0, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Id_Card.pdf', 'pdf', '2020-09-18 09:34:02'),
(114, 0, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/download.jpg', 'image', '2020-09-18 09:34:08'),
(115, 0, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/download1.jpg', 'image', '2020-09-18 09:43:07'),
(116, 0, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/logo.png', 'image', '2020-09-18 09:55:51'),
(117, 0, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/default.pdf', 'pdf', '2020-09-18 09:56:15'),
(118, 0, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/female-college-student-mst.jpg', 'image', '2020-09-22 13:17:28'),
(119, 0, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/download2.jpg', 'image', '2020-09-22 13:17:35'),
(120, 3645, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Caste_Details.xlsx', 'xlsx', '2020-09-24 22:33:19'),
(121, 3646, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/sample9.txt', 'txt', '2020-09-24 22:33:37'),
(122, 3653, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/BONAFIDE.pdf', 'pdf', '2020-09-28 13:39:36'),
(123, 3709, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Kumar_C_Odoo.pdf', 'pdf', '2020-12-04 13:09:59'),
(124, 3710, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/attendance_oct-November-2020.xlsx', 'xlsx', '2020-12-04 13:10:07'),
(125, 3719, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/ResumeChandniKJ.pdf', 'pdf', '2020-12-22 12:46:36'),
(126, 3870, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Holiday_Calender_2021.docx', 'docx', '2021-01-13 15:41:37'),
(127, 4038, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Screenshot_2021-04-03_at_11_33_31_AM.png', 'image', '2021-04-03 15:03:04'),
(128, 4222, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Screenshot_2021-04-27_at_12_02_06_PM.png', 'image', '2021-04-27 13:39:52'),
(129, 4260, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/Student_Id_Card1.pdf', 'pdf', '2021-04-28 14:00:59'),
(130, 4264, 'https://demo.smartschoolerp.com/demo/uploads/demo/message_attachments/51KlgCopNUL.jpg', 'image', '2021-04-29 13:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `online_classes`
--

CREATE TABLE `online_classes` (
  `id` int NOT NULL,
  `course` int NOT NULL,
  `standard` int NOT NULL,
  `division` int NOT NULL,
  `subject` int NOT NULL,
  `faculty_id` int NOT NULL,
  `url` text NOT NULL,
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_id` int NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `recurring_end_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `online_classes`
--

INSERT INTO `online_classes` (`id`, `course`, `standard`, `division`, `subject`, `faculty_id`, `url`, `recurring`, `recurring_id`, `start_date`, `end_date`, `recurring_end_date`, `created_date`) VALUES
(1, 1, 14, 23, 1, 291, 'add', 0, 0, '1970-01-01 05:30:00', '1970-01-01 05:30:00', '2021-05-03 10:32:40', '2021-05-03 10:32:40'),
(10, 1, 1, 1, 1, 291, 'https://zoom.us/j/97578364429?pwd=NW9GSjZFOE1lQ0x3U09SUjh0azdidz09', 1, 8, '2021-05-11 12:30:00', '2021-05-11 13:00:00', '2021-05-05 12:24:03', '2021-05-05 12:24:03'),
(3, 1, 2, 2, 4, 291, '', 0, 0, '2021-05-03 00:10:00', '2021-05-03 00:25:00', '2021-05-03 12:06:51', '2021-05-03 12:06:51'),
(4, 1, 2, 2, 2, 291, '', 0, 0, '2021-05-03 00:15:00', '2021-05-03 00:30:00', '2021-05-03 12:08:22', '2021-05-03 12:08:22'),
(8, 1, 1, 1, 1, 291, 'https://zoom.us/j/97578364429?pwd=NW9GSjZFOE1lQ0x3U09SUjh0azdidz09', 1, 0, '2021-05-09 12:30:00', '2021-05-09 13:00:00', '2021-05-05 12:24:03', '2021-05-05 12:24:03'),
(9, 1, 1, 1, 1, 291, 'https://zoom.us/j/97578364429?pwd=NW9GSjZFOE1lQ0x3U09SUjh0azdidz09', 1, 8, '2021-05-10 12:30:00', '2021-05-10 13:00:00', '2021-05-05 12:24:03', '2021-05-05 12:24:03'),
(11, 1, 1, 1, 1, 291, 'https://zoom.us/j/97578364429?pwd=NW9GSjZFOE1lQ0x3U09SUjh0azdidz09', 1, 8, '2021-05-05 12:30:00', '2021-05-05 13:00:00', '2021-05-05 12:24:03', '2021-05-05 12:24:03'),
(12, 1, 1, 1, 1, 291, 'https://zoom.us/j/97578364429?pwd=NW9GSjZFOE1lQ0x3U09SUjh0azdidz09', 1, 8, '2021-05-06 12:30:00', '2021-05-06 13:00:00', '2021-05-05 12:24:03', '2021-05-05 12:24:03'),
(13, 1, 1, 1, 1, 291, 'https://zoom.us/j/97578364429?pwd=NW9GSjZFOE1lQ0x3U09SUjh0azdidz09', 1, 8, '2021-05-07 12:30:00', '2021-05-07 13:00:00', '2021-05-05 12:24:03', '2021-05-05 12:24:03'),
(14, 1, 1, 1, 1, 291, 'https://zoom.us/j/97578364429?pwd=NW9GSjZFOE1lQ0x3U09SUjh0azdidz09', 1, 8, '2021-05-08 12:30:00', '2021-05-08 13:00:00', '2021-05-05 12:24:03', '2021-05-05 12:24:03'),
(15, 1, 1, 1, 2, 291, 'https://zoom.us/j/94514563715?pwd=YlNWOTVnTnJDdXVSb3IybllXRVVYZz09', 1, 0, '2021-05-09 13:00:00', '2021-05-09 13:30:00', '2021-05-05 12:28:10', '2021-05-05 12:28:10'),
(16, 1, 1, 1, 2, 291, 'https://zoom.us/j/94514563715?pwd=YlNWOTVnTnJDdXVSb3IybllXRVVYZz09', 1, 15, '2021-05-10 13:00:00', '2021-05-10 13:30:00', '2021-05-05 12:28:10', '2021-05-05 12:28:10'),
(17, 1, 1, 1, 2, 291, 'https://zoom.us/j/94514563715?pwd=YlNWOTVnTnJDdXVSb3IybllXRVVYZz09', 1, 15, '2021-05-11 13:00:00', '2021-05-11 13:30:00', '2021-05-05 12:28:10', '2021-05-05 12:28:10'),
(18, 1, 1, 1, 2, 291, 'https://zoom.us/j/94514563715?pwd=YlNWOTVnTnJDdXVSb3IybllXRVVYZz09', 1, 15, '2021-05-05 13:00:00', '2021-05-05 13:30:00', '2021-05-05 12:28:10', '2021-05-05 12:28:10'),
(19, 1, 1, 1, 2, 291, 'https://zoom.us/j/94514563715?pwd=YlNWOTVnTnJDdXVSb3IybllXRVVYZz09', 1, 15, '2021-05-06 13:00:00', '2021-05-06 13:30:00', '2021-05-05 12:28:10', '2021-05-05 12:28:10'),
(20, 1, 1, 1, 2, 291, 'https://zoom.us/j/94514563715?pwd=YlNWOTVnTnJDdXVSb3IybllXRVVYZz09', 1, 15, '2021-05-07 13:00:00', '2021-05-07 13:30:00', '2021-05-05 12:28:10', '2021-05-05 12:28:10'),
(21, 1, 1, 1, 2, 291, 'https://zoom.us/j/94514563715?pwd=YlNWOTVnTnJDdXVSb3IybllXRVVYZz09', 1, 15, '2021-05-08 13:00:00', '2021-05-08 13:30:00', '2021-05-05 12:28:10', '2021-05-05 12:28:10'),
(22, 1, 1, 1, 21, 291, 'https://zoom.us/j/99368392070', 0, 0, '2021-05-05 17:00:00', '2021-05-05 17:40:00', '2021-05-05 16:26:29', '2021-05-05 16:26:29'),
(23, 1, 1, 1, 22, 291, '993 6839 2070', 1, 0, '2021-05-10 17:00:00', '2021-05-10 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(24, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-17 17:00:00', '2021-05-17 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(25, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-24 17:00:00', '2021-05-24 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(26, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-11 17:00:00', '2021-05-11 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(27, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-18 17:00:00', '2021-05-18 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(28, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-25 17:00:00', '2021-05-25 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(29, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-05 17:00:00', '2021-05-05 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(30, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-12 17:00:00', '2021-05-12 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(31, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-19 17:00:00', '2021-05-19 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(32, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-26 17:00:00', '2021-05-26 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(33, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-06 17:00:00', '2021-05-06 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(34, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-13 17:00:00', '2021-05-13 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(35, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-20 17:00:00', '2021-05-20 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(36, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-27 17:00:00', '2021-05-27 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(37, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-07 17:00:00', '2021-05-07 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(38, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-14 17:00:00', '2021-05-14 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(39, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-21 17:00:00', '2021-05-21 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(40, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-28 17:00:00', '2021-05-28 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(41, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-08 17:00:00', '2021-05-08 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(42, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-15 17:00:00', '2021-05-15 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(43, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-22 17:00:00', '2021-05-22 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(44, 1, 1, 1, 22, 291, '993 6839 2070', 1, 23, '2021-05-29 17:00:00', '2021-05-29 17:40:00', '2021-05-05 16:58:30', '2021-05-05 16:58:30'),
(45, 1, 1, 1, 29, 291, 'example url', 0, 0, '2021-05-11 16:40:00', '2021-05-11 17:20:00', '2021-05-11 16:37:50', '2021-05-11 16:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `student_notifications`
--

CREATE TABLE `student_notifications` (
  `id` int NOT NULL,
  `to_id` int NOT NULL,
  `standard_id` int NOT NULL,
  `division_id` int NOT NULL,
  `module` varchar(255) NOT NULL,
  `item_id` int NOT NULL,
  `url` text NOT NULL,
  `message` text NOT NULL,
  `seen_ids` longtext NOT NULL,
  `read_ids` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_notifications`
--

INSERT INTO `student_notifications` (`id`, `to_id`, `standard_id`, `division_id`, `module`, `item_id`, `url`, `message`, `seen_ids`, `read_ids`, `date`) VALUES
(1, 0, 2, 2, 'assignment', 1, '#/assignment/1', 'You have a new Assignment', '', '', '2020-05-13 17:04:58'),
(2, 0, 2, 2, 'assignment', 2, '#/assignment/2', 'You have a new Assignment', '', '', '2020-05-13 17:05:51'),
(3, 0, 2, 2, 'assignment', 3, '#/assignment/3', 'You have a new Assignment', '', '', '2020-05-13 17:07:07'),
(4, 0, 1, 1, 'assignment', 4, '#/assignment/4', 'You have a new Assignment', '', '', '2020-05-16 11:11:47'),
(5, 0, 1, 1, 'assignment', 5, '#/assignment/5', 'You have a new Assignment', '', '', '2020-05-16 15:01:49'),
(6, 0, 1, 1, 'assignment', 6, '#/assignment/6', 'You have a new Assignment', '', '', '2020-05-16 15:02:32'),
(7, 0, 2, 2, 'assignment', 7, '#/assignment/7', 'You have a new Assignment', '', '', '2020-05-29 13:39:22'),
(8, 0, 1, 1, 'assignment', 8, '#/assignment/8', 'You have a new Assignment', '', '', '2020-05-31 10:33:17'),
(9, 0, 2, 2, 'assignment', 9, '#/assignment/9', 'You have a new Assignment', '', '', '2020-06-02 23:21:49'),
(10, 0, 4, 6, 'assignment', 10, '#/assignment/10', 'You have a new Assignment', '', '', '2020-06-05 12:08:39'),
(11, 0, 1, 1, 'assignment', 11, '#/assignment/11', 'You have a new Assignment', '', '', '2020-06-05 14:12:23'),
(12, 0, 1, 1, 'assignment', 12, '#/assignment/12', 'You have a new Assignment', '', '', '2020-06-05 16:36:12'),
(13, 0, 1, 1, 'assignment', 18, '#/assignment/18', 'You have a new Assignment', '', '', '2020-09-18 09:38:21'),
(14, 0, 1, 1, 'assignment', 19, '#/assignment/19', 'You have a new Assignment', '', '', '2020-09-18 12:14:29'),
(15, 0, 1, 1, 'assignment', 20, '#/assignment/20', 'You have a new Assignment', '', '', '2020-09-18 12:22:49'),
(16, 0, 1, 1, 'assignment', 21, '#/assignment/21', 'You have a new Assignment', '', '', '2020-09-18 12:25:04'),
(17, 0, 1, 1, 'assignment', 22, '#/assignment/22', 'You have a new Assignment', '', '', '2020-09-22 14:03:44'),
(18, 0, 16, 27, 'assignment', 24, '#/assignment/24', 'You have a new Assignment', '', '', '2021-01-07 15:34:16'),
(19, 0, 4, 6, 'assignment', 25, '#/assignment/25', 'You have a new Assignment', '', '', '2021-01-16 12:30:54'),
(20, 0, 2, 2, 'assignment', 26, '#/assignment/26', 'You have a new Assignment', '', '', '2021-01-31 11:19:16'),
(21, 0, 2, 2, 'assignment', 27, '#/assignment/27', 'You have a new Assignment', '', '', '2021-01-31 11:20:29'),
(22, 0, 2, 2, 'assignment', 28, '#/assignment/28', 'You have a new Assignment', '', '', '2021-01-31 11:21:46'),
(23, 0, 2, 2, 'assignment', 29, '#/assignment/29', 'You have a new Assignment', '', '', '2021-01-31 11:23:13'),
(24, 0, 2, 3, 'assignment', 32, '#/assignment/32', 'You have a new Assignment', '', '', '2021-03-31 10:50:25'),
(25, 0, 2, 3, 'assignment', 33, '#/assignment/33', 'You have a new Assignment', '', '', '2021-03-31 10:58:37'),
(26, 0, 2, 2, 'assignment', 34, '#/assignment/34', 'You have a new Assignment', '', '', '2021-05-06 11:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `subject_icons`
--

CREATE TABLE `subject_icons` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `standard_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` enum('preset','custom') NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_posts`
--

CREATE TABLE `timeline_posts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_photo` longtext NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(256) NOT NULL,
  `parent` int NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `acd_year` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timeline_posts`
--

INSERT INTO `timeline_posts` (`id`, `user_id`, `user_photo`, `user_name`, `description`, `type`, `parent`, `parent_name`, `added_date`, `acd_year`) VALUES
(1, 2, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/2.png', 'Administrator', 'Preventive measures for Covid 19', '', 0, '', '2020-05-13 15:52:17', '2020-2021'),
(2, 2, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/2.png', 'Administrator', 'A video explaining about the prevention of Corona Virus', '', 0, '', '2020-05-13 16:02:37', '2020-2021'),
(3, 2, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/2.png', 'Administrator', 'Algebra- Basics', '', 0, '', '2020-05-13 16:03:30', '2020-2021'),
(4, 2, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/2.png', 'Administrator', 'Happy Mothers Day', '', 0, '', '2020-05-13 16:04:23', '2020-2021'),
(5, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Class 11- Biology-Photosynthesis learning video', '', 0, '', '2020-05-13 16:27:27', '2020-2021'),
(6, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Be Aware', '', 0, '', '2020-05-24 11:12:56', '2020-2021'),
(7, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Nonagon', '', 0, '', '2020-05-24 18:52:00', '2020-2021'),
(8, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Welcome', '', 0, '', '2020-05-29 13:53:41', '2020-2021'),
(9, 230, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/230.png', 'ANU K', 'Hiiiii all', '', 0, '', '2020-05-31 00:04:43', '2020-2021'),
(10, 123, '', 'John Thomas', 'Test 123', '', 0, '', '2020-06-05 14:03:34', '2020-2021'),
(11, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Good Afternoon', '', 0, '', '2020-06-05 16:33:44', '2020-2021'),
(14, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Statistic Report', '', 0, '', '2020-07-03 20:28:57', '2020-2021'),
(13, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Good Day', '', 0, '', '2020-06-17 18:50:14', '2020-2021'),
(16, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Welcome', '', 0, '', '2020-07-20 16:45:09', '2020-2021'),
(17, 291, '', 'AMBILI ANU MATHEWS', 'Test', '', 0, '', '2020-08-06 11:59:31', '2020-2021'),
(18, 143, '', 'ANNA LANEY', 'New timeline posting from stud', '', 0, '', '2020-08-10 12:12:16', '2020-2021'),
(19, 291, '', 'AMBILI ANU MATHEWS', 'Timeline test', '', 0, '', '2020-08-10 12:40:38', '2020-2021'),
(20, 142, '', 'LEKSHMI PRIYA B', 'From student login', '', 0, '', '2020-08-10 12:42:25', '2020-2021'),
(21, 291, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Comparison of different server', '', 0, '', '2020-08-10 20:06:51', '2020-2021'),
(22, 291, '', 'AMBILI ANU MATHEWS', 'Tedt', '', 0, '', '2020-08-13 21:34:01', '2020-2021'),
(23, 291, '', 'AMBILI ANU MATHEWS', 'Test 2', '', 0, '', '2020-08-14 13:11:07', '2020-2021'),
(26, 291, '', 'AMBILI ANU MATHEWS', 'Test timeline', '', 0, '', '2020-08-14 20:22:33', '2020-2021'),
(27, 291, '', 'AMBILI ANU MATHEWS', 'Test timeline', '', 0, '', '2020-08-14 20:23:47', '2020-2021'),
(28, 291, '', 'AMBILI ANU MATHEWS', 'Above 1 mb', '', 0, '', '2020-08-14 20:28:18', '2020-2021'),
(29, 291, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'Kazi', '', 0, '', '2020-09-18 09:41:14', '2020-2021'),
(30, 175, '', 'EIDEN IDICULA PRASAD', 'Test image Ajith', '', 0, '', '2020-10-13 11:37:55', '2020-2021'),
(31, 291, '', 'AMBILI ANU MATHEWS', '', '', 0, '', '2020-10-13 11:39:28', '2020-2021'),
(32, 175, '', 'EIDEN IDICULA PRASAD', 'Mars 4k', '', 0, '', '2020-10-13 11:39:37', '2020-2021'),
(33, 840, 'https://demo.smartschoolerp.com/demo/assets/img/avatar1.jpg', '', '123', '', 0, '', '2020-11-16 19:21:18', '2020-2021'),
(34, 291, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI ANU MATHEWS', 'MS Pallet', '', 0, '', '2020-12-04 13:11:54', '2020-2021'),
(35, 291, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI MATHEWS', 'Smart School ERP', '', 0, '', '2020-12-24 12:26:25', '2020-2021'),
(36, 291, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI MATHEWS', 'Science exhibition on 25th Jan', '', 0, '', '2021-01-13 15:42:35', '2020-2021'),
(37, 291, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI MATHEWS', 'Smartt Schoool', '', 0, '', '2021-01-16 12:27:36', '2020-2021'),
(38, 291, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI MATHEWS', 'test', '', 0, '', '2021-01-19 17:34:18', '2020-2021'),
(39, 123, 'data:image/png;base64, /9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a\nHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy\nMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABAAEADASIA\nAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA\nAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3\nODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm\np6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA\nAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx\nBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK\nU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3\nuLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iqg\nuZMdFz9Kd9of0X8qALNFc7e+NdA03U00691vTre8b/ljJMAw+vZfxxWxHd+bGkkbRvG4DKyHIYHo\nQR1FAFqiq/nP6LR57+goAsUVW89/RaPtD+i0AVxUiffX61ED0qO8u1sbOW4eK4mCKT5dvEZZH9lU\nck0wPH9G0XT9N1C+tzp+nzG7Xzt2qHdM7bgZBLwcfeOMY5Fep+FtMh0bwzY6fbhhDCjBAzE4UuxA\nye3PHtXHzWsfiK7bxdouqP8AYp4tktusQV9yryMkHaxAwR1447V2un6xY3N0umpvgvI7WOc2skbK\nVjIABUkYYA/KSCcEc1lCLUnc3qyUoRsadFFFamA00lLSUAQqaqTXsf8Aa0dpHLGbiKNZnj3chXYq\np9slDip1avHr/wAQ2WjftAaql/cmGG502G1VnBKCUrE6Z9BkfrQB6F4Y0W50zxH4tjkhZNPu7mOe\n03AAPvjJk49AzbfwrdvbOGXUNL1E7klt3eMe6OhBU+2VU/8AAaIZ5Lq0jZZ/s8qEqW2bs+3Oe9JJ\ndQ2trYpqgQuWVVkUEo0uD07+vUYoCxoMNrYpM0wyh/4SuCRyMZo3UAKTSU0tSFqAEFhOBy0f5n/C\nvMNS+EOq6l8VJvE897ZzacziWOKSVjKrBAFGNmNqtyOegFexUUrgcnaeFruG5aaS6f5jkrHdOF/7\n5xit2OxeMEKqAg5DbiT056ir9FO4FL7JL6p+Zo+yS+qfmau0UXAo/Y5f7yfmaT7HN/eT8z/hV+ii\n4H//2Q==\n', 'John Thomas', 'Happy Republic Day', '', 0, '', '2021-01-31 11:02:44', '2020-2021'),
(40, 2, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/2.png', 'Administrator', '', '', 0, '', '2021-01-31 11:27:02', '2020-2021'),
(41, 291, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 'AMBILI MATHEWS', 'champ', '', 0, '', '2021-02-01 14:58:50', '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `timeline_post_comments`
--

CREATE TABLE `timeline_post_comments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_photo` longtext NOT NULL,
  `post_id` int NOT NULL,
  `comment` longtext NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timeline_post_comments`
--

INSERT INTO `timeline_post_comments` (`id`, `user_id`, `user_name`, `user_photo`, `post_id`, `comment`, `added_date`) VALUES
(1, 123, 'John Thomas', 'data:image/png;base64, /9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a\nHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy\nMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABAAEADASIA\nAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA\nAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3\nODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm\np6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA\nAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx\nBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK\nU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3\nuLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD33zEP\n8a/nR5if31/OqKDikeRIYpJXOERS7H0AGTU8xVi+HU9GB/Gjen95fzryjU/EUeryhpp5UtwcR2sT\nsCw9WUHOabbz3FopltGurUAfKyqQB9eCMfWsHiNdjdYZtbnrPmIP41/OkMsY6uo/GuU8L65LrVlK\nlwd00JA80ADzAf4sDjg8Vtyf0Faqd1dGThZ2Zf8APi/56p/30KXzov8Anon/AH0KxSwZyvQrkGpG\n+6eM0+cXKWl6ZqjrKhtB1EMCR9nfgNjPHAzV0fdqnqtm1/pdxbo5WRsMjD+8DkZ9QehHfNTL4WVG\n3MrnmUPh6RYIpItQ8lpUV3U26nnH/wBataz0GyVd+oTzXh67Wwq5+i4qXxBpuuXV1FJYarBbWu4K\nbdrcbs9MBic8n0FMvtF8QRajarpuqWkcZXMiXMAfd6kDI46dK867b3PUXKkbWiOkeryQRoqJHDtV\nV443Ka6Jjk1h2dlK2pJcvIAsUQRvKBXzJDnrn+EDnHrj0rYY9cf54rsot8hw10ufQgXPmP0wc9ve\npjyvNRDIY8EKc4qQ/cOK0RkyLWdXg0TTHu51aRvuxQoRulfGdoz+przHUfifqsiQTRPb6bayJI7Z\nti0iBBlhvYkbsAkfL1FXfidIG8QaejGRhBYSTARtgxktjcPQnA59Aa80u7oapaW6mdZ1uCySRvxu\nkAxg+m4EEEd/rSlJ3PTw2FpOlzS1k9V969P1Ok0bUpdWgsI57qaK7MZaOW5jAE/Ucq3Abb3yOuR1\nrU1ONdF0oXt3eNbpavv8qIIWbPy53D5vbHSpPDkmkan4LzqJMN1pcypPlCz3DurBdo6knAGOg2eg\nrmNUxfmcqlvZ20D+VBAcmbzSMrIU6sMZAOOOfrWEqfveRcVN3XVO34X/AK+R7pZLEmn2Qt5zPC0S\nuk3/AD0DDdu/HNTucE15F4N8XrpUq2cjtcRPIBdxLEYmtTjHnBT/AA4xuA68Ec8H14geYVIBxW62\n0PPr0nTlrrfr/XVdSFs4I79eanAwpz6Yqux/fyDJwDgDHSp1IMZ5xgf1poxZ49461MX3jO9NjHLc\nS29ukKN5IMcbAHc2Wxznjr0rjLiwnsZdKfU7W6e2vCZ0lKJnchIONuOPTI5zX1fRVez8zqWPtGMe\nXRf8D/K3+R8k3d5dapCbNLyddP8AtJdI5ZPLVgQAeAeuWY9akgtzp9/c3UEFqYbULHEka4LMRzyO\nvXnOetfWVFL2fQqOYWfMo673v6+Xd3+SufLFm5+1TxtbSQnaxcqc72PGPrk9q+h4U8oJETny0WPP\nrgAZ/SugopqnYwr4t1Uo22v+Pp/TepzMeNzFmJIYkHpmphxAcEHp/Ougop8hz85//9k=\n', 5, 'Thank you Maam', '2020-05-13 16:28:42'),
(2, 123, 'John Thomas', 'data:image/png;base64, /9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a\nHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy\nMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABAAEADASIA\nAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA\nAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3\nODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm\np6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA\nAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx\nBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK\nU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3\nuLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD33zEP\n8a/nR5if31/OqKDikeRIYpJXOERS7H0AGTU8xVi+HU9GB/Gjen95fzryjU/EUeryhpp5UtwcR2sT\nsCw9WUHOabbz3FopltGurUAfKyqQB9eCMfWsHiNdjdYZtbnrPmIP41/OkMsY6uo/GuU8L65LrVlK\nlwd00JA80ADzAf4sDjg8Vtyf0Faqd1dGThZ2Zf8APi/56p/30KXzov8Anon/AH0KxSwZyvQrkGpG\n+6eM0+cXKWl6ZqjrKhtB1EMCR9nfgNjPHAzV0fdqnqtm1/pdxbo5WRsMjD+8DkZ9QehHfNTL4WVG\n3MrnmUPh6RYIpItQ8lpUV3U26nnH/wBataz0GyVd+oTzXh67Wwq5+i4qXxBpuuXV1FJYarBbWu4K\nbdrcbs9MBic8n0FMvtF8QRajarpuqWkcZXMiXMAfd6kDI46dK867b3PUXKkbWiOkeryQRoqJHDtV\nV443Ka6Jjk1h2dlK2pJcvIAsUQRvKBXzJDnrn+EDnHrj0rYY9cf54rsot8hw10ufQgXPmP0wc9ve\npjyvNRDIY8EKc4qQ/cOK0RkyLWdXg0TTHu51aRvuxQoRulfGdoz+przHUfifqsiQTRPb6bayJI7Z\nti0iBBlhvYkbsAkfL1FXfidIG8QaejGRhBYSTARtgxktjcPQnA59Aa80u7oapaW6mdZ1uCySRvxu\nkAxg+m4EEEd/rSlJ3PTw2FpOlzS1k9V969P1Ok0bUpdWgsI57qaK7MZaOW5jAE/Ucq3Abb3yOuR1\nrU1ONdF0oXt3eNbpavv8qIIWbPy53D5vbHSpPDkmkan4LzqJMN1pcypPlCz3DurBdo6knAGOg2eg\nrmNUxfmcqlvZ20D+VBAcmbzSMrIU6sMZAOOOfrWEqfveRcVN3XVO34X/AK+R7pZLEmn2Qt5zPC0S\nuk3/AD0DDdu/HNTucE15F4N8XrpUq2cjtcRPIBdxLEYmtTjHnBT/AA4xuA68Ec8H14geYVIBxW62\n0PPr0nTlrrfr/XVdSFs4I79eanAwpz6Yqux/fyDJwDgDHSp1IMZ5xgf1poxZ49461MX3jO9NjHLc\nS29ukKN5IMcbAHc2Wxznjr0rjLiwnsZdKfU7W6e2vCZ0lKJnchIONuOPTI5zX1fRVez8zqWPtGMe\nXRf8D/K3+R8k3d5dapCbNLyddP8AtJdI5ZPLVgQAeAeuWY9akgtzp9/c3UEFqYbULHEka4LMRzyO\nvXnOetfWVFL2fQqOYWfMo673v6+Xd3+SufLFm5+1TxtbSQnaxcqc72PGPrk9q+h4U8oJETny0WPP\nrgAZ/SugopqnYwr4t1Uo22v+Pp/TepzMeNzFmJIYkHpmphxAcEHp/Ougop8hz85//9k=\n', 3, 'Good Session', '2020-05-13 16:28:55'),
(3, 123, 'John Thomas', 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/123.png', 8, 'hi', '2020-06-05 14:04:17'),
(4, 143, 'ANNA LANEY', 'http://demo.smartschoolerp.com/demo/assets/img/avatar1.jpg', 18, 'test comment', '2020-08-10 12:12:39'),
(5, 291, 'AMBILI ANU MATHEWS', 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 22, 'hi', '2020-08-13 21:36:42'),
(6, 291, 'AMBILI ANU MATHEWS', 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png', 30, '👍👍👍', '2020-10-13 11:38:18'),
(7, 175, 'EIDEN IDICULA PRASAD', 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/175.png', 30, 'very good,,,', '2020-10-13 11:38:20'),
(8, 175, 'EIDEN IDICULA PRASAD', 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/175.png', 32, 'good resolution', '2020-10-13 11:40:02'),
(9, 175, 'EIDEN IDICULA PRASAD', 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/175.png', 32, 'grt', '2020-10-13 11:42:22'),
(10, 123, 'John Thomas', 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/123.png', 39, 'same to you', '2021-02-01 15:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `timeline_post_content`
--

CREATE TABLE `timeline_post_content` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timeline_post_content`
--

INSERT INTO `timeline_post_content` (`id`, `post_id`, `type`, `content`, `added_date`) VALUES
(1, 1, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/covid1.jpg', '2020-05-13 15:52:17'),
(2, 2, 'youtube', 'https://www.youtube.com/watch?v=7tgm8KBlCtE', '2020-05-13 16:02:37'),
(3, 3, 'youtube', 'https://www.youtube.com/watch?v=NybHckSEQBI', '2020-05-13 16:03:30'),
(4, 4, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/mothersday1.jpg', '2020-05-13 16:04:23'),
(5, 5, 'youtube', 'https://www.youtube.com/watch?v=XSMjfvpDtTY', '2020-05-13 16:27:27'),
(6, 6, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/covid11.jpg', '2020-05-24 11:12:56'),
(7, 7, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/1.PNG', '2020-05-24 18:52:00'),
(8, 8, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/Welcome_Scan.jpg', '2020-05-29 13:53:41'),
(9, 10, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/Screenshot_20200605-114708.jpg', '2020-06-05 14:03:34'),
(10, 10, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/Screenshot_20200605-114647.jpg', '2020-06-05 14:03:34'),
(11, 11, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/Welcome_Scan1.jpg', '2020-06-05 16:33:44'),
(15, 16, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/1Q01257.jpg', '2020-07-20 16:45:09'),
(13, 13, 'youtube', 'https://www.youtube.com/watch?v=TIA3dydPB9M', '2020-06-17 18:50:14'),
(16, 17, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20200729-WA0010.jpg', '2020-08-06 11:59:31'),
(17, 18, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-67b2949a347cc5b35fc3e4f04051cd48-V.jpg', '2020-08-10 12:12:16'),
(18, 19, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20200810-WA0006.jpg', '2020-08-10 12:40:38'),
(19, 19, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20200810-WA0002.jpg', '2020-08-10 12:40:38'),
(20, 20, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/Screenshot_2020-08-10-12-41-29-096_com_akiraplc_smartpay.jpg', '2020-08-10 12:42:25'),
(21, 21, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/C2_20_Comparison_(1).jpeg', '2020-08-10 20:06:51'),
(24, 26, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20200812-WA0012.jpg', '2020-08-14 20:22:33'),
(25, 27, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20200812-WA00121.jpg', '2020-08-14 20:23:47'),
(26, 27, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20200812-WA0011.jpg', '2020-08-14 20:23:47'),
(27, 27, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20200812-WA0010.jpg', '2020-08-14 20:23:47'),
(28, 27, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20200812-WA0009.jpg', '2020-08-14 20:23:47'),
(29, 29, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/WhatsApp_Image_2020-08-11_at_12_25_57_AM.jpeg', '2020-09-18 09:41:14'),
(30, 30, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/IMG-20201011-WA0011.jpg', '2020-10-13 11:37:55'),
(31, 31, 'image', 'http://demo.smartschoolerp.com/demo/uploads/demo/timeline/Screenshot_2020-10-13-11-24-50-685_com_akiraplc_smartpay.png', '2020-10-13 11:39:28'),
(32, 32, 'youtube', 'https://youtu.be/ZEyAs3NWH4A', '2020-10-13 11:39:37'),
(33, 34, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/2W_STANDARD_DECK.jpg', '2020-12-04 13:11:54'),
(34, 35, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/logo.png', '2020-12-24 12:26:25'),
(35, 36, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/science_Exhibition.jpg', '2021-01-13 15:42:35'),
(36, 37, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/logo1.png', '2021-01-16 12:27:36'),
(37, 38, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/id-photo2.jpg', '2021-01-19 17:34:18'),
(38, 39, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/WhatsApp_Image_2021-01-25_at_6_44_22_PM.jpeg', '2021-01-31 11:02:44'),
(39, 40, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/WhatsApp_Image_2021-01-26_at_11_17_23_AM.jpeg', '2021-01-31 11:27:02'),
(40, 41, 'image', 'https://demo.smartschoolerp.com/demo/uploads/demo/timeline/PRELKG.jpg', '2021-02-01 14:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `timeline_post_likes`
--

CREATE TABLE `timeline_post_likes` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `post_id` int NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timeline_post_likes`
--

INSERT INTO `timeline_post_likes` (`id`, `user_id`, `user_name`, `post_id`, `added_date`) VALUES
(4, 123, 'John Thomas', 5, '2020-05-16 15:11:13'),
(2, 123, 'John Thomas', 4, '2020-05-13 16:28:46'),
(3, 123, 'John Thomas', 3, '2020-05-13 16:28:50'),
(5, 123, 'John Thomas', 8, '2020-06-05 14:04:13'),
(6, 123, 'John Thomas', 6, '2020-08-04 14:41:19'),
(7, 143, 'ANNA LANEY', 18, '2020-08-10 12:12:29'),
(8, 143, 'ANNA LANEY', 17, '2020-08-10 12:12:50'),
(16, 142, 'LEKSHMI PRIYA B', 19, '2020-08-10 12:56:43'),
(14, 291, 'AMBILI ANU MATHEWS', 19, '2020-08-10 12:53:02'),
(17, 203, 'AMBILI ANU MATHEWS', 22, '2020-08-13 21:34:27'),
(18, 203, 'AMBILI ANU MATHEWS', 21, '2020-08-13 21:37:11'),
(19, 203, 'AMBILI ANU MATHEWS', 20, '2020-08-13 21:37:12'),
(20, 203, 'AMBILI ANU MATHEWS', 18, '2020-08-13 21:37:16'),
(21, 203, 'AMBILI ANU MATHEWS', 17, '2020-08-13 21:37:17'),
(22, 203, 'AMBILI ANU MATHEWS', 16, '2020-08-13 21:37:19'),
(23, 203, 'AMBILI ANU MATHEWS', 14, '2020-08-13 21:37:20'),
(24, 203, 'AMBILI ANU MATHEWS', 13, '2020-08-13 21:37:21'),
(25, 203, 'AMBILI ANU MATHEWS', 11, '2020-08-13 21:37:24'),
(26, 203, 'AMBILI ANU MATHEWS', 10, '2020-08-13 21:37:25'),
(27, 203, 'AMBILI ANU MATHEWS', 9, '2020-08-13 21:37:26'),
(28, 203, 'AMBILI ANU MATHEWS', 8, '2020-08-13 21:37:27'),
(29, 203, 'AMBILI ANU MATHEWS', 7, '2020-08-13 21:37:29'),
(30, 203, 'AMBILI ANU MATHEWS', 6, '2020-08-13 21:37:30'),
(31, 203, 'AMBILI ANU MATHEWS', 5, '2020-08-13 21:37:32'),
(32, 203, 'AMBILI ANU MATHEWS', 4, '2020-08-13 21:37:34'),
(33, 203, 'AMBILI ANU MATHEWS', 3, '2020-08-13 21:37:35'),
(34, 203, 'AMBILI ANU MATHEWS', 2, '2020-08-13 21:37:38'),
(35, 123, 'John Thomas', 29, '2020-09-18 09:45:13'),
(36, 291, 'AMBILI ANU MATHEWS', 20, '2020-09-18 14:34:11'),
(37, 123, 'John Thomas', 16, '2020-10-05 12:37:35'),
(38, 175, 'EIDEN IDICULA PRASAD', 30, '2020-10-13 11:38:10'),
(39, 13727, 'AMBILI ANU MATHEWS', 30, '2020-10-13 11:38:43'),
(40, 175, 'EIDEN IDICULA PRASAD', 31, '2020-10-13 11:39:41'),
(48, 123, 'John Thomas A', 32, '2021-03-31 11:20:40'),
(42, 123, 'John Thomas', 34, '2020-12-04 13:22:52'),
(43, 123, 'John Thomas', 31, '2021-01-13 15:36:43'),
(44, 123, 'John Thomas', 39, '2021-02-01 15:10:45'),
(45, 123, 'John Thomas', 41, '2021-02-09 16:44:47'),
(46, 123, 'John Thomas', 40, '2021-02-12 13:29:25'),
(47, 123, 'John Thomas', 28, '2021-02-18 18:03:18'),
(51, 291, 'AMBILI MATHEWS', 41, '2021-04-23 11:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `course_id` int NOT NULL,
  `standard_id` int NOT NULL,
  `division_id` int NOT NULL,
  `topic` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` text NOT NULL,
  `date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `completed_id` longtext NOT NULL,
  `delivered_id` longtext NOT NULL,
  `read_id` longtext NOT NULL,
  `acd_year` varchar(100) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `notes` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `id` int NOT NULL,
  `route_id` int NOT NULL,
  `student_id` int NOT NULL,
  `session` varchar(100) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `eta` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `driver_phone` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracking_status`
--

CREATE TABLE `tracking_status` (
  `id` int NOT NULL,
  `session` varchar(100) NOT NULL,
  `route_id` int NOT NULL,
  `status` varchar(100) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `last_active_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `time` bigint NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `user_photo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `last_active_time`, `time`, `session_id`, `user_photo`) VALUES
(1, 291, '2021-05-11 12:41:04', 1209900, '', ''),
(2, 116, '2020-06-05 11:31:59', 88140, '', ''),
(3, 2, '2021-04-29 11:27:32', 157890, '', ''),
(4, 355, '2020-05-14 15:36:48', 15900, '', ''),
(5, 191, '2020-05-14 15:53:40', 600, '', ''),
(6, 359, '2020-06-02 07:54:21', 15960, '', ''),
(7, 303, '2020-05-28 17:50:13', 180, '', ''),
(8, 140, '2020-06-05 09:06:06', 53910, '', ''),
(9, 142, '2020-06-02 17:35:10', 15540, '', ''),
(10, 146, '2020-05-30 18:23:33', 1230, '', ''),
(11, 150, '2020-06-01 14:52:51', 1560, '', ''),
(12, 149, '2020-05-31 09:44:20', 810, '', ''),
(13, 230, '2021-04-20 06:56:36', 31740, '', ''),
(14, 234, '2020-09-24 15:44:25', 12270, '', ''),
(15, 238, '2021-05-05 05:36:42', 103530, '', ''),
(16, 657, '2021-05-12 06:17:17', 447480, '', ''),
(17, 830, '2020-07-18 15:46:09', 19230, '', ''),
(18, 831, '2020-06-24 04:38:53', 120, '', ''),
(19, 807, '2020-07-30 03:18:48', 60, '', ''),
(20, 618, '2021-03-31 12:21:17', 189540, '', ''),
(21, 735, '2020-07-30 03:53:14', 1890, '', ''),
(22, 621, '2021-04-20 05:52:57', 390, '', ''),
(23, 617, '2021-05-05 07:34:15', 60600, '', ''),
(24, 840, '2020-11-16 13:50:55', 1080, '', ''),
(25, 622, '2021-04-22 04:49:59', 27510, '', ''),
(26, 842, '2021-04-30 19:18:59', 412500, '', ''),
(27, 634, '2020-12-08 10:44:46', 150, '', ''),
(28, 844, '2020-12-24 11:38:54', 2040, '', ''),
(29, 866, '2021-02-16 06:02:46', 570570, '', ''),
(30, 874, '0000-00-00 00:00:00', 30, '', ''),
(31, 856, '2021-03-25 10:38:01', 2130, '', ''),
(32, 876, '2021-04-01 05:29:14', 60, '', ''),
(33, 880, '2021-04-30 19:20:01', 5010, '', ''),
(34, 882, '2021-04-23 05:18:00', 3570, '', ''),
(35, 889, '2021-05-05 10:49:26', 8580, '', ''),
(36, 300, '2021-04-20 07:28:52', 1080, '', ''),
(37, 872, '2021-05-11 11:48:54', 43410, '', ''),
(38, 653, '0000-00-00 00:00:00', 30, '', ''),
(39, 952, '2021-04-27 12:23:53', 15600, '', ''),
(40, 667, '2021-05-05 07:01:59', 1260, '', ''),
(41, 943, '2021-05-11 15:11:35', 28110, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_device`
--

CREATE TABLE `user_device` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `mobile_user_id` varchar(255) DEFAULT NULL,
  `mobile_device_token` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_photo`
--

CREATE TABLE `user_photo` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_photo`
--

INSERT INTO `user_photo` (`id`, `user_id`, `image`) VALUES
(1, 2, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/2.png'),
(2, 291, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/291.png'),
(3, 123, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/123.png'),
(4, 262, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/262.png'),
(5, 210, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/210.png'),
(6, 56, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/56.png'),
(7, 208, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/208.png'),
(8, 255, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/255.png'),
(9, 153, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/153.png'),
(10, 156, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/156.png'),
(11, 160, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/160.png'),
(12, 165, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/165.png'),
(13, 164, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/164.png'),
(14, 230, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/230.png'),
(15, 234, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/234.png'),
(16, 238, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/238.png'),
(17, 830, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/830.png'),
(18, 831, 'http://demo.smartschoolerp.com/demo/uploads/demo/user_photo/831.png'),
(19, 183, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/183.png'),
(20, 57, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/57.png'),
(21, 175, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/175.png'),
(22, 840, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/840.png'),
(23, 278, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/278.png'),
(24, 143, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/143.png'),
(25, 842, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/842.png'),
(26, 45, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/45.png'),
(27, 844, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/844.png'),
(28, 866, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/866.png'),
(29, 873, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/873.png'),
(30, 232, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/232.png'),
(31, 237, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/237.png'),
(32, 186, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/186.png'),
(33, 874, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/874.png'),
(34, 293, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/293.png'),
(35, 313, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/313.png'),
(36, 334, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/334.png'),
(37, 880, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/880.png'),
(38, 339, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/339.png'),
(39, 344, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/344.png'),
(40, 345, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/345.png'),
(41, 889, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/889.png'),
(42, 300, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/300.png'),
(43, 332, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/332.png'),
(44, 128, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/128.png'),
(45, 106, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/106.png'),
(46, 504, 'https://demo.smartschoolerp.com/demo/uploads/demo/user_photo/504.png');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_attendance`
--

CREATE TABLE `zoom_attendance` (
  `id` int NOT NULL,
  `email` varchar(256) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `time` datetime NOT NULL,
  `uuid` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zoom_attendance`
--

INSERT INTO `zoom_attendance` (`id`, `email`, `type`, `time`, `uuid`) VALUES
(1, 'sales@akiraplc.com', 'in', '2021-05-03 12:25:47', 'h30es7wvQOGFgjKZrLQCtg=='),
(2, '', 'in', '2021-05-03 12:27:20', 'h30es7wvQOGFgjKZrLQCtg=='),
(3, '', 'in', '2021-05-03 12:28:10', 'h30es7wvQOGFgjKZrLQCtg=='),
(4, '', 'out', '2021-05-03 12:28:16', 'h30es7wvQOGFgjKZrLQCtg=='),
(5, 'sales@akiraplc.com', 'out', '2021-05-03 12:29:13', 'h30es7wvQOGFgjKZrLQCtg=='),
(6, 'sales@akiraplc.com', 'in', '2021-05-03 12:29:35', 'h30es7wvQOGFgjKZrLQCtg=='),
(7, '', 'in', '2021-05-03 12:29:47', 'h30es7wvQOGFgjKZrLQCtg=='),
(8, '', 'out', '2021-05-03 12:30:39', 'h30es7wvQOGFgjKZrLQCtg=='),
(9, '', 'in', '2021-05-03 12:30:57', 'h30es7wvQOGFgjKZrLQCtg=='),
(10, 'sales@akiraplc.com', 'in', '2021-05-03 12:32:08', 'Ba9MsO+/SSi5kPyYP4nEOA=='),
(11, '', 'out', '2021-05-03 12:32:08', 'h30es7wvQOGFgjKZrLQCtg=='),
(12, '', 'out', '2021-05-03 12:32:08', 'h30es7wvQOGFgjKZrLQCtg=='),
(13, 'sales@akiraplc.com', 'out', '2021-05-03 12:32:08', 'h30es7wvQOGFgjKZrLQCtg=='),
(14, '', 'in', '2021-05-03 12:32:41', 'Ba9MsO+/SSi5kPyYP4nEOA=='),
(15, '', 'out', '2021-05-03 12:33:29', 'Ba9MsO+/SSi5kPyYP4nEOA=='),
(16, 'sales@akiraplc.com', 'out', '2021-05-03 12:34:28', 'Ba9MsO+/SSi5kPyYP4nEOA=='),
(17, 'sales@akiraplc.com', 'in', '2021-05-03 12:42:03', 'BeWKk/R7TXyha+3rk6ozOQ=='),
(18, 'ajay@akiraplc.com', 'in', '2021-05-03 12:42:43', 'BeWKk/R7TXyha+3rk6ozOQ=='),
(19, 'ajay@akiraplc.com', 'out', '2021-05-03 12:43:59', 'BeWKk/R7TXyha+3rk6ozOQ=='),
(20, 'ajay@akiraplc.com', 'in', '2021-05-03 12:44:39', 'BeWKk/R7TXyha+3rk6ozOQ=='),
(21, 'ajay@akiraplc.com', 'out', '2021-05-03 12:45:29', 'BeWKk/R7TXyha+3rk6ozOQ=='),
(22, 'ajay@akiraplc.com', 'in', '2021-05-03 12:45:51', 'BeWKk/R7TXyha+3rk6ozOQ=='),
(23, 'ajay@akiraplc.com', 'out', '2021-05-03 12:46:55', 'BeWKk/R7TXyha+3rk6ozOQ=='),
(24, 'sales@akiraplc.com', 'out', '2021-05-03 12:47:03', 'BeWKk/R7TXyha+3rk6ozOQ=='),
(25, 'sales@akiraplc.com', 'in', '2021-05-03 15:34:11', 'h43E0EYfS9OJSn5td7DAgA=='),
(26, 'sales@akiraplc.com', 'out', '2021-05-03 15:49:37', 'h43E0EYfS9OJSn5td7DAgA=='),
(27, 'sales@akiraplc.com', 'in', '2021-05-03 17:45:44', 'Ifkwz75STJC15RFy+X5Ulg=='),
(28, 'midhun@akiraplc.com', 'in', '2021-05-03 17:45:54', 'Ifkwz75STJC15RFy+X5Ulg=='),
(29, 'lakshmi@akiraplc.com', 'in', '2021-05-03 17:46:05', 'Ifkwz75STJC15RFy+X5Ulg=='),
(30, 'ajay@akiraplc.com', 'in', '2021-05-03 17:46:18', 'Ifkwz75STJC15RFy+X5Ulg=='),
(31, 'ajith@akiraplc.com', 'in', '2021-05-03 17:46:20', 'Ifkwz75STJC15RFy+X5Ulg=='),
(32, '', 'in', '2021-05-03 17:46:44', 'Ifkwz75STJC15RFy+X5Ulg=='),
(33, 'greeshma@akiraplc.com', 'in', '2021-05-03 17:47:13', 'Ifkwz75STJC15RFy+X5Ulg=='),
(34, 'ajith@akiraplc.com', 'out', '2021-05-03 17:47:19', 'Ifkwz75STJC15RFy+X5Ulg=='),
(35, '', 'in', '2021-05-03 17:48:10', 'Ifkwz75STJC15RFy+X5Ulg=='),
(36, 'anjuzzz20@gmail.com', 'in', '2021-05-03 17:48:50', 'Ifkwz75STJC15RFy+X5Ulg=='),
(37, 'ajith@akiraplc.com', 'in', '2021-05-03 17:49:51', 'Ifkwz75STJC15RFy+X5Ulg=='),
(38, '', 'in', '2021-05-03 17:50:07', 'Ifkwz75STJC15RFy+X5Ulg=='),
(39, '', 'in', '2021-05-03 17:51:22', 'Ifkwz75STJC15RFy+X5Ulg=='),
(40, 'lakshmi@akiraplc.com', 'out', '2021-05-03 17:55:08', 'Ifkwz75STJC15RFy+X5Ulg=='),
(41, 'anjuzzz20@gmail.com', 'out', '2021-05-03 18:01:36', 'Ifkwz75STJC15RFy+X5Ulg=='),
(42, 'greeshma@akiraplc.com', 'out', '2021-05-03 18:05:27', 'Ifkwz75STJC15RFy+X5Ulg=='),
(43, '', 'out', '2021-05-03 18:07:44', 'Ifkwz75STJC15RFy+X5Ulg=='),
(44, '', 'in', '2021-05-03 18:08:07', 'Ifkwz75STJC15RFy+X5Ulg=='),
(45, 'ajay@akiraplc.com', 'out', '2021-05-03 18:11:08', 'Ifkwz75STJC15RFy+X5Ulg=='),
(46, '', 'out', '2021-05-03 18:16:38', 'Ifkwz75STJC15RFy+X5Ulg=='),
(47, 'ajith@akiraplc.com', 'out', '2021-05-03 18:16:56', 'Ifkwz75STJC15RFy+X5Ulg=='),
(48, 'ajith@akiraplc.com', 'in', '2021-05-03 18:16:58', 'Ifkwz75STJC15RFy+X5Ulg=='),
(49, 'sales@akiraplc.com', 'out', '2021-05-03 18:17:16', 'Ifkwz75STJC15RFy+X5Ulg=='),
(50, 'midhun@akiraplc.com', 'out', '2021-05-03 18:17:17', 'Ifkwz75STJC15RFy+X5Ulg=='),
(51, '', 'out', '2021-05-03 18:17:42', 'Ifkwz75STJC15RFy+X5Ulg=='),
(52, '', 'in', '2021-05-03 18:30:00', 'Ifkwz75STJC15RFy+X5Ulg=='),
(53, '', 'out', '2021-05-03 18:30:00', 'Ifkwz75STJC15RFy+X5Ulg=='),
(54, '', 'out', '2021-05-03 18:36:11', 'Ifkwz75STJC15RFy+X5Ulg=='),
(55, '', 'out', '2021-05-03 18:36:13', 'Ifkwz75STJC15RFy+X5Ulg=='),
(56, 'ajith@akiraplc.com', 'out', '2021-05-03 18:36:13', 'Ifkwz75STJC15RFy+X5Ulg=='),
(57, 'sales@akiraplc.com', 'out', '2021-05-03 07:58:42', 'wOzS2YmNTP+tmiuQaRV14w=='),
(58, 'sales@akiraplc.com', 'in', '2021-05-03 08:01:28', 'CViVobQBQ6++4cC748Ju9w=='),
(59, 'sales@akiraplc.com', 'in', '2021-05-03 07:56:10', 'wOzS2YmNTP+tmiuQaRV14w=='),
(60, 'sales@akiraplc.com', 'in', '2021-05-03 07:52:53', '1zSccSuXREiiudvVr5IQsg=='),
(61, 'sales@akiraplc.com', 'in', '2021-05-03 07:09:44', 'BAAipEz7SeWwUSY5H7V2HQ=='),
(62, 'sales@akiraplc.com', 'in', '2021-05-04 08:47:47', 'PrcMfbLQQBmvGr+XQ7vDBw=='),
(63, 'sales@akiraplc.com', 'out', '2021-05-04 08:48:54', 'PrcMfbLQQBmvGr+XQ7vDBw=='),
(64, 'sales@akiraplc.com', 'in', '2021-05-04 08:58:13', 'RmWf5KMlSBm70VDpi5GRDw=='),
(65, '', 'in', '2021-05-04 08:58:40', 'RmWf5KMlSBm70VDpi5GRDw=='),
(66, 'dilip@akiraplc.com', 'in', '2021-05-04 09:00:11', 'RmWf5KMlSBm70VDpi5GRDw=='),
(67, 'arunkumarp0033@gmail.com', 'in', '2021-05-04 09:01:28', 'RmWf5KMlSBm70VDpi5GRDw=='),
(68, 'vidyasree@akiraplc.com', 'in', '2021-05-04 09:01:32', 'RmWf5KMlSBm70VDpi5GRDw=='),
(69, 'midhun@akiraplc.com', 'in', '2021-05-04 09:01:42', 'RmWf5KMlSBm70VDpi5GRDw=='),
(70, '', 'in', '2021-05-04 09:01:53', 'RmWf5KMlSBm70VDpi5GRDw=='),
(71, 'sreeraj@akiraplc.com', 'in', '2021-05-04 09:01:53', 'RmWf5KMlSBm70VDpi5GRDw=='),
(72, '', 'in', '2021-05-04 09:01:54', 'RmWf5KMlSBm70VDpi5GRDw=='),
(73, 'ajay@akiraplc.com', 'in', '2021-05-04 09:02:20', 'RmWf5KMlSBm70VDpi5GRDw=='),
(74, 'greeshma@akiraplc.com', 'in', '2021-05-04 09:03:42', 'RmWf5KMlSBm70VDpi5GRDw=='),
(75, '', 'in', '2021-05-04 09:03:43', 'RmWf5KMlSBm70VDpi5GRDw=='),
(76, 'anjuzzz20@gmail.com', 'in', '2021-05-04 09:03:45', 'RmWf5KMlSBm70VDpi5GRDw=='),
(77, '', 'in', '2021-05-04 09:04:00', 'RmWf5KMlSBm70VDpi5GRDw=='),
(78, '', 'in', '2021-05-04 09:04:49', 'RmWf5KMlSBm70VDpi5GRDw=='),
(79, '', 'in', '2021-05-04 09:05:57', 'RmWf5KMlSBm70VDpi5GRDw=='),
(80, 'ajith@akiraplc.com', 'in', '2021-05-04 09:06:14', 'RmWf5KMlSBm70VDpi5GRDw=='),
(81, '', 'in', '2021-05-04 09:06:24', 'RmWf5KMlSBm70VDpi5GRDw=='),
(82, '', 'in', '2021-05-04 09:09:37', 'RmWf5KMlSBm70VDpi5GRDw=='),
(83, '', 'out', '2021-05-04 09:14:18', 'RmWf5KMlSBm70VDpi5GRDw=='),
(84, '', 'out', '2021-05-04 09:14:29', 'RmWf5KMlSBm70VDpi5GRDw=='),
(85, 'ajay@akiraplc.com', 'out', '2021-05-04 09:14:32', 'RmWf5KMlSBm70VDpi5GRDw=='),
(86, 'anjuzzz20@gmail.com', 'out', '2021-05-04 09:24:24', 'RmWf5KMlSBm70VDpi5GRDw=='),
(87, 'greeshma@akiraplc.com', 'out', '2021-05-04 09:26:40', 'RmWf5KMlSBm70VDpi5GRDw=='),
(88, '', 'out', '2021-05-04 09:27:01', 'RmWf5KMlSBm70VDpi5GRDw=='),
(89, 'sreeraj@akiraplc.com', 'out', '2021-05-04 09:27:03', 'RmWf5KMlSBm70VDpi5GRDw=='),
(90, 'vidyasree@akiraplc.com', 'out', '2021-05-04 09:27:09', 'RmWf5KMlSBm70VDpi5GRDw=='),
(91, 'arunkumarp0033@gmail.com', 'out', '2021-05-04 09:27:13', 'RmWf5KMlSBm70VDpi5GRDw=='),
(92, '', 'in', '2021-05-04 09:31:36', 'RmWf5KMlSBm70VDpi5GRDw=='),
(93, 'ajith@akiraplc.com', 'out', '2021-05-04 09:31:51', 'RmWf5KMlSBm70VDpi5GRDw=='),
(94, '', 'out', '2021-05-04 09:39:21', 'RmWf5KMlSBm70VDpi5GRDw=='),
(95, '', 'out', '2021-05-04 09:39:26', 'RmWf5KMlSBm70VDpi5GRDw=='),
(96, '', 'out', '2021-05-04 09:47:40', 'RmWf5KMlSBm70VDpi5GRDw=='),
(97, '', 'out', '2021-05-04 09:47:45', 'RmWf5KMlSBm70VDpi5GRDw=='),
(98, '', 'out', '2021-05-04 09:48:31', 'RmWf5KMlSBm70VDpi5GRDw=='),
(99, '', 'in', '2021-05-04 09:49:10', 'RmWf5KMlSBm70VDpi5GRDw=='),
(100, 'sreeraj@akiraplc.com', 'in', '2021-05-04 09:49:45', 'RmWf5KMlSBm70VDpi5GRDw=='),
(101, '', 'out', '2021-05-04 09:51:36', 'RmWf5KMlSBm70VDpi5GRDw=='),
(102, 'sreeraj@akiraplc.com', 'out', '2021-05-04 09:55:20', 'RmWf5KMlSBm70VDpi5GRDw=='),
(103, '', 'out', '2021-05-04 09:55:32', 'RmWf5KMlSBm70VDpi5GRDw=='),
(104, 'dilip@akiraplc.com', 'out', '2021-05-04 10:24:53', 'RmWf5KMlSBm70VDpi5GRDw=='),
(105, 'midhun@akiraplc.com', 'out', '2021-05-04 10:25:03', 'RmWf5KMlSBm70VDpi5GRDw=='),
(106, 'sales@akiraplc.com', 'out', '2021-05-04 10:26:49', 'RmWf5KMlSBm70VDpi5GRDw=='),
(107, '', 'out', '2021-05-04 10:29:50', 'RmWf5KMlSBm70VDpi5GRDw=='),
(108, 'sales@akiraplc.com', 'in', '2021-05-04 14:20:48', 'hdjPlX7NQB+P51UsZXoDQA=='),
(109, 'akhil.kesav@akiraplc.com', 'in', '2021-05-04 14:21:36', 'hdjPlX7NQB+P51UsZXoDQA=='),
(110, 'akhil.kesav@akiraplc.com', 'out', '2021-05-04 14:22:34', 'hdjPlX7NQB+P51UsZXoDQA=='),
(111, 'sales@akiraplc.com', 'out', '2021-05-04 14:22:40', 'hdjPlX7NQB+P51UsZXoDQA=='),
(112, 'sales@akiraplc.com', 'out', '2021-05-03 07:56:01', '1zSccSuXREiiudvVr5IQsg=='),
(113, 'sales@akiraplc.com', 'in', '2021-05-04 14:23:05', 'aygXdxfNT3Kns73oCGbMIA=='),
(114, 'akhil.kesav@akiraplc.com', 'in', '2021-05-04 14:24:30', 'aygXdxfNT3Kns73oCGbMIA=='),
(115, 'dilip@akiraplc.com', 'in', '2021-05-04 14:32:31', 'aygXdxfNT3Kns73oCGbMIA=='),
(116, 'akhil.kesav@akiraplc.com', 'out', '2021-05-04 14:32:40', 'aygXdxfNT3Kns73oCGbMIA=='),
(117, 'dilip@akiraplc.com', 'out', '2021-05-04 14:33:31', 'aygXdxfNT3Kns73oCGbMIA=='),
(118, 'sales@akiraplc.com', 'out', '2021-05-04 14:33:39', 'aygXdxfNT3Kns73oCGbMIA=='),
(119, 'sales@akiraplc.com', 'in', '2021-05-04 17:39:44', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(120, '', 'in', '2021-05-04 17:44:53', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(121, '', 'out', '2021-05-04 17:45:57', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(122, 'sreeraj@akiraplc.com', 'in', '2021-05-04 17:46:06', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(123, '', 'in', '2021-05-04 17:46:15', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(124, '', 'in', '2021-05-04 17:46:20', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(125, '', 'in', '2021-05-04 17:46:20', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(126, '', 'in', '2021-05-04 17:46:53', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(127, 'greeshma@akiraplc.com', 'in', '2021-05-04 17:46:55', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(128, 'midhun@akiraplc.com', 'in', '2021-05-04 17:46:57', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(129, 'vidyasree@akiraplc.com', 'in', '2021-05-04 17:47:22', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(130, '', 'in', '2021-05-04 17:47:35', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(131, '', 'in', '2021-05-04 17:48:04', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(132, 'anjuzzz20@gmail.com', 'in', '2021-05-04 17:48:33', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(133, '', 'in', '2021-05-04 17:48:59', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(134, 'arunkumarp0033@gmail.com', 'in', '2021-05-04 17:49:00', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(135, '', 'out', '2021-05-04 17:53:04', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(136, '', 'in', '2021-05-04 17:53:04', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(137, '', 'in', '2021-05-04 17:54:07', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(138, '', 'out', '2021-05-04 17:54:38', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(139, '', 'in', '2021-05-04 17:54:38', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(140, 'sreeraj@akiraplc.com', 'out', '2021-05-04 17:55:12', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(141, '', 'out', '2021-05-04 17:58:08', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(142, '', 'in', '2021-05-04 17:58:36', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(143, 'sreeraj@akiraplc.com', 'in', '2021-05-04 17:58:38', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(144, '', 'in', '2021-05-04 17:58:52', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(145, '', 'out', '2021-05-04 17:58:52', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(146, '', 'out', '2021-05-04 17:59:49', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(147, '', 'in', '2021-05-04 17:59:49', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(148, '', 'out', '2021-05-04 18:00:09', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(149, '', 'in', '2021-05-04 18:00:18', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(150, '', 'out', '2021-05-04 18:00:18', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(151, 'dilip@akiraplc.com', 'in', '2021-05-04 18:01:19', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(152, '', 'out', '2021-05-04 18:01:20', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(153, '', 'in', '2021-05-04 18:01:20', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(154, 'greeshma@akiraplc.com', 'out', '2021-05-04 18:03:46', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(155, 'sreeraj@akiraplc.com', 'out', '2021-05-04 18:03:48', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(156, 'anjuzzz20@gmail.com', 'out', '2021-05-04 18:04:24', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(157, '', 'out', '2021-05-04 18:08:49', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(158, 'arunkumarp0033@gmail.com', 'out', '2021-05-04 18:09:26', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(159, '', 'out', '2021-05-04 18:12:04', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(160, '', 'in', '2021-05-04 18:13:03', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(161, '', 'out', '2021-05-04 18:14:49', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(162, '', 'out', '2021-05-04 18:18:00', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(163, 'vidyasree@akiraplc.com', 'out', '2021-05-04 18:22:13', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(164, '', 'out', '2021-05-04 18:35:45', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(165, 'midhun@akiraplc.com', 'out', '2021-05-04 18:35:48', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(166, '', 'out', '2021-05-04 18:35:50', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(167, '', 'out', '2021-05-04 18:35:52', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(168, 'dilip@akiraplc.com', 'out', '2021-05-04 18:35:55', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(169, 'sales@akiraplc.com', 'out', '2021-05-04 18:35:55', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(170, '', 'out', '2021-05-04 18:35:56', 'OUuGpto0R+GBSGq7dG+RaQ=='),
(171, 'sales@akiraplc.com', 'in', '2021-05-03 07:51:13', 'xfUYRV5QS2mhH1BB2FAyTA=='),
(172, 'sales@akiraplc.com', 'in', '2021-05-03 07:12:28', 'Dar36t1fRoyO9a1lqSN7zw=='),
(173, 'sales@akiraplc.com', 'in', '2021-05-05 09:00:24', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(174, 'ajith@akiraplc.com', 'in', '2021-05-05 09:00:42', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(175, 'midhun@akiraplc.com', 'in', '2021-05-05 09:00:45', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(176, 'dilip@akiraplc.com', 'in', '2021-05-05 09:00:46', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(177, 'sreeraj@akiraplc.com', 'in', '2021-05-05 09:00:48', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(178, '', 'in', '2021-05-05 09:00:55', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(179, 'vidyasree@akiraplc.com', 'in', '2021-05-05 09:00:56', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(180, '', 'in', '2021-05-05 09:00:56', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(181, '', 'in', '2021-05-05 09:01:01', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(182, 'anjuzzz20@gmail.com', 'in', '2021-05-05 09:01:05', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(183, '', 'in', '2021-05-05 09:01:50', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(184, '', 'in', '2021-05-05 09:01:54', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(185, 'arunkumarp0033@gmail.com', 'in', '2021-05-05 09:02:00', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(186, 'akhil.kesav@akiraplc.com', 'in', '2021-05-05 09:02:14', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(187, 'greeshma@akiraplc.com', 'in', '2021-05-05 09:02:14', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(188, '', 'in', '2021-05-05 09:02:17', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(189, '', 'in', '2021-05-05 09:02:32', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(190, '', 'in', '2021-05-05 09:02:37', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(191, '', 'out', '2021-05-05 09:03:04', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(192, '', 'in', '2021-05-05 09:03:05', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(193, 'ajay@akiraplc.com', 'in', '2021-05-05 09:03:21', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(194, '', 'in', '2021-05-05 09:05:29', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(195, '', 'in', '2021-05-05 09:07:44', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(196, 'sreeraj@akiraplc.com', 'out', '2021-05-05 09:10:27', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(197, '', 'out', '2021-05-05 09:10:39', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(198, 'sreeraj@akiraplc.com', 'in', '2021-05-05 09:11:17', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(199, '', 'out', '2021-05-05 09:11:40', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(200, '', 'out', '2021-05-05 09:26:31', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(201, '', 'in', '2021-05-05 09:26:53', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(202, '', 'out', '2021-05-05 09:29:30', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(203, '', 'out', '2021-05-05 09:29:33', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(204, '', 'in', '2021-05-05 09:30:05', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(205, 'greeshma@akiraplc.com', 'out', '2021-05-05 09:33:21', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(206, 'anjuzzz20@gmail.com', 'out', '2021-05-05 09:33:44', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(207, 'sreeraj@akiraplc.com', 'out', '2021-05-05 09:35:01', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(208, 'ajay@akiraplc.com', 'out', '2021-05-05 09:38:22', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(209, 'arunkumarp0033@gmail.com', 'out', '2021-05-05 09:40:20', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(210, '', 'out', '2021-05-05 09:41:40', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(211, 'vidyasree@akiraplc.com', 'out', '2021-05-05 09:41:59', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(212, '', 'out', '2021-05-05 09:44:12', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(213, '', 'out', '2021-05-05 09:49:30', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(214, '', 'out', '2021-05-05 09:49:39', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(215, 'midhun@akiraplc.com', 'out', '2021-05-05 09:50:27', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(216, 'midhun@akiraplc.com', 'in', '2021-05-05 09:51:21', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(217, '', 'out', '2021-05-05 09:54:17', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(218, '', 'out', '2021-05-05 09:55:59', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(219, 'akhil.kesav@akiraplc.com', 'out', '2021-05-05 10:00:01', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(220, '', 'out', '2021-05-05 10:00:05', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(221, 'midhun@akiraplc.com', 'out', '2021-05-05 10:00:06', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(222, 'dilip@akiraplc.com', 'out', '2021-05-05 10:00:09', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(223, 'ajith@akiraplc.com', 'out', '2021-05-05 10:08:53', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(224, 'sales@akiraplc.com', 'out', '2021-05-05 10:08:57', 'iVzJKNDCTiy8RuSJBb9lmg=='),
(225, 'sales@akiraplc.com', 'in', '2021-05-05 16:04:34', 'Gag8JVuNTV2V20YnFgEkHQ=='),
(226, 'sales@akiraplc.com', 'out', '2021-05-05 16:04:41', 'Gag8JVuNTV2V20YnFgEkHQ=='),
(227, 'sales@akiraplc.com', 'in', '2021-05-05 16:06:04', 'W75L/9EhSRauglOi9A4n0Q=='),
(228, 'dilip@akiraplc.com', 'in', '2021-05-05 16:07:47', 'W75L/9EhSRauglOi9A4n0Q=='),
(229, 'ajith@akiraplc.com', 'in', '2021-05-05 16:08:48', 'W75L/9EhSRauglOi9A4n0Q=='),
(230, 'ajith@akiraplc.com', 'out', '2021-05-05 17:00:30', 'W75L/9EhSRauglOi9A4n0Q=='),
(231, 'dilip@akiraplc.com', 'out', '2021-05-05 17:00:30', 'W75L/9EhSRauglOi9A4n0Q=='),
(232, 'sales@akiraplc.com', 'out', '2021-05-05 17:00:30', 'W75L/9EhSRauglOi9A4n0Q=='),
(233, 'sales@akiraplc.com', 'in', '2021-05-05 17:45:23', 'CrjjaGTBQPiIf10muW/cjQ=='),
(234, 'sales@akiraplc.com', 'out', '2021-05-05 17:47:10', 'CrjjaGTBQPiIf10muW/cjQ=='),
(235, 'sales@akiraplc.com', 'in', '2021-05-05 17:47:13', 'CrjjaGTBQPiIf10muW/cjQ=='),
(236, 'anjuzzz20@gmail.com', 'in', '2021-05-05 17:47:35', 'CrjjaGTBQPiIf10muW/cjQ=='),
(237, '', 'in', '2021-05-05 17:47:33', 'CrjjaGTBQPiIf10muW/cjQ=='),
(238, 'abhishek@akiraplc.com', 'in', '2021-05-05 17:47:40', 'CrjjaGTBQPiIf10muW/cjQ=='),
(239, '', 'in', '2021-05-05 17:47:41', 'CrjjaGTBQPiIf10muW/cjQ=='),
(240, '', 'in', '2021-05-05 17:47:47', 'CrjjaGTBQPiIf10muW/cjQ=='),
(241, '', 'in', '2021-05-05 17:47:53', 'CrjjaGTBQPiIf10muW/cjQ=='),
(242, 'midhun@akiraplc.com', 'in', '2021-05-05 17:48:04', 'CrjjaGTBQPiIf10muW/cjQ=='),
(243, 'ajay@akiraplc.com', 'in', '2021-05-05 17:48:28', 'CrjjaGTBQPiIf10muW/cjQ=='),
(244, 'arunkumarp0033@gmail.com', 'in', '2021-05-05 17:48:41', 'CrjjaGTBQPiIf10muW/cjQ=='),
(245, 'greeshma@akiraplc.com', 'in', '2021-05-05 17:48:41', 'CrjjaGTBQPiIf10muW/cjQ=='),
(246, 'vidyasree@akiraplc.com', 'in', '2021-05-05 17:50:26', 'CrjjaGTBQPiIf10muW/cjQ=='),
(247, '', 'in', '2021-05-05 17:52:11', 'CrjjaGTBQPiIf10muW/cjQ=='),
(248, '', 'in', '2021-05-05 17:52:16', 'CrjjaGTBQPiIf10muW/cjQ=='),
(249, 'sreeraj@akiraplc.com', 'in', '2021-05-05 17:53:22', 'CrjjaGTBQPiIf10muW/cjQ=='),
(250, '', 'out', '2021-05-05 17:55:25', 'CrjjaGTBQPiIf10muW/cjQ=='),
(251, 'greeshma@akiraplc.com', 'out', '2021-05-05 18:00:10', 'CrjjaGTBQPiIf10muW/cjQ=='),
(252, 'ajith@akiraplc.com', 'in', '2021-05-05 18:00:18', 'CrjjaGTBQPiIf10muW/cjQ=='),
(253, 'akhil.kesav@akiraplc.com', 'in', '2021-05-05 18:00:27', 'CrjjaGTBQPiIf10muW/cjQ=='),
(254, 'anjuzzz20@gmail.com', 'out', '2021-05-05 18:03:46', 'CrjjaGTBQPiIf10muW/cjQ=='),
(255, 'vidyasree@akiraplc.com', 'out', '2021-05-05 18:05:01', 'CrjjaGTBQPiIf10muW/cjQ=='),
(256, 'sreeraj@akiraplc.com', 'out', '2021-05-05 18:06:06', 'CrjjaGTBQPiIf10muW/cjQ=='),
(257, '', 'out', '2021-05-05 18:08:22', 'CrjjaGTBQPiIf10muW/cjQ=='),
(258, 'arunkumarp0033@gmail.com', 'out', '2021-05-05 18:09:15', 'CrjjaGTBQPiIf10muW/cjQ=='),
(259, 'dilip@akiraplc.com', 'in', '2021-05-05 18:11:42', 'CrjjaGTBQPiIf10muW/cjQ=='),
(260, '', 'out', '2021-05-05 18:13:44', 'CrjjaGTBQPiIf10muW/cjQ=='),
(261, 'ajith@akiraplc.com', 'out', '2021-05-05 18:17:14', 'CrjjaGTBQPiIf10muW/cjQ=='),
(262, 'abhishek@akiraplc.com', 'out', '2021-05-05 18:17:31', 'CrjjaGTBQPiIf10muW/cjQ=='),
(263, '', 'out', '2021-05-05 18:18:13', 'CrjjaGTBQPiIf10muW/cjQ=='),
(264, '', 'out', '2021-05-05 18:18:54', 'CrjjaGTBQPiIf10muW/cjQ=='),
(265, 'ajith@akiraplc.com', 'in', '2021-05-05 18:21:02', 'CrjjaGTBQPiIf10muW/cjQ=='),
(266, 'akhil.kesav@akiraplc.com', 'out', '2021-05-05 18:43:50', 'CrjjaGTBQPiIf10muW/cjQ=='),
(267, 'ajay@akiraplc.com', 'out', '2021-05-05 18:44:28', 'CrjjaGTBQPiIf10muW/cjQ=='),
(268, 'akhil.kesav@akiraplc.com', 'in', '2021-05-05 18:44:35', 'CrjjaGTBQPiIf10muW/cjQ=='),
(269, 'akhil.kesav@akiraplc.com', 'out', '2021-05-05 18:56:08', 'CrjjaGTBQPiIf10muW/cjQ=='),
(270, 'midhun@akiraplc.com', 'out', '2021-05-05 18:56:12', 'CrjjaGTBQPiIf10muW/cjQ=='),
(271, '', 'out', '2021-05-05 18:56:14', 'CrjjaGTBQPiIf10muW/cjQ=='),
(272, 'sales@akiraplc.com', 'out', '2021-05-05 18:56:15', 'CrjjaGTBQPiIf10muW/cjQ=='),
(273, 'dilip@akiraplc.com', 'out', '2021-05-05 18:56:16', 'CrjjaGTBQPiIf10muW/cjQ=='),
(274, 'ajith@akiraplc.com', 'out', '2021-05-05 18:56:22', 'CrjjaGTBQPiIf10muW/cjQ=='),
(275, 'sales@akiraplc.com', 'in', '2021-05-05 19:11:40', 'QZkFvDH4T8iSvjHs/ojK1w=='),
(276, 'jinesh@akiraplc.com', 'in', '2021-05-05 19:12:15', 'QZkFvDH4T8iSvjHs/ojK1w=='),
(277, 'sales@akiraplc.com', 'out', '2021-05-05 19:12:30', 'QZkFvDH4T8iSvjHs/ojK1w=='),
(278, 'jinesh@akiraplc.com', 'out', '2021-05-05 19:12:30', 'QZkFvDH4T8iSvjHs/ojK1w=='),
(279, 'sales@akiraplc.com', 'in', '2021-05-05 19:13:28', 'ac+EY1luR3ClMdw324xbTQ=='),
(280, 'sales@akiraplc.com', 'out', '2021-05-05 19:13:38', 'ac+EY1luR3ClMdw324xbTQ=='),
(281, 'sales@akiraplc.com', 'in', '2021-05-05 19:14:09', 'FQWOminfS1WDxBpnpI+TPQ=='),
(282, 'sales@akiraplc.com', 'out', '2021-05-05 19:14:50', 'FQWOminfS1WDxBpnpI+TPQ=='),
(283, 'sales@akiraplc.com', 'in', '2021-05-06 08:59:33', 'f6dnsQf0RAysa6RdtzcNYg=='),
(284, '', 'in', '2021-05-06 09:00:03', 'f6dnsQf0RAysa6RdtzcNYg=='),
(285, '', 'in', '2021-05-06 09:00:05', 'f6dnsQf0RAysa6RdtzcNYg=='),
(286, '', 'in', '2021-05-06 09:00:07', 'f6dnsQf0RAysa6RdtzcNYg=='),
(287, '', 'in', '2021-05-06 09:00:23', 'f6dnsQf0RAysa6RdtzcNYg=='),
(288, 'anjuzzz20@gmail.com', 'in', '2021-05-06 09:00:38', 'f6dnsQf0RAysa6RdtzcNYg=='),
(289, 'midhun@akiraplc.com', 'in', '2021-05-06 09:00:39', 'f6dnsQf0RAysa6RdtzcNYg=='),
(290, 'vidyasree@akiraplc.com', 'in', '2021-05-06 09:00:42', 'f6dnsQf0RAysa6RdtzcNYg=='),
(291, '', 'in', '2021-05-06 09:01:07', 'f6dnsQf0RAysa6RdtzcNYg=='),
(292, '', 'in', '2021-05-06 09:01:18', 'f6dnsQf0RAysa6RdtzcNYg=='),
(293, 'sreeraj@akiraplc.com', 'in', '2021-05-06 09:01:22', 'f6dnsQf0RAysa6RdtzcNYg=='),
(294, 'akhil.kesav@akiraplc.com', 'in', '2021-05-06 09:02:03', 'f6dnsQf0RAysa6RdtzcNYg=='),
(295, 'arunkumarp0033@gmail.com', 'in', '2021-05-06 09:02:04', 'f6dnsQf0RAysa6RdtzcNYg=='),
(296, '', 'in', '2021-05-06 09:02:11', 'f6dnsQf0RAysa6RdtzcNYg=='),
(297, '', 'in', '2021-05-06 09:02:14', 'f6dnsQf0RAysa6RdtzcNYg=='),
(298, 'dilip@akiraplc.com', 'in', '2021-05-06 09:03:02', 'f6dnsQf0RAysa6RdtzcNYg=='),
(299, 'greeshma@akiraplc.com', 'in', '2021-05-06 09:03:05', 'f6dnsQf0RAysa6RdtzcNYg=='),
(300, '', 'out', '2021-05-06 09:05:03', 'f6dnsQf0RAysa6RdtzcNYg=='),
(301, '', 'in', '2021-05-06 09:05:43', 'f6dnsQf0RAysa6RdtzcNYg=='),
(302, 'akhil@akiraplc.com', 'in', '2021-05-06 09:09:33', 'f6dnsQf0RAysa6RdtzcNYg=='),
(303, 'akhil@akiraplc.com', 'out', '2021-05-06 09:13:15', 'f6dnsQf0RAysa6RdtzcNYg=='),
(304, '', 'in', '2021-05-06 09:13:46', 'f6dnsQf0RAysa6RdtzcNYg=='),
(305, '', 'out', '2021-05-06 09:13:46', 'f6dnsQf0RAysa6RdtzcNYg=='),
(306, 'ajith@akiraplc.com', 'in', '2021-05-06 09:14:19', 'f6dnsQf0RAysa6RdtzcNYg=='),
(307, 'sreeraj@akiraplc.com', 'out', '2021-05-06 09:20:56', 'f6dnsQf0RAysa6RdtzcNYg=='),
(308, 'dilip@akiraplc.com', 'out', '2021-05-06 09:21:19', 'f6dnsQf0RAysa6RdtzcNYg=='),
(309, 'dilip@akiraplc.com', 'in', '2021-05-06 09:22:29', 'f6dnsQf0RAysa6RdtzcNYg=='),
(310, '', 'out', '2021-05-06 09:22:30', 'f6dnsQf0RAysa6RdtzcNYg=='),
(311, 'anjuzzz20@gmail.com', 'out', '2021-05-06 09:23:21', 'f6dnsQf0RAysa6RdtzcNYg=='),
(312, 'greeshma@akiraplc.com', 'out', '2021-05-06 09:23:41', 'f6dnsQf0RAysa6RdtzcNYg=='),
(313, '', 'in', '2021-05-06 09:24:25', 'f6dnsQf0RAysa6RdtzcNYg=='),
(314, 'sreeraj@akiraplc.com', 'in', '2021-05-06 09:24:42', 'f6dnsQf0RAysa6RdtzcNYg=='),
(315, '', 'out', '2021-05-06 09:24:47', 'f6dnsQf0RAysa6RdtzcNYg=='),
(316, 'sreeraj@akiraplc.com', 'out', '2021-05-06 09:26:53', 'f6dnsQf0RAysa6RdtzcNYg=='),
(317, '', 'out', '2021-05-06 09:27:13', 'f6dnsQf0RAysa6RdtzcNYg=='),
(318, 'arunkumarp0033@gmail.com', 'out', '2021-05-06 09:28:05', 'f6dnsQf0RAysa6RdtzcNYg=='),
(319, 'vidyasree@akiraplc.com', 'out', '2021-05-06 09:28:55', 'f6dnsQf0RAysa6RdtzcNYg=='),
(320, '', 'out', '2021-05-06 09:35:57', 'f6dnsQf0RAysa6RdtzcNYg=='),
(321, '', 'out', '2021-05-06 09:41:21', 'f6dnsQf0RAysa6RdtzcNYg=='),
(322, '', 'out', '2021-05-06 09:43:23', 'f6dnsQf0RAysa6RdtzcNYg=='),
(323, '', 'out', '2021-05-06 09:44:46', 'f6dnsQf0RAysa6RdtzcNYg=='),
(324, '', 'in', '2021-05-06 09:45:03', 'f6dnsQf0RAysa6RdtzcNYg=='),
(325, '', 'out', '2021-05-06 09:45:30', 'f6dnsQf0RAysa6RdtzcNYg=='),
(326, '', 'out', '2021-05-06 09:47:15', 'f6dnsQf0RAysa6RdtzcNYg=='),
(327, 'akhil.kesav@akiraplc.com', 'out', '2021-05-06 09:57:33', 'f6dnsQf0RAysa6RdtzcNYg=='),
(328, 'midhun@akiraplc.com', 'out', '2021-05-06 09:57:33', 'f6dnsQf0RAysa6RdtzcNYg=='),
(329, '', 'out', '2021-05-06 09:57:41', 'f6dnsQf0RAysa6RdtzcNYg=='),
(330, 'dilip@akiraplc.com', 'out', '2021-05-06 09:57:43', 'f6dnsQf0RAysa6RdtzcNYg=='),
(331, 'ajith@akiraplc.com', 'out', '2021-05-06 10:00:45', 'f6dnsQf0RAysa6RdtzcNYg=='),
(332, 'sales@akiraplc.com', 'out', '2021-05-06 10:00:45', 'f6dnsQf0RAysa6RdtzcNYg=='),
(333, 'sales@akiraplc.com', 'in', '2021-05-06 10:25:06', 'rH2S7YMjTXCajDywPoLzUg=='),
(334, '', 'in', '2021-05-06 10:28:13', 'rH2S7YMjTXCajDywPoLzUg=='),
(335, 'mahezwarlalms@gmail.com', 'in', '2021-05-06 10:28:37', 'rH2S7YMjTXCajDywPoLzUg=='),
(336, 'sales@akiraplc.com', 'in', '2021-05-06 10:28:57', 'rH2S7YMjTXCajDywPoLzUg=='),
(337, 'mahezwarlalms@gmail.com', 'out', '2021-05-06 10:29:44', 'rH2S7YMjTXCajDywPoLzUg=='),
(338, 'sajimolgs@gmail.com', 'in', '2021-05-06 10:29:55', 'rH2S7YMjTXCajDywPoLzUg=='),
(339, 'mahezwarlalms@gmail.com', 'in', '2021-05-06 10:30:24', 'rH2S7YMjTXCajDywPoLzUg=='),
(340, '', 'out', '2021-05-06 10:30:41', 'rH2S7YMjTXCajDywPoLzUg=='),
(341, 'abhishek@akiraplc.com', 'in', '2021-05-06 10:30:57', 'rH2S7YMjTXCajDywPoLzUg=='),
(342, '', 'in', '2021-05-06 10:31:20', 'rH2S7YMjTXCajDywPoLzUg=='),
(343, '', 'in', '2021-05-06 10:32:44', 'rH2S7YMjTXCajDywPoLzUg=='),
(344, '', 'in', '2021-05-06 10:33:00', 'rH2S7YMjTXCajDywPoLzUg=='),
(345, 'sheejar80@gmail.com', 'in', '2021-05-06 10:33:08', 'rH2S7YMjTXCajDywPoLzUg=='),
(346, '', 'in', '2021-05-06 10:33:11', 'rH2S7YMjTXCajDywPoLzUg=='),
(347, '', 'in', '2021-05-06 10:33:51', 'rH2S7YMjTXCajDywPoLzUg=='),
(348, '', 'in', '2021-05-06 10:34:02', 'rH2S7YMjTXCajDywPoLzUg=='),
(349, 'mahezwarlalms@gmail.com', 'out', '2021-05-06 10:34:46', 'rH2S7YMjTXCajDywPoLzUg=='),
(350, 'mahezwarlalms@gmail.com', 'in', '2021-05-06 10:34:56', 'rH2S7YMjTXCajDywPoLzUg=='),
(351, '', 'in', '2021-05-06 10:35:21', 'rH2S7YMjTXCajDywPoLzUg=='),
(352, 'sheejar80@gmail.com', 'out', '2021-05-06 10:37:01', 'rH2S7YMjTXCajDywPoLzUg=='),
(353, 'sheejar80@gmail.com', 'in', '2021-05-06 10:37:11', 'rH2S7YMjTXCajDywPoLzUg=='),
(354, '', 'in', '2021-05-06 10:38:05', 'rH2S7YMjTXCajDywPoLzUg=='),
(355, '', 'in', '2021-05-06 10:38:39', 'rH2S7YMjTXCajDywPoLzUg=='),
(356, 'sales@akiraplc.com', 'out', '2021-05-06 10:38:57', 'rH2S7YMjTXCajDywPoLzUg=='),
(357, 'sheejar80@gmail.com', 'out', '2021-05-06 10:39:03', 'rH2S7YMjTXCajDywPoLzUg=='),
(358, 'sheejar80@gmail.com', 'in', '2021-05-06 10:39:03', 'rH2S7YMjTXCajDywPoLzUg=='),
(359, 'sales@akiraplc.com', 'in', '2021-05-06 10:40:48', 'rH2S7YMjTXCajDywPoLzUg=='),
(360, 'nezy@akiraplc.com', 'in', '2021-05-06 10:43:31', 'rH2S7YMjTXCajDywPoLzUg=='),
(361, '', 'in', '2021-05-06 10:43:51', 'rH2S7YMjTXCajDywPoLzUg=='),
(362, 'sales@akiraplc.com', 'out', '2021-05-06 10:44:05', 'rH2S7YMjTXCajDywPoLzUg=='),
(363, '', 'out', '2021-05-06 10:45:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(364, '', 'in', '2021-05-06 10:46:10', 'rH2S7YMjTXCajDywPoLzUg=='),
(365, '', 'out', '2021-05-06 10:47:14', 'rH2S7YMjTXCajDywPoLzUg=='),
(366, '', 'in', '2021-05-06 10:49:45', 'rH2S7YMjTXCajDywPoLzUg=='),
(367, '', 'out', '2021-05-06 10:49:45', 'rH2S7YMjTXCajDywPoLzUg=='),
(368, '', 'out', '2021-05-06 10:49:54', 'rH2S7YMjTXCajDywPoLzUg=='),
(369, '', 'in', '2021-05-06 10:50:11', 'rH2S7YMjTXCajDywPoLzUg=='),
(370, '', 'out', '2021-05-06 10:53:02', 'rH2S7YMjTXCajDywPoLzUg=='),
(371, '', 'out', '2021-05-06 10:56:39', 'rH2S7YMjTXCajDywPoLzUg=='),
(372, '', 'in', '2021-05-06 10:58:55', 'rH2S7YMjTXCajDywPoLzUg=='),
(373, '', 'out', '2021-05-06 11:06:06', 'rH2S7YMjTXCajDywPoLzUg=='),
(374, '', 'out', '2021-05-06 11:08:25', 'rH2S7YMjTXCajDywPoLzUg=='),
(375, 'sales@akiraplc.com', 'in', '2021-05-06 11:13:15', 'rH2S7YMjTXCajDywPoLzUg=='),
(376, 'sales@akiraplc.com', 'out', '2021-05-06 11:14:08', 'rH2S7YMjTXCajDywPoLzUg=='),
(377, '', 'in', '2021-05-06 11:17:11', 'rH2S7YMjTXCajDywPoLzUg=='),
(378, '', 'out', '2021-05-06 11:22:41', 'rH2S7YMjTXCajDywPoLzUg=='),
(379, '', 'in', '2021-05-06 11:22:50', 'rH2S7YMjTXCajDywPoLzUg=='),
(380, '', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(381, 'nezy@akiraplc.com', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(382, '', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(383, 'sajimolgs@gmail.com', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(384, 'mahezwarlalms@gmail.com', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(385, 'sales@akiraplc.com', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(386, '', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(387, 'abhishek@akiraplc.com', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(388, '', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(389, '', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(390, 'sheejar80@gmail.com', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(391, '', 'out', '2021-05-06 11:37:35', 'rH2S7YMjTXCajDywPoLzUg=='),
(392, '', 'out', '2021-05-06 11:38:03', 'rH2S7YMjTXCajDywPoLzUg=='),
(393, 'jinesh@akiraplc.com', 'in', '2021-05-06 12:13:01', 'GUAgGb0NRyuHfLtzlexOmw=='),
(394, 'jinesh@akiraplc.com', 'out', '2021-05-06 12:14:59', 'GUAgGb0NRyuHfLtzlexOmw=='),
(395, 'jinesh@akiraplc.com', 'in', '2021-05-06 12:25:08', '9z/C11Z9RvqbM3z5pRunOw=='),
(396, 'athulya@akiraplc.com', 'in', '2021-05-06 12:25:21', '9z/C11Z9RvqbM3z5pRunOw=='),
(397, 'jinesh@akiraplc.com', 'out', '2021-05-06 12:27:31', '9z/C11Z9RvqbM3z5pRunOw=='),
(398, 'athulya@akiraplc.com', 'out', '2021-05-06 12:27:31', '9z/C11Z9RvqbM3z5pRunOw=='),
(399, 'jinesh@akiraplc.com', 'in', '2021-05-06 12:29:44', 'eR5ug4LnRNmVbNRiU54DZw=='),
(400, 'athulya@akiraplc.com', 'in', '2021-05-06 12:30:18', 'eR5ug4LnRNmVbNRiU54DZw=='),
(401, 'abhishek@akiraplc.com', 'in', '2021-05-06 12:43:23', 'eR5ug4LnRNmVbNRiU54DZw=='),
(402, 'athulya@akiraplc.com', 'out', '2021-05-06 12:51:59', 'eR5ug4LnRNmVbNRiU54DZw=='),
(403, 'jinesh@akiraplc.com', 'out', '2021-05-06 12:51:59', 'eR5ug4LnRNmVbNRiU54DZw=='),
(404, 'abhishek@akiraplc.com', 'out', '2021-05-06 12:51:59', 'eR5ug4LnRNmVbNRiU54DZw=='),
(405, 'jinesh@akiraplc.com', 'in', '2021-05-06 12:53:41', 'TUiS+rn2QJG/yDFvvAAVow=='),
(406, 'athulya@akiraplc.com', 'in', '2021-05-06 12:55:08', 'TUiS+rn2QJG/yDFvvAAVow=='),
(407, 'abhishek@akiraplc.com', 'in', '2021-05-06 12:55:15', 'TUiS+rn2QJG/yDFvvAAVow=='),
(408, 'athulya@akiraplc.com', 'out', '2021-05-06 12:56:40', 'TUiS+rn2QJG/yDFvvAAVow=='),
(409, 'jinesh@akiraplc.com', 'out', '2021-05-06 12:56:52', 'TUiS+rn2QJG/yDFvvAAVow=='),
(410, 'abhishek@akiraplc.com', 'out', '2021-05-06 12:56:52', 'TUiS+rn2QJG/yDFvvAAVow=='),
(411, 'jinesh@akiraplc.com', 'in', '2021-05-06 13:01:12', 'cgblGKRNSNOCfhtJ/M6L2A=='),
(412, 'jinesh@akiraplc.com', 'out', '2021-05-06 13:01:13', 'cgblGKRNSNOCfhtJ/M6L2A=='),
(413, 'jinesh@akiraplc.com', 'in', '2021-05-06 13:01:48', 'cgblGKRNSNOCfhtJ/M6L2A=='),
(414, 'jinesh@akiraplc.com', 'in', '2021-05-06 13:03:38', 'cgblGKRNSNOCfhtJ/M6L2A=='),
(415, 'jinesh@akiraplc.com', 'out', '2021-05-06 13:06:37', 'cgblGKRNSNOCfhtJ/M6L2A=='),
(416, 'jinesh@akiraplc.com', 'out', '2021-05-06 13:06:47', 'cgblGKRNSNOCfhtJ/M6L2A=='),
(417, 'jinesh@akiraplc.com', 'in', '2021-05-06 13:07:12', 'jcDMcVRNSlyVBeFi98Borg=='),
(418, 'jinesh@akiraplc.com', 'out', '2021-05-06 13:07:22', 'jcDMcVRNSlyVBeFi98Borg=='),
(419, 'jinesh@akiraplc.com', 'in', '2021-05-06 13:08:28', 'e35yFE0nRa+/SbAga4RhfQ=='),
(420, 'jinesh@akiraplc.com', 'in', '2021-05-06 13:08:35', 'e35yFE0nRa+/SbAga4RhfQ=='),
(421, 'jinesh@akiraplc.com', 'out', '2021-05-06 13:08:56', 'e35yFE0nRa+/SbAga4RhfQ=='),
(422, 'jinesh@akiraplc.com', 'out', '2021-05-06 13:15:26', 'e35yFE0nRa+/SbAga4RhfQ=='),
(423, 'jinesh@akiraplc.com', 'in', '2021-05-06 13:15:40', 'g+O5L2JUQ8mF5jlKQy85ZA=='),
(424, 'jinesh@akiraplc.com', 'in', '2021-05-06 13:16:00', 'g+O5L2JUQ8mF5jlKQy85ZA=='),
(425, 'jinesh@akiraplc.com', 'out', '2021-05-06 13:16:21', 'g+O5L2JUQ8mF5jlKQy85ZA=='),
(426, '', 'in', '2021-05-06 13:17:23', 'g+O5L2JUQ8mF5jlKQy85ZA=='),
(427, '', 'out', '2021-05-06 13:17:41', 'g+O5L2JUQ8mF5jlKQy85ZA=='),
(428, '', 'in', '2021-05-06 13:18:09', 'g+O5L2JUQ8mF5jlKQy85ZA=='),
(429, '', 'out', '2021-05-06 13:18:17', 'g+O5L2JUQ8mF5jlKQy85ZA=='),
(430, 'jinesh@akiraplc.com', 'out', '2021-05-06 13:18:18', 'g+O5L2JUQ8mF5jlKQy85ZA=='),
(431, 'sales@akiraplc.com', 'in', '2021-05-06 14:14:46', '33nL4i65ShqwzfrDvXREZw=='),
(432, '', 'in', '2021-05-06 14:15:19', '33nL4i65ShqwzfrDvXREZw=='),
(433, '', 'in', '2021-05-06 14:15:28', '33nL4i65ShqwzfrDvXREZw=='),
(434, '', 'out', '2021-05-06 14:16:02', '33nL4i65ShqwzfrDvXREZw=='),
(435, 'akhil.kesav@akiraplc.com', 'in', '2021-05-06 14:17:06', '33nL4i65ShqwzfrDvXREZw=='),
(436, '', 'in', '2021-05-06 14:17:55', '33nL4i65ShqwzfrDvXREZw=='),
(437, '', 'out', '2021-05-06 14:18:03', '33nL4i65ShqwzfrDvXREZw=='),
(438, 'media@markazonline.com', 'in', '2021-05-06 14:18:53', '33nL4i65ShqwzfrDvXREZw=='),
(439, 'media@markazonline.com', 'out', '2021-05-06 14:19:53', '33nL4i65ShqwzfrDvXREZw=='),
(440, 'media@markazonline.com', 'in', '2021-05-06 14:20:09', '33nL4i65ShqwzfrDvXREZw=='),
(441, '', 'in', '2021-05-06 14:20:21', '33nL4i65ShqwzfrDvXREZw=='),
(442, '', 'out', '2021-05-06 14:44:28', '33nL4i65ShqwzfrDvXREZw=='),
(443, '', 'in', '2021-05-06 14:49:31', '33nL4i65ShqwzfrDvXREZw=='),
(444, '', 'in', '2021-05-06 14:51:27', '33nL4i65ShqwzfrDvXREZw=='),
(445, '', 'out', '2021-05-06 14:51:27', '33nL4i65ShqwzfrDvXREZw=='),
(446, '', 'in', '2021-05-06 14:53:34', '33nL4i65ShqwzfrDvXREZw=='),
(447, '', 'out', '2021-05-06 14:53:34', '33nL4i65ShqwzfrDvXREZw=='),
(448, 'media@markazonline.com', 'out', '2021-05-06 15:13:56', '33nL4i65ShqwzfrDvXREZw=='),
(449, 'media@markazonline.com', 'in', '2021-05-06 15:15:29', '33nL4i65ShqwzfrDvXREZw=='),
(450, '', 'out', '2021-05-06 15:15:47', '33nL4i65ShqwzfrDvXREZw=='),
(451, 'akhil.kesav@akiraplc.com', 'out', '2021-05-06 15:29:11', '33nL4i65ShqwzfrDvXREZw=='),
(452, '', 'out', '2021-05-06 15:29:14', '33nL4i65ShqwzfrDvXREZw=='),
(453, 'media@markazonline.com', 'out', '2021-05-06 15:29:13', '33nL4i65ShqwzfrDvXREZw=='),
(454, 'sales@akiraplc.com', 'out', '2021-05-06 15:29:14', '33nL4i65ShqwzfrDvXREZw=='),
(455, 'sales@akiraplc.com', 'in', '2021-05-06 17:57:20', '1TXZAxgUSq+eLefByp5a4w=='),
(456, 'akhil.kesav@akiraplc.com', 'in', '2021-05-06 17:57:35', '1TXZAxgUSq+eLefByp5a4w=='),
(457, '', 'in', '2021-05-06 17:57:51', '1TXZAxgUSq+eLefByp5a4w=='),
(458, '', 'in', '2021-05-06 17:58:00', '1TXZAxgUSq+eLefByp5a4w=='),
(459, 'dilip@akiraplc.com', 'in', '2021-05-06 17:58:32', '1TXZAxgUSq+eLefByp5a4w=='),
(460, '', 'in', '2021-05-06 17:58:47', '1TXZAxgUSq+eLefByp5a4w=='),
(461, '', 'in', '2021-05-06 17:59:34', '1TXZAxgUSq+eLefByp5a4w=='),
(462, 'midhun@akiraplc.com', 'in', '2021-05-06 18:00:06', '1TXZAxgUSq+eLefByp5a4w=='),
(463, 'abhishek@akiraplc.com', 'in', '2021-05-06 18:00:19', '1TXZAxgUSq+eLefByp5a4w=='),
(464, '', 'in', '2021-05-06 18:00:43', '1TXZAxgUSq+eLefByp5a4w=='),
(465, 'greeshma@akiraplc.com', 'in', '2021-05-06 18:01:52', '1TXZAxgUSq+eLefByp5a4w=='),
(466, 'arunkumarp0033@gmail.com', 'in', '2021-05-06 18:02:16', '1TXZAxgUSq+eLefByp5a4w=='),
(467, '', 'in', '2021-05-06 18:03:09', '1TXZAxgUSq+eLefByp5a4w=='),
(468, '', 'in', '2021-05-06 18:03:20', '1TXZAxgUSq+eLefByp5a4w=='),
(469, 'anjuzzz20@gmail.com', 'in', '2021-05-06 18:03:48', '1TXZAxgUSq+eLefByp5a4w=='),
(470, 'vidyasree@akiraplc.com', 'in', '2021-05-06 18:04:02', '1TXZAxgUSq+eLefByp5a4w=='),
(471, 'sreeraj@akiraplc.com', 'in', '2021-05-06 18:05:57', '1TXZAxgUSq+eLefByp5a4w=='),
(472, 'greeshma@akiraplc.com', 'out', '2021-05-06 18:06:52', '1TXZAxgUSq+eLefByp5a4w=='),
(473, 'greeshma@akiraplc.com', 'in', '2021-05-06 18:07:54', '1TXZAxgUSq+eLefByp5a4w=='),
(474, 'kamilmhd1@gmail.com', 'in', '2021-05-06 18:08:54', '1TXZAxgUSq+eLefByp5a4w=='),
(475, 'anjuzzz20@gmail.com', 'out', '2021-05-06 18:19:54', '1TXZAxgUSq+eLefByp5a4w=='),
(476, 'greeshma@akiraplc.com', 'out', '2021-05-06 18:20:12', '1TXZAxgUSq+eLefByp5a4w=='),
(477, 'sreeraj@akiraplc.com', 'out', '2021-05-06 18:20:21', '1TXZAxgUSq+eLefByp5a4w=='),
(478, 'akhil.kesav@akiraplc.com', 'out', '2021-05-06 18:24:16', '1TXZAxgUSq+eLefByp5a4w=='),
(479, '', 'in', '2021-05-06 18:24:43', '1TXZAxgUSq+eLefByp5a4w=='),
(480, '', 'out', '2021-05-06 18:24:43', '1TXZAxgUSq+eLefByp5a4w=='),
(481, '', 'out', '2021-05-06 18:26:07', '1TXZAxgUSq+eLefByp5a4w=='),
(482, '', 'out', '2021-05-06 18:26:16', '1TXZAxgUSq+eLefByp5a4w=='),
(483, '', 'out', '2021-05-06 18:26:32', '1TXZAxgUSq+eLefByp5a4w=='),
(484, 'akhil.kesav@akiraplc.com', 'in', '2021-05-06 18:28:13', '1TXZAxgUSq+eLefByp5a4w=='),
(485, '', 'out', '2021-05-06 18:29:30', '1TXZAxgUSq+eLefByp5a4w=='),
(486, 'arunkumarp0033@gmail.com', 'out', '2021-05-06 18:30:10', '1TXZAxgUSq+eLefByp5a4w=='),
(487, 'vidyasree@akiraplc.com', 'out', '2021-05-06 18:30:38', '1TXZAxgUSq+eLefByp5a4w=='),
(488, '', 'out', '2021-05-06 18:31:23', '1TXZAxgUSq+eLefByp5a4w=='),
(489, 'abhishek@akiraplc.com', 'out', '2021-05-06 18:32:12', '1TXZAxgUSq+eLefByp5a4w=='),
(490, '', 'out', '2021-05-06 18:37:39', '1TXZAxgUSq+eLefByp5a4w=='),
(491, '', 'in', '2021-05-06 18:37:50', '1TXZAxgUSq+eLefByp5a4w=='),
(492, '', 'out', '2021-05-06 18:39:42', '1TXZAxgUSq+eLefByp5a4w=='),
(493, 'kamilmhd1@gmail.com', 'out', '2021-05-06 18:54:07', '1TXZAxgUSq+eLefByp5a4w=='),
(494, 'akhil.kesav@akiraplc.com', 'out', '2021-05-06 18:54:08', '1TXZAxgUSq+eLefByp5a4w=='),
(495, 'dilip@akiraplc.com', 'out', '2021-05-06 18:54:09', '1TXZAxgUSq+eLefByp5a4w=='),
(496, '', 'out', '2021-05-06 18:54:10', '1TXZAxgUSq+eLefByp5a4w=='),
(497, 'midhun@akiraplc.com', 'out', '2021-05-06 18:54:11', '1TXZAxgUSq+eLefByp5a4w=='),
(498, 'sales@akiraplc.com', 'out', '2021-05-06 18:54:16', '1TXZAxgUSq+eLefByp5a4w=='),
(499, 'sales@akiraplc.com', 'in', '2021-05-07 09:00:12', 'x1vx2H+wQZmzuS9DYofFKA=='),
(500, 'akhil.kesav@akiraplc.com', 'in', '2021-05-07 09:00:36', 'x1vx2H+wQZmzuS9DYofFKA=='),
(501, 'arunkumarp0033@gmail.com', 'in', '2021-05-07 09:00:39', 'x1vx2H+wQZmzuS9DYofFKA=='),
(502, '', 'in', '2021-05-07 09:00:39', 'x1vx2H+wQZmzuS9DYofFKA=='),
(503, '', 'in', '2021-05-07 09:00:41', 'x1vx2H+wQZmzuS9DYofFKA=='),
(504, '', 'in', '2021-05-07 09:00:41', 'x1vx2H+wQZmzuS9DYofFKA=='),
(505, 'ajay@akiraplc.com', 'in', '2021-05-07 09:00:48', 'x1vx2H+wQZmzuS9DYofFKA=='),
(506, '', 'in', '2021-05-07 09:00:58', 'x1vx2H+wQZmzuS9DYofFKA=='),
(507, '', 'in', '2021-05-07 09:01:00', 'x1vx2H+wQZmzuS9DYofFKA=='),
(508, 'midhun@akiraplc.com', 'in', '2021-05-07 09:01:04', 'x1vx2H+wQZmzuS9DYofFKA=='),
(509, '', 'in', '2021-05-07 09:01:20', 'x1vx2H+wQZmzuS9DYofFKA=='),
(510, 'anjuzzz20@gmail.com', 'in', '2021-05-07 09:02:13', 'x1vx2H+wQZmzuS9DYofFKA=='),
(511, 'ajith@akiraplc.com', 'in', '2021-05-07 09:03:15', 'x1vx2H+wQZmzuS9DYofFKA=='),
(512, 'akhil@akiraplc.com', 'in', '2021-05-07 09:03:18', 'x1vx2H+wQZmzuS9DYofFKA=='),
(513, 'greeshma@akiraplc.com', 'in', '2021-05-07 09:03:20', 'x1vx2H+wQZmzuS9DYofFKA=='),
(514, '', 'in', '2021-05-07 09:03:57', 'x1vx2H+wQZmzuS9DYofFKA=='),
(515, 'dilip@akiraplc.com', 'in', '2021-05-07 09:04:43', 'x1vx2H+wQZmzuS9DYofFKA=='),
(516, 'akhil@akiraplc.com', 'out', '2021-05-07 09:04:54', 'x1vx2H+wQZmzuS9DYofFKA=='),
(517, 'akhil@akiraplc.com', 'in', '2021-05-07 09:05:28', 'x1vx2H+wQZmzuS9DYofFKA=='),
(518, '', 'in', '2021-05-07 09:06:15', 'x1vx2H+wQZmzuS9DYofFKA=='),
(519, 'arunkumarp0033@gmail.com', 'out', '2021-05-07 09:06:22', 'x1vx2H+wQZmzuS9DYofFKA=='),
(520, 'sreeraj@akiraplc.com', 'in', '2021-05-07 09:06:39', 'x1vx2H+wQZmzuS9DYofFKA=='),
(521, 'arunkumarp0033@gmail.com', 'in', '2021-05-07 09:07:21', 'x1vx2H+wQZmzuS9DYofFKA=='),
(522, '', 'in', '2021-05-07 09:08:01', 'x1vx2H+wQZmzuS9DYofFKA=='),
(523, '', 'out', '2021-05-07 09:08:01', 'x1vx2H+wQZmzuS9DYofFKA=='),
(524, '', 'out', '2021-05-07 09:12:22', 'x1vx2H+wQZmzuS9DYofFKA=='),
(525, '', 'in', '2021-05-07 09:12:41', 'x1vx2H+wQZmzuS9DYofFKA=='),
(526, 'akhil@akiraplc.com', 'out', '2021-05-07 09:14:00', 'x1vx2H+wQZmzuS9DYofFKA=='),
(527, '', 'out', '2021-05-07 09:20:05', 'x1vx2H+wQZmzuS9DYofFKA=='),
(528, '', 'out', '2021-05-07 09:20:25', 'x1vx2H+wQZmzuS9DYofFKA=='),
(529, '', 'in', '2021-05-07 09:21:13', 'x1vx2H+wQZmzuS9DYofFKA=='),
(530, 'midhun@akiraplc.com', 'out', '2021-05-07 09:23:43', 'x1vx2H+wQZmzuS9DYofFKA=='),
(531, 'midhun@akiraplc.com', 'in', '2021-05-07 09:24:17', 'x1vx2H+wQZmzuS9DYofFKA=='),
(532, 'akhil.kesav@akiraplc.com', 'in', '2021-05-07 09:25:22', 'x1vx2H+wQZmzuS9DYofFKA=='),
(533, 'akhil.kesav@akiraplc.com', 'out', '2021-05-07 09:25:22', 'x1vx2H+wQZmzuS9DYofFKA=='),
(534, 'ajay@akiraplc.com', 'out', '2021-05-07 09:31:30', 'x1vx2H+wQZmzuS9DYofFKA=='),
(535, 'anjuzzz20@gmail.com', 'out', '2021-05-07 09:35:28', 'x1vx2H+wQZmzuS9DYofFKA=='),
(536, 'greeshma@akiraplc.com', 'out', '2021-05-07 09:35:28', 'x1vx2H+wQZmzuS9DYofFKA=='),
(537, '', 'out', '2021-05-07 09:35:30', 'x1vx2H+wQZmzuS9DYofFKA=='),
(538, 'arunkumarp0033@gmail.com', 'out', '2021-05-07 09:35:37', 'x1vx2H+wQZmzuS9DYofFKA=='),
(539, 'sreeraj@akiraplc.com', 'out', '2021-05-07 09:38:42', 'x1vx2H+wQZmzuS9DYofFKA=='),
(540, '', 'out', '2021-05-07 09:45:06', 'x1vx2H+wQZmzuS9DYofFKA=='),
(541, '', 'out', '2021-05-07 09:46:47', 'x1vx2H+wQZmzuS9DYofFKA=='),
(542, '', 'out', '2021-05-07 09:48:03', 'x1vx2H+wQZmzuS9DYofFKA=='),
(543, '', 'out', '2021-05-07 09:52:58', 'x1vx2H+wQZmzuS9DYofFKA=='),
(544, 'akhil.kesav@akiraplc.com', 'out', '2021-05-07 09:53:18', 'x1vx2H+wQZmzuS9DYofFKA=='),
(545, 'dilip@akiraplc.com', 'out', '2021-05-07 09:53:34', 'x1vx2H+wQZmzuS9DYofFKA=='),
(546, 'midhun@akiraplc.com', 'out', '2021-05-07 09:53:34', 'x1vx2H+wQZmzuS9DYofFKA=='),
(547, '', 'out', '2021-05-07 09:53:52', 'x1vx2H+wQZmzuS9DYofFKA=='),
(548, 'ajith@akiraplc.com', 'out', '2021-05-07 09:54:19', 'x1vx2H+wQZmzuS9DYofFKA=='),
(549, 'sales@akiraplc.com', 'out', '2021-05-07 09:54:30', 'x1vx2H+wQZmzuS9DYofFKA=='),
(550, '', 'out', '2021-05-07 09:54:30', 'x1vx2H+wQZmzuS9DYofFKA=='),
(551, 'jinesh@akiraplc.com', 'in', '2021-05-07 10:16:49', 'WDuT+a5DS8KVDTFMIaGvtQ=='),
(552, 'jinesh@akiraplc.com', 'out', '2021-05-07 10:16:59', 'WDuT+a5DS8KVDTFMIaGvtQ=='),
(553, 'jinesh@akiraplc.com', 'in', '2021-05-07 10:53:19', '7ofe8aNMQVmiMgwRNOCLmA=='),
(554, 'vidyasree@akiraplc.com', 'in', '2021-05-07 10:53:28', '7ofe8aNMQVmiMgwRNOCLmA=='),
(555, 'arunkumarp0033@gmail.com', 'in', '2021-05-07 10:53:29', '7ofe8aNMQVmiMgwRNOCLmA=='),
(556, 'sreeraj@akiraplc.com', 'in', '2021-05-07 10:53:33', '7ofe8aNMQVmiMgwRNOCLmA=='),
(557, '', 'in', '2021-05-07 10:54:30', '7ofe8aNMQVmiMgwRNOCLmA=='),
(558, 'akhil.kesav@akiraplc.com', 'in', '2021-05-07 10:54:41', '7ofe8aNMQVmiMgwRNOCLmA=='),
(559, '', 'in', '2021-05-07 10:55:23', '7ofe8aNMQVmiMgwRNOCLmA=='),
(560, 'sales@akiraplc.com', 'in', '2021-05-07 11:03:26', 'lnvDz3RAQuGxp+HdsmG50g=='),
(561, 'sales@akiraplc.com', 'in', '2021-05-07 11:03:30', 'lnvDz3RAQuGxp+HdsmG50g=='),
(562, 'sales@akiraplc.com', 'out', '2021-05-07 11:04:44', 'lnvDz3RAQuGxp+HdsmG50g=='),
(563, 'ajith@akiraplc.com', 'in', '2021-05-07 11:05:07', 'lnvDz3RAQuGxp+HdsmG50g=='),
(564, 'n1726710@student.narayanagroup.com', 'in', '2021-05-07 11:05:08', 'lnvDz3RAQuGxp+HdsmG50g=='),
(565, '', 'in', '2021-05-07 11:05:54', 'lnvDz3RAQuGxp+HdsmG50g=='),
(566, '', 'in', '2021-05-07 11:08:07', 'lnvDz3RAQuGxp+HdsmG50g=='),
(567, 'arunkumarp0033@gmail.com', 'out', '2021-05-07 11:12:35', '7ofe8aNMQVmiMgwRNOCLmA=='),
(568, '', 'in', '2021-05-07 11:12:39', 'lnvDz3RAQuGxp+HdsmG50g=='),
(569, '', 'out', '2021-05-07 11:12:55', 'lnvDz3RAQuGxp+HdsmG50g=='),
(570, 'arunkumarp0033@gmail.com', 'in', '2021-05-07 11:12:59', '7ofe8aNMQVmiMgwRNOCLmA=='),
(571, '', 'in', '2021-05-07 11:14:48', '7ofe8aNMQVmiMgwRNOCLmA=='),
(572, '', 'out', '2021-05-07 11:18:28', '7ofe8aNMQVmiMgwRNOCLmA=='),
(573, '', 'out', '2021-05-07 11:20:10', '7ofe8aNMQVmiMgwRNOCLmA=='),
(574, 'jinesh@akiraplc.com', 'out', '2021-05-07 11:20:12', '7ofe8aNMQVmiMgwRNOCLmA=='),
(575, 'arunkumarp0033@gmail.com', 'out', '2021-05-07 11:20:12', '7ofe8aNMQVmiMgwRNOCLmA=='),
(576, 'akhil.kesav@akiraplc.com', 'out', '2021-05-07 11:20:12', '7ofe8aNMQVmiMgwRNOCLmA=='),
(577, 'sreeraj@akiraplc.com', 'out', '2021-05-07 11:20:12', '7ofe8aNMQVmiMgwRNOCLmA=='),
(578, '', 'out', '2021-05-07 11:20:12', '7ofe8aNMQVmiMgwRNOCLmA=='),
(579, 'vidyasree@akiraplc.com', 'out', '2021-05-07 11:20:12', '7ofe8aNMQVmiMgwRNOCLmA=='),
(580, '', 'in', '2021-05-07 11:36:19', 'lnvDz3RAQuGxp+HdsmG50g=='),
(581, '', 'out', '2021-05-07 11:36:19', 'lnvDz3RAQuGxp+HdsmG50g=='),
(582, '', 'out', '2021-05-07 11:39:39', 'lnvDz3RAQuGxp+HdsmG50g=='),
(583, '', 'in', '2021-05-07 11:41:37', 'lnvDz3RAQuGxp+HdsmG50g=='),
(584, '', 'out', '2021-05-07 11:42:34', 'lnvDz3RAQuGxp+HdsmG50g=='),
(585, '', 'in', '2021-05-07 11:42:34', 'lnvDz3RAQuGxp+HdsmG50g=='),
(586, 'n1726710@student.narayanagroup.com', 'out', '2021-05-07 11:45:00', 'lnvDz3RAQuGxp+HdsmG50g=='),
(587, '', 'out', '2021-05-07 11:45:05', 'lnvDz3RAQuGxp+HdsmG50g=='),
(588, 'ajith@akiraplc.com', 'out', '2021-05-07 11:45:07', 'lnvDz3RAQuGxp+HdsmG50g=='),
(589, 'sales@akiraplc.com', 'out', '2021-05-07 11:45:05', 'lnvDz3RAQuGxp+HdsmG50g=='),
(590, '', 'out', '2021-05-07 11:45:05', 'lnvDz3RAQuGxp+HdsmG50g=='),
(591, 'sales@akiraplc.com', 'in', '2021-05-07 14:25:46', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(592, 'ajith@akiraplc.com', 'in', '2021-05-07 14:32:07', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(593, 'akhil.kesav@akiraplc.com', 'in', '2021-05-07 14:44:45', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(594, 'media@markazonline.com', 'in', '2021-05-07 14:48:18', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(595, 'akhil.kesav@akiraplc.com', 'out', '2021-05-07 14:54:45', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(596, 'akhil.kesav@akiraplc.com', 'in', '2021-05-07 14:55:07', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(597, 'akhil.kesav@akiraplc.com', 'out', '2021-05-07 15:23:16', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(598, 'sales@akiraplc.com', 'out', '2021-05-07 15:23:25', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(599, 'media@markazonline.com', 'out', '2021-05-07 15:23:25', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(600, 'ajith@akiraplc.com', 'out', '2021-05-07 15:23:25', 'RQ5X6tXTTBeaZPfvpWhEng=='),
(601, 'sales@akiraplc.com', 'in', '2021-05-07 18:02:47', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(602, 'arunkumarp0033@gmail.com', 'in', '2021-05-07 18:03:04', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(603, 'kamilmhd1@gmail.com', 'in', '2021-05-07 18:03:04', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(604, 'ajay@akiraplc.com', 'in', '2021-05-07 18:03:05', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(605, '', 'in', '2021-05-07 18:03:10', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(606, 'ajith@akiraplc.com', 'in', '2021-05-07 18:03:12', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(607, '', 'in', '2021-05-07 18:03:14', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(608, 'sreeraj@akiraplc.com', 'in', '2021-05-07 18:03:15', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(609, 'midhun@akiraplc.com', 'in', '2021-05-07 18:03:22', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(610, 'anjuzzz20@gmail.com', 'in', '2021-05-07 18:03:24', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(611, 'greeshma@akiraplc.com', 'in', '2021-05-07 18:03:31', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(612, '', 'in', '2021-05-07 18:03:47', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(613, '', 'in', '2021-05-07 18:03:50', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(614, '', 'in', '2021-05-07 18:04:05', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(615, '', 'in', '2021-05-07 18:04:38', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(616, '', 'out', '2021-05-07 18:05:27', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(617, 'vidyasree@akiraplc.com', 'in', '2021-05-07 18:09:45', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(618, '', 'in', '2021-05-07 18:09:49', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(619, 'dilip@akiraplc.com', 'in', '2021-05-07 18:10:08', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(620, 'sales@akiraplc.com', 'out', '2021-05-07 18:11:15', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(621, '', 'out', '2021-05-07 18:11:24', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(622, '', 'out', '2021-05-07 18:13:54', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(623, '', 'in', '2021-05-07 18:14:06', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(624, '', 'in', '2021-05-07 18:16:06', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(625, 'kamilmhd1@gmail.com', 'out', '2021-05-07 18:17:54', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(626, 'kamilmhd1@gmail.com', 'in', '2021-05-07 18:18:15', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(627, '', 'out', '2021-05-07 18:19:54', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(628, '', 'in', '2021-05-07 18:20:14', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(629, 'greeshma@akiraplc.com', 'out', '2021-05-07 18:21:06', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(630, 'sreeraj@akiraplc.com', 'out', '2021-05-07 18:21:07', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(631, 'anjuzzz20@gmail.com', 'out', '2021-05-07 18:21:08', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(632, 'sales@akiraplc.com', 'in', '2021-05-07 18:24:14', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(633, '', 'out', '2021-05-07 18:31:05', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(634, 'ajay@akiraplc.com', 'out', '2021-05-07 18:31:23', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(635, 'kamilmhd1@gmail.com', 'out', '2021-05-07 18:31:37', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(636, '', 'out', '2021-05-07 18:32:20', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(637, 'vidyasree@akiraplc.com', 'out', '2021-05-07 18:32:37', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(638, '', 'out', '2021-05-07 18:33:53', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(639, 'kamilmhd1@gmail.com', 'in', '2021-05-07 18:34:08', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(640, 'arunkumarp0033@gmail.com', 'out', '2021-05-07 18:34:33', 'FPzoNEx/TZO2Zv+XrSHKpg==');
INSERT INTO `zoom_attendance` (`id`, `email`, `type`, `time`, `uuid`) VALUES
(641, 'kamilmhd1@gmail.com', 'out', '2021-05-07 18:36:48', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(642, '', 'out', '2021-05-07 18:36:54', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(643, '', 'out', '2021-05-07 18:36:56', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(644, '', 'out', '2021-05-07 18:47:11', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(645, '', 'in', '2021-05-07 18:48:05', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(646, '', 'out', '2021-05-07 19:29:38', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(647, 'dilip@akiraplc.com', 'out', '2021-05-07 19:31:20', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(648, 'midhun@akiraplc.com', 'out', '2021-05-07 19:32:27', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(649, 'sales@akiraplc.com', 'out', '2021-05-07 19:39:44', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(650, 'ajith@akiraplc.com', 'out', '2021-05-07 19:39:48', 'FPzoNEx/TZO2Zv+XrSHKpg=='),
(651, 'sales@akiraplc.com', 'in', '2021-05-08 21:32:28', '0rjTxqS8QiGfVVcpcRGY5A=='),
(652, 'midhun@akiraplc.com', 'in', '2021-05-08 21:34:35', '0rjTxqS8QiGfVVcpcRGY5A=='),
(653, '', 'in', '2021-05-08 21:36:30', '0rjTxqS8QiGfVVcpcRGY5A=='),
(654, '', 'in', '2021-05-08 21:36:55', '0rjTxqS8QiGfVVcpcRGY5A=='),
(655, '', 'out', '2021-05-08 22:05:43', '0rjTxqS8QiGfVVcpcRGY5A=='),
(656, 'midhun@akiraplc.com', 'out', '2021-05-08 22:09:38', '0rjTxqS8QiGfVVcpcRGY5A=='),
(657, '', 'out', '2021-05-08 22:09:47', '0rjTxqS8QiGfVVcpcRGY5A=='),
(658, 'sales@akiraplc.com', 'out', '2021-05-08 22:09:50', '0rjTxqS8QiGfVVcpcRGY5A=='),
(659, 'sales@akiraplc.com', 'in', '2021-05-10 09:02:39', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(660, 'midhun@akiraplc.com', 'in', '2021-05-10 09:03:15', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(661, 'lakshmi@akiraplc.com', 'in', '2021-05-10 09:03:40', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(662, 'arunkumarp0033@gmail.com', 'in', '2021-05-10 09:03:43', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(663, '', 'in', '2021-05-10 09:03:43', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(664, 'anjuzzz20@gmail.com', 'in', '2021-05-10 09:03:44', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(665, '', 'in', '2021-05-10 09:03:44', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(666, '', 'in', '2021-05-10 09:03:49', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(667, 'greeshma@akiraplc.com', 'in', '2021-05-10 09:03:55', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(668, 'akhil@akiraplc.com', 'in', '2021-05-10 09:04:02', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(669, 'vidyasree@akiraplc.com', 'in', '2021-05-10 09:05:05', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(670, '', 'in', '2021-05-10 09:05:18', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(671, '', 'in', '2021-05-10 09:05:22', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(672, '', 'in', '2021-05-10 09:05:35', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(673, '', 'in', '2021-05-10 09:06:31', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(674, 'sreeraj@akiraplc.com', 'in', '2021-05-10 09:07:11', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(675, 'akhil.kesav@akiraplc.com', 'in', '2021-05-10 09:07:40', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(676, '', 'in', '2021-05-10 09:08:37', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(677, '', 'in', '2021-05-10 09:10:38', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(678, '', 'out', '2021-05-10 09:12:22', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(679, 'akhil@akiraplc.com', 'out', '2021-05-10 09:13:38', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(680, 'midhun@akiraplc.com', 'out', '2021-05-10 09:15:35', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(681, 'midhun@akiraplc.com', 'in', '2021-05-10 09:17:42', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(682, 'lakshmi@akiraplc.com', 'out', '2021-05-10 09:20:03', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(683, 'ajith@akiraplc.com', 'in', '2021-05-10 09:21:40', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(684, 'greeshma@akiraplc.com', 'out', '2021-05-10 09:27:30', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(685, 'sreeraj@akiraplc.com', 'out', '2021-05-10 09:27:34', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(686, 'anjuzzz20@gmail.com', 'out', '2021-05-10 09:27:36', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(687, '', 'out', '2021-05-10 09:31:58', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(688, '', 'out', '2021-05-10 09:35:41', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(689, 'vidyasree@akiraplc.com', 'out', '2021-05-10 09:35:45', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(690, 'arunkumarp0033@gmail.com', 'out', '2021-05-10 09:37:28', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(691, '', 'out', '2021-05-10 09:43:37', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(692, 'akhil.kesav@akiraplc.com', 'out', '2021-05-10 09:45:03', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(693, '', 'out', '2021-05-10 09:45:29', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(694, '', 'out', '2021-05-10 09:46:09', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(695, '', 'out', '2021-05-10 09:47:13', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(696, 'akhil.kesav@akiraplc.com', 'in', '2021-05-10 09:49:28', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(697, 'ajith@akiraplc.com', 'out', '2021-05-10 09:51:34', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(698, 'akhil.kesav@akiraplc.com', 'out', '2021-05-10 09:54:14', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(699, '', 'out', '2021-05-10 09:54:15', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(700, 'midhun@akiraplc.com', 'out', '2021-05-10 09:54:19', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(701, '', 'out', '2021-05-10 09:54:29', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(702, 'sales@akiraplc.com', 'out', '2021-05-10 09:54:30', 'qVeQwxsaTFiniBy5OXF/ZA=='),
(703, 'sales@akiraplc.com', 'in', '2021-05-10 12:19:30', 'h+JkrtU2Sti2FMOZtufp/w=='),
(704, 'midhun@akiraplc.com', 'in', '2021-05-10 12:23:00', 'h+JkrtU2Sti2FMOZtufp/w=='),
(705, 'mic.class022@gmail.com', 'in', '2021-05-10 12:23:03', 'h+JkrtU2Sti2FMOZtufp/w=='),
(706, 'midhun@akiraplc.com', 'out', '2021-05-10 13:42:06', 'h+JkrtU2Sti2FMOZtufp/w=='),
(707, 'sales@akiraplc.com', 'out', '2021-05-10 13:42:07', 'h+JkrtU2Sti2FMOZtufp/w=='),
(708, 'mic.class022@gmail.com', 'out', '2021-05-10 13:42:07', 'h+JkrtU2Sti2FMOZtufp/w=='),
(709, 'sales@akiraplc.com', 'in', '2021-05-10 14:24:56', 'zMhEet7fSC2VSgzDO324kg=='),
(710, 'sales@akiraplc.com', 'out', '2021-05-10 14:41:51', 'zMhEet7fSC2VSgzDO324kg=='),
(711, 'sales@akiraplc.com', 'in', '2021-05-10 17:41:45', 'IZdoH104Q/+z6Rejquuz2Q=='),
(712, 'sales@akiraplc.com', 'in', '2021-05-10 17:45:26', 'IZdoH104Q/+z6Rejquuz2Q=='),
(713, '', 'in', '2021-05-10 17:45:46', 'IZdoH104Q/+z6Rejquuz2Q=='),
(714, 'sreeraj@akiraplc.com', 'in', '2021-05-10 17:45:51', 'IZdoH104Q/+z6Rejquuz2Q=='),
(715, 'lakshmi@akiraplc.com', 'in', '2021-05-10 17:45:59', 'IZdoH104Q/+z6Rejquuz2Q=='),
(716, '', 'in', '2021-05-10 17:46:06', 'IZdoH104Q/+z6Rejquuz2Q=='),
(717, 'midhun@akiraplc.com', 'in', '2021-05-10 17:46:46', 'IZdoH104Q/+z6Rejquuz2Q=='),
(718, '', 'in', '2021-05-10 17:46:46', 'IZdoH104Q/+z6Rejquuz2Q=='),
(719, '', 'in', '2021-05-10 17:46:46', 'IZdoH104Q/+z6Rejquuz2Q=='),
(720, 'ajith@akiraplc.com', 'in', '2021-05-10 17:47:13', 'IZdoH104Q/+z6Rejquuz2Q=='),
(721, 'arunkumarp0033@gmail.com', 'in', '2021-05-10 17:47:45', 'IZdoH104Q/+z6Rejquuz2Q=='),
(722, '', 'in', '2021-05-10 17:47:46', 'IZdoH104Q/+z6Rejquuz2Q=='),
(723, '', 'in', '2021-05-10 17:47:57', 'IZdoH104Q/+z6Rejquuz2Q=='),
(724, 'vidyasree@akiraplc.com', 'in', '2021-05-10 17:48:05', 'IZdoH104Q/+z6Rejquuz2Q=='),
(725, 'greeshma@akiraplc.com', 'in', '2021-05-10 17:50:03', 'IZdoH104Q/+z6Rejquuz2Q=='),
(726, '', 'in', '2021-05-10 17:50:56', 'IZdoH104Q/+z6Rejquuz2Q=='),
(727, 'anjuzzz20@gmail.com', 'in', '2021-05-10 17:51:07', 'IZdoH104Q/+z6Rejquuz2Q=='),
(728, 'akhil.kesav@akiraplc.com', 'in', '2021-05-10 17:51:50', 'IZdoH104Q/+z6Rejquuz2Q=='),
(729, '', 'in', '2021-05-10 17:52:37', 'IZdoH104Q/+z6Rejquuz2Q=='),
(730, 'lakshmi@akiraplc.com', 'out', '2021-05-10 17:52:47', 'IZdoH104Q/+z6Rejquuz2Q=='),
(731, '', 'out', '2021-05-10 17:55:33', 'IZdoH104Q/+z6Rejquuz2Q=='),
(732, '', 'in', '2021-05-10 17:56:12', 'IZdoH104Q/+z6Rejquuz2Q=='),
(733, '', 'in', '2021-05-10 17:57:24', 'IZdoH104Q/+z6Rejquuz2Q=='),
(734, '', 'out', '2021-05-10 18:00:12', 'IZdoH104Q/+z6Rejquuz2Q=='),
(735, '', 'in', '2021-05-10 18:00:42', 'IZdoH104Q/+z6Rejquuz2Q=='),
(736, 'ajith@akiraplc.com', 'out', '2021-05-10 18:03:05', 'IZdoH104Q/+z6Rejquuz2Q=='),
(737, '', 'out', '2021-05-10 18:06:06', 'IZdoH104Q/+z6Rejquuz2Q=='),
(738, '', 'out', '2021-05-10 18:09:07', 'IZdoH104Q/+z6Rejquuz2Q=='),
(739, 'ajith@akiraplc.com', 'in', '2021-05-10 18:11:22', 'IZdoH104Q/+z6Rejquuz2Q=='),
(740, 'anjuzzz20@gmail.com', 'out', '2021-05-10 18:11:41', 'IZdoH104Q/+z6Rejquuz2Q=='),
(741, 'greeshma@akiraplc.com', 'out', '2021-05-10 18:12:04', 'IZdoH104Q/+z6Rejquuz2Q=='),
(742, '', 'out', '2021-05-10 18:12:11', 'IZdoH104Q/+z6Rejquuz2Q=='),
(743, 'arunkumarp0033@gmail.com', 'out', '2021-05-10 18:12:59', 'IZdoH104Q/+z6Rejquuz2Q=='),
(744, 'ajith@akiraplc.com', 'out', '2021-05-10 18:16:32', 'IZdoH104Q/+z6Rejquuz2Q=='),
(745, 'vidyasree@akiraplc.com', 'out', '2021-05-10 18:16:34', 'IZdoH104Q/+z6Rejquuz2Q=='),
(746, 'sreeraj@akiraplc.com', 'out', '2021-05-10 18:21:58', 'IZdoH104Q/+z6Rejquuz2Q=='),
(747, '', 'out', '2021-05-10 18:23:51', 'IZdoH104Q/+z6Rejquuz2Q=='),
(748, 'akhil.kesav@akiraplc.com', 'out', '2021-05-10 18:24:17', 'IZdoH104Q/+z6Rejquuz2Q=='),
(749, '', 'out', '2021-05-10 18:26:17', 'IZdoH104Q/+z6Rejquuz2Q=='),
(750, '', 'out', '2021-05-10 18:27:11', 'IZdoH104Q/+z6Rejquuz2Q=='),
(751, '', 'out', '2021-05-10 18:29:20', 'IZdoH104Q/+z6Rejquuz2Q=='),
(752, '', 'out', '2021-05-10 18:31:39', 'IZdoH104Q/+z6Rejquuz2Q=='),
(753, '', 'out', '2021-05-10 18:35:26', 'IZdoH104Q/+z6Rejquuz2Q=='),
(754, 'sales@akiraplc.com', 'out', '2021-05-10 18:54:38', 'IZdoH104Q/+z6Rejquuz2Q=='),
(755, 'midhun@akiraplc.com', 'out', '2021-05-10 18:54:39', 'IZdoH104Q/+z6Rejquuz2Q=='),
(756, 'sales@akiraplc.com', 'out', '2021-05-10 18:54:41', 'IZdoH104Q/+z6Rejquuz2Q=='),
(757, 'sales@akiraplc.com', 'in', '2021-05-11 09:02:51', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(758, 'dilip@akiraplc.com', 'in', '2021-05-11 09:03:13', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(759, 'nezy@akiraplc.com', 'in', '2021-05-11 09:03:14', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(760, '', 'in', '2021-05-11 09:03:26', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(761, 'anjuzzz20@gmail.com', 'in', '2021-05-11 09:03:26', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(762, '', 'in', '2021-05-11 09:03:28', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(763, 'midhun@akiraplc.com', 'in', '2021-05-11 09:03:30', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(764, '', 'in', '2021-05-11 09:03:30', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(765, 'vidyasree@akiraplc.com', 'in', '2021-05-11 09:03:35', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(766, '', 'in', '2021-05-11 09:03:38', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(767, 'akhil.kesav@akiraplc.com', 'in', '2021-05-11 09:03:40', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(768, 'arunkumarp0033@gmail.com', 'in', '2021-05-11 09:03:40', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(769, '', 'in', '2021-05-11 09:03:43', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(770, '', 'in', '2021-05-11 09:03:43', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(771, 'lakshmi@akiraplc.com', 'in', '2021-05-11 09:04:42', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(772, 'ajith@akiraplc.com', 'in', '2021-05-11 09:06:39', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(773, '', 'in', '2021-05-11 09:07:08', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(774, 'greeshma@akiraplc.com', 'in', '2021-05-11 09:07:11', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(775, '', 'in', '2021-05-11 09:07:15', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(776, '', 'in', '2021-05-11 09:10:29', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(777, '', 'out', '2021-05-11 09:26:49', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(778, 'lakshmi@akiraplc.com', 'out', '2021-05-11 09:29:23', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(779, '', 'out', '2021-05-11 09:30:29', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(780, '', 'in', '2021-05-11 09:31:00', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(781, 'arunkumarp0033@gmail.com', 'out', '2021-05-11 09:31:48', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(782, 'arunkumarp0033@gmail.com', 'in', '2021-05-11 09:32:16', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(783, '', 'out', '2021-05-11 09:32:25', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(784, '', 'out', '2021-05-11 09:44:19', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(785, 'arunkumarp0033@gmail.com', 'out', '2021-05-11 09:44:35', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(786, 'anjuzzz20@gmail.com', 'out', '2021-05-11 09:44:35', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(787, 'greeshma@akiraplc.com', 'out', '2021-05-11 09:44:50', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(788, 'vidyasree@akiraplc.com', 'out', '2021-05-11 09:44:57', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(789, '', 'out', '2021-05-11 09:45:08', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(790, '', 'out', '2021-05-11 09:48:16', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(791, '', 'out', '2021-05-11 09:49:28', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(792, '', 'out', '2021-05-11 09:51:18', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(793, 'jinesh@akiraplc.com', 'in', '2021-05-11 09:57:07', 'WsL2FdN+SCKMG6181QGU1A=='),
(794, '', 'in', '2021-05-11 09:57:37', 'WsL2FdN+SCKMG6181QGU1A=='),
(795, 'reynold.isaiah@gmail.com', 'in', '2021-05-11 09:57:40', 'WsL2FdN+SCKMG6181QGU1A=='),
(796, '', 'out', '2021-05-11 09:57:51', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(797, 'akhil.kesav@akiraplc.com', 'out', '2021-05-11 09:57:54', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(798, '', 'in', '2021-05-11 09:58:14', 'WsL2FdN+SCKMG6181QGU1A=='),
(799, '', 'out', '2021-05-11 09:58:22', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(800, 'midhun@akiraplc.com', 'out', '2021-05-11 09:58:25', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(801, 'sales@akiraplc.com', 'out', '2021-05-11 09:58:28', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(802, 'dilip@akiraplc.com', 'out', '2021-05-11 09:58:28', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(803, 'nezy@akiraplc.com', 'out', '2021-05-11 09:58:28', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(804, 'ajith@akiraplc.com', 'out', '2021-05-11 09:58:28', 'XAy1zq6NRSWGRqN1/+WOgw=='),
(805, '', 'in', '2021-05-11 10:19:33', 'WsL2FdN+SCKMG6181QGU1A=='),
(806, '', 'in', '2021-05-11 10:21:44', 'WsL2FdN+SCKMG6181QGU1A=='),
(807, '', 'out', '2021-05-11 10:22:07', 'WsL2FdN+SCKMG6181QGU1A=='),
(808, '', 'out', '2021-05-11 10:37:41', 'WsL2FdN+SCKMG6181QGU1A=='),
(809, 'reynold.isaiah@gmail.com', 'out', '2021-05-11 10:37:41', 'WsL2FdN+SCKMG6181QGU1A=='),
(810, '', 'out', '2021-05-11 10:37:41', 'WsL2FdN+SCKMG6181QGU1A=='),
(811, '', 'out', '2021-05-11 10:37:41', 'WsL2FdN+SCKMG6181QGU1A=='),
(812, 'jinesh@akiraplc.com', 'out', '2021-05-11 10:37:41', 'WsL2FdN+SCKMG6181QGU1A=='),
(813, 'jinesh@akiraplc.com', 'in', '2021-05-11 10:38:11', 'zbHeJHLVSRy7F+dRK4EBag=='),
(814, '', 'in', '2021-05-11 10:39:03', 'zbHeJHLVSRy7F+dRK4EBag=='),
(815, 'reynold.isaiah@gmail.com', 'in', '2021-05-11 10:39:04', 'zbHeJHLVSRy7F+dRK4EBag=='),
(816, '', 'in', '2021-05-11 10:39:06', 'zbHeJHLVSRy7F+dRK4EBag=='),
(817, '', 'in', '2021-05-11 10:39:08', 'zbHeJHLVSRy7F+dRK4EBag=='),
(818, '', 'out', '2021-05-11 11:02:06', 'zbHeJHLVSRy7F+dRK4EBag=='),
(819, '', 'in', '2021-05-11 11:03:27', 'zbHeJHLVSRy7F+dRK4EBag=='),
(820, '', 'out', '2021-05-11 11:19:04', 'zbHeJHLVSRy7F+dRK4EBag=='),
(821, 'reynold.isaiah@gmail.com', 'out', '2021-05-11 11:19:04', 'zbHeJHLVSRy7F+dRK4EBag=='),
(822, '', 'out', '2021-05-11 11:19:04', 'zbHeJHLVSRy7F+dRK4EBag=='),
(823, '', 'out', '2021-05-11 11:19:05', 'zbHeJHLVSRy7F+dRK4EBag=='),
(824, 'jinesh@akiraplc.com', 'out', '2021-05-11 11:19:05', 'zbHeJHLVSRy7F+dRK4EBag=='),
(825, 'jinesh@akiraplc.com', 'in', '2021-05-11 11:20:11', '75ry+mqKRymNPf5cHheh4g=='),
(826, '', 'in', '2021-05-11 11:21:54', '75ry+mqKRymNPf5cHheh4g=='),
(827, '', 'in', '2021-05-11 11:22:15', '75ry+mqKRymNPf5cHheh4g=='),
(828, '', 'in', '2021-05-11 11:23:43', '75ry+mqKRymNPf5cHheh4g=='),
(829, '', 'out', '2021-05-11 11:42:54', '75ry+mqKRymNPf5cHheh4g=='),
(830, '', 'in', '2021-05-11 11:44:55', '75ry+mqKRymNPf5cHheh4g=='),
(831, '', 'out', '2021-05-11 11:59:58', '75ry+mqKRymNPf5cHheh4g=='),
(832, '', 'out', '2021-05-11 12:00:24', '75ry+mqKRymNPf5cHheh4g=='),
(833, 'jinesh@akiraplc.com', 'out', '2021-05-11 12:00:24', '75ry+mqKRymNPf5cHheh4g=='),
(834, '', 'out', '2021-05-11 12:00:24', '75ry+mqKRymNPf5cHheh4g=='),
(835, 'sales@akiraplc.com', 'in', '2021-05-11 15:00:50', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(836, 'midhun@akiraplc.com', 'in', '2021-05-11 15:02:13', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(837, '', 'in', '2021-05-11 15:02:17', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(838, 'ajith@akiraplc.com', 'in', '2021-05-11 15:06:28', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(839, 'kamilmhd1@gmail.com', 'in', '2021-05-11 15:07:34', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(840, 'dilip@akiraplc.com', 'in', '2021-05-11 15:08:11', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(841, 'akhil.kesav@akiraplc.com', 'in', '2021-05-11 15:11:42', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(842, 'kamilmhd1@gmail.com', 'out', '2021-05-11 15:18:58', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(843, 'kamilmhd1@gmail.com', 'in', '2021-05-11 15:19:27', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(844, 'kamilmhd1@gmail.com', 'out', '2021-05-11 15:23:33', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(845, '', 'out', '2021-05-11 15:26:37', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(846, 'ajith@akiraplc.com', 'out', '2021-05-11 15:32:22', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(847, 'akhil.kesav@akiraplc.com', 'out', '2021-05-11 15:50:36', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(848, 'midhun@akiraplc.com', 'out', '2021-05-11 15:50:47', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(849, 'dilip@akiraplc.com', 'out', '2021-05-11 15:50:49', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(850, 'sales@akiraplc.com', 'out', '2021-05-11 15:50:52', 'Cqn+STxzS+G0lfTQNM2+2Q=='),
(851, 'sales@akiraplc.com', 'in', '2021-05-11 16:27:41', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(852, 'lakshmi@akiraplc.com', 'in', '2021-05-11 16:29:26', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(853, '', 'in', '2021-05-11 16:30:13', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(854, '', 'in', '2021-05-11 16:31:43', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(855, 'akhil.kesav@akiraplc.com', 'in', '2021-05-11 16:32:46', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(856, 'akhil.kesav@akiraplc.com', 'out', '2021-05-11 16:36:54', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(857, 'akhil.kesav@akiraplc.com', 'in', '2021-05-11 16:38:43', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(858, '', 'in', '2021-05-11 16:55:49', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(859, 'akhil.kesav@akiraplc.com', 'out', '2021-05-11 16:59:57', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(860, 'sales@akiraplc.com', 'out', '2021-05-11 17:00:03', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(861, 'sales@akiraplc.com', 'in', '2021-05-11 17:04:31', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(862, '', 'in', '2021-05-11 17:04:36', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(863, 'akhil.kesav@akiraplc.com', 'in', '2021-05-11 17:34:45', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(864, 'lakshmi@akiraplc.com', 'out', '2021-05-11 18:47:18', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(865, 'lakshmi@akiraplc.com', 'in', '2021-05-11 18:47:53', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(866, '', 'out', '2021-05-11 19:20:01', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(867, 'lakshmi@akiraplc.com', 'out', '2021-05-11 19:20:03', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(868, '', 'out', '2021-05-11 19:20:22', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(869, 'lakshmi@akiraplc.com', 'in', '2021-05-11 19:21:01', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(870, 'lakshmi@akiraplc.com', 'out', '2021-05-11 19:24:31', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(871, 'akhil.kesav@akiraplc.com', 'out', '2021-05-11 19:29:16', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(872, '', 'out', '2021-05-11 19:29:19', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(873, 'sales@akiraplc.com', 'out', '2021-05-11 19:29:34', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(874, '', 'out', '2021-05-11 19:36:50', 'zrGfhpwPS8iJJcBQT25kSQ=='),
(875, 'sales@akiraplc.com', 'in', '2021-05-12 08:57:18', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(876, '', 'in', '2021-05-12 09:02:48', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(877, 'anjuzzz20@gmail.com', 'in', '2021-05-12 09:02:51', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(878, '', 'in', '2021-05-12 09:02:55', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(879, 'midhun@akiraplc.com', 'in', '2021-05-12 09:02:56', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(880, 'nezy@akiraplc.com', 'in', '2021-05-12 09:03:00', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(881, 'dilip@akiraplc.com', 'in', '2021-05-12 09:03:00', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(882, 'arunkumarp0033@gmail.com', 'in', '2021-05-12 09:03:02', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(883, 'lakshmi@akiraplc.com', 'in', '2021-05-12 09:03:06', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(884, '', 'in', '2021-05-12 09:03:07', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(885, 'vidyasree@akiraplc.com', 'in', '2021-05-12 09:03:07', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(886, '', 'in', '2021-05-12 09:03:10', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(887, '', 'in', '2021-05-12 09:03:11', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(888, '', 'in', '2021-05-12 09:03:12', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(889, 'greeshma@akiraplc.com', 'in', '2021-05-12 09:03:14', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(890, '', 'in', '2021-05-12 09:03:52', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(891, '', 'in', '2021-05-12 09:03:57', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(892, '', 'out', '2021-05-12 09:04:14', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(893, '', 'in', '2021-05-12 09:05:08', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(894, '', 'in', '2021-05-12 09:05:36', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(895, 'sreeraj@akiraplc.com', 'in', '2021-05-12 09:05:40', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(896, '', 'out', '2021-05-12 09:07:04', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(897, '', 'in', '2021-05-12 09:09:58', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(898, 'lakshmi@akiraplc.com', 'out', '2021-05-12 09:16:13', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(899, '', 'out', '2021-05-12 09:16:13', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(900, 'anjuzzz20@gmail.com', 'out', '2021-05-12 09:18:58', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(901, 'greeshma@akiraplc.com', 'out', '2021-05-12 09:18:59', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(902, '', 'out', '2021-05-12 09:19:45', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(903, 'nezy@akiraplc.com', 'out', '2021-05-12 09:20:07', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(904, 'nezy@akiraplc.com', 'in', '2021-05-12 09:20:07', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(905, 'arunkumarp0033@gmail.com', 'out', '2021-05-12 09:21:24', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(906, 'vidyasree@akiraplc.com', 'out', '2021-05-12 09:21:25', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(907, '', 'out', '2021-05-12 09:21:28', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(908, 'sreeraj@akiraplc.com', 'out', '2021-05-12 09:22:22', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(909, '', 'out', '2021-05-12 09:28:44', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(910, '', 'out', '2021-05-12 09:34:33', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(911, '', 'out', '2021-05-12 09:41:26', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(912, '', 'out', '2021-05-12 09:42:12', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(913, '', 'out', '2021-05-12 09:43:05', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(914, '', 'out', '2021-05-12 09:45:07', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(915, 'nezy@akiraplc.com', 'out', '2021-05-12 09:45:08', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(916, 'midhun@akiraplc.com', 'out', '2021-05-12 09:45:09', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(917, 'dilip@akiraplc.com', 'out', '2021-05-12 09:45:11', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(918, 'sales@akiraplc.com', 'out', '2021-05-12 09:45:20', 'bVnTlk1sQl6AwAWkP/ToFQ=='),
(919, 'sales@akiraplc.com', 'in', '2021-05-12 09:45:55', '1D5Pjzk3RMSPdA5htbTZ5g=='),
(920, 'sales@akiraplc.com', 'out', '2021-05-12 09:48:47', '1D5Pjzk3RMSPdA5htbTZ5g=='),
(921, 'sales@akiraplc.com', 'in', '2021-05-12 10:03:46', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(922, 'anjuzzz20@gmail.com', 'in', '2021-05-12 10:06:38', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(923, 'midhun@akiraplc.com', 'in', '2021-05-12 10:08:19', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(924, 'dilip@akiraplc.com', 'in', '2021-05-12 10:08:35', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(925, '', 'in', '2021-05-12 10:10:13', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(926, '', 'in', '2021-05-12 10:12:03', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(927, '', 'out', '2021-05-12 10:12:03', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(928, '', 'out', '2021-05-12 10:22:23', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(929, '', 'in', '2021-05-12 10:22:34', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(930, 'dilip@akiraplc.com', 'out', '2021-05-12 10:33:34', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(931, 'midhun@akiraplc.com', 'out', '2021-05-12 10:33:35', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(932, '', 'out', '2021-05-12 10:33:35', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(933, 'anjuzzz20@gmail.com', 'out', '2021-05-12 10:33:36', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(934, 'sales@akiraplc.com', 'out', '2021-05-12 10:37:14', '0i2ZLVEgSNq3U9q5ERK9vA=='),
(935, 'sales@akiraplc.com', 'in', '2021-05-12 10:53:08', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(936, 'sales@akiraplc.com', 'out', '2021-05-12 10:55:04', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(937, 'sales@akiraplc.com', 'in', '2021-05-12 10:55:19', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(938, 'dilip@akiraplc.com', 'in', '2021-05-12 10:55:27', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(939, '', 'in', '2021-05-12 11:00:13', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(940, 'sales@akiraplc.com', 'in', '2021-05-12 11:00:28', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(941, 'sales@akiraplc.com', 'out', '2021-05-12 11:00:28', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(942, 'sales@akiraplc.com', 'out', '2021-05-12 11:11:20', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(943, 'sales@akiraplc.com', 'in', '2021-05-12 11:19:51', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(944, '', 'out', '2021-05-12 11:34:01', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(945, 'dilip@akiraplc.com', 'out', '2021-05-12 11:34:05', 'q6tqyh+jRfOjGsE3xC6o5g=='),
(946, 'sales@akiraplc.com', 'out', '2021-05-12 11:34:11', 'q6tqyh+jRfOjGsE3xC6o5g==');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_classes`
--

CREATE TABLE `zoom_classes` (
  `id` int NOT NULL,
  `faculty_id` int NOT NULL,
  `course` int NOT NULL,
  `standard` int NOT NULL,
  `division` int NOT NULL,
  `subject` int NOT NULL,
  `topic` text NOT NULL,
  `url` text NOT NULL,
  `meeting_id` varchar(256) NOT NULL,
  `meeting_uuid` varchar(256) NOT NULL,
  `recurring_meeting` tinyint(1) NOT NULL,
  `recurring_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zoom_classes`
--

INSERT INTO `zoom_classes` (`id`, `faculty_id`, `course`, `standard`, `division`, `subject`, `topic`, `url`, `meeting_id`, `meeting_uuid`, `recurring_meeting`, `recurring_id`, `start_date`, `end_date`, `created_date`) VALUES
(1, 291, 1, 2, 2, 1, 'Malayalam Class', 'https://us02web.zoom.us/j/89913749517?pwd=MEhHWTdQbWxOdm9tMFV5eVpPQUxhQT09', '89913749517', 'Ba9MsO+/SSi5kPyYP4nEOA==', 1, 0, '2021-05-03 00:30:00', '2021-05-03 00:45:00', '2021-05-03 12:25:24'),
(2, 291, 1, 2, 2, 1, 'Malayalam Class', 'https://us02web.zoom.us/j/87102915446?pwd=R1hteWpIdTdjaVd2L09rMFMxaWpPQT09', '87102915446', 'BeWKk/R7TXyha+3rk6ozOQ==', 1, 0, '2021-05-03 00:40:00', '2021-05-03 00:55:00', '2021-05-03 12:35:40'),
(3, 291, 1, 2, 2, 1, 'Malayalam Class', 'https://us02web.zoom.us/j/87102915446?pwd=R1hteWpIdTdjaVd2L09rMFMxaWpPQT09', '87102915446', 'BeWKk/R7TXyha+3rk6ozOQ==', 1, 0, '2021-05-03 00:40:00', '2021-05-03 00:55:00', '2021-05-03 12:35:40'),
(17, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-25 14:30:00', '2021-05-25 14:45:00', '2021-05-04 14:26:07'),
(16, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-18 14:30:00', '2021-05-18 14:45:00', '2021-05-04 14:26:07'),
(7, 291, 1, 2, 2, 1, 'English Class', 'https://us02web.zoom.us/j/84464620874?pwd=Y0FKV1JrWGwvcjdkd1NvcnFnT255dz09', '84464620874', 'A3jYdJZ4REKA/wEjONB1Sg==', 1, 6, '2021-05-11 02:05:00', '2021-05-11 02:20:00', '2021-05-04 13:45:45'),
(8, 291, 1, 2, 2, 1, 'English Class', 'https://us02web.zoom.us/j/84464620874?pwd=Y0FKV1JrWGwvcjdkd1NvcnFnT255dz09', '84464620874', 'A3jYdJZ4REKA/wEjONB1Sg==', 1, 6, '2021-05-18 02:05:00', '2021-05-18 02:20:00', '2021-05-04 13:45:45'),
(14, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 0, '2021-05-04 14:30:00', '2021-05-04 14:45:00', '2021-05-04 14:26:07'),
(10, 291, 1, 2, 2, 1, 'English Class', 'https://us02web.zoom.us/j/84464620874?pwd=Y0FKV1JrWGwvcjdkd1NvcnFnT255dz09', '84464620874', 'A3jYdJZ4REKA/wEjONB1Sg==', 1, 6, '2021-05-12 02:05:00', '2021-05-12 02:20:00', '2021-05-04 13:45:45'),
(11, 291, 1, 2, 2, 1, 'English Class', 'https://us02web.zoom.us/j/84464620874?pwd=Y0FKV1JrWGwvcjdkd1NvcnFnT255dz09', '84464620874', 'A3jYdJZ4REKA/wEjONB1Sg==', 1, 6, '2021-05-19 02:05:00', '2021-05-19 02:20:00', '2021-05-04 13:45:45'),
(15, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-11 14:30:00', '2021-05-11 14:45:00', '2021-05-04 14:26:07'),
(40, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 39, '2021-05-17 13:00:00', '2021-05-17 13:30:00', '2021-05-05 12:42:13'),
(19, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-13 14:30:00', '2021-05-13 14:45:00', '2021-05-04 14:26:07'),
(20, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-20 14:30:00', '2021-05-20 14:45:00', '2021-05-04 14:26:07'),
(21, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-27 14:30:00', '2021-05-27 14:45:00', '2021-05-04 14:26:07'),
(22, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-07 14:30:00', '2021-05-07 14:45:00', '2021-05-04 14:26:07'),
(23, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-14 14:30:00', '2021-05-14 14:45:00', '2021-05-04 14:26:07'),
(24, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-21 14:30:00', '2021-05-21 14:45:00', '2021-05-04 14:26:07'),
(25, 291, 1, 2, 2, 2, 'Malayalam Class', 'https://us02web.zoom.us/j/82937280452?pwd=VVlneW42ektPQnA2UDM2Vy8zd25PQT09', '82937280452', 'chsl+R99QaiHOE83NBjgww==', 1, 14, '2021-05-28 14:30:00', '2021-05-28 14:45:00', '2021-05-04 14:26:07'),
(26, 291, 1, 2, 2, 4, 'Maths Class', 'https://us02web.zoom.us/j/84574157749?pwd=N1lNUTR2dy9jYUhwNUwvV2h6c1Z3UT09', '84574157749', 'zx98e3RnQ9eGu1/Xun2XJg==', 1, 0, '2021-05-04 14:30:00', '2021-05-04 15:10:00', '2021-05-04 14:30:33'),
(27, 291, 1, 2, 2, 4, 'Maths Class', 'https://us02web.zoom.us/j/84574157749?pwd=N1lNUTR2dy9jYUhwNUwvV2h6c1Z3UT09', '84574157749', 'zx98e3RnQ9eGu1/Xun2XJg==', 1, 26, '2021-05-11 14:30:00', '2021-05-11 15:10:00', '2021-05-04 14:30:33'),
(32, 291, 1, 4, 6, 1, 'ASssg', 'https://us02web.zoom.us/j/87305272591?pwd=a3hFa05FdHRKRnErdnNsSGFFeUdwUT09', '87305272591', 'R+h7k1tORLaJMWcO12xI0w==', 1, 0, '2021-05-10 00:25:00', '2021-05-10 00:40:00', '2021-05-05 12:24:07'),
(33, 291, 1, 4, 6, 3, 'hg', 'https://us02web.zoom.us/j/89771869337?pwd=eGtBRUNBZndHTzhDeUk0MTB4SzZCZz09', '89771869337', 'C6xadOR/RHGX221k+S6mFg==', 1, 0, '2021-05-07 01:05:00', '2021-05-07 01:35:00', '2021-05-05 12:26:41'),
(34, 291, 1, 4, 6, 3, 'hg', 'https://us02web.zoom.us/j/89771869337?pwd=eGtBRUNBZndHTzhDeUk0MTB4SzZCZz09', '89771869337', 'C6xadOR/RHGX221k+S6mFg==', 1, 33, '2021-05-08 01:05:00', '2021-05-08 01:35:00', '2021-05-05 12:26:41'),
(39, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 0, '2021-05-10 13:00:00', '2021-05-10 13:30:00', '2021-05-05 12:42:13'),
(36, 291, 1, 4, 6, 4, '56', 'https://us02web.zoom.us/j/89222909773?pwd=dHdnaFl2RjVKZjMyMXA4c2VXTWdEZz09', '89222909773', 'WvJfDUpzSjKQktTmVwAL1A==', 0, 0, '2021-05-07 00:00:00', '2021-05-07 00:15:00', '2021-05-05 12:29:55'),
(41, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 39, '2021-05-11 13:00:00', '2021-05-11 13:30:00', '2021-05-05 12:42:13'),
(38, 291, 1, 4, 6, 1, 'hjjjjjj', 'https://us02web.zoom.us/j/88977997235?pwd=elF3R2pVeVFmaTBRSTJOR2xGSm5LZz09', '88977997235', '3aDk0AgcTpaUCj7mLyeNsw==', 0, 0, '2021-05-07 13:05:00', '2021-05-07 13:35:00', '2021-05-05 12:35:59'),
(42, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 39, '2021-05-18 13:00:00', '2021-05-18 13:30:00', '2021-05-05 12:42:13'),
(51, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-17 12:45:00', '2021-05-17 13:25:00', '2021-05-05 12:43:23'),
(44, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 39, '2021-05-12 13:00:00', '2021-05-12 13:30:00', '2021-05-05 12:42:13'),
(45, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 39, '2021-05-19 13:00:00', '2021-05-19 13:30:00', '2021-05-05 12:42:13'),
(50, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 0, '2021-05-10 12:45:00', '2021-05-10 13:25:00', '2021-05-05 12:43:23'),
(47, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 39, '2021-05-13 13:00:00', '2021-05-13 13:30:00', '2021-05-05 12:42:13'),
(48, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 39, '2021-05-07 13:00:00', '2021-05-07 13:30:00', '2021-05-05 12:42:13'),
(49, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/86095544107?pwd=RzhFNDZhZWgyNVVDMTZjVW0vaUpzUT09', '86095544107', 'Jhui6wE8S2q2nBkczo2JqQ==', 1, 39, '2021-05-14 13:00:00', '2021-05-14 13:30:00', '2021-05-05 12:42:13'),
(52, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-24 12:45:00', '2021-05-24 13:25:00', '2021-05-05 12:43:23'),
(53, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-11 12:45:00', '2021-05-11 13:25:00', '2021-05-05 12:43:23'),
(54, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-18 12:45:00', '2021-05-18 13:25:00', '2021-05-05 12:43:23'),
(55, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-25 12:45:00', '2021-05-25 13:25:00', '2021-05-05 12:43:23'),
(56, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-05 12:45:00', '2021-05-05 13:25:00', '2021-05-05 12:43:23'),
(57, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-12 12:45:00', '2021-05-12 13:25:00', '2021-05-05 12:43:23'),
(58, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-19 12:45:00', '2021-05-19 13:25:00', '2021-05-05 12:43:23'),
(59, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-06 12:45:00', '2021-05-06 13:25:00', '2021-05-05 12:43:23'),
(60, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-13 12:45:00', '2021-05-13 13:25:00', '2021-05-05 12:43:23'),
(61, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-20 12:45:00', '2021-05-20 13:25:00', '2021-05-05 12:43:23'),
(62, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-07 12:45:00', '2021-05-07 13:25:00', '2021-05-05 12:43:23'),
(63, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-14 12:45:00', '2021-05-14 13:25:00', '2021-05-05 12:43:23'),
(64, 291, 1, 1, 1, 4, 'maths', 'https://us02web.zoom.us/j/89592638942?pwd=eFAwckpFQVpSc1RGZGppTmJXZUdCZz09', '89592638942', 'F9pSozrGSFyJSKscTX/QoQ==', 1, 50, '2021-05-21 12:45:00', '2021-05-21 13:25:00', '2021-05-05 12:43:23'),
(65, 291, 1, 1, 1, 1, 'Test', 'https://us02web.zoom.us/j/87100056064?pwd=VmJkQWR1Y3dhUDJYbnF3dk1Fc05RUT09', '87100056064', 'GzJEVr18TQO2OYlgD/Dj9A==', 0, 0, '2021-05-05 14:30:00', '2021-05-05 15:00:00', '2021-05-05 14:26:50'),
(66, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 0, '2021-05-05 15:00:00', '2021-05-05 15:15:00', '2021-05-05 14:48:39'),
(67, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-12 15:00:00', '2021-05-12 15:15:00', '2021-05-05 14:48:39'),
(68, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-19 15:00:00', '2021-05-19 15:15:00', '2021-05-05 14:48:39'),
(69, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-26 15:00:00', '2021-05-26 15:15:00', '2021-05-05 14:48:39'),
(70, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-07 15:00:00', '2021-05-07 15:15:00', '2021-05-05 14:48:39'),
(71, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-14 15:00:00', '2021-05-14 15:15:00', '2021-05-05 14:48:39'),
(72, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-21 15:00:00', '2021-05-21 15:15:00', '2021-05-05 14:48:39'),
(73, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-28 15:00:00', '2021-05-28 15:15:00', '2021-05-05 14:48:39'),
(74, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-08 15:00:00', '2021-05-08 15:15:00', '2021-05-05 14:48:39'),
(75, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-15 15:00:00', '2021-05-15 15:15:00', '2021-05-05 14:48:39'),
(76, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-22 15:00:00', '2021-05-22 15:15:00', '2021-05-05 14:48:39'),
(77, 291, 1, 14, 23, 1, 'test zoom classs', 'https://us02web.zoom.us/j/81346637750?pwd=UmorUWZVSGJVNlFINm00Nm9sU01rUT09', '81346637750', 'Fd6d4oJgQ/aj10r7mE3gWA==', 1, 66, '2021-05-29 15:00:00', '2021-05-29 15:15:00', '2021-05-05 14:48:39'),
(78, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 0, '2021-05-10 15:00:00', '2021-05-10 15:15:00', '2021-05-05 14:55:42'),
(79, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-17 15:00:00', '2021-05-17 15:15:00', '2021-05-05 14:55:42'),
(80, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-24 15:00:00', '2021-05-24 15:15:00', '2021-05-05 14:55:42'),
(81, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-05 15:00:00', '2021-05-05 15:15:00', '2021-05-05 14:55:42'),
(82, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-12 15:00:00', '2021-05-12 15:15:00', '2021-05-05 14:55:42'),
(83, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-19 15:00:00', '2021-05-19 15:15:00', '2021-05-05 14:55:42'),
(84, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-26 15:00:00', '2021-05-26 15:15:00', '2021-05-05 14:55:42'),
(85, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-07 15:00:00', '2021-05-07 15:15:00', '2021-05-05 14:55:42'),
(86, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-14 15:00:00', '2021-05-14 15:15:00', '2021-05-05 14:55:42'),
(87, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-21 15:00:00', '2021-05-21 15:15:00', '2021-05-05 14:55:42'),
(88, 291, 1, 2, 2, 1, 'English class', 'https://us02web.zoom.us/j/88270872151?pwd=WWRPZEVnT29ERjFOOWVqcE5ZUzR4dz09', '88270872151', 'RvwGF7g2QwesxvAx7Ek52w==', 1, 78, '2021-05-28 15:00:00', '2021-05-28 15:15:00', '2021-05-05 14:55:42'),
(89, 291, 1, 1, 1, 1, 'Test class', 'https://us02web.zoom.us/j/84541420828?pwd=d0RIQlJpdTk2Y1dzSVNKTktTakpYUT09', '84541420828', 'OdTWiEt+RQe+7fSt+SfoLQ==', 1, 0, '2021-05-10 15:45:00', '2021-05-10 16:00:00', '2021-05-05 15:26:04'),
(90, 291, 1, 1, 1, 1, 'Test class', 'https://us02web.zoom.us/j/84541420828?pwd=d0RIQlJpdTk2Y1dzSVNKTktTakpYUT09', '84541420828', 'OdTWiEt+RQe+7fSt+SfoLQ==', 1, 89, '2021-05-17 15:45:00', '2021-05-17 16:00:00', '2021-05-05 15:26:04'),
(91, 291, 1, 1, 1, 1, 'Test class', 'https://us02web.zoom.us/j/84541420828?pwd=d0RIQlJpdTk2Y1dzSVNKTktTakpYUT09', '84541420828', 'OdTWiEt+RQe+7fSt+SfoLQ==', 1, 89, '2021-05-11 15:45:00', '2021-05-11 16:00:00', '2021-05-05 15:26:04'),
(92, 291, 1, 1, 1, 1, 'Test class', 'https://us02web.zoom.us/j/84541420828?pwd=d0RIQlJpdTk2Y1dzSVNKTktTakpYUT09', '84541420828', 'OdTWiEt+RQe+7fSt+SfoLQ==', 1, 89, '2021-05-18 15:45:00', '2021-05-18 16:00:00', '2021-05-05 15:26:04'),
(93, 291, 1, 1, 1, 1, 'Test class', 'https://us02web.zoom.us/j/84541420828?pwd=d0RIQlJpdTk2Y1dzSVNKTktTakpYUT09', '84541420828', 'OdTWiEt+RQe+7fSt+SfoLQ==', 1, 89, '2021-05-05 15:45:00', '2021-05-05 16:00:00', '2021-05-05 15:26:04'),
(94, 291, 1, 1, 1, 1, 'Test class', 'https://us02web.zoom.us/j/84541420828?pwd=d0RIQlJpdTk2Y1dzSVNKTktTakpYUT09', '84541420828', 'OdTWiEt+RQe+7fSt+SfoLQ==', 1, 89, '2021-05-12 15:45:00', '2021-05-12 16:00:00', '2021-05-05 15:26:04'),
(95, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/86261679640?pwd=dThmNEhJSWMvUDN6LzdMNkRWb1EvUT09', '86261679640', 'ocb6YRzBRKSdGyTP2m/4ew==', 1, 0, '2021-05-11 16:15:00', '2021-05-11 16:30:00', '2021-05-05 15:29:53'),
(96, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/86261679640?pwd=dThmNEhJSWMvUDN6LzdMNkRWb1EvUT09', '86261679640', 'ocb6YRzBRKSdGyTP2m/4ew==', 1, 95, '2021-05-18 16:15:00', '2021-05-18 16:30:00', '2021-05-05 15:29:53'),
(97, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/86261679640?pwd=dThmNEhJSWMvUDN6LzdMNkRWb1EvUT09', '86261679640', 'ocb6YRzBRKSdGyTP2m/4ew==', 1, 95, '2021-05-07 16:15:00', '2021-05-07 16:30:00', '2021-05-05 15:29:53'),
(98, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/86261679640?pwd=dThmNEhJSWMvUDN6LzdMNkRWb1EvUT09', '86261679640', 'ocb6YRzBRKSdGyTP2m/4ew==', 1, 95, '2021-05-14 16:15:00', '2021-05-14 16:30:00', '2021-05-05 15:29:53'),
(99, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/86261679640?pwd=dThmNEhJSWMvUDN6LzdMNkRWb1EvUT09', '86261679640', 'ocb6YRzBRKSdGyTP2m/4ew==', 1, 95, '2021-05-21 16:15:00', '2021-05-21 16:30:00', '2021-05-05 15:29:53'),
(100, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/81232266984?pwd=eXFHY1g5NmFOMzJiYTkyclZHRHhRdz09', '81232266984', 'vqFA5Qd1TzStPb/RV9rAGg==', 1, 0, '2021-05-11 16:15:00', '2021-05-11 16:45:00', '2021-05-05 15:31:08'),
(101, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/81232266984?pwd=eXFHY1g5NmFOMzJiYTkyclZHRHhRdz09', '81232266984', 'vqFA5Qd1TzStPb/RV9rAGg==', 1, 100, '2021-05-18 16:15:00', '2021-05-18 16:45:00', '2021-05-05 15:31:08'),
(102, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/81232266984?pwd=eXFHY1g5NmFOMzJiYTkyclZHRHhRdz09', '81232266984', 'vqFA5Qd1TzStPb/RV9rAGg==', 1, 100, '2021-05-05 16:15:00', '2021-05-05 16:45:00', '2021-05-05 15:31:08'),
(103, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/81232266984?pwd=eXFHY1g5NmFOMzJiYTkyclZHRHhRdz09', '81232266984', 'vqFA5Qd1TzStPb/RV9rAGg==', 1, 100, '2021-05-12 16:15:00', '2021-05-12 16:45:00', '2021-05-05 15:31:08'),
(104, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/81232266984?pwd=eXFHY1g5NmFOMzJiYTkyclZHRHhRdz09', '81232266984', 'vqFA5Qd1TzStPb/RV9rAGg==', 1, 100, '2021-05-19 16:15:00', '2021-05-19 16:45:00', '2021-05-05 15:31:08'),
(105, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/81232266984?pwd=eXFHY1g5NmFOMzJiYTkyclZHRHhRdz09', '81232266984', 'vqFA5Qd1TzStPb/RV9rAGg==', 1, 100, '2021-05-06 16:15:00', '2021-05-06 16:45:00', '2021-05-05 15:31:08'),
(106, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/81232266984?pwd=eXFHY1g5NmFOMzJiYTkyclZHRHhRdz09', '81232266984', 'vqFA5Qd1TzStPb/RV9rAGg==', 1, 100, '2021-05-13 16:15:00', '2021-05-13 16:45:00', '2021-05-05 15:31:08'),
(107, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/81232266984?pwd=eXFHY1g5NmFOMzJiYTkyclZHRHhRdz09', '81232266984', 'vqFA5Qd1TzStPb/RV9rAGg==', 1, 100, '2021-05-20 16:15:00', '2021-05-20 16:45:00', '2021-05-05 15:31:08'),
(108, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87462993122?pwd=a242dmlmRHo1R0tYVEJlVko5THNRQT09', '87462993122', 'ZpMkVXm5TrO5nhF0VxAMgg==', 1, 0, '2021-05-06 16:05:00', '2021-05-06 16:35:00', '2021-05-05 16:03:02'),
(109, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87462993122?pwd=a242dmlmRHo1R0tYVEJlVko5THNRQT09', '87462993122', 'ZpMkVXm5TrO5nhF0VxAMgg==', 1, 108, '2021-05-13 16:05:00', '2021-05-13 16:35:00', '2021-05-05 16:03:02'),
(110, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87462993122?pwd=a242dmlmRHo1R0tYVEJlVko5THNRQT09', '87462993122', 'ZpMkVXm5TrO5nhF0VxAMgg==', 1, 108, '2021-05-20 16:05:00', '2021-05-20 16:35:00', '2021-05-05 16:03:02'),
(111, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87462993122?pwd=a242dmlmRHo1R0tYVEJlVko5THNRQT09', '87462993122', 'ZpMkVXm5TrO5nhF0VxAMgg==', 1, 108, '2021-05-07 16:05:00', '2021-05-07 16:35:00', '2021-05-05 16:03:02'),
(112, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87462993122?pwd=a242dmlmRHo1R0tYVEJlVko5THNRQT09', '87462993122', 'ZpMkVXm5TrO5nhF0VxAMgg==', 1, 108, '2021-05-14 16:05:00', '2021-05-14 16:35:00', '2021-05-05 16:03:02'),
(114, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87131413454?pwd=ZTJTZXFnL0JWeHREMFcvaldJVVd4QT09', '87131413454', 'TUqCaKu8TkKp3rrWa/4djA==', 1, 0, '2021-05-11 18:25:00', '2021-05-11 18:55:00', '2021-05-05 18:21:08'),
(115, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87131413454?pwd=ZTJTZXFnL0JWeHREMFcvaldJVVd4QT09', '87131413454', 'TUqCaKu8TkKp3rrWa/4djA==', 1, 114, '2021-05-05 18:25:00', '2021-05-05 18:55:00', '2021-05-05 18:21:08'),
(116, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87131413454?pwd=ZTJTZXFnL0JWeHREMFcvaldJVVd4QT09', '87131413454', 'TUqCaKu8TkKp3rrWa/4djA==', 1, 114, '2021-05-12 18:25:00', '2021-05-12 18:55:00', '2021-05-05 18:21:08'),
(117, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87131413454?pwd=ZTJTZXFnL0JWeHREMFcvaldJVVd4QT09', '87131413454', 'TUqCaKu8TkKp3rrWa/4djA==', 1, 114, '2021-05-06 18:25:00', '2021-05-06 18:55:00', '2021-05-05 18:21:08'),
(118, 291, 1, 1, 1, 1, 'test', 'https://us02web.zoom.us/j/87131413454?pwd=ZTJTZXFnL0JWeHREMFcvaldJVVd4QT09', '87131413454', 'TUqCaKu8TkKp3rrWa/4djA==', 1, 114, '2021-05-13 18:25:00', '2021-05-13 18:55:00', '2021-05-05 18:21:08'),
(119, 291, 1, 1, 1, 2, 'test class', 'https://us02web.zoom.us/j/84545926343?pwd=VVV5NDR0T3NGb2c2TzN2bXByRWpEZz09', '84545926343', 'QZkFvDH4T8iSvjHs/ojK1w==', 1, 0, '2021-05-05 19:00:00', '2021-05-05 19:30:00', '2021-05-05 18:22:24'),
(120, 291, 1, 1, 1, 2, 'test class', 'https://us02web.zoom.us/j/84545926343?pwd=VVV5NDR0T3NGb2c2TzN2bXByRWpEZz09', '84545926343', 'QZkFvDH4T8iSvjHs/ojK1w==', 1, 119, '2021-05-12 19:00:00', '2021-05-12 19:30:00', '2021-05-05 18:22:24'),
(121, 291, 1, 1, 1, 2, 'test class', 'https://us02web.zoom.us/j/84545926343?pwd=VVV5NDR0T3NGb2c2TzN2bXByRWpEZz09', '84545926343', 'QZkFvDH4T8iSvjHs/ojK1w==', 1, 119, '2021-05-06 19:00:00', '2021-05-06 19:30:00', '2021-05-05 18:22:24'),
(122, 291, 1, 1, 1, 2, 'test class', 'https://us02web.zoom.us/j/84545926343?pwd=VVV5NDR0T3NGb2c2TzN2bXByRWpEZz09', '84545926343', 'QZkFvDH4T8iSvjHs/ojK1w==', 1, 119, '2021-05-13 19:00:00', '2021-05-13 19:30:00', '2021-05-05 18:22:24'),
(123, 291, 1, 1, 1, 2, 'test class', 'https://us02web.zoom.us/j/84545926343?pwd=VVV5NDR0T3NGb2c2TzN2bXByRWpEZz09', '84545926343', 'QZkFvDH4T8iSvjHs/ojK1w==', 1, 119, '2021-05-08 19:00:00', '2021-05-08 19:30:00', '2021-05-05 18:22:24'),
(124, 291, 1, 1, 1, 1, 'Test English', 'https://us02web.zoom.us/j/81176281817?pwd=RTdTQUg4TU1IbnM4UkhVdC8zaGZqQT09', '81176281817', 'T+N2IikGTIKtX63tUaoqGA==', 1, 0, '2021-05-12 10:35:00', '2021-05-12 11:05:00', '2021-05-06 10:25:05'),
(125, 291, 1, 1, 1, 1, 'Test English', 'https://us02web.zoom.us/j/81176281817?pwd=RTdTQUg4TU1IbnM4UkhVdC8zaGZqQT09', '81176281817', 'T+N2IikGTIKtX63tUaoqGA==', 1, 124, '2021-05-19 10:35:00', '2021-05-19 11:05:00', '2021-05-06 10:25:05'),
(126, 291, 1, 1, 1, 1, 'Test English', 'https://us02web.zoom.us/j/81176281817?pwd=RTdTQUg4TU1IbnM4UkhVdC8zaGZqQT09', '81176281817', 'T+N2IikGTIKtX63tUaoqGA==', 1, 124, '2021-05-06 10:35:00', '2021-05-06 11:05:00', '2021-05-06 10:25:05'),
(127, 291, 1, 1, 1, 1, 'Test English', 'https://us02web.zoom.us/j/81176281817?pwd=RTdTQUg4TU1IbnM4UkhVdC8zaGZqQT09', '81176281817', 'T+N2IikGTIKtX63tUaoqGA==', 1, 124, '2021-05-13 10:35:00', '2021-05-13 11:05:00', '2021-05-06 10:25:05'),
(128, 291, 1, 1, 1, 1, 'Test English', 'https://us02web.zoom.us/j/81176281817?pwd=RTdTQUg4TU1IbnM4UkhVdC8zaGZqQT09', '81176281817', 'T+N2IikGTIKtX63tUaoqGA==', 1, 124, '2021-05-20 10:35:00', '2021-05-20 11:05:00', '2021-05-06 10:25:05'),
(129, 291, 1, 1, 1, 1, 'Test English', 'https://us02web.zoom.us/j/81176281817?pwd=RTdTQUg4TU1IbnM4UkhVdC8zaGZqQT09', '81176281817', 'T+N2IikGTIKtX63tUaoqGA==', 1, 124, '2021-05-07 10:35:00', '2021-05-07 11:05:00', '2021-05-06 10:25:05'),
(130, 291, 1, 1, 1, 1, 'Test English', 'https://us02web.zoom.us/j/81176281817?pwd=RTdTQUg4TU1IbnM4UkhVdC8zaGZqQT09', '81176281817', 'T+N2IikGTIKtX63tUaoqGA==', 1, 124, '2021-05-14 10:35:00', '2021-05-14 11:05:00', '2021-05-06 10:25:05'),
(131, 291, 1, 1, 1, 1, 'Test English', 'https://us02web.zoom.us/j/81176281817?pwd=RTdTQUg4TU1IbnM4UkhVdC8zaGZqQT09', '81176281817', 'T+N2IikGTIKtX63tUaoqGA==', 1, 124, '2021-05-21 10:35:00', '2021-05-21 11:05:00', '2021-05-06 10:25:05'),
(132, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 0, '2021-05-10 10:45:00', '2021-05-10 11:15:00', '2021-05-06 10:25:56'),
(133, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-17 10:45:00', '2021-05-17 11:15:00', '2021-05-06 10:25:56'),
(134, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-24 10:45:00', '2021-05-24 11:15:00', '2021-05-06 10:25:56'),
(135, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-12 10:45:00', '2021-05-12 11:15:00', '2021-05-06 10:25:56'),
(136, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-19 10:45:00', '2021-05-19 11:15:00', '2021-05-06 10:25:56'),
(137, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-26 10:45:00', '2021-05-26 11:15:00', '2021-05-06 10:25:56'),
(138, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-06 10:45:00', '2021-05-06 11:15:00', '2021-05-06 10:25:56'),
(139, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-13 10:45:00', '2021-05-13 11:15:00', '2021-05-06 10:25:56'),
(140, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-20 10:45:00', '2021-05-20 11:15:00', '2021-05-06 10:25:56'),
(141, 291, 1, 1, 1, 2, 'Test Malayalam', 'https://us02web.zoom.us/j/83156729285?pwd=VjVrNldaRFVmaFFwaXZ3bVZHVVBnZz09', '83156729285', 'iKrCXn0KTUCMJfMdgLuUOg==', 1, 132, '2021-05-27 10:45:00', '2021-05-27 11:15:00', '2021-05-06 10:25:56'),
(142, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 0, '2021-05-10 11:45:00', '2021-05-10 12:25:00', '2021-05-06 11:45:21'),
(143, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-17 11:45:00', '2021-05-17 12:25:00', '2021-05-06 11:45:21'),
(144, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-24 11:45:00', '2021-05-24 12:25:00', '2021-05-06 11:45:21'),
(145, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-06 11:45:00', '2021-05-06 12:25:00', '2021-05-06 11:45:21'),
(146, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-13 11:45:00', '2021-05-13 12:25:00', '2021-05-06 11:45:21'),
(147, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-20 11:45:00', '2021-05-20 12:25:00', '2021-05-06 11:45:21'),
(148, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-27 11:45:00', '2021-05-27 12:25:00', '2021-05-06 11:45:21'),
(149, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-07 11:45:00', '2021-05-07 12:25:00', '2021-05-06 11:45:21'),
(150, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-14 11:45:00', '2021-05-14 12:25:00', '2021-05-06 11:45:21'),
(151, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-21 11:45:00', '2021-05-21 12:25:00', '2021-05-06 11:45:21'),
(152, 291, 1, 1, 1, 5, 'science test', 'https://us02web.zoom.us/j/81035285445?pwd=TFlYa0MycVpCNDFlOEhERkJ2Z2tLQT09', '81035285445', 'Lvt+KWxpQoCZJDJ6mAY1Fg==', 1, 142, '2021-05-28 11:45:00', '2021-05-28 12:25:00', '2021-05-06 11:45:21'),
(182, 291, 1, 1, 1, 29, 'physics', 'https://zoom.us/j/97413494279?pwd=VkU5VUREVjY2bjlESkZoeDN4WTNyUT09', '97413494279', 'eR5ug4LnRNmVbNRiU54DZw==', 0, 0, '2021-05-06 12:30:00', '2021-05-06 13:10:00', '2021-05-06 12:28:46'),
(154, 291, 1, 1, 1, 1, 'test zoom', '', '', '', 1, 153, '2021-05-13 12:05:00', '2021-05-13 12:35:00', '2021-05-06 12:02:33'),
(155, 291, 1, 1, 1, 1, 'test zoom', '', '', '', 1, 153, '2021-05-20 12:05:00', '2021-05-20 12:35:00', '2021-05-06 12:02:33'),
(156, 291, 1, 1, 1, 1, 'test zoom', '', '', '', 1, 153, '2021-05-07 12:05:00', '2021-05-07 12:35:00', '2021-05-06 12:02:33'),
(157, 291, 1, 1, 1, 1, 'test zoom', '', '', '', 1, 153, '2021-05-14 12:05:00', '2021-05-14 12:35:00', '2021-05-06 12:02:33'),
(158, 291, 1, 1, 1, 1, 'test zoom', '', '', '', 1, 153, '2021-05-21 12:05:00', '2021-05-21 12:35:00', '2021-05-06 12:02:33'),
(160, 291, 1, 1, 1, 21, 'self', '', '', '', 1, 159, '2021-05-13 12:05:00', '2021-05-13 12:45:00', '2021-05-06 12:06:13'),
(161, 291, 1, 1, 1, 21, 'self', '', '', '', 1, 159, '2021-05-20 12:05:00', '2021-05-20 12:45:00', '2021-05-06 12:06:13'),
(162, 291, 1, 1, 1, 21, 'self', '', '', '', 1, 159, '2021-05-27 12:05:00', '2021-05-27 12:45:00', '2021-05-06 12:06:13'),
(163, 291, 1, 1, 1, 21, 'self', '', '', '', 1, 159, '2021-05-07 12:05:00', '2021-05-07 12:45:00', '2021-05-06 12:06:13'),
(164, 291, 1, 1, 1, 21, 'self', '', '', '', 1, 159, '2021-05-14 12:05:00', '2021-05-14 12:45:00', '2021-05-06 12:06:13'),
(165, 291, 1, 1, 1, 21, 'self', '', '', '', 1, 159, '2021-05-21 12:05:00', '2021-05-21 12:45:00', '2021-05-06 12:06:13'),
(166, 291, 1, 1, 1, 21, 'self', '', '', '', 1, 159, '2021-05-28 12:05:00', '2021-05-28 12:45:00', '2021-05-06 12:06:13'),
(168, 291, 1, 1, 1, 22, 'Neatness', '', '', '', 1, 167, '2021-05-13 12:10:00', '2021-05-13 12:50:00', '2021-05-06 12:08:52'),
(169, 291, 1, 1, 1, 22, 'Neatness', '', '', '', 1, 167, '2021-05-20 12:10:00', '2021-05-20 12:50:00', '2021-05-06 12:08:52'),
(170, 291, 1, 1, 1, 22, 'Neatness', '', '', '', 1, 167, '2021-05-27 12:10:00', '2021-05-27 12:50:00', '2021-05-06 12:08:52'),
(175, 291, 1, 1, 1, 6, 'test Zoom', 'https://zoom.us/j/91012330476?pwd=TG5ZNkZoTE0yelZBYjdBNkN4cGg5UT09', '91012330476', 'cY6LRxhURiGdD00+oMQWkw==', 1, 0, '2021-05-11 12:25:00', '2021-05-11 12:55:00', '2021-05-06 12:21:36'),
(172, 291, 1, 1, 1, 22, 'Neatness', 'https://zoom.us/j/91088189596?pwd=d0JvRm9sMmxuTTZmd0lGTkMvNjBKdz09', '91088189596', 'GUAgGb0NRyuHfLtzlexOmw==', 1, 171, '2021-05-13 12:10:00', '2021-05-13 12:50:00', '2021-05-06 12:10:28'),
(173, 291, 1, 1, 1, 22, 'Neatness', 'https://zoom.us/j/91088189596?pwd=d0JvRm9sMmxuTTZmd0lGTkMvNjBKdz09', '91088189596', 'GUAgGb0NRyuHfLtzlexOmw==', 1, 171, '2021-05-20 12:10:00', '2021-05-20 12:50:00', '2021-05-06 12:10:28'),
(174, 291, 1, 1, 1, 22, 'Neatness', 'https://zoom.us/j/91088189596?pwd=d0JvRm9sMmxuTTZmd0lGTkMvNjBKdz09', '91088189596', 'GUAgGb0NRyuHfLtzlexOmw==', 1, 171, '2021-05-27 12:10:00', '2021-05-27 12:50:00', '2021-05-06 12:10:28'),
(176, 291, 1, 1, 1, 6, 'test Zoom', 'https://zoom.us/j/91012330476?pwd=TG5ZNkZoTE0yelZBYjdBNkN4cGg5UT09', '91012330476', 'cY6LRxhURiGdD00+oMQWkw==', 1, 175, '2021-05-18 12:25:00', '2021-05-18 12:55:00', '2021-05-06 12:21:36'),
(177, 291, 1, 1, 1, 6, 'test Zoom', 'https://zoom.us/j/91012330476?pwd=TG5ZNkZoTE0yelZBYjdBNkN4cGg5UT09', '91012330476', 'cY6LRxhURiGdD00+oMQWkw==', 1, 175, '2021-05-25 12:25:00', '2021-05-25 12:55:00', '2021-05-06 12:21:36'),
(178, 291, 1, 1, 1, 6, 'test Zoom', 'https://zoom.us/j/91012330476?pwd=TG5ZNkZoTE0yelZBYjdBNkN4cGg5UT09', '91012330476', 'cY6LRxhURiGdD00+oMQWkw==', 1, 175, '2021-05-12 12:25:00', '2021-05-12 12:55:00', '2021-05-06 12:21:36'),
(179, 291, 1, 1, 1, 6, 'test Zoom', 'https://zoom.us/j/91012330476?pwd=TG5ZNkZoTE0yelZBYjdBNkN4cGg5UT09', '91012330476', 'cY6LRxhURiGdD00+oMQWkw==', 1, 175, '2021-05-19 12:25:00', '2021-05-19 12:55:00', '2021-05-06 12:21:36'),
(180, 291, 1, 1, 1, 6, 'test Zoom', 'https://zoom.us/j/91012330476?pwd=TG5ZNkZoTE0yelZBYjdBNkN4cGg5UT09', '91012330476', 'cY6LRxhURiGdD00+oMQWkw==', 1, 175, '2021-05-26 12:25:00', '2021-05-26 12:55:00', '2021-05-06 12:21:36'),
(183, 291, 1, 1, 1, 22, 'tiger test', 'https://zoom.us/j/94348725339?pwd=SGw2ck5GcGRna0pIeW5CcEpDejRBdz09', '94348725339', 'g+O5L2JUQ8mF5jlKQy85ZA==', 0, 0, '2021-05-06 13:15:00', '2021-05-06 13:55:00', '2021-05-06 13:11:08'),
(184, 291, 1, 2, 2, 1, 'testing time', 'https://us02web.zoom.us/j/89786224312?pwd=Z1JpU2ZRM0paSzNpeWlmWVRMRWc1Zz09', '89786224312', 'p4CuAaSBRfGqit2gZ9RWHw==', 1, 0, '2021-05-06 17:00:00', '2021-05-06 17:40:00', '2021-05-06 16:39:37'),
(185, 291, 1, 2, 2, 1, 'testing time', 'https://us02web.zoom.us/j/89786224312?pwd=Z1JpU2ZRM0paSzNpeWlmWVRMRWc1Zz09', '89786224312', 'p4CuAaSBRfGqit2gZ9RWHw==', 1, 184, '2021-05-13 17:00:00', '2021-05-13 17:40:00', '2021-05-06 16:39:37'),
(186, 291, 1, 2, 2, 1, 'testing time', 'https://us02web.zoom.us/j/89786224312?pwd=Z1JpU2ZRM0paSzNpeWlmWVRMRWc1Zz09', '89786224312', 'p4CuAaSBRfGqit2gZ9RWHw==', 1, 184, '2021-05-07 17:00:00', '2021-05-07 17:40:00', '2021-05-06 16:39:37'),
(187, 291, 1, 2, 2, 1, 'testing time', 'https://us02web.zoom.us/j/89786224312?pwd=Z1JpU2ZRM0paSzNpeWlmWVRMRWc1Zz09', '89786224312', 'p4CuAaSBRfGqit2gZ9RWHw==', 1, 184, '2021-05-14 17:00:00', '2021-05-14 17:40:00', '2021-05-06 16:39:37'),
(188, 291, 1, 2, 2, 1, 'time test 2', 'https://us02web.zoom.us/j/86581613377?pwd=R2FTcnZMRUZVVExFd2xLYm9DRUJpZz09', '86581613377', 'yKKmmnAiQCqFSQ9xx/p1xw==', 1, 0, '2021-05-06 05:20:00', '2021-05-06 05:35:00', '2021-05-06 16:51:25'),
(189, 291, 1, 2, 2, 1, 'timetest 3', 'https://us02web.zoom.us/j/84842758333?pwd=ckZIRHdXS3I1OXVrcjRtTTZZUVMvUT09', '84842758333', '0LSXH8DUSc2Ba+mSuS7r1g==', 1, 0, '2021-05-06 06:00:00', '2021-05-06 06:15:00', '2021-05-06 16:53:22'),
(190, 291, 1, 2, 2, 1, 'timetest 3', 'https://us02web.zoom.us/j/86397370049?pwd=d3pFRHZJNXpaM0ZYc2drREpFYUNmZz09', '86397370049', 'LHHIkvuQR0Sf8M1egSSNlA==', 1, 0, '2021-05-06 06:00:00', '2021-05-06 06:15:00', '2021-05-06 16:58:05'),
(191, 291, 1, 2, 2, 1, 'timetest 3', 'https://us02web.zoom.us/j/81544811767?pwd=ZzV3TXc5K3NBRGo1Vi9XT2w0UTNWUT09', '81544811767', 'o0utguD1TR2DRIqL4BZE4Q==', 1, 0, '2021-05-06 06:00:00', '2021-05-06 06:15:00', '2021-05-06 16:58:37'),
(192, 291, 1, 2, 2, 1, 'timetest 3', 'https://us02web.zoom.us/j/83723802940?pwd=NjM4L1JFU29Dd2FhMWpLYkZTVDRYZz09', '83723802940', 'FWVJGm9+R4WwRCucHmSImw==', 1, 0, '2021-05-06 06:00:00', '2021-05-06 06:15:00', '2021-05-06 17:09:08'),
(193, 291, 1, 14, 23, 1, 'testing the time', 'https://us02web.zoom.us/j/81230132430?pwd=d21ZYUFRU2IxZ0NDYXZBZ0RSSzU4dz09', '81230132430', 'Obl4pM2FQiCBUJXjLbp7VA==', 1, 0, '2021-05-06 18:00:00', '2021-05-06 18:30:00', '2021-05-06 17:10:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_attachments`
--
ALTER TABLE `assignment_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_details`
--
ALTER TABLE `assignment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elearning_contents`
--
ALTER TABLE `elearning_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elearning_documents`
--
ALTER TABLE `elearning_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elearning_topics`
--
ALTER TABLE `elearning_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elearning_videos`
--
ALTER TABLE `elearning_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eta`
--
ALTER TABLE `eta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_work`
--
ALTER TABLE `home_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_work_attachments`
--
ALTER TABLE `home_work_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_work_details`
--
ALTER TABLE `home_work_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_planner`
--
ALTER TABLE `lesson_planner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_attachments`
--
ALTER TABLE `message_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_classes`
--
ALTER TABLE `online_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_notifications`
--
ALTER TABLE `student_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeline_posts`
--
ALTER TABLE `timeline_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeline_post_comments`
--
ALTER TABLE `timeline_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeline_post_content`
--
ALTER TABLE `timeline_post_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeline_post_likes`
--
ALTER TABLE `timeline_post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking_status`
--
ALTER TABLE `tracking_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_device`
--
ALTER TABLE `user_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_photo`
--
ALTER TABLE `user_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_attendance`
--
ALTER TABLE `zoom_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_classes`
--
ALTER TABLE `zoom_classes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `assignment_attachments`
--
ALTER TABLE `assignment_attachments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `assignment_details`
--
ALTER TABLE `assignment_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `elearning_contents`
--
ALTER TABLE `elearning_contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `elearning_documents`
--
ALTER TABLE `elearning_documents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `elearning_topics`
--
ALTER TABLE `elearning_topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `elearning_videos`
--
ALTER TABLE `elearning_videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `eta`
--
ALTER TABLE `eta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_work`
--
ALTER TABLE `home_work`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `home_work_attachments`
--
ALTER TABLE `home_work_attachments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `home_work_details`
--
ALTER TABLE `home_work_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson_planner`
--
ALTER TABLE `lesson_planner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message_attachments`
--
ALTER TABLE `message_attachments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `online_classes`
--
ALTER TABLE `online_classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `student_notifications`
--
ALTER TABLE `student_notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `timeline_posts`
--
ALTER TABLE `timeline_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `timeline_post_comments`
--
ALTER TABLE `timeline_post_comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `timeline_post_content`
--
ALTER TABLE `timeline_post_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `timeline_post_likes`
--
ALTER TABLE `timeline_post_likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracking_status`
--
ALTER TABLE `tracking_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_device`
--
ALTER TABLE `user_device`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_photo`
--
ALTER TABLE `user_photo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `zoom_attendance`
--
ALTER TABLE `zoom_attendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=947;

--
-- AUTO_INCREMENT for table `zoom_classes`
--
ALTER TABLE `zoom_classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
