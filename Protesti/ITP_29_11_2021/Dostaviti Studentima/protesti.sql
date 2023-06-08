-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 09:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protesti`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `country_id`, `name`) VALUES
(223, 27, 'Banovići'),
(224, 27, 'Banja Luka'),
(225, 27, 'Berkovići'),
(226, 27, 'Bihać'),
(227, 27, 'Bileća'),
(228, 27, 'Bijeljina'),
(229, 27, 'Bosanska Dubica'),
(230, 27, 'Bosanska Gradiška'),
(231, 27, 'Bosansko Grahovo'),
(232, 27, 'Bosanska Krupa'),
(233, 27, 'Bosanska Kostajnica'),
(234, 27, 'Bosanski Brod'),
(235, 27, 'Bosanski Novi'),
(236, 27, 'Bosanski Petrovac'),
(237, 27, 'Bosanski Šamac'),
(238, 27, 'Bratunac'),
(239, 27, 'Brčko'),
(240, 27, 'Breza'),
(241, 27, 'Bugojno'),
(242, 27, 'Busovača'),
(243, 27, 'Bužim'),
(244, 27, 'Cazin'),
(245, 27, 'Čajniče'),
(246, 27, 'Čapljina'),
(247, 27, 'Čelić'),
(248, 27, 'Čitluk'),
(249, 27, 'Čelinac'),
(250, 27, 'Doboj'),
(251, 27, 'Dobretići'),
(252, 27, 'Domaljevac'),
(253, 27, 'Donji Vakuf'),
(254, 27, 'Drvar'),
(255, 27, 'Derventa'),
(256, 27, 'Foča'),
(257, 27, 'Fojnica'),
(258, 27, 'Gacko'),
(259, 27, 'Glamoč'),
(260, 27, 'Gračanica'),
(261, 27, 'Gradačac'),
(262, 27, 'Grude'),
(263, 27, 'Goražde'),
(264, 27, 'Gornji Vakuf-Uskoplje'),
(265, 27, 'Ilijaš'),
(266, 27, 'Jablanica'),
(267, 27, 'Jajce'),
(268, 27, 'Kakanj'),
(269, 27, 'Kalesija'),
(270, 27, 'Kalinovik'),
(271, 27, 'Kiseljak'),
(272, 27, 'Kladanj'),
(273, 27, 'Ključ'),
(274, 27, 'Konjic'),
(275, 27, 'Kotor-Varoš'),
(276, 27, 'Kreševo'),
(277, 27, 'Kupres'),
(278, 27, 'Laktaši'),
(279, 27, 'Livno'),
(280, 27, 'Lukavac'),
(281, 27, 'Lopare'),
(282, 27, 'Ljubinje'),
(283, 27, 'Ljubuški'),
(284, 27, 'Maglaj'),
(285, 27, 'Milići'),
(286, 27, 'Modriča'),
(287, 27, 'Mostar'),
(288, 27, 'Mrkonjić Grad'),
(289, 27, 'Neum'),
(290, 27, 'Nevesinje'),
(291, 27, 'Novi Travnik'),
(292, 27, 'Odžak'),
(293, 27, 'Olovo'),
(294, 27, 'Orašje'),
(295, 27, 'Pale'),
(296, 27, 'Posušje'),
(297, 27, 'Prozor-Rama'),
(298, 27, 'Pale-Prača'),
(299, 27, 'Prijedor'),
(300, 27, 'Prnjavor'),
(301, 27, 'Ravno'),
(302, 27, 'Rogatica'),
(303, 27, 'Rudo'),
(304, 27, 'Sanski Most'),
(305, 27, 'Sapna'),
(306, 27, 'Sarajevo'),
(307, 27, 'Skender Vakuf'),
(308, 27, 'Sokolac'),
(309, 27, 'Srbac'),
(310, 27, 'Srebrenica'),
(311, 27, 'Srebrenik'),
(312, 27, 'Stanari'),
(313, 27, 'Stolac'),
(314, 27, 'Šipovo'),
(315, 27, 'Široki Brijeg'),
(316, 27, 'Teočak'),
(317, 27, 'Teslić'),
(318, 27, 'Tešanj'),
(319, 27, 'Tomislavgrad'),
(320, 27, 'Travnik'),
(321, 27, 'Trebinje'),
(322, 27, 'Tuzla'),
(323, 27, 'Vareš'),
(324, 27, 'Velika Kladuša'),
(325, 27, 'Visoko'),
(326, 27, 'Višegrad'),
(327, 27, 'Vitez'),
(328, 27, 'Vogošća'),
(329, 27, 'Vlasenica'),
(330, 27, 'Zavidovići'),
(331, 27, 'Zenica'),
(332, 27, 'Zvornik'),
(333, 27, 'Žepče'),
(334, 27, 'Živinice'),
(335, 193, 'Београд'),
(336, 193, 'Нови Сад'),
(337, 193, 'Ниш'),
(338, 193, 'Крагујевац'),
(339, 193, 'Приштина'),
(340, 193, 'Суботица'),
(341, 193, 'Зрењанин'),
(342, 193, 'Панчево'),
(343, 193, 'Чачак'),
(344, 193, 'Крушевац'),
(345, 193, 'Краљево'),
(346, 193, 'Нови Пазар'),
(347, 193, 'Смедерево'),
(348, 193, 'Лесковац'),
(349, 193, 'Ужице'),
(350, 193, 'Врање'),
(351, 193, 'Ваљево'),
(352, 193, 'Шабац'),
(353, 193, 'Сомбор'),
(354, 193, 'Пожаревац'),
(355, 193, 'Пирот'),
(356, 193, 'Зајечар'),
(357, 193, 'Кикинда'),
(358, 193, 'Сремска Митровица'),
(359, 193, 'Јагодина'),
(360, 193, 'Вршац'),
(361, 193, 'Бор'),
(362, 193, 'Прокупље'),
(363, 193, 'Лозница'),
(364, 148, 'Подгорица'),
(365, 148, 'Никшић'),
(366, 148, 'Пљевља'),
(367, 148, 'Бијело Поље'),
(368, 148, 'Цетиње'),
(369, 148, 'Бар'),
(370, 148, 'Херцег Нови'),
(371, 148, 'Беране'),
(372, 148, 'Будва'),
(373, 148, 'Улцињ'),
(374, 148, 'Тиват'),
(375, 148, 'Рожаје'),
(376, 148, 'Котор'),
(377, 148, 'Даниловград'),
(378, 148, 'Мојковац'),
(379, 148, 'Плав'),
(380, 148, 'Колашин'),
(381, 148, 'Жабљак'),
(382, 148, 'Плужине'),
(383, 148, 'Андријевица'),
(384, 148, 'Шавник');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `protests`
--

CREATE TABLE `protests` (
  `protest_id` int(11) NOT NULL,
  `organizer` varchar(200) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `participiants_number` int(11) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protests`
--
ALTER TABLE `protests`
  ADD PRIMARY KEY (`protest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `protests`
--
ALTER TABLE `protests`
  MODIFY `protest_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
