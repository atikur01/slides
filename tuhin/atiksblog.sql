-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 06:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atiksblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(255) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_des`) VALUES
(35, 'Networking', 'Network Engineer'),
(36, 'Security', 'Security Specialist'),
(37, 'PHP', 'PHP Developer'),
(39, 'Design & Creative', 'Design & Creative'),
(40, 'Design & Development', 'Design & Development'),
(41, 'Sales & Marketing', 'Sales & Marketing'),
(42, 'Mobile Application', 'Mobile Application'),
(43, 'Construction', 'Construction'),
(44, 'Information Technology', 'Information Technology'),
(45, ' Real Estate', '\r\nReal Estate'),
(46, 'Content Writer', 'Content Writer'),
(47, 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`) VALUES
(5, 'test', 'test@gmail.com', 'TEST', 'TEST');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(255) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` longtext NOT NULL,
  `post_ctg` longtext NOT NULL,
  `post_author` varchar(60) NOT NULL,
  `post_date` date NOT NULL,
  `post_summery` longtext NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_content`, `post_ctg`, `post_author`, `post_date`, `post_summery`, `author_id`) VALUES
(6, 'Network Engineer', 'Install and configure software, servers, routers, firewall and other network devices.\r\nInstall, configure and troubleshoot hardware and software on PCs, laptops and other office equipment.\r\nMonitor network performance and integrity.\r\nResolve issues and provide all IT related support (e.g. PABX, CCTV, Projector, UPS, Printers, Scanner, Smart phone, Attendance device and other IT equipment).\r\nCommunicate with users when needed and assist team members on technical issues.\r\nCreate, oversee and test security measures (e.g. access authentication and disaster recovery).\r\nIdentify and address vulnerabilities in networks and computer systems.\r\nSuggest improvements to network performance, capacity and scalability.\r\nMaintain complete technical documentation.', 'Networking', 'company', '2023-05-10', 'Install and configure software, servers, routers, firewall and other network devices.\r\nInstall, configure and troubleshoot hardware and software on PCs, laptops and other office equipment.\r\nMonitor network performance and integrity.\r\nResolve issues and provide all IT related support (e.g. PABX, CCTV, Projector, UPS, Printers, Scanner, Smart phone, Attendance device and other IT equipment).\r\nCommunicate with users when needed and assist team members on technical issues.\r\nCreate, oversee and test security measures (e.g. access authentication and disaster recovery).\r\nIdentify and address vulnerabilities in networks and computer systems.\r\nSuggest improvements to network performance, capacity and scalability.\r\nMaintain complete technical documentation.', 2),
(7, 'Security Specialist', 'Contribute to building a new identity data mode.\r\nBuild logic and detailed specifications to enhance the current user access model\r\nImplement and maintain a central Identity and user access management system using leading technologies.\r\nConfigure, deploy Identity Management solution for managing the end-to-end life-cycle of user identities across all enterprise resources, both on-premise and cloud based platforms.\r\nBuild integrations between directories such as OpenLDAP, Azure AD, Google Directory, and other tools and services, and sync data between services.\r\nConfigure and deploy Access Management: Seamless single sign-on to any application with Real-time external authorization based on XACML, ABAC, and RBAC for a broad variety of platforms and environments', 'Security', 'company', '2023-05-10', 'Contribute to building a new identity data mode.\r\nBuild logic and detailed specifications to enhance the current user access model\r\nImplement and maintain a central Identity and user access management system using leading technologies.\r\nConfigure, deploy Identity Management solution for managing the end-to-end life-cycle of user identities across all enterprise resources, both on-premise and cloud based platforms.\r\nBuild integrations between directories such as OpenLDAP, Azure AD, Google Directory, and other tools and services, and sync data between services.\r\nConfigure and deploy Access Management: Seamless single sign-on to any application with Real-time external authorization based on XACML, ABAC, and RBAC for a broad variety of platforms and environments', 2),
(8, 'PHP Developer', 'Full-stack PHP developer\r\nWe are looking for some Mid-level Software engineers on PHP Laravel and React.JS Programmers to integrate API. As a full-stack developer, you`ll develop and design front and back-end web architecture.\r\nCandidate should have knowledge of multiple front-end languages and libraries (e.g., HTML/ CSS, Bootstrap, PHP, OOP, MySQL, Laravel Framework, JavaScript, ES6, React, Redux, Express Js, Next.js, jQuery, JSON, Socket.io).\r\nYou`ll also ensure that applications are responsive, and work with graphic designers to design web features, among other things.\r\nPlease do not apply if you don`t have direct PHP(Laravel) & React.js development', 'PHP', 'company', '2023-05-10', 'Full-stack PHP developer\r\nWe are looking for some Mid-level Software engineers on PHP Laravel and React.JS Programmers to integrate API. As a full-stack developer, you`ll develop and design front and back-end web architecture.\r\nCandidate should have knowledge of multiple front-end languages and libraries (e.g., HTML/ CSS, Bootstrap, PHP, OOP, MySQL, Laravel Framework, JavaScript, ES6, React, Redux, Express Js, Next.js, jQuery, JSON, Socket.io).\r\nYou`ll also ensure that applications are responsive, and work with graphic designers to design web features, among other things.\r\nPlease do not apply if you don`t have direct PHP(Laravel) & React.js development', 2),
(9, 'test1', 'test1', 'Networking', 'test', '2023-05-10', 'test1', 4),
(10, 'Frontend / Sr. Frontend Engineer (React)', 'Adventure Dhaka Limited, a subsidiary of Adventure Inc. (One of the leading publicly listed OTA in Japan) looking for a technically sound Frontend / Sr. Frontend Engineer based in Dhaka, Bangladesh, capable of developing projects related to the company`s web services. Successful applicants should have a minimum of 3 years of Frontend Development experience in React for a Frontend Engineer Position and a minimum of 5+ years of Frontend Development experience with the capability of managing a team of 3-5 members for a Senior Frontend Engineer Position.\r\nThe Official Language of Adventure Dhaka Limited is English.\r\nJob Responsibilities\r\nDevelop front-end programming and logic in React.\r\nWork on the React project structure and provide ideas for best practices and project approaches.\r\nHelp with code reviews and sharing your expertise with other developers.\r\nWork within team circles on internal and external projects.\r\nAdvanced Skill in React, Javascript, CSS, HTML, jQuery, Ajax, and BootStrap.\r\nYou will be responsible for developing/upgrading web-based projects as a team member or individual.\r\nFix bugs, troubleshoot, and resolve problems of existing or current projects.\r\nEmployment Status\r\nFull-time\r\n\r\nEducational Requirements\r\nBachelor of Science (BSc) in CSE, Bachelor degree in any discipline\r\nSkills Required: Ajax, Bootstrap, CSS, HTML, JavaScript, jQuery, ReactJS\r\nExperience Requirements\r\nAt least 3 year(s)\r\nThe applicants should have experience in the following area(s):\r\nProject Management, ReactJS, Software Development\r\nThe applicants should have experience in the following business area(s):\r\nIT Enabled Service\r\nAdditional Requirements\r\nAge 25 to 40 years\r\nBoth males and females are allowed to apply\r\nThe candidate must have solid ENGLISH COMMUNICATION skills.\r\nAbility to build and maintain positive relationships with colleagues.\r\nKnowledge of travel, tourism, and software development.\r\nExcellent communication skills in English and Bangla (speaking and writing).\r\nHardworking, passionate, Punctual & Time management.\r\nExcellent understanding of OOP and Design Patterns & Principles\r\nMySQL, Cloud Spanner, Redis Git, Backlog, Slack\r\nAnalytical skills and advanced arithmetic skills are required.\r\nThe quality-minded approach throughout the Software Development Life Cycle.\r\nApproaching very structured and systematic work.\r\nEnsuring the systems are functioning properly and helping the business run smoothly.\r\nResponsibilities for the deadline and quality of the services.\r\nKnowledge about Vue.js, Android(Java/Kotlin), iOS(Objective-C/Swift), Java/Kotlin for Web, or PHP(Lavavel) technologies will consider a plus point.\r\nJob Location\r\nDhaka\r\n\r\nSalary\r\nNegotiable\r\nCompensation & Other Benefits\r\nWeekly 2 holidays, Insurance\r\nLunch Facilities: Full Subsidize\r\nSalary Review: Yearly\r\nFestival Bonus: 2\r\nFree Lunch, Tea, Coffee, Snacks for refreshment, a Contemporary Office environment with excellent colleagues, and significant professional development opportunities for all levels.', 'PHP', 'Atik', '2023-05-15', 'Adventure Dhaka Limited, a subsidiary of Adventure Inc. (One of the leading publicly listed OTA in Japan) looking for a technically sound Frontend / Sr. Frontend Engineer based in Dhaka, Bangladesh, capable of developing projects related to the company`s web services. Successful applicants should have a minimum of 3 years of Frontend Development experience in React for a Frontend Engineer Position and a minimum of 5+ years of Frontend Development experience with the capability of managing a team of 3-5 members for a Senior Frontend Engineer Position.', 2),
(11, 'Frontend / Sr. Frontend Engineer (React)', 'Adventure Dhaka Limited, a subsidiary of Adventure Inc. (One of the leading publicly listed OTA in Japan) looking for a technically sound Frontend / Sr. Frontend Engineer based in Dhaka, Bangladesh, capable of developing projects related to the company`s web services. Successful applicants should have a minimum of 3 years of Frontend Development experience in React for a Frontend Engineer Position and a minimum of 5+ years of Frontend Development experience with the capability of managing a team of 3-5 members for a Senior Frontend Engineer Position.\r\nThe Official Language of Adventure Dhaka Limited is English.\r\nJob Responsibilities\r\nDevelop front-end programming and logic in React.\r\nWork on the React project structure and provide ideas for best practices and project approaches.\r\nHelp with code reviews and sharing your expertise with other developers.\r\nWork within team circles on internal and external projects.\r\nAdvanced Skill in React, Javascript, CSS, HTML, jQuery, Ajax, and BootStrap.\r\nYou will be responsible for developing/upgrading web-based projects as a team member or individual.\r\nFix bugs, troubleshoot, and resolve problems of existing or current projects.\r\nEmployment Status\r\nFull-time\r\n\r\nEducational Requirements\r\nBachelor of Science (BSc) in CSE, Bachelor degree in any discipline\r\nSkills Required: Ajax, Bootstrap, CSS, HTML, JavaScript, jQuery, ReactJS\r\nExperience Requirements\r\nAt least 3 year(s)\r\nThe applicants should have experience in the following area(s):\r\nProject Management, ReactJS, Software Development\r\nThe applicants should have experience in the following business area(s):\r\nIT Enabled Service\r\nAdditional Requirements\r\nAge 25 to 40 years\r\nBoth males and females are allowed to apply\r\nThe candidate must have solid ENGLISH COMMUNICATION skills.\r\nAbility to build and maintain positive relationships with colleagues.\r\nKnowledge of travel, tourism, and software development.\r\nExcellent communication skills in English and Bangla (speaking and writing).\r\nHardworking, passionate, Punctual & Time management.\r\nExcellent understanding of OOP and Design Patterns & Principles\r\nMySQL, Cloud Spanner, Redis Git, Backlog, Slack\r\nAnalytical skills and advanced arithmetic skills are required.\r\nThe quality-minded approach throughout the Software Development Life Cycle.\r\nApproaching very structured and systematic work.\r\nEnsuring the systems are functioning properly and helping the business run smoothly.\r\nResponsibilities for the deadline and quality of the services.\r\nKnowledge about Vue.js, Android(Java/Kotlin), iOS(Objective-C/Swift), Java/Kotlin for Web, or PHP(Lavavel) technologies will consider a plus point.\r\nJob Location\r\nDhaka\r\n\r\nSalary\r\nNegotiable\r\nCompensation & Other Benefits\r\nWeekly 2 holidays, Insurance\r\nLunch Facilities: Full Subsidize\r\nSalary Review: Yearly\r\nFestival Bonus: 2\r\nFree Lunch, Tea, Coffee, Snacks for refreshment, a Contemporary Office environment with excellent colleagues, and significant professional development opportunities for all levels.', 'PHP', 'Atik', '2023-05-15', 'Adventure Dhaka Limited, a subsidiary of Adventure Inc. (One of the leading publicly listed OTA in Japan) looking for a technically sound Frontend / Sr. Frontend Engineer based in Dhaka, Bangladesh, capable of developing projects related to the company`s web services. Successful applicants should have a minimum of 3 years of Frontend Development experience in React for a Frontend Engineer Position and a minimum of 5+ years of Frontend Development experience with the capability of managing a team of 3-5 members for a Senior Frontend Engineer Position.', 2),
(12, 'Backend / Sr. Backend Engineer (Java)', 'Adventure Dhaka Limited, a subsidiary of Adventure Inc. (One of the leading publicly listed OTA in Japan) looking for a technically sound Backend / Sr. Backend Engineer based in Dhaka, Bangladesh, capable of developing projects related to the company`s web services. Successful applicants should have a minimum of 3 years of Backend Development experience in Java for a Backend Engineer Position and a minimum of 5+ years of Backend Development experience with the capability of managing a team of 3-5 members for a Senior Backend Engineer Position.\r\nThe Official Language of Adventure Dhaka Limited is English.\r\nJob Responsibilities\r\nDevelop back-end programming and logic in Java.\r\nWork on the Java project structure and provide ideas for best practices and project approaches.\r\nHelp with code reviews and sharing your expertise with other developers.\r\nWork within team circles on internal and external projects.\r\nAdvanced Skill in Java, Javascript, CSS, HTML, jQuery, Ajax, and BootStrap.\r\nYou will be responsible for developing/upgrading web-based projects as a team member or individual.\r\nFix bugs, troubleshoot, and resolve problems of existing or current projects.\r\nEmployment Status\r\nFull-time\r\n\r\nEducational Requirements\r\nBachelor of Science (BSc) in CSE, Bachelor degree in any discipline\r\nSkills Required: Ajax, Bootstrap, CSS, HTML, Java, JavaScript, jQuery\r\nExperience Requirements\r\nAt least 3 year(s)\r\nThe applicants should have experience in the following area(s):\r\nJava, Project Management, Software Development\r\nThe applicants should have experience in the following business area(s):\r\nIT Enabled Service\r\nAdditional Requirements\r\nAge 25 to 40 years\r\nBoth males and females are allowed to apply\r\nThe candidate must have solid ENGLISH COMMUNICATION skills.\r\nAbility to build and maintain positive relationships with colleagues.\r\nKnowledge of travel, tourism, and software development.\r\nExcellent communication skills in English and Bangla (speaking and writing).\r\nHardworking, passionate, Punctual & Time management.\r\nExcellent understanding of OOP and Design Patterns & Principles\r\nFrontend Development using ReactJS/Vue.js\r\nMySQL, Cloud Spanner, Redis Git, Backlog, Slack\r\nAnalytical skills and advanced arithmetic skills are required.\r\nThe quality-minded approach throughout the Software Development Life Cycle.\r\nApproaching very structured and systematic work.\r\nEnsuring the systems are functioning properly and helping the business run smoothly.\r\nResponsibilities for the deadline and quality of the services.\r\nKnowledge about front-end, Android(Java/Kotlin), iOS, Kotlin for Web, or PHP(Lavavel) technologies will consider a plus point.\r\nJob Location\r\nDhaka\r\n\r\nSalary\r\nNegotiable\r\nAn attractive remuneration package is offered to deserving candidates depending on their skills, abilities, and experiences.\r\nCompensation & Other Benefits\r\nWeekly 2 holidays, Insurance\r\nLunch Facilities: Full Subsidize\r\nSalary Review: Yearly\r\nFestival Bonus: 2\r\nFree Lunch, Tea, Coffee, Snacks for refreshment, a Contemporary Office environment with excellent colleagues, and significant professional development opportunities for all levels.', 'Information', 'Atik', '2023-05-15', 'Adventure Dhaka Limited, a subsidiary of Adventure Inc. (One of the leading publicly listed OTA in Japan) looking for a technically sound Backend / Sr. Backend Engineer based in Dhaka, Bangladesh, capable of developing projects related to the company`s web services. Successful applicants should have a minimum of 3 years of Backend Development experience in Java for a Backend Engineer Position and a minimum of 5+ years of Backend Development experience with the capability of managing a team of 3-5 members for a Senior Backend Engineer Position.\r\nThe Official Language of Adventure Dhaka Limited is English.', 2),
(13, 'Software Developer (Python-Django, React) ', 'Shodagor Express Ltd is one of the new age courier and parcel company thriving to become one of the best courier and logistics solution in Bangladesh. Our aim is to unlocking the best customer satisfaction and also connecting Bangladesh for courier regrading solution.Your primary role will be to develop, maintain, and enhance our systems using Python, Django React, and other related technologies. Apply now to contribute your expertise and help us deliver high-performance, reliable software solutions to our users!\r\nWorkplace: HQ.\r\nJob Responsibilities\r\nDevelop, maintain, and enhance software backend using Python and Django framework\r\nDevelop and maintain software front end using react js.\r\nCreate and manage efficient, reusable, and reliable code using object-oriented programming principles.\r\nDevelop and maintain RESTful APIs and implement their integration with front-end systems.\r\nWrite and manage database schemas, optimize query design, and ensure efficient data storage and retrieval.\r\nCollaborate with other developers and stakeholders in an Agile/Scrum environment.\r\nProvide assistance and support to other team members as needed.\r\nStay up-to-date with the latest industry trends and technologies to ensure the application remains current and competitive.\r\nEmployment Status\r\nFull-time\r\n\r\nEducational Requirements\r\nBSc/MSc degree in Computer Science, Engineering, or a related field (or equivalent experience).\r\nExperience Requirements\r\n2 to 5 year(s)\r\nAdditional Requirements\r\nBoth males and females are allowed to apply\r\n5 years of development experience, including at least 1 years with Python and Django and React.\r\nExpertise in object-oriented programming and design patterns\r\nStrong understanding of API coding and testing\r\nExpertise in database design, optimization, and management, with proficiency in various DBMS platforms.\r\nStrong problem-solving skills and the ability to work well in a team environment.\r\nExcellent written and verbal communication skills.\r\nJob Location\r\nDhaka\r\n\r\nSalary\r\nNegotiable\r\nCompetitive salary and benefits package Opportunities for professional growth and career.\r\nCompensation & Other Benefits\r\nT/A, Mobile bill\r\nSalary Review: Yearly\r\nFestival Bonus: 2', 'Networking', 'Atik', '2023-05-17', 'Shodagor Express Ltd is one of the new age courier and parcel company thriving to become one of the best courier and logistics solution in Bangladesh. Our aim is to unlocking the best customer satisfaction and also connecting Bangladesh for courier regrading solution.Your primary role will be to develop, maintain, and enhance our systems using Python, Django React, and other related technologies. Apply now to contribute your expertise and help us deliver high-performance, reliable software solutions to our users!\r\nWorkplace: HQ.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(2, 'Atik', 'Rahman', 'k6eirv@outlook.com', '$2y$10$rniNZp2tywoEQjElg7Xv/eG5ibFRTAj4IypviGJSwE.g.tIKVvaVG'),
(3, 'test', 'test', 'test@test.com', '$2y$10$ypVSKxkBmyE4qAU.TjjWTewI8VFhSV6hNfzzF3gQbt9luJEj./MEK'),
(4, 'test', 'test', 'test@gmail.com', '$2y$10$uyzNHUATEzicAbqnJbqhE.p5RowAVyDPld3xItbhRaaSjFyzzd3Bu'),
(5, 'Hasib', 'Islam', 'hasib@gmail.com', '$2y$10$e6LZ3VQ4DIfyEI5I7UWePuN1GQBzwO/YXQL5xgJ1fzlFxDrDZmJRq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
