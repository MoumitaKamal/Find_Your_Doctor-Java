-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2015 at 07:56 AM
-- Server version: 5.6.27
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorwho`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `email_id` varchar(64) DEFAULT NULL,
  `appTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone_no` int(12) DEFAULT NULL,
  `h_id` int(11) DEFAULT NULL,
  `ch_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `docid` int(12) NOT NULL,
  `issue` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `fname`, `sex`, `age`, `email_id`, `appTime`, `phone_no`, `h_id`, `ch_id`, `d_id`, `docid`, `issue`) VALUES
(34, 'mm', 'Male', 2, 'm@gmail.com', '2015-11-30 20:50:11', 1711545107, NULL, NULL, NULL, 11, '2015/12/02'),
(35, 'aA', 'Male', 22, 'A@gmail.com', '2015-11-30 20:53:50', 1670101010, NULL, NULL, NULL, 11, '2015/12/02'),
(36, 'adAD', 'Male', 22, 'asd@gmail.com', '2015-11-30 21:11:43', 1711545107, NULL, NULL, NULL, 19, '2015/12/02'),
(37, 'bbd', 'Male', 22, 'bb@gmail.com', '2015-11-30 21:12:03', 1711545107, NULL, NULL, NULL, 19, '2015/12/02'),
(38, 'cccc', 'Male', 22, 'c@gmail.com', '2015-11-30 21:12:21', 1711545107, NULL, NULL, NULL, 19, '2015/12/02'),
(39, 'gfkjfdlksdjfksdh', 'Male', 23, 'ami@gmail.com', '2015-12-01 04:10:06', 1522457896, NULL, NULL, NULL, 11, '2015/12/02');

-- --------------------------------------------------------

--
-- Table structure for table `chamber`
--

CREATE TABLE `chamber` (
  `ch_id` int(11) NOT NULL,
  `ch_name` varchar(130) NOT NULL,
  `location` varchar(32) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_no` varchar(64) DEFAULT NULL,
  `work_hour` varchar(64) DEFAULT NULL,
  `visit_fee` double DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chamber`
--

INSERT INTO `chamber` (`ch_id`, `ch_name`, `location`, `address`, `phone_no`, `work_hour`, `visit_fee`) VALUES
(1, 'Green View Clinic', 'Green Road', '25/3, Green Road, Dhaka-1205\r', '+880-2-8610313, 9661410 ', NULL, NULL),
(2, 'MUKTI (Manashik & Madakashakti Niramoy Kendra Ltd.)', 'Gulshan', 'House#2,Road#49,Gulshan#2,Dhaka-1212\r', '+880 2 9896165, 9883991, 8814562', NULL, NULL),
(3, 'Care Hospital ( BD ) Ltd.', 'Mohammadpur', '2/1-A Iqbal Road, Mohammadpur, Dhaka-1207\r', '+880-2-9134407, 9132548, 8124974, 8110864', NULL, NULL),
(4, 'Ibn Sina Diagnostic & Imaging Center', 'Dhanmondi', 'House#48,Road#9/A,Dhanmondi,SAtmasjid Road,Dhaka-1209\r', '+880-2-9126625, 9128835-7, Cell: +880 1717351631', NULL, NULL),
(5, 'Rainbow Heart Consultation Center', 'Dhanmondi', '68 Shat Masjid Road, Dhanmondi, Dhaka\r', '+880-2- 9131207', NULL, NULL),
(6, 'Monowara Hospital (pvt)Ltd.', 'Siddeshwari', '54, Siddeshwari Road , Dhaka - 1217\r', '+880-2-831-8135, 831-9802', NULL, NULL),
(7, 'Central Hospital Limited', 'Dhanmondi', 'House # 5, Road # 2, Dhaka - 1205\r', '+880-2-9660015-19, 8624514 Ext - 2214 ', NULL, NULL),
(9, 'Popular Diagnostic Centre Ltd', 'Dhanmondi', 'House#16,Road#2,DhanmondiR/A,Dhaka-1205\r', '+880-2-9669480, 9661491-3, Mobile-01553341060-1', NULL, NULL),
(10, 'Thyroid Clinic', 'Green Road', 'Rangs Taz Tower(2ndfloor),20Green Rd,Dhaka-1205', '+880-2-9667881', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(11) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `f_login` int(1) NOT NULL DEFAULT '0',
  `designation` varchar(50) NOT NULL,
  `special` varchar(30) NOT NULL,
  `degree` varchar(150) DEFAULT NULL,
  `mobile` int(20) DEFAULT NULL,
  `chamber` varchar(130) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `workHours` varchar(130) NOT NULL,
  `website` varchar(64) DEFAULT NULL,
  `ch_id` int(11) NOT NULL,
  `h_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `fname`, `uname`, `pass`, `f_login`, `designation`, `special`, `degree`, `mobile`, `chamber`, `email`, `workHours`, `website`, `ch_id`, `h_id`, `c_id`) VALUES
(11, 'Professor Dr. A. B. M. Yunus', 'yunus', '12345', 1, 'Professor', 'Hematology', 'MBBS (India), MPhil Path (Hons), FCPS (Hematology)', NULL, 'Green View Clinic\r', NULL, '', NULL, 1, 26, 1),
(12, 'Professor Dr. A.A. Quoreshi', 'quoreshi', '', 1, 'Consultant', 'Psychiatry', 'MBBS, PGT ( USA )', NULL, 'MUKTI (Manashik & Madakashakti Niramoy Kendra Ltd.)\r', NULL, '', NULL, 2, NULL, 2),
(13, 'Professor Dr. A.K.M. Anwarul Islam', 'anwar', '12345', 1, 'Professor', 'Urology(kidney)', 'MBBS, FCPS, FRCS, FICS', NULL, 'Care Hospital ( BD ) Ltd.\r', NULL, '', NULL, 3, 26, 3),
(18, 'Professor Dr. ( Brig. Gen ) Md. SaidurRahman', 'said', '12345', 1, 'Professor', 'General Surgeon', 'MBBS, FCPS ( Surgery )', NULL, 'Ibn Sina Diagnostic & Imaging Center', NULL, '', NULL, 4, 26, 4),
(19, 'Professor Dr. Sirajul Haque', 'shiraj', '', 1, 'Professor', 'Skin & VD (Dermatology)', 'MBBS, DDSC(UK)', NULL, 'Rainbow Heart Consultation Center\r', NULL, '', NULL, 5, 31, 5),
(20, 'Professor Dr. (Rtd) N.I. Khan', 'khan', '12345', 1, 'Professor', 'Medicine', 'MBBS, MRCP(U.K), FRCP, FACP(USA)', NULL, 'Monowara Hospital (pvt) Ltd\r', NULL, '', NULL, 6, 26, 6),
(21, 'Dr. A B M Shahidul Alam', '', '', 1, 'Chief Consultant', 'Child-Pediatric', 'MBBS, MCPS, DCH, FCPS', NULL, 'Central Hospital Limited\r', NULL, '', NULL, 7, 71, 7),
(22, 'Dr. A F M Anowar Hossain', '', '', 1, 'Assistant Professor', 'Surgical Oncology', 'MBBS, FCPS, MS', NULL, 'Ibn Sina Diagnostic & Imaging Center\r', NULL, '', NULL, 4, NULL, 4),
(23, 'Dr. A H M Rowshan', '', '', 1, 'Professor', 'Liver & Gastroenterology', 'MBBS, FCPS (Med.), MD(Gastro), Commonwealth Fellow-gastro (UK)', NULL, 'Popular Diagnostic Centre Ltd - Dhanmondi Branch\r', NULL, '', NULL, 9, 4, 9),
(24, 'Dr. A H M Shahidul Islam', '', '', 1, 'Ex - Associate Professor', '', 'MBBS, MD', NULL, 'Thyroid Clinic\r', NULL, '', NULL, 10, NULL, 10),
(25, 'Dr. Deen Mohd. Noorul Huq', '', '', 0, 'Professor', 'Eye ( Ophthalmology )', 'MBBS, FCPS', NULL, 'Mojibunnessa Eye Hospital Ltd\r', NULL, '', NULL, 0, 154, NULL),
(26, 'Dr. Halima Saidya Begum', '', '', 0, 'Consultant', 'Eye ( Ophthalmology )', 'MBBS, DO (DU)', NULL, 'Fashion Eye Hospital Ltd.\r', NULL, '', NULL, 0, 154, NULL),
(27, 'Dr. Hiramoni Sarma', '', '', 0, 'Consultant', 'Eye ( Ophthalmology )', 'MBBS, DOMS, Fellow Retinal lasers', NULL, 'SQUARE Hospitals Ltd.\r', NULL, '', NULL, 0, 161, NULL),
(28, 'Dr. A. H. Hamid Ahmed', '', '', 0, 'Assistant Professor', 'Kidney ( Nephrology )', 'MBBS, MD ( Nephrology )', NULL, 'Kidney-Urology & General Hospital\r', NULL, '', NULL, 0, NULL, NULL),
(29, 'Prof. Dr. Harun-Ur-Rashid', '', '', 0, 'Professor', 'Kidney ( Nephrology )', 'MBBS, P.hD, FCPS, FRCP', NULL, 'Popular Diagnostic Centre Ltd\r', NULL, '', NULL, 0, NULL, NULL),
(30, 'Professor Dr. M. Muhibur Rahman', '', '', 0, 'Professor', 'Kidney ( Nephrology )', 'MBBS (DMC), FCPS (Medicine), MRCP (UK), Ph.D Nephrology (London)', NULL, 'Popular Diagnostic Centre Ltd\r', NULL, '', NULL, 0, NULL, NULL),
(31, 'Prof. Dr. M. Mujibul Haque Mollah', '', '', 0, 'Professor', 'Kidney ( Nephrology )', 'MBBS, MRCP ( UK )', NULL, 'City Hospital Ltd.\r', NULL, '', NULL, 0, NULL, NULL),
(32, 'Professor Dr. Md. Jahangir Kobir', '', '', 0, 'Professor', 'Kidney ( Nephrology )', 'FCPS (Medicine) FCW (Kidney)UK', NULL, 'City Hospital Ltd.\r', NULL, '', NULL, 0, NULL, NULL),
(33, 'Professor Dr. A. F. M. Selim', '', '', 0, 'Deputy Director', 'Pediatric - Child', 'MBBS, MD, FCPS , Phd ( London )', NULL, 'Central Hospital Limited\r', NULL, '', NULL, 0, NULL, NULL),
(34, 'Dr. Abu Sayeed Mohammad Iqbal', 'iqbal', '12345', 0, 'Senior Consultant', 'Child ( Pediatric )', 'MBBS, FCPS, MD, Fellow (Singapore)', NULL, 'Apollo Hospitals Dhaka\r', NULL, '', NULL, 17, NULL, NULL),
(35, 'Dr. Begum Sharifun Nahar', '', '', 0, 'Associate Professor', 'Child ( Pediatric )', 'MBBS, BCS, FCPS (Ped), MD (DU)', NULL, 'Comfort Diagnostic Centre & Comfort Nursing Home - Green Road\r', NULL, '', NULL, 0, NULL, NULL),
(36, 'Dr. A B M Shahidul Alam', '', '', 0, 'Chief Consultant', 'Pediatric - Child', 'MBBS, MCPS, DCH, FCPS', NULL, 'Central Hospital Limited\r', NULL, '', NULL, 0, NULL, NULL),
(37, 'Dr. A.K.M. Fazlur Rahman', '', '', 0, 'Associate Professor', 'Cardiac Surgeon', 'MBBS, MD(Card)', NULL, 'Anwer Khan Modern Hospital Ltd.\r', NULL, '', NULL, 0, NULL, NULL),
(38, 'Dr. Abul Hasan Muhammad Bashar', '', '', 0, 'Consultant', 'Cardiac Surgeon', 'MBBS,Phd', NULL, 'Uttara Heart Centre Ltd.\r', NULL, '', NULL, 0, NULL, NULL),
(39, 'Professor Dr. Abul Hasnat Joarder', '', '', 0, 'Professor', 'ENT-Ear, Nose & Throat', 'MBBS, FCPS', NULL, 'Anwer Khan Modern Hospital Ltd.\r', NULL, '', NULL, 0, NULL, NULL),
(40, 'Dr. Arun Dodhu Patole', '', '', 0, 'Consultant', 'ENT - Ear, Nose & Throat', 'MBBS, MS, DORL (Mumbai), Fellow A.I.N.OT (Italy)', NULL, 'Apollo Hospitals Dhaka', NULL, '', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `name` varchar(50) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `specialization` varchar(32) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `total_beds` int(11) DEFAULT NULL,
  `website` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`name`, `hos_id`, `address`, `location`, `type`, `specialization`, `phone`, `total_beds`, `website`) VALUES
('Shahid Suhrawardy Hospital', 4, 'Ser-e-Banglanagar, Collegegate', 'Shyamoli', 'Public', 'General hospital', '9122560', NULL, 'http://www.suhrawardyhospital.gov.bd/'),
('Ad-Din Hospital', 5, 'Moghbazar', 'Moghbazar', 'private', 'General hospital', '9353391', NULL, NULL),
('Ahmed Medical Centre Ltd.', 6, 'House # 71, Road # 15-A, (New)', 'Dhanmondi', 'private', 'Eye hospital', '8113628', NULL, NULL),
('Aichi Hospital', 7, 'House # 13, Eshakha Avenue Sector # 6', 'Uttara', 'private', 'General hospital', '8916290', NULL, NULL),
('Al Anaiet Adhunik Hospital', 8, 'House # 36, Road # 3', 'Dhanmondi', 'private', 'General hospital', '8631619', NULL, NULL),
('Al- Helal Speacialist Hospital', 9, '150,Rokeya Sarani Senpara Parbata, Mirpur-10', 'Mirpur', 'private', 'Cardiac hospital', '9006820', NULL, NULL),
('Al Jebel-E-Nur Heart Ltd.', 10, 'House # 21, Road # 9/A (New)', 'Dhanmondi', 'private', 'Cardiac hospital', '8117031', NULL, NULL),
('Al- Rajhi Hospital', 11, '12', 'Farmgate', 'private', 'General hospital', '8119229', NULL, NULL),
('Al-Ahsraf General Hospital', 12, 'House # 12 Road # 21,Sector # 4', 'Uttara', 'private', 'General hospital', '8952851', NULL, NULL),
('Al-Biruni Hospital', 13, '23/1, Khilzee Road', 'Shyamoli', 'private', 'General hospital', '8118905', NULL, NULL),
('Al-Fateh Medical Sevices (Pvt) Ltd.', 14, '11, over Bridge East Side', 'Farmgate', 'private', 'General hospital', '9120615', NULL, NULL),
('Al-Madina General Hospital (Pvt.) Ltd.', 15, '2/A, Golden Street, Ring Road', 'Shyamoli', 'private', 'General hospital', '8118709', NULL, NULL),
('Al-Manar Hospital', 16, '5/4, Block-F', 'Lalmatia', 'private', 'General hospital', '9121387', NULL, NULL),
('Al-Markazul Islami Hospital', 17, '21/17, Babar Road', 'Mohammadpur', 'private', 'General hospital', '8114980', NULL, NULL),
('Al-Mohite General Hospital & Diagnostic Centre', 18, 'House # 11, Road # 2', 'Shyamoli', 'private', 'General hospital', '9113831', NULL, NULL),
('Amri Hospitals, Kolkata', 19, 'Bangladesh Information Center:C/O R R Trading & Co.Erectors House (10 th Flr.)18, Kemal Ataturk Aven', 'Banani', 'private', 'General hospital', '9893528', NULL, NULL),
('Apollo Hospital', 21, '20/5, Babar Road, (Ground Floor), Block # B', 'Mohammadpur', 'private', 'General hospital', '8152549', NULL, 'http://www.apollodhaka.com/'),
('Arimo General Hospital', 22, 'Matuil, Demra Road ', 'Demra', 'private', 'General hospital', '0', NULL, NULL),
('Arogya Niketan Hospital Ltd.', 23, '242-243, New Circular Road', 'Malibagh', 'private', 'General hospital', '9333730', NULL, NULL),
('Aysha Memorial Specialized Hospital', 24, '74/G, Arjatpara', 'Mohakhali', 'private', 'General hospital', '9122689', NULL, 'http://www.umchltd.com/'),
('B.D.F. Hospital', 25, '5/7, Humayaun Road, Block # D', 'Mohammadpur', 'private', 'General hospital', '8123730', NULL, NULL),
('Bangabandhu Shiekh Mujib Medical University', 26, 'vip road', 'Shahbagh', 'public', 'General hospital', '8614001', 1500, NULL),
('Bangkok Hospital Office, Bangladesh', 28, 'Lion Complex (4th Floor), 73, New Airport Road', 'Tejgaon', 'private', 'Cancer hospital', '9139777', NULL, NULL),
('BD asso. for the aged & inst. of geriatric med', 29, 'Agargaon', 'Sher-e-BanglaNagar', 'private', 'Nursing Home', '9129814', NULL, NULL),
('Bangladesh Heart & Chest Hospital', 30, 'Road # 27 (Old), 16 (New), House # 47', 'Dhanmondi', 'private', 'Cardiac hospital', '9114266', NULL, NULL),
('Bangladesh Medical College', 31, 'House # 35, Road # 14/A', 'Dhanmondi', 'private', 'General hospital', '9118202', NULL, 'http://www.bmc-bd.org/'),
('Bangladesh Telemedicine Services Ltd.', 32, 'Comfort Tower, 167/B, Green Road', 'Dhanmondi', 'private', 'Nursing Home', '8124990', NULL, NULL),
('Bari-Llizarov Orthopedic (Bio) Centre', 33, 'House # 77 (New) 831 (Old), Road # 9/A (New) 19 (Old)', 'Dhanmondi', 'private', 'Orthopedic center', '9120309', NULL, NULL),
('Bari-Llizarov Orthopedic Centre', 34, 'House # 831, Road # 19 (Old)', 'Dhanmondi', 'private', 'Orthopedic center', '9120309', NULL, NULL),
('Bdm Hospital', 35, '5/17, Humaund Road, Block # B', 'Mohammadpur', 'private', 'General hospital', '8113481', NULL, NULL),
('Bengal Nursing Home (Pvt.) Ltd.', 36, '70/C, Clke Circus', 'Kalabagan', 'private', 'Nursing Home', '8116007', NULL, NULL),
('BIRDEM', 37, 'vip road', 'Shahbagh', 'private', 'General hospital', '8616641', NULL, 'http://www.dab-bd.org/birdem.php'),
('Bnsb Dhaka Eye Hospital', 38, 'Mirpur-1', 'Mirpur', 'private', 'Eye hospital', '8014476', NULL, NULL),
('Brain & Mind Hospital Ltd.', 39, '149/A, Airport Road, Baityl Shoraf Mosque Complex', 'Farmgate', 'private', 'Brain & mind', '8120710', NULL, NULL),
('Brighton Hospital Ltd', 40, '163, Sonargaon Road', 'Hatirpool', 'private', 'General hospital', '8626901', NULL, NULL),
('Bumrungrad Hospital', 41, 'House- 154, Road- 11, Block- E', 'Banani', 'private', 'General hospital', '8855254', NULL, NULL),
('Cancer Home', 42, 'Cancer & Breast Clinic, GP-Cha, 149/1', 'Mohakhali', 'private', 'Cancer hospital', '8815244', NULL, NULL),
('Care Madical Center Ltd.', 70, '41, Chamelibagh', 'Shantinagar', 'private', 'General hospital', '8318827', NULL, NULL),
('Central Hospital Ltd.', 71, 'House # 2, Road # 5, Green Road', 'Dhanmondi', 'private', 'General hospital', '9660015', NULL, NULL),
('Centre For Health And Development ', 72, 'House # 16, Road # 16, Sector # 4', 'Uttara', 'private', 'General hospital', '8920670', NULL, NULL),
('Centre For The Rehabilitation Of The Paralysed', 73, 'Post CRP Chapin', 'Savar', 'private', 'Paralysis hospital', '7710464', NULL, NULL),
('China-Bangla Hospital (Jv) Ltd.', 75, 'Plot # 1, Road # 7, Sector # 1', 'Uttara', 'private', 'General hospital', '8913674', NULL, NULL),
('Cholera Hospital (Icddrb) Dhaka', 76, 'kacha bazar', 'Mohakhali', 'private', 'Children hospital', '871751', NULL, 'http://www.icddrb.org/'),
('Christian Medical Hospital', 77, '6/3, Nadda', 'Baridhara', 'private', 'General hospital', '9886298', NULL, NULL),
('City Dental College & Hospital', 78, '1085/1, Chowdhurypara', 'Malibagh', 'private', 'Dental hospital', '9341662', NULL, NULL),
('City Hospital (Pvt) Ltd.', 79, '69/1/1', 'Panthapath', 'private', 'General hospital', '8617852', NULL, NULL),
('CMH (Dhaka Cantonment)', 80, 'Dhaka Cantonment', 'Cantonment', 'public', 'General hospital', '882770', NULL, NULL),
('Community Hospital', 81, '190/1, Wireless Rail Gate', 'BaraMaghbazar', 'private', 'General hospital', '9351190', NULL, NULL),
('Community Maternity Hospital', 82, '22', 'BijayNagar', 'private', 'Maternity hospital', '9358513', NULL, NULL),
('Ibrahim Cardiac Health & Research Inst.', 83, 'VIP road', 'Shahbagh', 'private', 'Cardiac hospital', '9671141', NULL, 'http://www.ibrahimcardiac.org.bd'),
('Dhaka Shishu Hospital', 147, 'Sher-e-Bangla Nagar, Dhaka 1207', 'Sher-e-BanglaNagar', 'public', 'Children hospital', '8114571', NULL, 'http://www.shishu-microbiology.org'),
('Govt. Unani & Ayurbedik Medical College & Hospital', 148, 'Mirpur-13, Kafrul, Dhaka', 'Mirpur', 'public', 'Ayurbedik/Unani hospital', '8012048\r', NULL, NULL),
('Dhaka Child Hospital', 149, 'East of Shaymoli bus stand', 'Shyamoli', 'public', 'Child hospital', '8116061-62\r', NULL, NULL),
('Dhaka Medical College Hospital(DMCH)', 150, 'Bokshi Bazar, 100 Ramna, Dhaka-1000', 'Shahbagh', 'public', 'General hospital', '8626812-19 Fax: 8615919\r', NULL, NULL),
('Dhaka City General Hospital', 151, 'Nayabazar Breeze area. Nawab Iusuf Road', 'Nayabazar', 'public', 'General hospital', '7390860\r', NULL, NULL),
('National Heart Institute & Hospital', 152, 'North from the Sohrawardi Medical College', 'Sher-e-Bangla Nagar', 'public', 'Cardiac hospital', '9122560 Fax: 8142986\r', NULL, NULL),
('National Mental Health Institute & Hospital', 153, 'Shayamoli', 'Sher-e-Bangla Nagar', 'public', 'Mental hospital', '\r', NULL, NULL),
('National Ophthalmological Institute & Hospital', 154, 'Shayamoli', 'Sher-e-Bangla Nagar', 'public', 'Eye hospital', '9118336 Fax: 8117202\r', NULL, NULL),
('National Cancer Research Institute & Hospital', 155, 'North from National Infectious disease Hospital', 'Mohakhali', 'public', 'Cancer hospital', '9880078\r', NULL, NULL),
('National Kidney Institute & Hospital', 156, 'south of National Mental Health Institute', 'Sher-e-Bangla Nagar', 'public', 'Kidney hospital', '91365560-3\r', NULL, NULL),
('National Orthopedics Hospital', 157, 'East of ', 'Sher-e-Bangla Nagar', 'public', 'Orthopedic hospital', '9144190-4\r', NULL, NULL),
('Kidney Foundation Bangladesh', 158, 'Plot-5/2, Road-1, Section-2', 'Mirpur', 'public', 'Kidney hospital', '8055827\r', NULL, NULL),
('Harun Eye Hospital', 159, 'House-12/A, Road-5, Mirpur Road', 'Dhanmondi', 'private', 'Eye hospital', '01552-397518\r', NULL, NULL),
('Holy Family Red Crescent Hospital', 160, 'West from Magbazar Over bridge at Eskaton Garden Road', 'Maghbazar', 'private', 'General hospital', '8311721-5\r', NULL, NULL),
('Square Hospital', 161, '18/F, West', 'Panthapath', 'private', 'General hospital', '8129338 Fax: 9118921', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `ch_id` (`ch_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `chamber`
--
ALTER TABLE `chamber`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `ch_id` (`c_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `chamber`
--
ALTER TABLE `chamber`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hos_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hospital` (`hos_id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`ch_id`) REFERENCES `chamber` (`ch_id`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`doc_id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hospital` (`hos_id`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `chamber` (`ch_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
