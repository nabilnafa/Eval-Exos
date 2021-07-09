-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 07 juil. 2021 à 16:28
-- Version du serveur :  8.0.25-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gescom_struct`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int UNSIGNED NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_parent_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_parent_id`) VALUES
(1, 'Ultricies Inc.', 1),
(2, 'Nullam Lobortis Industries', 2),
(3, 'Eu Neque Industries', 3),
(4, 'Vitae Dolor LLP', 4),
(5, 'Consequat Lectus Sit Ltd', 5),
(6, 'Semper Auctor Ltd', 6),
(7, 'Gravida Industries', 7),
(8, 'Vel LLC', 8),
(9, 'Pellentesque A Facilisis Inc.', 9),
(10, 'Faucibus Incorporated', 10),
(11, 'Nibh Foundation', 11),
(12, 'Semper Pretium Neque Corporation', 12),
(13, 'Nullam Velit Dui Associates', 13),
(14, 'A Auctor Inc.', 14),
(15, 'Nunc Inc.', 15),
(16, 'Sociis Natoque Company', 16),
(17, 'Donec Tincidunt Consulting', 17),
(18, 'Euismod Institute', 18),
(19, 'Pretium Neque LLC', 19),
(20, 'Molestie Ltd', 20),
(21, 'A Neque Nullam Corporation', 21),
(22, 'Ornare Lectus PC', 22),
(23, 'Orci Ut Company', 23),
(24, 'Molestie Foundation', 24),
(25, 'Eu Ultrices Sit Limited', 25),
(26, 'Arcu Foundation', 26),
(27, 'Justo Praesent Luctus PC', 27),
(28, 'Ridiculus Mus Aenean Ltd', 28),
(29, 'Nascetur Ridiculus Mus Incorporated', 29),
(30, 'Lobortis Mauris Inc.', 30),
(31, 'Cras Corporation', 31),
(32, 'Cras Dictum LLC', 32),
(33, 'Libero Nec Incorporated', 33),
(34, 'Purus Maecenas Incorporated', 34),
(35, 'Mauris Sit Inc.', 35),
(36, 'Donec Est Nunc Corporation', 36),
(37, 'Id Erat Ltd', 37),
(38, 'Imperdiet Erat Incorporated', 38),
(39, 'Consectetuer Euismod Institute', 39),
(40, 'Hymenaeos Mauris Ut Company', 40),
(41, 'Sit Amet Limited', 41),
(42, 'Mollis Vitae Incorporated', 42),
(43, 'Vehicula Industries', 43),
(44, 'Et Limited', 44),
(45, 'Varius Nam LLP', 45),
(46, 'Id Consulting', 46),
(47, 'Molestie In Limited', 47),
(48, 'Tellus Lorem LLC', 48),
(49, 'Enim Mauris Corp.', 49),
(50, 'Consequat Auctor Institute', 50),
(51, 'Nam PC', 51),
(52, 'Ut Tincidunt Associates', 52),
(53, 'Id Inc.', 53),
(54, 'Nullam Enim Inc.', 54),
(55, 'Ultricies Ornare Elit LLP', 55),
(56, 'Sit Amet Risus PC', 56),
(57, 'Semper Rutrum Fusce Corp.', 57),
(58, 'Condimentum Eget LLP', 58),
(59, 'Vitae Industries', 59),
(60, 'Tellus Lorem Limited', 60),
(61, 'Dui Nec Urna PC', 61),
(62, 'Tincidunt Dui Inc.', 62),
(63, 'Fermentum Convallis PC', 63),
(64, 'Vitae Sodales Nisi Corp.', 64),
(65, 'Pede Foundation', 65),
(66, 'Metus Aliquam Erat Ltd', 66),
(67, 'Proin Mi Corp.', 67),
(68, 'Nulla Eu Corp.', 68),
(69, 'Ac Company', 69),
(70, 'Imperdiet Company', 70),
(71, 'Turpis In Condimentum Associates', 71),
(72, 'Amet Dapibus Id PC', 72),
(73, 'Adipiscing Ltd', 73),
(74, 'Nostra Per LLP', 74),
(75, 'Curabitur Consulting', 75),
(76, 'Feugiat Sed Ltd', 76),
(77, 'Pretium Institute', 77),
(78, 'Dolor Vitae Dolor LLC', 78),
(79, 'Amet Ante Vivamus Company', 79),
(80, 'Luctus Sit Institute', 80),
(81, 'Orci Luctus Et LLP', 81),
(82, 'At Fringilla Inc.', 82),
(83, 'Ornare Foundation', 83),
(84, 'Amet Consectetuer Ltd', 84),
(85, 'Tempus LLP', 85),
(86, 'Proin Institute', 86),
(87, 'Curabitur Ltd', 87),
(88, 'Turpis Nec Industries', 88),
(89, 'Varius Corporation', 89),
(90, 'Et Inc.', 90),
(91, 'Cursus Ltd', 91),
(92, 'Eleifend Industries', 92),
(93, 'Non Lorem Vitae Institute', 93),
(94, 'Mollis Non Ltd', 94),
(95, 'Neque Morbi Quis Associates', 95),
(96, 'Dapibus Id Blandit Ltd', 96),
(97, 'Et Euismod Et Industries', 97),
(98, 'Accumsan Foundation', 98),
(99, 'Non Cursus Non Corp.', 99),
(100, 'Ornare Libero At LLP', 100);

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `cou_id` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cou_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int UNSIGNED NOT NULL,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_address` varchar(150) NOT NULL,
  `cus_zipcode` varchar(5) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_countries_id` char(2) NOT NULL,
  `cus_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cus_phone` int UNSIGNED NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries_id`, `cus_mail`, `cus_phone`, `cus_password`, `cus_add_date`, `cus_update_date`) VALUES
(1, 'Wayne', 'Halee', '244-9516 Ipsum. Avenue', '39464', 'Villingen-Schwenningen', 'DN', 'Integer.mollis.Integer@primis.co.uk', 1241474092, 'ODZ85SER0WQ', '2020-08-15 00:00:00', '2020-04-29 00:00:00'),
(2, 'Steven', 'Kim', '706-8467 Integer St.', '55420', 'Spermalie', 'QE', 'egestas.Aliquam.fringilla@pharetraQuisque.org', 1691007301, 'PBR31KWR5CB', '2017-07-27 00:00:00', '2020-10-03 00:00:00'),
(3, 'Rhea', 'Wendy', '911-8453 Magna. Rd.', '53818', 'Vichte', 'NA', 'sed.tortor@odiovelest.co.uk', 1191617515, 'RMF51MDP1FV', '2015-04-26 00:00:00', '2020-08-20 00:00:00'),
(4, 'Rafael', 'Zenaida', 'Ap #453-6171 Consectetuer Rd.', '26537', 'Tame', 'PT', 'viverra@anteiaculis.org', 1675363879, 'RNJ96EHQ1YD', '2012-07-02 00:00:00', '2020-03-11 00:00:00'),
(5, 'John', 'Thane', '546-2717 Orci St.', '66586', 'Warspite', 'IO', 'morbi@Morbi.com', 1586377401, 'RQV11ZPC2VS', '2012-10-30 00:00:00', '2020-05-03 00:00:00'),
(6, 'Nora', 'Prescott', '9858 Amet Rd.', '66677', 'Llanquihue', 'QU', 'tristique.pellentesque@cursus.co.uk', 1335816127, 'CXZ37LWD9MW', '2018-09-20 00:00:00', '2020-01-28 00:00:00'),
(7, 'Aurora', 'Wing', '9216 Dictum Av.', '63280', 'Dollard-des-Ormeaux', 'PZ', 'hendrerit.id.ante@lobortisauguescelerisque.net', 1904132284, 'WKW96QOM1BO', '2020-12-19 00:00:00', '2020-03-27 00:00:00'),
(8, 'Reece', 'Paki', 'P.O. Box 149, 3968 In, Rd.', '40766', 'Notre-Dame-de-la-Salette', 'YO', 'a.dui.Cras@orci.edu', 1378473776, 'PSE42HBQ0RI', '2016-03-02 00:00:00', '2020-08-31 00:00:00'),
(9, 'Quyn', 'Damian', 'Ap #784-5610 Gravida. Av.', '44751', 'Cariboo Regional District', 'VG', 'Mauris.quis.turpis@temporaugueac.org', 1297097696, 'FFS39UFI3HO', '2014-02-10 00:00:00', '2020-12-21 00:00:00'),
(10, 'Kelly', 'Hadley', '9039 Aenean Rd.', '14331', 'Şanlıurfa', 'JZ', 'orci.luctus@magnisdisparturient.co.uk', 1367215732, 'DMO96AAT3RK', '2019-11-30 00:00:00', '2020-10-01 00:00:00'),
(11, 'Tanisha', 'Deacon', '2617 Lorem Rd.', '73422', 'Gallodoro', 'HU', 'at.arcu.Vestibulum@Nulla.net', 1123937599, 'PBT60HQF6NQ', '2014-03-20 00:00:00', '2020-09-10 00:00:00'),
(12, 'Anjolie', 'Keelie', 'Ap #608-3718 Nibh. Street', '20764', 'Lacombe County', 'YU', 'Nunc@urnaconvallis.org', 1817717861, 'KHL78TIO0NF', '2015-05-16 00:00:00', '2020-07-12 00:00:00'),
(13, 'Beatrice', 'Yen', 'P.O. Box 261, 7069 Fringilla Avenue', '64070', 'Osorno', 'MT', 'non.sollicitudin@scelerisquedui.org', 1224316864, 'RHV27NGY4XM', '2017-04-18 00:00:00', '2020-11-11 00:00:00'),
(14, 'Shad', 'Yoshi', 'Ap #651-5400 Gravida St.', '22175', 'Huaral', 'ER', 'Suspendisse@nec.ca', 1349359517, 'ZNN61MCG7TD', '2017-08-18 00:00:00', '2020-04-26 00:00:00'),
(15, 'Thaddeus', 'Nita', 'P.O. Box 425, 8246 Convallis St.', '16963', 'Monte San Giovanni in Sabina', 'TZ', 'sapien.imperdiet@in.co.uk', 1707357642, 'OSH17VFT9LX', '2014-12-27 00:00:00', '2020-04-06 00:00:00'),
(16, 'Addison', 'Juliet', '496-4975 Magna. St.', '99321', 'Bath', 'NG', 'ultrices@lectus.net', 1192929702, 'UVK27KJD2RX', '2019-10-26 00:00:00', '2020-09-07 00:00:00'),
(17, 'Hedy', 'Angelica', 'P.O. Box 244, 7428 Quisque Rd.', '46743', 'Lac La Biche County', 'GE', 'lorem@Crasdolor.org', 1740933966, 'ZFW11EBH8PO', '2020-11-27 00:00:00', '2020-09-13 00:00:00'),
(18, 'Kylynn', 'Laith', '483-9218 Mauris Avenue', '54771', 'Bollnäs', 'PE', 'Integer@et.edu', 1497393105, 'YPM80XUX8QF', '2020-03-30 00:00:00', '2020-02-04 00:00:00'),
(19, 'Beau', 'Sade', '8599 Netus Street', '57200', 'Opdorp', 'WT', 'risus@sociisnatoquepenatibus.ca', 1619893701, 'DJU06GSV7OI', '2015-10-10 00:00:00', '2020-08-16 00:00:00'),
(20, 'Cheyenne', 'Macon', 'Ap #702-3586 Nulla Avenue', '36957', 'Beuzet', 'JF', 'Nulla.dignissim.Maecenas@sagittisDuis.org', 1761023444, 'DIG98QAI5ZQ', '2018-03-30 00:00:00', '2020-09-09 00:00:00'),
(21, 'Shana', 'Matthew', 'P.O. Box 148, 2694 Montes, Avenue', '74683', 'San Felice a Cancello', 'AM', 'eleifend@amalesuadaid.edu', 1814604762, 'IKR35PRZ1MV', '2018-07-13 00:00:00', '2020-06-24 00:00:00'),
(22, 'Nolan', 'Karen', '850-7019 Rhoncus. St.', '15101', 'Hull', 'VC', 'mus@Proin.org', 1792448606, 'CEW38VJR4GL', '2015-05-31 00:00:00', '2020-12-01 00:00:00'),
(23, 'Bruno', 'Todd', '9216 Pellentesque Av.', '97828', 'Saint-Dié-des-Vosges', 'XQ', 'est.mauris.rhoncus@ProinvelitSed.ca', 1428593148, 'QTO98ADO1RQ', '2012-08-25 00:00:00', '2020-09-03 00:00:00'),
(24, 'Eaton', 'Echo', '795 Lectus Rd.', '19429', 'Sunset Point', 'SB', 'Proin.ultrices@anteipsum.org', 1862895183, 'UUX65POV1LN', '2019-04-25 00:00:00', '2020-05-04 00:00:00'),
(25, 'Sophia', 'Jerome', 'P.O. Box 890, 8580 Justo St.', '65551', 'Fulda', 'UO', 'posuere@lorem.ca', 1378830057, 'OFP22RNU7PZ', '2011-09-01 00:00:00', '2020-07-01 00:00:00'),
(26, 'Nita', 'Lionel', 'Ap #609-824 Egestas Rd.', '26734', 'Weesp', 'FU', 'lacus.Quisque.imperdiet@dapibusgravidaAliquam.com', 1138432483, 'PDB46QUL0VX', '2015-09-02 00:00:00', '2020-06-16 00:00:00'),
(27, 'Nelle', 'Hilel', 'P.O. Box 215, 4192 Nulla Street', '97164', 'Chestermere', 'HL', 'non@nunc.net', 1417073213, 'LIX87TRX9PB', '2012-04-16 00:00:00', '2020-03-20 00:00:00'),
(28, 'Bert', 'Levi', '591-189 In St.', '72819', 'Mazy', 'SL', 'orci.tincidunt.adipiscing@Aenean.net', 1907304721, 'VTK30YZJ9NP', '2018-02-01 00:00:00', '2020-06-10 00:00:00'),
(29, 'Cadman', 'Jamalia', '921-294 Enim Rd.', '50894', 'Gelbressee', 'RB', 'nisl@netusetmalesuada.org', 1580574309, 'CQU26BJL6LV', '2012-10-02 00:00:00', '2020-04-21 00:00:00'),
(30, 'Carson', 'Karleigh', 'Ap #721-5988 Quisque Avenue', '75576', 'Bras', 'LN', 'a.feugiat.tellus@penatibusetmagnis.co.uk', 1447850744, 'GZN81LMJ9SA', '2018-02-02 00:00:00', '2020-06-26 00:00:00'),
(31, 'Caldwell', 'Theodore', 'Ap #600-2108 Interdum St.', '39641', 'Halesowen', 'SP', 'Mauris.blandit@aliquet.com', 1794354068, 'NPG94ESL7LG', '2016-02-16 00:00:00', '2020-01-10 00:00:00'),
(32, 'Bo', 'Alexander', 'P.O. Box 486, 8442 Ultricies Ave', '44201', 'Barra do Corda', 'TK', 'aptent.taciti.sociosqu@penatibuset.edu', 1681771110, 'NKG92MLQ7RG', '2016-03-12 00:00:00', '2020-11-09 00:00:00'),
(33, 'Zia', 'Eliana', 'Ap #798-9956 Orci Road', '21357', 'Vereya', 'AS', 'metus.In@quis.org', 1288571581, 'RMI65CDG1ZP', '2017-04-10 00:00:00', '2020-03-15 00:00:00'),
(34, 'Castor', 'Dante', '7920 Diam Ave', '23583', 'Peterhead', 'DK', 'lacus@fringilla.co.uk', 1174434212, 'HEH34ZEJ5ET', '2013-02-24 00:00:00', '2020-01-22 00:00:00'),
(35, 'Mercedes', 'Eleanor', 'Ap #324-1732 Rhoncus. St.', '25086', 'Onega', 'UE', 'pharetra@acorci.org', 1934950528, 'MYT55DKH4XM', '2012-11-17 00:00:00', '2020-09-19 00:00:00'),
(36, 'Dieter', 'Otto', 'Ap #629-4054 Imperdiet Rd.', '75367', 'Leipzig', 'PS', 'Morbi@nulla.org', 1936562021, 'TVJ35LWU0SD', '2016-05-11 00:00:00', '2020-10-08 00:00:00'),
(37, 'Devin', 'Amela', '932-3132 Ac St.', '46379', 'Casalbuono', 'TE', 'pede.ac.urna@aodio.co.uk', 1223091800, 'TYA75JFI9IB', '2020-02-09 00:00:00', '2020-10-28 00:00:00'),
(38, 'Jasmine', 'Juliet', 'P.O. Box 370, 4454 Mi Av.', '90941', 'Inuvik', 'KW', 'feugiat@Phasellus.net', 1711327247, 'YMT53CDZ7BJ', '2020-04-27 00:00:00', '2020-03-18 00:00:00'),
(39, 'Virginia', 'Riley', '4889 Non Ave', '69357', 'Kortrijk', 'PO', 'nisi.Cum@ligula.edu', 1500601214, 'YJL46KMH2KO', '2017-09-05 00:00:00', '2020-07-21 00:00:00'),
(40, 'Lev', 'Jamal', '501-3652 Erat. Rd.', '63825', 'Whitby', 'BU', 'Proin.eget.odio@quamvel.org', 1246315687, 'TAL30VMD7KZ', '2013-03-21 00:00:00', '2020-06-11 00:00:00'),
(41, 'Nicholas', 'Leandra', '451-6634 Ligula Road', '48903', 'Brucargo', 'SQ', 'lectus.a@musAeneaneget.com', 1898864102, 'QZU31BNL7ES', '2012-02-25 00:00:00', '2020-07-09 00:00:00'),
(42, 'Remedios', 'Avye', 'P.O. Box 126, 4084 Egestas. St.', '42639', 'Katsina', 'JN', 'imperdiet.ullamcorper@idenim.ca', 1694006540, 'TKT21LVK0OQ', '2019-04-16 00:00:00', '2020-07-07 00:00:00'),
(43, 'Arthur', 'Amaya', '2864 Pede Rd.', '89033', 'Corte Brugnatella', 'TN', 'libero.dui.nec@atiaculis.ca', 1501822602, 'ZMX55IQX1TZ', '2015-10-21 00:00:00', '2020-10-04 00:00:00'),
(44, 'Velma', 'Hakeem', 'P.O. Box 632, 2461 Nibh St.', '13761', 'Hisar', 'TA', 'urna.justo@pedesagittisaugue.com', 1454183422, 'BIZ94RKE8IX', '2020-11-07 00:00:00', '2020-09-25 00:00:00'),
(45, 'Zephania', 'William', '8606 Conubia Rd.', '31245', 'Hondelange', 'XC', 'magna.a.tortor@Donectempor.com', 1617293442, 'RRO25GNA1CI', '2019-03-14 00:00:00', '2020-01-08 00:00:00'),
(46, 'Chadwick', 'Alma', 'P.O. Box 404, 8357 Pede, Avenue', '33218', 'Acapulco', 'IW', 'aliquet.sem.ut@placerateget.net', 1812148325, 'UFV23KMS5FC', '2011-11-16 00:00:00', '2020-10-12 00:00:00'),
(47, 'Arsenio', 'Aiko', '4022 Suspendisse Street', '26720', 'Heusden', 'CJ', 'ridiculus.mus@porttitorscelerisque.edu', 1371839913, 'HLY49LEN4XH', '2012-11-22 00:00:00', '2020-12-28 00:00:00'),
(48, 'Flavia', 'Robin', 'Ap #124-2573 Euismod St.', '49296', 'Vegreville', 'UG', 'Suspendisse.sed.dolor@ultrices.com', 1154535803, 'EBR68ZRR1MM', '2016-01-17 00:00:00', '2020-01-30 00:00:00'),
(49, 'Zachery', 'Timothy', '300-2948 Est, Ave', '67184', 'Bergen op Zoom', 'XU', 'diam@egetmagna.ca', 1411491176, 'ZBW41NBM1RL', '2011-10-10 00:00:00', '2020-04-14 00:00:00'),
(50, 'Kenneth', 'Charles', '900-1257 Lacus. Rd.', '15661', 'Rio de Janeiro', 'VP', 'eget.ipsum.Suspendisse@elitAliquamauctor.co.uk', 1560044570, 'SRD82JUW2OM', '2013-04-05 00:00:00', '2020-01-14 00:00:00'),
(51, 'Karen', 'Benedict', '494 Adipiscing Av.', '57293', 'Smoky Lake', 'KV', 'at.lacus.Quisque@liberomauris.co.uk', 1676808002, 'KTP04BOR8JT', '2020-08-08 00:00:00', '2020-09-19 00:00:00'),
(52, 'Knox', 'Rogan', 'P.O. Box 426, 3609 Cubilia Rd.', '75397', 'Aydın', 'PA', 'metus.Aenean.sed@nec.net', 1136759206, 'KTE29AWJ6KN', '2018-12-06 00:00:00', '2020-05-28 00:00:00'),
(53, 'Freya', 'Finn', '851-2486 Augue Road', '44334', 'Scarborough', 'RN', 'euismod@ipsum.net', 1163454802, 'HLL07JXQ3RO', '2015-10-02 00:00:00', '2020-06-11 00:00:00'),
(54, 'Flynn', 'Bell', '991-1817 Sociis St.', '63022', 'Las Cabras', 'DW', 'conubia.nostra.per@tortorat.net', 1677286529, 'YXK76GQA3QN', '2018-10-13 00:00:00', '2020-06-08 00:00:00'),
(55, 'Rina', 'Isabelle', '6332 Feugiat Av.', '63074', 'Busso', 'VA', 'convallis.dolor.Quisque@nuncnullavulputate.co.uk', 1934102836, 'XDA93HLG6KT', '2020-02-14 00:00:00', '2020-08-20 00:00:00'),
(56, 'Perry', 'Travis', '276-5604 Praesent Rd.', '44207', 'Mespelare', 'PY', 'cursus@inhendreritconsectetuer.co.uk', 1609015704, 'SFI40NQG1QY', '2014-05-22 00:00:00', '2020-02-11 00:00:00'),
(57, 'Leroy', 'Ferdinand', '2752 Massa. Rd.', '61667', 'Qambar Shahdadkot', 'ZX', 'ut@estMauriseu.net', 1278304385, 'TRD77ZNY1AD', '2018-05-04 00:00:00', '2020-10-04 00:00:00'),
(58, 'Dillon', 'Joshua', 'Ap #598-4451 Lobortis Rd.', '83086', 'Cuceglio', 'CM', 'dui@rhoncusid.org', 1985730048, 'TQB81JHT5MW', '2017-09-12 00:00:00', '2020-10-16 00:00:00'),
(59, 'Sarah', 'Lane', 'P.O. Box 155, 4337 Ullamcorper Road', '83359', 'Ozyorsk', 'VE', 'arcu.et@eu.co.uk', 1717683687, 'SQN21KUF7KP', '2016-02-07 00:00:00', '2020-06-28 00:00:00'),
(60, 'Chelsea', 'Rooney', 'Ap #352-3894 Feugiat Ave', '32352', 'Mattersburg', 'YX', 'ut.erat@nislarcu.co.uk', 1912321743, 'OLU86FWX3XR', '2015-12-19 00:00:00', '2020-07-25 00:00:00'),
(61, 'Guy', 'Lara', '2117 Interdum Rd.', '34586', 'Lichfield', 'DQ', 'mi@est.com', 1228616467, 'VGH00FTF5NO', '2019-02-02 00:00:00', '2020-07-02 00:00:00'),
(62, 'Dorian', 'Lynn', '5319 Dolor Rd.', '32506', 'Norrköping', 'DC', 'imperdiet.ornare.In@consequat.co.uk', 1889344429, 'FSW93BUE9JB', '2013-12-24 00:00:00', '2020-10-29 00:00:00'),
(63, 'Oliver', 'Ronan', '843-8677 Egestas, Avenue', '63147', 'Saint-Mard', 'GD', 'Donec.tincidunt.Donec@augue.ca', 1196456997, 'FNF00FUS6BS', '2015-03-03 00:00:00', '2020-08-18 00:00:00'),
(64, 'Kane', 'Kirestin', '208-308 Egestas. Ave', '43215', 'Zaffelare', 'XE', 'purus.sapien.gravida@tincidunt.ca', 1940554144, 'BEY78HDB4MG', '2014-08-30 00:00:00', '2020-07-07 00:00:00'),
(65, 'Beverly', 'Nigel', '5230 Egestas. St.', '44502', 'Cantley', 'PB', 'Donec.tempus.lorem@ametante.co.uk', 1668038975, 'LZN62YYM5RG', '2016-04-26 00:00:00', '2020-12-03 00:00:00'),
(66, 'Garth', 'Iona', 'Ap #750-6978 Felis. Avenue', '99204', 'Bhubaneswar', 'HJ', 'vel.convallis@egestasblandit.ca', 1658228708, 'NBK32NWQ7RD', '2017-08-12 00:00:00', '2020-11-18 00:00:00'),
(67, 'Jarrod', 'Armand', '556-989 Quisque Rd.', '36174', 'Whangarei', 'RW', 'Aliquam.nec@sed.ca', 1256461842, 'VJV85YTK3JJ', '2013-12-25 00:00:00', '2020-04-18 00:00:00'),
(68, 'Patricia', 'Wilma', 'Ap #713-3124 A, Av.', '46032', 'Peumo', 'RL', 'elit@sociosquadlitora.net', 1291613142, 'WJP90SPB1EA', '2012-01-22 00:00:00', '2020-05-14 00:00:00'),
(69, 'Calista', 'Branden', '5867 Consequat, Rd.', '24330', 'Zandhoven', 'MF', 'tempor.bibendum.Donec@ridiculus.edu', 1264140734, 'ZJO16ERC4VD', '2012-07-08 00:00:00', '2020-04-15 00:00:00'),
(70, 'Violet', 'Erin', 'P.O. Box 795, 4158 Est Av.', '60143', 'Istanbul', 'HL', 'molestie@inconsectetueripsum.co.uk', 1114095493, 'ZQM73QVU8UA', '2013-08-28 00:00:00', '2020-08-09 00:00:00'),
(71, 'Vivien', 'Blythe', 'Ap #931-7609 Enim. Street', '74411', 'North Barrackpur', 'VS', 'nibh.dolor.nonummy@laoreetipsum.edu', 1964498819, 'FPM70YLB3KN', '2015-12-14 00:00:00', '2020-03-29 00:00:00'),
(72, 'Ivory', 'Duncan', '282-5675 Congue Avenue', '31258', 'Springfield', 'VL', 'non.massa.non@eteuismodet.ca', 1284446986, 'EWR92NXR6GQ', '2012-03-25 00:00:00', '2020-07-24 00:00:00'),
(73, 'Harriet', 'Emerson', '6655 Orci. Rd.', '41234', 'Pemberton', 'CY', 'Proin.eget.odio@vehicularisusNulla.com', 1560931529, 'MLY86VPP3MH', '2013-07-15 00:00:00', '2020-03-24 00:00:00'),
(74, 'Noelani', 'Lisandra', 'Ap #731-7244 Conubia Av.', '95578', 'Vandoeuvre-lès-Nancy', 'QT', 'luctus.et.ultrices@nullaInteger.co.uk', 1239357427, 'VAN43WPJ3UB', '2016-10-09 00:00:00', '2020-04-26 00:00:00'),
(75, 'Charles', 'Samson', '933-4116 Sagittis. Ave', '29058', 'Pilibhit', 'BT', 'dis.parturient@et.edu', 1348338231, 'BWN82OCA3VN', '2012-05-26 00:00:00', '2020-07-25 00:00:00'),
(76, 'Beck', 'Derek', 'P.O. Box 974, 1881 Consectetuer Rd.', '32305', 'Bolinne', 'AT', 'Duis.sit.amet@eleifendCras.org', 1137065765, 'XUE07MVB2QI', '2018-01-15 00:00:00', '2020-08-23 00:00:00'),
(77, 'Travis', 'Phillip', 'P.O. Box 663, 1067 Egestas. Street', '40789', 'Schwechat', 'KZ', 'risus.a@ridiculus.co.uk', 1458280067, 'ZXA80SCR0ZR', '2017-04-28 00:00:00', '2020-08-15 00:00:00'),
(78, 'Jeanette', 'Jarrod', '436-4551 Nunc Ave', '58528', 'Roxboro', 'GR', 'ullamcorper.viverra@elit.edu', 1856605771, 'IHA52LMM5ZZ', '2018-09-29 00:00:00', '2020-09-09 00:00:00'),
(79, 'Wendy', 'Axel', '4982 Mauris St.', '81387', 'Hermosillo', 'AS', 'Sed.nulla@egetvenenatis.com', 1242850518, 'EXR82DSH4OQ', '2014-08-12 00:00:00', '2020-04-24 00:00:00'),
(80, 'Kaden', 'Quintessa', 'Ap #160-7924 Enim. Rd.', '34245', 'Acquafredda', 'SS', 'Donec.feugiat@nisinibhlacinia.edu', 1295397765, 'QGW10RYN2NW', '2017-09-20 00:00:00', '2020-01-20 00:00:00'),
(81, 'Julian', 'Fulton', '3804 Interdum Rd.', '50448', 'Valle del Guamuez', 'CC', 'Quisque.purus.sapien@auctornunc.net', 1443852116, 'BLJ14UTN0TI', '2014-01-30 00:00:00', '2020-02-14 00:00:00'),
(82, 'Macey', 'Kadeem', '345-6089 Lorem St.', '43340', 'Bear', 'DE', 'sem@vehiculaaliquet.edu', 1679741924, 'CVS05TTZ3WC', '2013-07-09 00:00:00', '2020-08-03 00:00:00'),
(83, 'Keane', 'Len', '913-2832 Non St.', '29452', 'Snellegem', 'VX', 'imperdiet@nondui.edu', 1937439264, 'WZQ84RJE7DN', '2018-12-13 00:00:00', '2020-03-19 00:00:00'),
(84, 'Erica', 'Ori', '804-243 Augue. Street', '20692', 'Norfolk County', 'WI', 'Sed.nunc@maurisInteger.co.uk', 1848077459, 'LQH24LHS3FN', '2012-12-04 00:00:00', '2020-11-05 00:00:00'),
(85, 'Serina', 'Myra', '8013 Id, Avenue', '98019', 'Tilly', 'AE', 'Vivamus.nisi.Mauris@maurisrhoncus.edu', 1788183654, 'MEX07XXL1XZ', '2014-10-31 00:00:00', '2020-10-16 00:00:00'),
(86, 'Naida', 'Clarke', '8068 Molestie Av.', '68282', 'San Felipe', 'AS', 'odio.semper.cursus@ornareelitelit.org', 1899254269, 'GHM53SIP3MK', '2014-07-22 00:00:00', '2020-06-29 00:00:00'),
(87, 'Paki', 'Burton', 'Ap #524-2677 Vel St.', '24616', 'Louisville', 'ID', 'penatibus.et.magnis@quistristiqueac.org', 1593556364, 'OCC86JEB0GX', '2011-12-02 00:00:00', '2020-01-08 00:00:00'),
(88, 'Eugenia', 'Stella', '769-8127 Mattis St.', '59011', 'Finspång', 'PO', 'euismod.ac@lacus.edu', 1142029760, 'AJZ27BJV0TY', '2017-07-19 00:00:00', '2020-11-10 00:00:00'),
(89, 'Fitzgerald', 'Rhona', '784-284 Senectus Street', '85866', 'Wah', 'WZ', 'Sed.nulla.ante@doloregestasrhoncus.co.uk', 1179868867, 'JVE11IXN2VB', '2011-08-07 00:00:00', '2020-07-28 00:00:00'),
(90, 'Burke', 'Felicia', 'P.O. Box 267, 3429 Aliquam Street', '53161', 'Viano', 'QN', 'Proin.ultrices.Duis@etmagnis.org', 1344086165, 'QUO79HTY1GW', '2014-06-02 00:00:00', '2020-08-03 00:00:00'),
(91, 'Odysseus', 'Whoopi', 'P.O. Box 966, 325 Erat, St.', '80746', 'Hull', 'PP', 'sem.vitae@felisullamcorper.net', 1386610228, 'GJM42QSL9NO', '2016-10-31 00:00:00', '2020-12-05 00:00:00'),
(92, 'Gwendolyn', 'Deanna', '9039 Maecenas Av.', '94581', 'Calera', 'WC', 'risus.Donec.nibh@ametconsectetuer.ca', 1906803427, 'RTA51OJZ7LG', '2019-11-14 00:00:00', '2020-06-25 00:00:00'),
(93, 'Susan', 'Rhiannon', 'P.O. Box 294, 7745 Consectetuer Rd.', '97110', 'Juneau', 'ZB', 'egestas.a.dui@lectus.com', 1285840371, 'GSJ16KQM7YN', '2016-09-10 00:00:00', '2020-08-12 00:00:00'),
(94, 'Reuben', 'Mary', 'Ap #898-7668 Natoque Ave', '84655', 'Côte Saint-Luc', 'KX', 'vitae@felisadipiscing.com', 1582825821, 'WGU70YGN4RU', '2014-01-24 00:00:00', '2020-07-20 00:00:00'),
(95, 'Phelan', 'Justine', 'P.O. Box 213, 5893 Sem. Avenue', '85170', 'Mold', 'GP', 'Pellentesque.ut@adipiscingligula.edu', 1475247334, 'MNE84NEY5ZQ', '2012-10-20 00:00:00', '2020-12-07 00:00:00'),
(96, 'Wing', 'Perry', '8693 Ac Rd.', '98086', 'Gaithersburg', 'OJ', 'Duis@Sedegetlacus.net', 1372744702, 'HUN46ELM9LP', '2015-08-25 00:00:00', '2020-08-13 00:00:00'),
(97, 'Calvin', 'Sara', '857-2361 In, Road', '51393', 'Barahanagar', 'AV', 'et@adipiscingnonluctus.org', 1791833927, 'IAH83TPP4JJ', '2018-06-02 00:00:00', '2020-06-17 00:00:00'),
(98, 'Gary', 'Christian', 'P.O. Box 131, 5725 Libero. St.', '97084', 'Blumenau', 'UT', 'posuere@vitae.edu', 1948287160, 'FGV05DTX3VH', '2012-03-27 00:00:00', '2020-06-07 00:00:00'),
(99, 'Lee', 'Lisandra', 'Ap #575-1310 Elit, Ave', '67069', 'Thorold', 'EK', 'sem.ut@luctussitamet.net', 1849312394, 'SMO77AUU0QN', '2017-09-24 00:00:00', '2020-05-05 00:00:00'),
(100, 'September', 'Rana', '696-6113 Convallis St.', '67407', 'Santander', 'KY', 'lorem.eu@egestaslaciniaSed.org', 1256345247, 'BIS58WYQ6KM', '2014-04-04 00:00:00', '2020-08-20 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int UNSIGNED NOT NULL,
  `emp_superior_id` int UNSIGNED DEFAULT NULL,
  `emp_pos_id` int UNSIGNED NOT NULL,
  `emp_lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_salary` int UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_superior_id`, `emp_pos_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_enter_date`, `emp_gender`, `emp_children`) VALUES
(1, 2, 2, 'GARCIA', 'Jerry', '28 rue Simone Signoret', '80090', 'Amiens', 'jerrygarcia@ets.com', '0678912345', 256000, '2005-03-10', 'M', 0),
(2, 3, 3, 'PLANT', 'Robert', '12 Chemin Lintier', '06220', 'Vallauris', 'robertplant@ets.com', '0654325415', 256001, '2012-02-27', 'M', 1),
(3, 1, 1, 'MAY', 'Brian', '35 avenue des Corsaires', '17000', 'La Rochelle', 'brianmay@ets.com', '0654325416', 256002, '1999-06-15', 'M', 2),
(4, 4, 4, 'KNOPFLER', 'Mark', '15 avenue de Marigny', '75008', 'Paris', 'markknopfler@ets.com', '0654325417', 555147, '2002-12-27', 'M', 3),
(5, 1, 1, 'SMITH', 'Patti', '85 rue des Serbes', '06200', 'Cannes', 'pattismith@ets.com', '0654325418', 245612, '2001-08-12', 'F', 0),
(6, 1, 1, 'CLAPTON', 'Eric', '57 rue des Canonniers', '59000', 'Lille', 'ericclapton@ets.com', '0654325419', 785421, '2004-09-02', 'M', 2),
(7, 2, 2, 'REGINALD', 'Dwight', '5 Boulevard de Belfort', '80000', 'Amiens', 'dwightreginald@ets.com', '0654325420', 632541, '2002-09-11', 'M', 1),
(8, 2, 2, 'FLACK', 'Roberta', '12 avenue Portes Blanches', '75018', 'Paris', 'robertaflack@ets.com', '0654325421', 125354, '2009-05-25', 'F', 4),
(9, 4, 4, 'SMITH', 'Robert', '89 avenue de Londres', '80000', 'Amiens', 'robertsmith@ets.com', '0654325422', 754121, '2019-06-21', 'M', 2),
(10, 3, 3, 'GAHAN', 'Dave', '63 rue de Montréal', '17000', 'La Rochelle', 'davegahan@ets.com', '0654325423', 256009, '1992-04-17', 'M', 3),
(11, 1, 1, 'CLAYTON', 'Adam', '49 Place du Général De Gaulle', '06600', 'Antibes', 'adamclayton@ets.com', '0654325424', 256010, '2001-06-07', 'M', 0),
(12, 3, 3, 'SIMONE', 'Nina', '33 avenue du Prado', '13008', 'Marseille', 'ninasimone@ets.com', '0654325425', 256011, '2000-07-15', 'F', 2),
(13, 4, 4, 'WATERS', 'Roger', '82 rue Jeanne d’Arc', '76000', 'Rouen', 'rogerwaters@ets.com', '0654325426', 256012, '2006-01-08', 'M', 1),
(14, 3, 3, 'RICHARDS', 'Keith', '26 Place Carnot', '69002', 'Lyon', 'keithrichards@ets.com', '0654325427', 256013, '2018-04-20', 'M', 0),
(15, 2, 2, 'HARRISON', 'George', '58 rue Solférino', '59000', 'Lille', 'georgeharrison@ets.com', '0654325428', 256014, '2020-10-22', 'M', 3),
(16, 4, 4, 'O’CONNOR', 'Sinead', '93 Place Fontana', '06500', 'Menton', 'sineadoconnor@ets.com', '0654325429', 256015, '2012-04-29', 'F', 0);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int UNSIGNED NOT NULL,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_ship_date` date DEFAULT NULL,
  `ord_reception_date` date DEFAULT NULL,
  `ord_status` varchar(25) NOT NULL,
  `ord_cus_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_order_date`, `ord_payment_date`, `ord_ship_date`, `ord_reception_date`, `ord_status`, `ord_cus_id`) VALUES
(2, '2018-08-10', '2012-08-08', '2013-05-20', '2017-05-19', 'tristique', 2),
(3, '2017-10-29', '2013-06-25', '2014-01-29', '2016-03-08', 'aptent', 3),
(4, '2020-06-08', '2016-11-09', '2013-03-09', '2017-04-12', 'nibh.', 4),
(5, '2021-05-25', '2017-03-25', '2017-10-14', '2018-07-10', 'Nullam', 5),
(6, '2019-02-12', '2013-11-17', '2018-08-22', '2020-12-28', 'convallis', 6),
(7, '2017-06-24', '2012-07-22', '2016-09-20', '2017-10-11', 'montes,', 7),
(8, '2015-06-07', '2021-01-29', '2019-02-17', '2021-06-19', 'adipiscing', 8),
(9, '2014-08-21', '2018-04-07', '2016-06-03', '2017-05-26', 'sem', 9),
(10, '2020-01-03', '2012-12-10', '2012-09-29', '2020-12-28', 'rhoncus.', 10),
(11, '2017-11-19', '2017-03-22', '2014-12-23', '2018-03-11', 'non,', 11),
(12, '2013-10-24', '2020-10-16', '2015-07-21', '2012-09-19', 'Aliquam', 12),
(13, '2018-08-11', '2015-08-06', '2018-04-09', '2012-10-09', 'ipsum', 13),
(14, '2018-07-27', '2015-08-20', '2014-12-23', '2021-01-10', 'enim.', 14),
(15, '2019-03-02', '2018-03-06', '2020-02-08', '2017-02-11', 'ultrices', 15),
(16, '2013-05-26', '2014-01-05', '2014-08-28', '2020-07-12', 'porttitor', 16),
(17, '2014-06-10', '2020-09-19', '2012-11-26', '2013-06-16', 'non', 17),
(18, '2014-09-07', '2013-11-21', '2016-09-22', '2020-04-30', 'non,', 18),
(19, '2021-01-28', '2015-08-31', '2016-11-16', '2014-05-05', 'mi.', 19),
(20, '2013-08-06', '2016-06-27', '2020-02-22', '2015-11-09', 'Sed', 20),
(21, '2018-08-23', '2019-07-26', '2020-01-20', '2018-04-04', 'ut', 21),
(22, '2017-03-28', '2015-07-05', '2018-08-09', '2020-05-31', 'dictum', 22),
(23, '2014-03-24', '2013-08-02', '2020-12-30', '2016-05-05', 'ridiculus', 23),
(24, '2017-03-16', '2013-03-08', '2012-07-10', '2019-03-07', 'ipsum', 24),
(25, '2021-03-07', '2020-02-24', '2018-04-20', '2018-08-04', 'lectus', 25),
(26, '2014-09-13', '2020-07-13', '2013-05-23', '2016-12-30', 'at', 26),
(27, '2016-05-05', '2017-08-15', '2015-05-14', '2017-04-14', 'Duis', 27),
(28, '2020-09-17', '2015-04-13', '2017-08-24', '2013-03-11', 'in,', 28),
(29, '2015-11-11', '2017-03-18', '2014-11-11', '2020-04-01', 'adipiscing', 29),
(30, '2015-07-16', '2018-06-03', '2019-07-28', '2019-06-27', 'quam.', 30),
(31, '2014-06-25', '2019-12-31', '2018-09-09', '2015-08-21', 'dolor', 31),
(32, '2015-04-21', '2016-10-19', '2017-07-08', '2018-03-03', 'viverra.', 32),
(33, '2014-03-03', '2014-12-30', '2014-05-04', '2016-11-08', 'Sed', 33),
(34, '2020-11-17', '2019-04-09', '2013-04-02', '2013-07-21', 'dui.', 34),
(35, '2018-07-31', '2012-12-28', '2019-06-27', '2018-11-12', 'mollis', 35),
(36, '2012-08-14', '2015-09-04', '2019-03-01', '2019-12-18', 'tellus,', 36),
(37, '2014-09-29', '2019-02-22', '2018-08-25', '2019-01-17', 'sollicitudin', 37),
(38, '2021-04-10', '2018-02-07', '2016-06-17', '2015-06-29', 'sapien', 38),
(39, '2014-01-09', '2017-12-03', '2012-12-27', '2015-02-26', 'Cras', 39),
(40, '2020-07-28', '2013-01-23', '2020-06-26', '2016-11-20', 'tortor,', 40),
(41, '2020-06-10', '2013-07-02', '2016-01-31', '2019-02-06', 'Pellentesque', 41),
(42, '2017-12-25', '2021-01-16', '2015-05-28', '2020-06-10', 'litora', 42),
(43, '2020-02-09', '2013-12-22', '2017-04-15', '2018-12-26', 'sagittis.', 43),
(44, '2016-10-05', '2017-08-22', '2015-03-28', '2013-10-20', 'bibendum.', 44),
(45, '2020-08-15', '2018-05-01', '2013-01-02', '2014-05-29', 'in', 45),
(46, '2018-08-17', '2014-06-03', '2016-07-30', '2019-03-18', 'justo.', 46),
(47, '2019-07-29', '2018-03-02', '2015-03-24', '2018-03-24', 'odio', 47),
(48, '2013-08-30', '2020-09-18', '2019-05-12', '2015-07-30', 'augue', 48),
(49, '2018-02-27', '2013-10-29', '2016-05-01', '2016-07-29', 'metus.', 49),
(50, '2013-07-19', '2014-02-11', '2015-11-03', '2021-02-08', 'a,', 50),
(51, '2013-10-23', '2014-06-11', '2017-07-24', '2019-05-18', 'Pellentesque', 51),
(52, '2013-08-14', '2015-12-08', '2019-08-30', '2014-01-15', 'Vivamus', 52),
(53, '2017-03-08', '2018-01-03', '2018-05-19', '2019-09-07', 'non', 53),
(54, '2013-09-11', '2021-05-20', '2018-04-16', '2019-05-22', 'erat', 54),
(55, '2021-01-07', '2021-03-28', '2017-05-31', '2015-09-30', 'tempor', 55),
(56, '2020-11-02', '2013-03-22', '2014-07-30', '2021-01-10', 'mi', 56),
(57, '2015-07-13', '2016-12-23', '2020-07-17', '2014-04-06', 'amet', 57),
(58, '2014-08-12', '2019-07-30', '2013-03-30', '2013-07-31', 'eu,', 58),
(59, '2015-11-07', '2015-03-14', '2014-03-12', '2012-11-14', 'Sed', 59),
(60, '2015-06-02', '2016-06-16', '2014-10-14', '2017-05-24', 'purus.', 60),
(61, '2016-11-13', '2017-05-31', '2016-02-15', '2012-11-06', 'ridiculus', 61),
(62, '2020-08-14', '2015-12-05', '2018-12-25', '2018-07-17', 'eget', 62),
(63, '2012-11-13', '2013-05-09', '2020-01-11', '2015-10-15', 'sagittis.', 63),
(64, '2015-04-13', '2013-07-07', '2019-09-12', '2014-02-23', 'torquent', 64),
(65, '2019-12-24', '2013-08-14', '2016-05-23', '2017-07-23', 'tortor,', 65),
(66, '2017-08-04', '2020-08-07', '2015-04-18', '2018-03-26', 'consectetuer', 66),
(67, '2021-05-08', '2014-02-06', '2015-04-11', '2015-12-20', 'Fusce', 67),
(68, '2014-02-25', '2017-08-24', '2019-01-17', '2020-05-02', 'Phasellus', 68),
(69, '2012-11-24', '2015-03-28', '2015-01-15', '2013-10-06', 'Aenean', 69),
(70, '2017-03-12', '2013-05-04', '2019-06-24', '2017-04-06', 'sit', 70),
(71, '2016-04-29', '2019-02-07', '2013-11-09', '2013-09-23', 'aliquam', 71),
(72, '2015-12-30', '2017-03-20', '2015-04-30', '2020-01-06', 'adipiscing', 72),
(73, '2021-05-21', '2014-04-27', '2015-11-18', '2017-10-30', 'purus', 73),
(74, '2013-02-02', '2019-12-31', '2017-10-12', '2013-06-07', 'amet', 74),
(75, '2019-01-22', '2014-10-28', '2021-03-11', '2013-01-27', 'lorem,', 75),
(76, '2012-11-13', '2018-06-02', '2015-11-11', '2020-01-08', 'sollicitudin', 76),
(77, '2019-07-03', '2018-01-08', '2020-03-18', '2016-07-05', 'massa', 77),
(78, '2019-02-17', '2013-09-27', '2021-03-27', '2021-06-16', 'elementum,', 78),
(79, '2012-09-14', '2016-12-13', '2020-07-16', '2018-02-23', 'odio', 79),
(80, '2019-02-14', '2013-05-21', '2018-09-23', '2019-05-21', 'vitae,', 80),
(81, '2013-04-21', '2014-03-23', '2017-12-04', '2014-12-27', 'Morbi', 81),
(82, '2016-02-28', '2012-08-19', '2019-03-29', '2012-08-10', 'mauris', 82),
(83, '2016-10-08', '2020-02-03', '2015-02-07', '2015-03-28', 'magna.', 83),
(84, '2018-08-11', '2016-09-04', '2016-10-26', '2013-04-30', 'ullamcorper,', 84),
(85, '2019-05-24', '2016-02-11', '2013-01-26', '2017-03-06', 'nonummy', 85),
(86, '2017-05-24', '2015-10-24', '2016-08-01', '2014-11-25', 'at,', 86),
(87, '2014-12-27', '2016-01-25', '2014-05-05', '2015-03-12', 'Etiam', 87),
(88, '2020-12-03', '2020-03-02', '2016-05-26', '2020-07-01', 'orci,', 88),
(89, '2013-05-29', '2015-05-10', '2018-07-15', '2014-04-02', 'libero.', 89),
(90, '2014-11-08', '2014-05-20', '2013-11-10', '2014-08-11', 'Proin', 90),
(91, '2012-08-21', '2019-03-08', '2014-01-28', '2019-08-24', 'placerat,', 91),
(92, '2016-01-13', '2020-11-03', '2018-11-12', '2016-01-30', 'ac,', 92),
(93, '2020-08-17', '2013-03-25', '2015-11-26', '2013-11-30', 'Maecenas', 93),
(94, '2013-03-25', '2015-08-14', '2019-09-16', '2021-03-25', 'lorem,', 94),
(95, '2020-12-27', '2020-05-01', '2013-05-19', '2013-01-21', 'lectus', 95),
(96, '2021-01-28', '2017-09-03', '2014-08-04', '2018-11-14', 'elit,', 96),
(97, '2018-09-18', '2021-02-08', '2016-05-26', '2014-12-17', 'nisi', 97),
(98, '2019-04-29', '2014-08-05', '2017-03-01', '2019-03-03', 'nulla.', 98),
(99, '2018-09-22', '2020-11-27', '2015-03-14', '2021-06-04', 'tincidunt.', 99),
(100, '2019-05-10', '2021-01-28', '2015-12-20', '2015-04-18', 'Mauris', 100);

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

CREATE TABLE `orders_details` (
  `ode_id` int UNSIGNED NOT NULL,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_discount` decimal(4,2) DEFAULT NULL,
  `ode_quantity` int NOT NULL,
  `ode_ord_id` int UNSIGNED NOT NULL,
  `ode_pro_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`ode_id`, `ode_unit_price`, `ode_discount`, `ode_quantity`, `ode_ord_id`, `ode_pro_id`) VALUES
(1, '14.99', NULL, 1, 5, 10),
(2, '14.90', NULL, 1, 53, 19),
(3, '499.99', NULL, 1, 53, 22),
(4, '9.90', NULL, 1, 17, 32),
(5, '88.00', NULL, 1, 72, 12),
(6, '288.32', NULL, 1, 20, 28),
(7, '32.50', NULL, 1, 56, 29),
(8, '88.00', NULL, 1, 74, 12),
(9, '110.00', '10.00', 1, 47, 7),
(10, '9.98', NULL, 1, 16, 24),
(11, '157.00', NULL, 1, 70, 25),
(12, '149.97', NULL, 1, 37, 30),
(13, '49.00', NULL, 1, 8, 13),
(14, '88.00', NULL, 1, 32, 14),
(15, '245.00', '10.00', 1, 7, 31),
(16, '110.00', '10.00', 1, 75, 7),
(17, '245.00', NULL, 1, 79, 31),
(18, '31.19', NULL, 1, 29, 18),
(19, '149.97', NULL, 1, 91, 30),
(20, '31.19', NULL, 1, 54, 18),
(21, '88.00', NULL, 1, 68, 12),
(22, '599.99', NULL, 1, 35, 21),
(23, '49.00', NULL, 1, 24, 13),
(24, '245.00', NULL, 1, 78, 31),
(25, '299.40', NULL, 1, 94, 26),
(26, '110.00', '10.00', 1, 35, 7),
(27, '135.90', NULL, 1, 77, 11),
(28, '12.00', NULL, 1, 83, 23),
(29, '157.00', NULL, 1, 81, 25),
(30, '299.40', NULL, 1, 48, 26),
(31, '288.32', NULL, 1, 95, 28),
(32, '110.00', '10.00', 1, 75, 7),
(33, '49.00', NULL, 1, 31, 13),
(34, '19.90', NULL, 1, 97, 16),
(35, '49.00', NULL, 1, 68, 13),
(36, '14.99', NULL, 1, 47, 10),
(37, '245.00', NULL, 1, 55, 31),
(38, '249.99', NULL, 1, 63, 8),
(39, '49.00', NULL, 1, 14, 13),
(40, '54.49', NULL, 1, 40, 15),
(41, '49.00', NULL, 1, 90, 13),
(42, '14.99', NULL, 1, 63, 10),
(43, '245.00', NULL, 1, 42, 31),
(44, '31.19', NULL, 1, 66, 18),
(45, '89.00', NULL, 1, 26, 27),
(46, '110.00', '10.00', 1, 87, 7),
(47, '9.90', NULL, 1, 11, 32),
(48, '249.99', NULL, 10, 9, 8),
(49, '599.99', NULL, 1, 93, 21),
(50, '19.90', NULL, 1, 81, 16),
(51, '135.90', NULL, 1, 47, 11),
(52, '157.00', NULL, 1, 70, 25),
(53, '110.00', '10.00', 1, 6, 7),
(54, '499.99', NULL, 1, 61, 22),
(55, '32.50', NULL, 1, 89, 29),
(56, '135.90', NULL, 1, 67, 11),
(57, '49.00', NULL, 1, 11, 13),
(58, '9.90', NULL, 1, 96, 32),
(59, '157.00', NULL, 1, 41, 25),
(60, '245.00', NULL, 1, 60, 31),
(61, '19.90', NULL, 1, 16, 16),
(62, '499.99', NULL, 1, 8, 22),
(63, '249.99', NULL, 1, 19, 8),
(64, '110.00', '10.00', 1, 54, 7),
(65, '299.40', NULL, 1, 62, 26),
(66, '135.90', NULL, 1, 56, 11),
(67, '149.97', NULL, 1, 52, 30),
(68, '245.00', NULL, 1, 53, 31),
(69, '19.90', NULL, 1, 52, 16),
(70, '9.98', NULL, 1, 21, 24),
(71, '9.90', NULL, 1, 23, 32),
(72, '14.99', NULL, 1, 37, 10),
(73, '149.97', NULL, 1, 27, 30),
(74, '32.50', NULL, 1, 60, 29),
(75, '32.50', NULL, 1, 40, 29),
(76, '14.90', NULL, 1, 54, 19),
(77, '88.00', NULL, 1, 25, 14),
(78, '88.00', NULL, 1, 85, 12),
(79, '599.99', NULL, 1, 51, 21),
(80, '599.99', NULL, 1, 2, 21),
(81, '14.99', NULL, 1, 97, 10),
(82, '9.90', NULL, 1, 37, 32),
(83, '9.98', NULL, 1, 47, 24),
(84, '14.90', NULL, 1, 70, 19),
(85, '49.00', NULL, 1, 43, 13),
(86, '31.19', NULL, 1, 56, 20),
(87, '19.90', NULL, 1, 72, 16),
(88, '245.00', NULL, 1, 20, 31),
(89, '31.19', NULL, 1, 4, 20),
(90, '54.49', NULL, 1, 86, 15),
(91, '24.90', NULL, 1, 14, 17),
(92, '249.99', NULL, 1, 67, 8),
(93, '288.32', NULL, 1, 6, 28),
(94, '110.00', '10.00', 1, 58, 7),
(95, '110.00', '20.00', 2, 12, 7),
(96, '88.00', NULL, 1, 100, 12),
(97, '88.00', NULL, 1, 48, 12),
(98, '245.00', NULL, 1, 17, 31),
(99, '88.00', NULL, 1, 39, 12),
(100, '149.97', NULL, 1, 15, 30);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `pos_id` int UNSIGNED NOT NULL,
  `pos_libelle` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`pos_id`, `pos_libelle`) VALUES
(1, 'massa'),
(2, 'Quisque'),
(3, 'vitae'),
(4, 'pellentesque'),
(5, 'nec'),
(6, 'tincidunt');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `pro_id` int UNSIGNED NOT NULL,
  `pro_cat_id` int UNSIGNED NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_ean` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pro_stock` int UNSIGNED NOT NULL,
  `pro_stock_alert` int UNSIGNED NOT NULL,
  `pro_color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_publish` tinyint(1) NOT NULL,
  `pro_sup_id` int UNSIGNED NOT NULL,
  `pro_add_date` datetime NOT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_picture` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`pro_id`, `pro_cat_id`, `pro_price`, `pro_ref`, `pro_ean`, `pro_stock`, `pro_stock_alert`, `pro_color`, `pro_name`, `pro_desc`, `pro_publish`, `pro_sup_id`, `pro_add_date`, `pro_update_date`, `pro_picture`) VALUES
(7, 27, '110.00', 'barb001', NULL, 2, 5, 'Brun', 'Aramis ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porttitor sit amet ipsum sit amet dapibus. Cras suscipit neque ac magna sagittis lobortis. Duis venenatis enim ac nisl luctus, a scelerisque velit porttitor. Integer nec massa quis urna mollis consectetur et et nisl. Nullam eget nunc vitae nisl convallis faucibus. Vestibulum dapibus, metus nec molestie lobortis, nunc sem mollis tortor, et auctor dolor nunc at nisi. Pellentesque sit amet turpis nisi. ', 0, 4, '2018-04-18 00:00:00', '2018-11-14 00:00:00', 'jpg'),
(8, 27, '249.99', 'barb002', NULL, 0, 5, 'Noir', 'Athos', 'Cu\'rabitur pellentesque posuere luctus. Sed et risus vel quam pharetra pretium non quis odio. Praesent varius risus vel orci ultrices tincidunt.', 0, 4, '2016-06-14 00:00:00', NULL, 'jpg'),
(10, 2, '14.99', 'SEC-B', NULL, 16, 5, 'Rouge', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', 0, 3, '2018-08-05 00:00:00', NULL, 'jpg'),
(11, 27, '135.90', 'barb003', NULL, 10, 5, 'Chrome', 'Clatronic', 'Fusce rutrum odio sem, quis finibus nisl finibus a. Praesent dictum ex in lectus porta, vitae varius lacus eleifend. Sed sed lacinia mi, sed egestas odio. Integer a congue lectus.', 0, 4, '2017-10-18 00:00:00', '2018-08-23 00:00:00', 'jpg'),
(12, 27, '88.00', 'barb004', NULL, 5, 5, 'Noir', 'Camping', 'Phasellus auctor mattis justo, in semper urna congue eget. Nunc sit amet nunc sed dui fringilla scelerisque a eget sem. Aenean cursus eros vehicula arcu blandit, sit amet faucibus leo finibus. Duis pharetra felis eget viverra tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 4, '2018-08-20 00:00:00', NULL, 'jpg'),
(13, 13, '49.00', 'brou001', NULL, 25, 5, 'Verte', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', 0, 2, '2018-08-01 00:00:00', NULL, 'jpg'),
(14, 13, '88.00', 'brou002', NULL, 0, 5, 'Argent', 'Silver', 'Pellentesque ultrices vestibulum sagittis.', 1, 2, '2018-08-09 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(15, 13, '54.49', 'brou003', NULL, 3, 5, 'Jaune', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(16, 2, '19.90', 'GA410', NULL, 50, 5, 'Gris', 'Bêche GA 410', 'Nulla at consequat orci.', 0, 2, '2018-08-13 00:00:00', NULL, 'png'),
(17, 2, '24.90', 'beche002', NULL, 1, 5, 'Argent', 'Bêche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', 0, 2, '2018-03-15 00:00:00', NULL, 'png'),
(18, 2, '31.19', 'scm0555', NULL, 0, 5, 'Bleue', 'Scie à main SCM0555', 'Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit, ac gravida risus imperdiet in.', 0, 2, '2018-08-19 00:00:00', NULL, 'png'),
(19, 2, '14.90', 'scm559', NULL, 4, 5, 'Bleu', 'Scie couteau', 'raesent ante felis, iaculis vitae lectus sed, luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta, a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.', 0, 2, '2018-04-13 00:00:00', NULL, 'png'),
(20, 2, '31.19', 'h0662', NULL, 0, 5, 'Noir', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', 0, 2, '2018-08-12 00:00:00', NULL, 'png'),
(21, 11, '599.99', 'DB0703', NULL, 4, 5, 'Bleue', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ', 0, 3, '1999-08-26 00:00:00', NULL, 'png'),
(22, 11, '499.99', 'DB0755', NULL, 0, 5, 'Bleue', 'Attila', 'Là où passe Attila, l\'herbe ne repousse pas.', 0, 3, '2018-05-16 00:00:00', NULL, 'png'),
(23, 28, '12.00', 'LAM121', NULL, 0, 5, 'Rouge', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(24, 28, '9.98', 'LAM233', NULL, 500, 5, 'Brun', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(25, 25, '157.00', 'PRS-01C', NULL, 5, 5, 'Brun', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', 0, 2, '2018-08-19 00:00:00', NULL, 'jpg'),
(26, 25, '299.40', 'PRS-38A', NULL, 4, 5, 'Rose', 'Cannes', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(27, 25, '89.00', 'PRS-87F', NULL, 21, 5, 'Rouge', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', 0, 2, '2018-04-12 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(28, 21, '288.32', 'POT_001', NULL, 11, 5, 'Orange', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', 0, 1, '2017-11-12 00:00:00', NULL, 'jpg'),
(29, 21, '32.50', 'POT-002', NULL, 45, 5, 'Noir', 'Dark', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.', 0, 1, '2018-08-19 00:00:00', NULL, 'jpg'),
(30, 21, '149.97', 'POT_003', NULL, 0, 5, 'Rose', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', 0, 1, '2018-03-04 00:00:00', NULL, 'jpg'),
(31, 6, '245.00', 'POT-381', NULL, 10, 5, 'Marron', 'Iris', 'Praesent nunc dui, porta at leo eget, iaculis ultrices quam. Mauris vulputate metus in nisl aliquam, et sollicitudin nisl mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 0, 1, '2017-04-16 00:00:00', NULL, 'jpg'),
(32, 2, '9.90', 'SEC-A', NULL, 280, 5, 'Orange', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', 0, 3, '2018-08-14 00:00:00', NULL, 'jpg'),
(34, 10, '335.00', 'ENH0335', NULL, 1, 5, 'Rouge', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', 0, 4, '2018-05-17 00:00:00', NULL, 'jpg'),
(35, 10, '990.00', 'GRIZ_001', NULL, 1, 5, 'Chrome', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', 0, 4, '2018-08-05 00:00:00', '2020-05-05 00:00:00', 'jpg'),
(36, 9, '75.00', 'HERO', NULL, 7, 5, 'Vert', 'Hero', '', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(37, 9, '120.50', 'SL1280', NULL, 5, 5, 'Vert', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', 0, 4, '2018-08-05 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(38, 10, '348.00', '6cv', NULL, 2, 5, 'Rouge', 'Red 6CV ', 'uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.', 0, 4, '2018-08-16 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(39, 10, '497.00', 'TRIKE', NULL, 1, 5, 'Rouge', 'Trike', 'Aenean ut tellus non risus varius bibendum quis vel ligula. ', 0, 4, '2018-08-21 00:00:00', '2018-08-21 10:05:51', 'jpg'),
(41, 9, '49.80', 'ZOOM', NULL, 223, 5, 'Gris', 'Zoom', 'Nunc magna erat, ultrices et facilisis non, viverra in turpis. Nulla orci mi, maximus eu facilisis a, pretium sit amet ex.', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(42, 10, '1.20', 'waz1', NULL, 123, 5, 'rouge', 'wazaa', 'azerty', 0, 4, '2019-05-03 00:00:00', NULL, 'jpg');

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `sup_id` int UNSIGNED NOT NULL,
  `sup_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_countries_id` char(2) NOT NULL,
  `sup_address` varchar(150) NOT NULL,
  `sup_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_contact` varchar(100) NOT NULL,
  `sup_phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_mail` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_city`, `sup_countries_id`, `sup_address`, `sup_zipcode`, `sup_contact`, `sup_phone`, `sup_mail`) VALUES
(1, 'Wanda', 'Mondolfo', 'IS', 'P.O. Box 970, 9727 Posuere, Ave', '83948', 'Kylie X. Barton', '4636129749', 'Pellentesque@feugiatmetussit.edu'),
(2, 'Juliet', 'Quibdó', 'GF', '668-4758 Pharetra Ave', '76993', 'Maggy X. Snyder', '4973392150', 'dui.in.sodales@VivamusnisiMauris.edu'),
(3, 'Gabriel', 'Camiña', 'FI', 'P.O. Box 715, 4372 Parturient Ave', '34756', 'Kaseem G. Gutierrez', '5292010498', 'Nullam.nisl@Vestibulumante.net'),
(4, 'Willow', 'Rotheux-RimiŽre', 'XX', '513 Ante, St.', '76055', 'Macy D. Weeks', '9091255581', 'orci.lacus@nec.net'),
(5, 'Walter', 'Dörtyol', 'MC', '268-180 Venenatis Avenue', '25840', 'Jena E. Gates', '4671233220', 'faucibus.orci@acfermentumvel.net'),
(6, 'Ivan', 'Telford', 'DJ', 'Ap #914-1556 Lobortis St.', '78681', 'Nerea H. Bond', '5836123631', 'Class.aptent.taciti@nonmagnaNam.com'),
(7, 'Zephania', 'Gressoney-Saint-Jean', 'YH', 'Ap #514-2695 Porttitor Street', '8580', 'Zelda B. Chavez', '6561204342', 'Etiam.laoreet.libero@dolorquam.org'),
(8, 'Samantha', 'Rochester', 'FH', '161-6131 Velit. Rd.', '893', 'Elmo Q. Boone', '3584421897', 'diam.at.pretium@Suspendissetristique.co.uk'),
(9, 'Erin', 'Allentown', 'WA', 'P.O. Box 186, 4651 Lacus St.', '15915', 'Shelley T. Hernandez', '6972747892', 'amet@ligulaAeneangravida.edu'),
(10, 'Martena', 'Florianópolis', 'OA', 'P.O. Box 922, 9274 Auctor St.', '39948', 'Shafira R. Mcbride', '3383527214', 'ipsum.Suspendisse.sagittis@inconsequat.co.uk'),
(11, 'Rogan', 'Durness', 'GX', '8751 Morbi St.', '49297', 'Ila W. Howard', '4984158523', 'Integer.in.magna@semperduilectus.co.uk'),
(12, 'Walker', 'Toronto', 'TB', 'Ap #351-209 Dui, Street', '15998', 'Charles M. Cortez', '1593449439', 'tristique.aliquet@tristiquepellentesquetellus.edu');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_parent_id` (`cat_parent_id`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD UNIQUE KEY `alpha2` (`cou_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`),
  ADD KEY `ibfk_customers_countries` (`cus_countries_id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_superior_id` (`emp_superior_id`),
  ADD KEY `emp_pos_id` (`emp_pos_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cus_id` (`ord_cus_id`) USING BTREE;

--
-- Index pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`ode_id`),
  ADD KEY `ode_ord_id` (`ode_ord_id`) USING BTREE,
  ADD KEY `ode_pro_id` (`ode_pro_id`) USING BTREE;

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pos_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `pro_sup_id` (`pro_sup_id`) USING BTREE,
  ADD KEY `pro_cat_id` (`pro_cat_id`) USING BTREE;

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`),
  ADD KEY `sup_countries_id` (`sup_countries_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `ode_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `pos_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `ibfk_customers_countries` FOREIGN KEY (`cus_countries_id`) REFERENCES `countries` (`cou_id`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`emp_superior_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`ode_ord_id`) REFERENCES `orders` (`ord_id`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`ode_pro_id`) REFERENCES `products` (`pro_id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`sup_countries_id`) REFERENCES `countries` (`cou_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
