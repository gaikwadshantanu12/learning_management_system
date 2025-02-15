-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 01:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(29, 'shantanu', '2021-06-30 11:51:43', 'Edit User shantanu#$dawkiag12@4'),
(30, 'shantanu#$dawkiag12@4', '2021-06-30 11:53:31', 'Edit User shantanu');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(93, 39, 'Software Testing', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(25, 'CO1I'),
(26, 'CO2I'),
(27, 'CO3I'),
(28, 'CO4I'),
(29, 'CO5I'),
(30, 'CO6I');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6),
(18, 187, 1800, 8);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>1. Imparting quality education to meet the expectations of industry and society.<br />\r\n2. Developing infrastructure, facilities, amenities and state-of-the-art laboratories.<br />\r\n3. Pursuing learner centric teaching-learning processes through continuous development of faculty.<br />\r\n4. Providing platform to students for their personal and professional development.<br />\r\n5. Nurturing positive attitude and social values amongst students and staff.<br />\r\n6. Inculcating competencies by providing hands on experience of various skills and processes.</strong></span></p>\r\n'),
(2, 'Vision', '<pre>\r\n<span style=\"font-size:large\"><strong>Vision</strong></span></pre>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:large\">&nbsp; </span><span style=\"font-size:20px\"><strong><span style=\"color:rgb(33, 37, 41); font-family:commonfont\">&ldquo;</span></strong>To be a premier institute for transforming learners into competent technicians and pharmacists<strong><span style=\"color:rgb(33, 37, 41); font-family:commonfont\">&rdquo;</span></strong></span></p>\r\n'),
(3, 'History', '<pre>\r\n<span style=\"font-size:large\">HISTORY &nbsp;</span> </pre>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Government Polytechnic,Jalgaon is established in the year 1960. The institute is governed by Government of Maharashtra and approved by All India Council for Technical Education and Pharmacy Council of India to offer technical level Diploma and Post Diploma programmes in engineering , technology and pharmacy as per The norms of Maharashtra State Board of Technical Education, Mumbai.<br />\r\nThe campus is spread over a land of 52 acres , Under World Bank Assisted Project implemented during 1992-97, infrastructure facilities have been enhanced and High-Tech equipment are procured.<br />\r\nThe institute offers need based continuing education programmes , testing and consultancy services to business and industry besides services to community throughTechnology transfer.</p>\r\n'),
(4, 'Footer', '<p style=\"text-align:center\"><strong><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:18px\">Government Polytechnic, Jalgaon</span></span></strong></p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">Online Learning Management System</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<div style=\"background:#eee;border:1px solid #ccc;padding:5px 10px;\">\r\n<p style=\"text-align:center\"><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:24px\"><strong>CALENDAR</strong></span></span></p>\r\n</div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#A52A2A\"><span style=\"font-size:24px\"><strong><span style=\"font-size:20px\">COMPUTER ENGINEERING DEPARTMENT</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#A52A2A\"><span style=\"font-size:24px\"><strong><span style=\"font-size:20px\">PRESENTS SHIELD 4.0</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>EVENT</strong></td>\r\n			<td style=\"text-align:center\"><strong>DATE</strong></td>\r\n			<td style=\"text-align:center\"><strong>TIME</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">C Quiz</td>\r\n			<td style=\"text-align:center\">22 / 05 / 2021</td>\r\n			<td style=\"text-align:center\">11 : 30 AM - 12 : 30 PM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">GK Quiz</td>\r\n			<td style=\"text-align:center\">22 / 05 / 2021</td>\r\n			<td style=\"text-align:center\">1 : 00 PM - 2: 00 PM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Project Competition</td>\r\n			<td>\r\n			<p style=\"text-align:center\">22 / 05 / 2021</p>\r\n\r\n			<p style=\"text-align:center\">23 / 05 / 2021</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">11 : 30 AM - 3 : 00 PM</p>\r\n\r\n			<p style=\"text-align:center\">12 : 30 PM - 4 : 30 PM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">PPT / Poster Presentation</td>\r\n			<td style=\"text-align:center\">22 / 05 / 2021</td>\r\n			<td style=\"text-align:center\">2 : 30 PM - 6 : 00 PM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Talent Hunt</td>\r\n			<td style=\"text-align:center\">22 / 05 / 2021</td>\r\n			<td style=\"text-align:center\">2 : 30 PM - 6 : 00 PM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Chess</td>\r\n			<td style=\"text-align:center\">23 / 05 / 2021</td>\r\n			<td style=\"text-align:center\">10 : 00 AM - 11:30 AM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Virtual Treasure Hunt</td>\r\n			<td style=\"text-align:center\">23 / 05 / 2021</td>\r\n			<td style=\"text-align:center\">1 : 30 PM - 4 : 30 PM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">C Quiz Round 2</td>\r\n			<td style=\"text-align:center\">23 / 05 / 2021</td>\r\n			<td style=\"text-align:center\">12 : 00 PM - 12 : 30 PM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">GK Quiz Round 2</td>\r\n			<td style=\"text-align:center\">23 / 05 / 2021</td>\r\n			<td style=\"text-align:center\">12 : 30 Pm - 1 : 00 PM</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:20px\">Visit - <a href=\"http://shield2k21.ml\">https://shield2k21.ml</a> for more details</span></strong></p>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tel : - +91 257 2221721</p>\r\n	</li>\r\n	<li>\r\n	<p>Fax : - +91 257 2221719</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'president', '<p>It is my great pleasure and privilege to welcome you to CHMSC&rsquo;s official website. Accept my deep appreciation for continuously taking interest in CHMSC and its programs and activities.<br /> Recently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img style=\"float: left;\" src=\"images/president.jpg\" alt=\"\" />ducation to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br /><br /> Honored and humbled to be given the opportunity for stewardship of this good College, I am fully aware that the goal is to make CHMSC as the center of excellence or development in various fields. The vision, CHMSC ExCELS: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of CHMSC Community. A CHMSCian must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the College is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br /><br /> The tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to <br /><br /></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">Provide wider access to CHMSC programs;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students thru effective teaching and learning methodologies and techniques;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable CHMSC Environment for All through secure green campus;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em; text-align: justify;\">Together, WE can make CHMSC</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</span></p>\r\n<p style=\"text-align: justify;\"><br /><br /> Dear readers and guests, these are the challenges for every CHMSCian to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br /><br /> Warmest welcome and I wish you well!</p>\r\n<p style=\"text-align: justify;\"><br /><br /></p>\r\n<p style=\"text-align: justify;\">RENATO M. SOROLLA, Ph.D.<br />SUC President II</p>'),
(13, 'motto', '<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">CHMSC EXCELS:</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Excellence, Competence and Educational</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Leadership in Science and Technology</span></span></strong></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>Campuses</strong></span></pre>\r\n\r\n<p>National Highway No. 6 , Jalgaon - 425 002<br />\r\n&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(11, 'Computer Engineering', 'Dr. P. P. Chaudhari'),
(12, 'Electrical Engineering', 'Dr. A. S. Zope'),
(13, 'Information Technology', 'Dr. S. D. Patil'),
(14, 'Electronics & TeleCommunication', 'Dr. A. P. Akole'),
(15, 'Civil Engineering', 'Dr. R. U. Kamodkar'),
(16, 'Mechanical Engineering', 'Dr. S. B. Wesley'),
(17, 'Pharmacy', 'Dr. P. D. Aragade');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(142, 'admin/uploads/6159_File_STE_S15(G).pdf', '2021-05-22 23:08:31', 'Question Bank', 24, 187, 'Software Testing', 'Prof. NitinPawar');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(31, 24, 'Hello Sir', '2021-05-18 14:27:49', 220, 'Prof. Nitin Pawar', 'Aditya Bodhankar', ''),
(32, 24, 'Hello Sir My Self Damini Dhangar', '2021-06-30 11:49:15', 228, 'Prof. Nitin Pawar', 'Damini Dhangar', ''),
(33, 228, 'Hello damini plz share screen', '2021-06-30 13:55:29', 20, 'Damini Dhangar', 'Prof. Ashwini Lokhande', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(17, 24, 'Hello Sir My Self Damini Dhangar', '2021-06-30 11:49:15', 228, 'Prof. Nitin Pawar', 'Damini Dhangar'),
(18, 228, 'Hello damini plz share screen', '2021-06-30 13:55:29', 20, 'Damini Dhangar', 'Prof. Ashwini Lokhande');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(27, 187, 'Add Annoucements', '2021-06-06 14:49:30', 'announcements_student.php'),
(28, 187, 'Add Annoucements', '2021-06-06 15:40:03', 'announcements_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15),
(6, 220, 'yes', 24),
(7, 220, 'yes', 27),
(8, 220, 'yes', 28),
(9, 223, 'yes', 28),
(10, 223, 'yes', 27),
(11, 224, 'yes', 28),
(12, 224, 'yes', 27),
(13, 228, 'yes', 28),
(14, 228, 'yes', 27),
(15, 221, 'yes', 28),
(16, 221, 'yes', 27);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7),
(9, 24, 'yes', 19);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(8, 'Software Testing', 'Software Testing Basics', '2021-05-22 23:47:44', 24),
(9, 'PHP', 'Testing', '2021-06-30 13:58:00', 20);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(40, 8, '<p>Is full form of STE is Software Testing ?</p>\r\n', 2, 0, '2021-05-22 23:48:14', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2018 - 2019'),
(5, '2019 - 2020'),
(6, '2020 - 2021');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(220, 'Aditya', 'Bodhankar', 29, '101', 'aditya', 'uploads/user.png', 'Registered'),
(221, 'Vishal', 'Chaudhari', 29, '102', 'vishal_c', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(222, 'Jayesh', 'Jagtap', 29, '103', 'jayesh', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(223, 'Komal', 'Dhake', 29, '104', 'komal', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(224, 'Kalpak', 'Nemade', 29, '105', 'kalpak@1234', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(225, 'Sapana', 'Pagare', 29, '106', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(226, 'Divya', 'Chaudhari', 30, '107', 'divya', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(227, 'Nandini', 'Girnare', 30, '108', 'nandini_g', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(228, 'Damini', 'Dhangar', 30, '109', 'damini@1234', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(5, 'admin/uploads/6159_File_STE_S15(G).pdf', '2021-05-22 23:15:49', 'Question Bank', 220, 'Software Testing');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(4, 18, 16, '3600', '1 out of 1');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(45, '22519 - CSS', 'Client Side Scripting Using JavaScript', '', '', 6, '', ''),
(46, '22516 - OSY', 'Operating System', '', '', 6, '', ''),
(47, '22517 - AJP', 'Advanced Java Programming', '', '', 6, '', ''),
(48, '22509 - MGT', 'Management', '', '', 5, '', ''),
(49, '22616 - PWP', 'Programming With Python', '', '', 6, '', ''),
(50, '22617 - MAD', 'Moblie Application Development', '', '', 6, '', ''),
(51, '22618 - ETi', 'Emerging Trends In CO & IT', '', '', 5, '', ''),
(52, '22619 - WBP', 'Web Based Application Development Using PHP', '', '', 6, '', ''),
(43, '22518 - STE', 'Software Testing', '', '', 5, '', ''),
(44, '22447 - EST', 'Environmental Studies', '', '', 5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(25, 'vinita_p', 'vinita1234', 'Prof. Vinita', 'Patil', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(26, '', '', 'Prof. Shubhangi', 'Patil', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(24, 'nitin_p', 'nitin', 'Prof. Nitin', 'Pawar', 11, 'uploads/user.png', '', 'Registered', ''),
(23, '', '', 'Prof. Naina', 'Borse', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(22, '', '', 'Prof. Asha', 'Chaudhari', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(21, '', '', 'Prof. Amol', 'Chaudhari', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(20, 'ashwini_l', 'ashwini', 'Prof. Ashwini', 'Lokhande', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2012-2013'),
(135, 0, 22, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(151, 5, 7, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(152, 5, 8, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(153, 5, 13, 36, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(157, 18, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(158, 18, 16, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(159, 18, 12, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(160, 18, 7, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(165, 134, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(167, 12, 13, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(168, 12, 14, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(170, 12, 16, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(172, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(173, 18, 14, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(174, 13, 12, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(175, 13, 13, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(176, 13, 14, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(180, 19, 13, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(181, 12, 20, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(183, 12, 18, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(184, 12, 17, 25, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(186, 9, 18, 42, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(187, 24, 29, 43, 'admin/uploads/thumbnails.jpg', '2020 - 2021');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(40, '<p><strong>Tomorrow is holiday</strong></p>\r\n', '24', 187, '2021-05-22 23:46:35'),
(41, '<p>IMP Announcement demo.</p>\r\n', '24', 187, '2021-06-06 14:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(383, 187, 220, 24),
(384, 187, 221, 24),
(385, 187, 222, 24),
(386, 187, 223, 24),
(387, 187, 224, 24),
(388, 187, 225, 24),
(389, 187, 228, 24);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(16, 'shantanu', 'shantanu', 'Shantanu', 'Gaikwad'),
(17, 'sankalp', 'sankalp', 'Sankalp', 'Suryavanshi'),
(18, 'sayali', 'sayali', 'Sayali', 'Sable'),
(19, 'ajinkya', 'ajinkya', 'Ajinkya', 'Mahajan');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(88, 'shantanu', '2021-05-02 10:37:59', '2021-06-30 14:12:31', 16),
(89, 'shantanu', '2021-05-02 10:39:54', '2021-06-30 14:12:31', 16),
(90, 'shantanu', '2021-05-18 13:01:26', '2021-06-30 14:12:31', 16),
(91, 'shantanu', '2021-05-18 13:03:42', '2021-06-30 14:12:31', 16),
(92, 'shantanu', '2021-05-18 13:06:04', '2021-06-30 14:12:31', 16),
(93, 'shantanu', '2021-05-18 13:15:41', '2021-06-30 14:12:31', 16),
(94, 'shantanu', '2021-05-18 14:26:45', '2021-06-30 14:12:31', 16),
(95, 'shantanu', '2021-05-22 13:05:45', '2021-06-30 14:12:31', 16),
(96, 'shantanu', '2021-05-22 13:24:13', '2021-06-30 14:12:31', 16),
(97, 'shantanu', '2021-05-22 21:03:44', '2021-06-30 14:12:31', 16),
(98, 'shantanu', '2021-05-22 23:45:37', '2021-06-30 14:12:31', 16),
(99, 'shantanu', '2021-05-23 09:09:46', '2021-06-30 14:12:31', 16),
(100, 'shantanu', '2021-05-23 09:58:22', '2021-06-30 14:12:31', 16),
(101, 'shantanu', '2021-05-23 10:44:27', '2021-06-30 14:12:31', 16),
(102, 'shantanu', '2021-05-23 12:22:48', '2021-06-30 14:12:31', 16),
(103, 'shantanu', '2021-06-04 17:40:45', '2021-06-30 14:12:31', 16),
(104, 'shantanu', '2021-06-06 14:15:07', '2021-06-30 14:12:31', 16),
(105, 'shantanu', '2021-06-06 16:11:15', '2021-06-30 14:12:31', 16),
(106, 'ajinkya', '2021-06-06 16:14:30', '2021-06-06 16:14:56', 19),
(107, 'shantanu', '2021-06-06 16:15:50', '2021-06-30 14:12:31', 16),
(108, 'shantanu', '2021-06-06 20:34:51', '2021-06-30 14:12:31', 16),
(109, 'shantanu', '2021-06-08 15:24:25', '2021-06-30 14:12:31', 16),
(110, 'shantanu', '2021-06-08 17:52:17', '2021-06-30 14:12:31', 16),
(111, 'shantanu', '2021-06-30 11:25:35', '2021-06-30 14:12:31', 16),
(112, 'shantanu', '2021-06-30 11:28:14', '2021-06-30 14:12:31', 16),
(113, 'shantanu', '2021-06-30 11:30:32', '2021-06-30 14:12:31', 16),
(114, 'shantanu', '2021-06-30 11:43:50', '2021-06-30 14:12:31', 16),
(115, 'shantanu', '2021-06-30 11:50:54', '2021-06-30 14:12:31', 16),
(116, 'shantanu#$dawkiag12@4', '2021-06-30 11:53:13', '2021-06-30 14:12:31', 16),
(117, 'shantanu', '2021-06-30 11:54:50', '2021-06-30 14:12:31', 16),
(118, 'shantanu', '2021-06-30 12:00:03', '2021-06-30 14:12:31', 16),
(119, 'shantanu', '2021-06-30 12:56:49', '2021-06-30 14:12:31', 16),
(120, 'shantanu', '2021-06-30 14:01:01', '2021-06-30 14:12:31', 16),
(121, 'shantanu', '2021-06-30 14:09:21', '2021-06-30 14:12:31', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
