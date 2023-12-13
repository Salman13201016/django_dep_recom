-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 08:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `department`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_address_name`
--

CREATE TABLE `address_address_name` (
  `id` int(11) NOT NULL,
  `hos_name` varchar(100) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `district_fk_id` int(11) DEFAULT NULL,
  `division_fk_id` bigint(20) DEFAULT NULL,
  `hos_type_fk_id` bigint(20) DEFAULT NULL,
  `station_fk_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_address_name`
--

INSERT INTO `address_address_name` (`id`, `hos_name`, `zip_code`, `address`, `image`, `description`, `district_fk_id`, `division_fk_id`, `hos_type_fk_id`, `station_fk_id`) VALUES
(12, 'Modern Hospital', '1950', 'Sakhipur, Tangail ', 'productimg/patient4.jpg', 'Nice Hospital', 8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add doctor_ depert_name', 7, 'add_doctor_depert_name'),
(26, 'Can change doctor_ depert_name', 7, 'change_doctor_depert_name'),
(27, 'Can delete doctor_ depert_name', 7, 'delete_doctor_depert_name'),
(28, 'Can view doctor_ depert_name', 7, 'view_doctor_depert_name'),
(29, 'Can add sub_ disease', 8, 'add_sub_disease'),
(30, 'Can change sub_ disease', 8, 'change_sub_disease'),
(31, 'Can delete sub_ disease', 8, 'delete_sub_disease'),
(32, 'Can view sub_ disease', 8, 'view_sub_disease'),
(33, 'Can add symptom', 9, 'add_symptom'),
(34, 'Can change symptom', 9, 'change_symptom'),
(35, 'Can delete symptom', 9, 'delete_symptom'),
(36, 'Can view symptom', 9, 'view_symptom'),
(37, 'Can add divition_ name', 10, 'add_divition_name'),
(38, 'Can change divition_ name', 10, 'change_divition_name'),
(39, 'Can delete divition_ name', 10, 'delete_divition_name'),
(40, 'Can view divition_ name', 10, 'view_divition_name'),
(41, 'Can add division_ name', 10, 'add_division_name'),
(42, 'Can change division_ name', 10, 'change_division_name'),
(43, 'Can delete division_ name', 10, 'delete_division_name'),
(44, 'Can view division_ name', 10, 'view_division_name'),
(45, 'Can add district_ name', 11, 'add_district_name'),
(46, 'Can change district_ name', 11, 'change_district_name'),
(47, 'Can delete district_ name', 11, 'delete_district_name'),
(48, 'Can view district_ name', 11, 'view_district_name'),
(49, 'Can add station', 12, 'add_station'),
(50, 'Can change station', 12, 'change_station'),
(51, 'Can delete station', 12, 'delete_station'),
(52, 'Can view station', 12, 'view_station'),
(53, 'Can add hospital_categories', 13, 'add_hospital_categories'),
(54, 'Can change hospital_categories', 13, 'change_hospital_categories'),
(55, 'Can delete hospital_categories', 13, 'delete_hospital_categories'),
(56, 'Can view hospital_categories', 13, 'view_hospital_categories'),
(57, 'Can add address_name', 14, 'add_address_name'),
(58, 'Can change address_name', 14, 'change_address_name'),
(59, 'Can delete address_name', 14, 'delete_address_name'),
(60, 'Can view address_name', 14, 'view_address_name'),
(61, 'Can add user_registration', 15, 'add_user_registration'),
(62, 'Can change user_registration', 15, 'change_user_registration'),
(63, 'Can delete user_registration', 15, 'delete_user_registration'),
(64, 'Can view user_registration', 15, 'view_user_registration'),
(65, 'Can add hospital_map', 16, 'add_hospital_map'),
(66, 'Can change hospital_map', 16, 'change_hospital_map'),
(67, 'Can delete hospital_map', 16, 'delete_hospital_map'),
(68, 'Can view hospital_map', 16, 'view_hospital_map'),
(69, 'Can add department_details', 17, 'add_department_details'),
(70, 'Can change department_details', 17, 'change_department_details'),
(71, 'Can delete department_details', 17, 'delete_department_details'),
(72, 'Can view department_details', 17, 'view_department_details'),
(73, 'Can add hospital_department', 18, 'add_hospital_department'),
(74, 'Can change hospital_department', 18, 'change_hospital_department'),
(75, 'Can delete hospital_department', 18, 'delete_hospital_department'),
(76, 'Can view hospital_department', 18, 'view_hospital_department'),
(77, 'Can add user_register', 19, 'add_user_register'),
(78, 'Can change user_register', 19, 'change_user_register'),
(79, 'Can delete user_register', 19, 'delete_user_register'),
(80, 'Can view user_register', 19, 'view_user_register');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_register`
--

CREATE TABLE `auth_user_user_register` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `identy_no` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `v_key` varchar(500) NOT NULL,
  `v_status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_user_register`
--

INSERT INTO `auth_user_user_register` (`id`, `fname`, `email`, `identy_no`, `mobile`, `password`, `v_key`, `v_status`) VALUES
(42, 'Maniruzzaman', 'monirhasan12980@gmail.com', '25484455', '01720651306', '123456@Aa', 'Ay8hzsYi4_o3A0bh47ffdfbQdmc661Dl6KuvrTZReco', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_from_doctor_depert_name`
--

CREATE TABLE `dashboard_from_doctor_depert_name` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_from_doctor_depert_name`
--

INSERT INTO `dashboard_from_doctor_depert_name` (`id`, `name`) VALUES
(50, 'Cardiology Department'),
(59, 'Cardiology Department or Emergency Medicine'),
(44, 'Dermatology'),
(62, 'Dermatology Department'),
(48, 'Diabetology Department'),
(60, 'Endocrinology Department'),
(45, 'General Surgery'),
(56, 'Hepatology Department'),
(63, 'Infectious Disease '),
(43, 'Infectious Disease Department'),
(47, 'Infectious Disease or HIV/AIDS Clinic/ Virology'),
(66, 'Infectious Disease/Otolaryngology/ENT'),
(57, 'Internal Medicine or Primary Care Department'),
(55, 'Internal Medicine'),
(46, 'Medicine or Allergy and Immunology Department'),
(68, 'Neurology'),
(51, 'Neurology Department'),
(52, 'Neurosurgery Department'),
(54, 'nfectious Disease or Pediatrics Department / Virology'),
(64, 'Obstetrics '),
(65, 'Oncology '),
(67, 'Otolaryngology '),
(49, 'Pulmonology or Respiratory Medicine Department'),
(58, 'Pulmonology/ Risphithory medicine Department'),
(53, 'Pure Medicine Department'),
(61, 'Rheumatology Department or Orthopedics');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_from_sub_disease`
--

CREATE TABLE `dashboard_from_sub_disease` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `dep_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_from_sub_disease`
--

INSERT INTO `dashboard_from_sub_disease` (`id`, `name`, `dep_id_id`) VALUES
(18, 'Fungal infection', 43),
(19, 'Allergy', 44),
(20, 'Chronic cholestasis', 45),
(21, 'Drug Reaction', 46),
(22, 'AIDS', 47),
(23, 'Diabetes', 48),
(24, 'Bronchial Asthma', 49),
(25, 'hypertension', 50),
(26, 'Migraine', 51),
(28, 'Paralysis (brain hemorrhage)', 52),
(29, 'Malaria', 53),
(30, 'Chicken pox', 54),
(31, 'Dengue', 43),
(32, 'Typhoid', 55),
(33, 'hepatitis A', 56),
(34, 'Common Cold', 57),
(35, 'Pneumonia', 58),
(36, 'Heart attack', 59),
(37, 'Hypothyroidism', 60),
(38, 'Hypoglycemia', 48),
(39, 'Arthritis', 61),
(40, 'Acne', 62),
(41, 'COVID', 63),
(42, 'Pregnancy', 64),
(43, 'breast cancer', 65),
(44, 'Throat Fungus', 66),
(45, 'Otitis Media', 67),
(46, 'Acoustic Neuroma', 68),
(47, 'Eustachian Tube Dysfunction', 67),
(48, 'Allergic Rhinitis', 62),
(49, 'Hepatitis B', 56),
(50, 'Hepatitis C', 56),
(51, 'Hepatitis D', 56),
(52, 'Hepatitis E', 56),
(53, 'Alcoholic hepatitis', 56),
(54, 'Hyperthyroidism', 60),
(55, 'Tinnitus', 67),
(56, 'Meniere\'s Disease', 67),
(57, 'Ear Infection', 67),
(58, 'Otosclerosis', 67),
(59, 'Cholesteatoma', 67),
(60, 'Presbycusis', 67),
(61, 'Labyrinthitis', 67),
(62, 'Ear Wax Blockage', 67),
(63, 'Hyperacusis', 67),
(64, 'Swimmer\'s Ear', 67),
(65, 'Ear Polyps', 67),
(66, 'Noise-Induced Hearing Loss', 67),
(67, 'Ear Canal Stenosis', 67),
(68, 'Rhinitis', 67),
(69, 'Sinusitis', 67),
(70, 'Nasal Polyps', 67),
(71, 'Deviated Septum', 67),
(72, 'Nasal Fracture', 67),
(73, 'Nasal Vestibulitis', 67),
(74, 'Rhinophyma', 44),
(75, 'Nasal Dermatitis', 44),
(76, 'Nosebleed (Epistaxis)', 67),
(77, 'Nasal Furuncle (Boil)', 67),
(78, 'Nasal Congestion', 67);

-- --------------------------------------------------------

--
-- Table structure for table `department_details_department_details`
--

CREATE TABLE `department_details_department_details` (
  `id` bigint(20) NOT NULL,
  `text` longtext DEFAULT NULL,
  `put` varchar(50) NOT NULL,
  `select_dep_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district_district_name`
--

CREATE TABLE `district_district_name` (
  `id` int(11) NOT NULL,
  `district` varchar(100) DEFAULT NULL,
  `divi_fk_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district_district_name`
--

INSERT INTO `district_district_name` (`id`, `district`, `divi_fk_id`) VALUES
(7, 'Ghazipur', 1),
(8, 'Tangail', 1),
(9, 'Narsingdi', 1),
(10, 'Narayanganj', 1),
(11, 'Faridpur', 1),
(12, 'Kishoreganj', 1),
(13, 'Dhaka', 1),
(14, 'Munshiganj', 1),
(15, 'Madaripur', 1),
(18, 'Rajbari', 1),
(19, 'Shariatpur', 1),
(20, 'Jamalpur', 5),
(21, 'Mymensingh', 5),
(22, 'Netrokona', 5),
(23, 'Sherpur', 5),
(24, 'Dinajpur', 7),
(25, 'Kurigram', 7),
(26, 'Gaibandha', 7),
(27, 'Lalmonirhat', 7),
(28, 'Panchagarh', 7),
(29, 'Rangpur', 7),
(30, 'Thakurgaon', 7),
(31, 'Natore', 4),
(32, 'Rajshahi', 4),
(33, 'Sirajganj', 4),
(34, 'Pabna', 4),
(35, 'Bogura', 4),
(36, 'Chapainawabganj', 4),
(37, 'Naogaon', 4),
(38, 'Joypurhat', 4),
(40, 'Bagerhat', 8),
(42, 'Jashore', 8),
(44, 'Khulna', 8),
(45, 'Kushtia', 8),
(46, 'Magura', 8),
(47, 'Meherpur', 8),
(48, 'Narail', 8),
(50, 'Satkhira', 8),
(51, 'Jhenaidah', 8),
(52, 'Chuadanga', 8),
(53, 'Habiganj', 3),
(54, 'Moulvibazar', 3),
(55, 'Sunamganj', 3),
(56, 'Sylhet', 3),
(57, 'Brahmanbaria', 9),
(58, 'Comilla', 9),
(59, 'Chandpur', 9),
(60, 'Lakshmipur', 9),
(61, 'Noakhali', 9),
(62, 'Feni', 9),
(63, 'Khagrachhari', 9),
(64, 'Rangamati', 9),
(65, 'Bandarban', 9),
(66, 'Chittagong', 9),
(67, 'Cox\'s Bazar', 9),
(69, 'Barisal', 6),
(70, 'Barguna', 6),
(71, 'Bhola', 6),
(72, 'Jhalokati', 6),
(73, 'Patuakhali', 6),
(74, 'Pirojpur', 6),
(75, 'Gopalganj ', 1),
(76, 'Manikganj', 1),
(77, 'Nilphamari', 7);

-- --------------------------------------------------------

--
-- Table structure for table `division_division_name`
--

CREATE TABLE `division_division_name` (
  `id` bigint(20) NOT NULL,
  `division` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `division_division_name`
--

INSERT INTO `division_division_name` (`id`, `division`) VALUES
(6, ' Barisal'),
(9, 'Chittagong'),
(1, 'Dhaka'),
(8, 'Khulna'),
(5, 'Mymensingh'),
(4, 'Rajshahi'),
(7, 'Rangpur'),
(3, 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(14, 'address', 'address_name'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(19, 'auth_user', 'user_register'),
(5, 'contenttypes', 'contenttype'),
(7, 'dashboard_from', 'doctor_depert_name'),
(8, 'dashboard_from', 'sub_disease'),
(17, 'Department_Details', 'department_details'),
(11, 'district', 'district_name'),
(10, 'division', 'division_name'),
(13, 'hospital', 'hospital_categories'),
(18, 'Hospital_Department', 'hospital_department'),
(16, 'hospital_map', 'hospital_map'),
(6, 'sessions', 'session'),
(12, 'station', 'station'),
(9, 'symptom', 'symptom'),
(15, 'user', 'user_registration');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-26 08:16:13.296289'),
(2, 'auth', '0001_initial', '2023-11-26 08:16:21.338965'),
(3, 'admin', '0001_initial', '2023-11-26 08:16:23.005059'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-26 08:16:23.045089'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-26 08:16:23.112393'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-26 08:16:23.805948'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-26 08:16:24.563368'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-26 08:16:24.663634'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-26 08:16:24.702806'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-26 08:16:25.437798'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-26 08:16:25.504621'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-26 08:16:25.544890'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-26 08:16:25.647281'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-26 08:16:25.779546'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-26 08:16:25.896474'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-26 08:16:25.935448'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-26 08:16:26.046472'),
(18, 'dashboard_from', '0001_initial', '2023-11-26 08:16:26.296295'),
(19, 'dashboard_from', '0002_rename_department_name_doctor_depert_name', '2023-11-26 08:16:26.473694'),
(20, 'dashboard_from', '0003_subdisease', '2023-11-26 08:16:27.320517'),
(21, 'dashboard_from', '0004_rename_subdisease_sub_disease', '2023-11-26 08:16:27.520096'),
(22, 'dashboard_from', '0005_alter_sub_disease_name', '2023-11-26 08:16:27.703653'),
(23, 'dashboard_from', '0006_alter_sub_disease_name', '2023-11-26 08:16:28.154281'),
(24, 'dashboard_from', '0007_alter_sub_disease_dep_id', '2023-11-26 08:16:32.986480'),
(25, 'dashboard_from', '0008_alter_doctor_depert_name_name', '2023-11-26 08:16:33.586059'),
(26, 'dashboard_from', '0009_rename_name_sub_disease_nam', '2023-11-26 08:16:33.711577'),
(27, 'dashboard_from', '0010_rename_nam_sub_disease_name', '2023-11-26 08:16:33.869705'),
(28, 'division', '0001_initial', '2023-11-26 08:16:34.194378'),
(29, 'sessions', '0001_initial', '2023-11-26 08:16:34.636270'),
(30, 'symptom', '0001_initial', '2023-11-26 08:16:38.126776'),
(31, 'symptom', '0002_remove_symptom_symptom1_remove_symptom_symptom2_and_more', '2023-11-26 08:16:49.591134'),
(32, 'symptom', '0003_symptom_symptom10_symptom_symptom11_and_more', '2023-11-26 08:16:56.540430'),
(33, 'symptom', '0004_alter_symptom_symptom1_alter_symptom_symptom10_and_more', '2023-11-26 08:17:04.862187'),
(34, 'division', '0002_rename_name_divition_name_divition_and_more', '2023-11-26 09:30:35.989114'),
(35, 'division', '0003_rename_divition_name_division_name_and_more', '2023-11-26 09:39:32.683514'),
(36, 'district', '0001_initial', '2023-11-26 14:04:29.660597'),
(37, 'station', '0001_initial', '2023-11-26 15:48:38.771147'),
(38, 'hospital', '0001_initial', '2023-11-27 07:09:07.446249'),
(39, 'address', '0001_initial', '2023-11-27 09:25:23.134465'),
(40, 'address', '0002_alter_address_name_id', '2023-11-27 10:22:47.822288'),
(41, 'user', '0001_initial', '2023-11-28 06:52:18.453250'),
(42, 'user', '0002_rename_pawoard_user_registration_passwoard', '2023-11-28 09:35:37.255073'),
(43, 'hospital_map', '0001_initial', '2023-11-28 10:54:46.389481'),
(44, 'hospital_map', '0002_rename_hospital_id_hospital_map_hospital_fk', '2023-11-28 11:02:36.313477'),
(45, 'Department_Details', '0001_initial', '2023-12-06 08:30:40.627001'),
(46, 'Hospital_Department', '0001_initial', '2023-12-06 10:11:02.269167'),
(47, 'auth_user', '0001_initial', '2023-12-10 18:09:44.808728'),
(48, 'auth_user', '0002_alter_user_register_v_key', '2023-12-11 17:10:05.103840'),
(49, 'auth_user', '0003_alter_user_register_email', '2023-12-11 18:52:17.851310'),
(50, 'auth_user', '0004_alter_user_register_identy_no_and_more', '2023-12-11 18:55:36.652100');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('b7v1cyyqjseasiduoey9zx11blzlviax', '.eJxVjEEOwiAQRe_C2hBoGQSX7nsGMjCDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwk7gII06_W8T04LoDumO9NZlaXZc5yl2RB-1yasTP6-H-HRTs5Vtr4uyc15hMVuzP3oMenGKXB5PYKk0RAMGiGjFm0gSOlFUIOBoXRy_eH-c1N9Q:1r7uih:1p6z73zcUjvkL9Mkt77k71zt0YCAEDtw4NtxEdvZ5Z8', '2023-12-12 09:49:31.801536'),
('zhhvawoz47cj1517uh2ziz3xkmg16tsu', 'e30:1rDIaJ:6DHuGYSF-FJV9Kzu8NAd56syZ5why9Ir9OEQOM2yYWs', '2023-12-27 06:19:07.628040');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_department_hospital_department`
--

CREATE TABLE `hospital_department_hospital_department` (
  `id` bigint(20) NOT NULL,
  `select_depart_id` int(11) DEFAULT NULL,
  `select_hosp_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_department_hospital_department`
--

INSERT INTO `hospital_department_hospital_department` (`id`, `select_depart_id`, `select_hosp_id`) VALUES
(1, 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_hospital_categories`
--

CREATE TABLE `hospital_hospital_categories` (
  `id` bigint(20) NOT NULL,
  `hos_cat` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_hospital_categories`
--

INSERT INTO `hospital_hospital_categories` (`id`, `hos_cat`) VALUES
(1, 'Sakhipur General Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_map_hospital_map`
--

CREATE TABLE `hospital_map_hospital_map` (
  `id` int(11) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `hospital_fk_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `station_station`
--

CREATE TABLE `station_station` (
  `id` bigint(20) NOT NULL,
  `station` varchar(100) DEFAULT NULL,
  `dis_fk_id` int(11) DEFAULT NULL,
  `divi_fk_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `station_station`
--

INSERT INTO `station_station` (`id`, `station`, `dis_fk_id`, `divi_fk_id`) VALUES
(1, 'Sakhipur', 8, 1),
(3, 'Dhamrai', 13, 1),
(4, 'Dohar', 13, 1),
(5, 'Keraniganj', 13, 1),
(6, 'Nawabganj', 13, 1),
(7, 'Savar', 13, 1),
(8, 'Alfadanga', 11, 1),
(9, 'Bhanga', 11, 1),
(10, 'Boalmari', 11, 1),
(11, 'Char Bhadrasan', 11, 1),
(12, 'Faridpur Sadar', 11, 1),
(13, 'Faridpur Sadar', 11, 1),
(14, 'Madhukhali', 11, 1),
(15, ' Nagarkanda', 11, 1),
(16, 'Sadarpur', 11, 1),
(17, 'Saltha', 11, 1),
(18, 'Gazipur Sadar', 7, 1),
(19, 'Kaliakoir', 7, 1),
(20, 'Kaliganj', 7, 1),
(21, 'Kapasia', 7, 1),
(22, 'Sreepur', 7, 1),
(23, 'Gopalganj Sadar', 75, 1),
(24, 'Kasiani', 75, 1),
(25, 'Kotalipara', 75, 1),
(26, 'Maksudpur', 75, 1),
(27, 'Tungipara', 75, 1),
(29, 'Bakshiganj', 20, 5),
(30, 'Dewanganj', 19, 5),
(31, 'Islampur', 20, 5),
(32, 'Jamalpur Sadar', 20, 5),
(33, 'Madarganj', 20, 5),
(34, 'Melandah', 20, 5),
(35, 'Sharishabari', 20, 5),
(36, 'Austogram', 12, 1),
(37, 'Bajitpur', 12, 1),
(38, 'Bhairab', 12, 1),
(39, 'Hosainpur', 12, 1),
(40, 'Itna', 12, 1),
(41, 'Karimganj', 12, 1),
(42, 'Katiadi', 12, 1),
(43, 'Kishoreganj Sadar', 12, 1),
(44, 'Kuliarchar', 12, 1),
(45, 'Mithamain', 12, 1),
(46, 'Nikli', 12, 1),
(47, 'Pakundia', 12, 1),
(48, ' Tarail', 12, 1),
(49, 'Kalkini', 15, 1),
(50, 'Madaripur Sadar', 15, 1),
(51, 'Rajoir', 15, 1),
(53, 'Shibchar', 15, 1),
(55, 'Daulatpur', 76, 1),
(56, 'Ghior', 76, 1),
(57, 'Harirampur', 76, 1),
(58, 'Manikganj Sadar', 76, 1),
(60, 'Saturia', 76, 1),
(61, 'Shibalaya', 76, 1),
(63, 'Singair', 76, 1),
(64, 'Gazaria', 14, 1),
(65, 'Lauhajang', 14, 1),
(66, 'Munshiganj Sadar', 14, 1),
(67, 'Serajdikhan', 14, 1),
(68, 'Sreenagar', 19, 1),
(69, 'Tangibari', 14, 1),
(70, 'Bhaluka', 21, 5),
(71, 'Dhubaura', 21, 5),
(72, ' Fulbaria', 21, 5),
(73, 'Fulpur', 21, 5),
(74, 'Goffargaon', 21, 5),
(75, 'Gouripur', 21, 5),
(77, 'Haluaghat', 21, 5),
(78, 'Iswarganj', 21, 5),
(79, 'Mymensingh Sadar', 21, 5),
(81, 'Muktagacha', 21, 5),
(83, 'Nandail', 21, 5),
(85, 'Trishal', 21, 5),
(86, ' Araihazar', 10, 1),
(87, 'Bandar', 10, 1),
(88, 'Narayanganj Sadar', 10, 1),
(89, 'Rupganj', 10, 1),
(90, 'Sonargaon', 10, 1),
(91, 'Belabo', 9, 1),
(92, 'Monohardi', 9, 1),
(93, 'Norshingdi Sadar', 9, 1),
(94, 'Palash', 9, 1),
(95, 'Raipura', 9, 1),
(96, 'Shibpur', 9, 1),
(97, 'Atpara', 22, 5),
(98, 'Barhatta', 22, 5),
(99, 'Durgapur', 22, 5),
(100, 'Kalmakanda', 22, 5),
(102, 'Kendua', 22, 5),
(103, 'Khaliajuri', 22, 5),
(104, 'Madan', 22, 5),
(105, 'Mohanganj', 22, 5),
(106, 'Netrokona Sadar', 22, 5),
(108, 'Purbadhala', 22, 5),
(110, 'Goalunda', 18, 1),
(111, 'Pangsha', 18, 1),
(112, 'Rajbari Sadar', 18, 1),
(113, 'Kalukhale', 18, 1),
(114, 'Baliakandi', 18, 1),
(115, 'Bhedarganj', 19, 1),
(116, 'Damudiya', 19, 1),
(117, 'Gosairhat', 19, 1),
(118, 'Zajira', 19, 1),
(119, 'Naria', 19, 1),
(126, 'Jhenaigati', 23, 5),
(127, 'Nakla', 23, 5),
(128, 'Nalitabari', 23, 5),
(129, 'Sherpur Sadar', 23, 5),
(130, 'Sribordi', 23, 5),
(131, 'Bashail', 8, 1),
(132, 'Bhuapur', 8, 1),
(133, 'Delduar', 8, 1),
(134, 'Gopalpur', 8, 1),
(135, ' Kalihati', 8, 1),
(136, 'Mirzapur', 8, 1),
(137, 'Modhupur', 8, 1),
(138, 'Nagarpur', 8, 1),
(139, 'Tangail Sadar', 8, 1),
(140, 'Dhanbari', 8, 1),
(141, 'Ghatail', 8, 1),
(142, ' Bagerhat Sadar', 40, 8),
(143, ' Chitalmari', 40, 8),
(144, ' Fakirhat', 40, 8),
(145, ' Kachua', 40, 8),
(146, ' Mollarhat', 40, 8),
(147, ' Mongla', 40, 8),
(148, 'Morelgan', 40, 8),
(149, ' Rampal', 40, 8),
(150, ' Sarankhola', 40, 8),
(151, ' Alamdanga', 52, 8),
(152, ' Chuadanga Sadar', 52, 8),
(153, 'Damurhuda', 52, 8),
(154, ' Jibannagar', 52, 8),
(156, 'Abhoynagar', 42, 8),
(157, 'Bagherpara', 42, 8),
(158, 'Chowgacha', 42, 8),
(160, 'Jessore Sadar', 42, 8),
(161, 'Jhikargacha', 42, 8),
(162, 'Keshabpur', 42, 8),
(163, 'Manirampur', 42, 8),
(164, 'Sharsha', 42, 8),
(165, 'Kotchandpur', 51, 8),
(166, 'Harinakunda', 51, 8),
(167, ' Jhenaidah Sadar', 51, 8),
(168, 'Kaliganj', 51, 8),
(170, 'Moheshpur', 51, 8),
(171, 'Shailkupa', 51, 8),
(172, 'Batiaghata', 44, 8),
(173, 'Dacope', 44, 8),
(174, ' Dighalia', 44, 8),
(175, ' Dumuria', 44, 8),
(176, ' Phultala', 44, 8),
(177, ' Koira', 44, 8),
(178, 'Paikgacha', 44, 8),
(179, 'Rupsa', 44, 8),
(180, 'Terokhada', 44, 8),
(181, ' Bheramara', 45, 8),
(182, ' Daulatpur', 45, 8),
(183, ' Khoksha', 45, 8),
(184, 'Kumarkhali', 45, 8),
(185, ' Kushtia Sadar', 45, 8),
(186, 'Mirpur', 45, 8),
(191, 'Magura Sadar', 46, 8),
(192, 'Mohammadpur', 46, 8),
(193, 'Shalikha', 46, 8),
(195, 'Sreepur', 46, 8),
(196, 'Gangni', 47, 8),
(197, ' Meherpur Sadar', 47, 8),
(198, 'Mujibnagar', 47, 8),
(199, ' Kalia', 48, 8),
(200, ' Lohagara', 48, 8),
(201, ' Narail Sadar', 48, 8),
(202, 'Assasuni', 50, 8),
(203, 'Debhata', 50, 8),
(205, 'Kaliganj', 50, 8),
(206, 'Kolaroa', 50, 8),
(207, 'Satkhira Sadar', 50, 8),
(208, 'Shyamnagar', 50, 8),
(209, 'Tala', 50, 8),
(210, 'Adamdighi', 35, 4),
(211, 'Bogra Sadar', 35, 4),
(212, 'Dhunot', 35, 4),
(213, 'Dhubchanchia', 35, 4),
(214, 'Gabtali', 35, 4),
(215, 'Kahaloo', 35, 4),
(216, 'Nandigram', 35, 4),
(217, 'Sariakandi', 35, 4),
(219, 'Sherpur', 35, 4),
(220, 'Shibganj', 35, 4),
(221, 'Sonatola', 35, 4),
(223, 'Shajahanpur', 35, 4),
(224, 'Bholahat', 36, 4),
(225, 'Gomastapur', 36, 4),
(226, 'Nachole', 36, 4),
(227, 'Nawabganj Sadar', 36, 4),
(228, 'Shipganj', 36, 4),
(229, 'Akkelpur', 38, 4),
(230, 'Joypurhat Sadar', 38, 4),
(231, 'Kalai', 38, 4),
(233, 'Khetlal', 38, 4),
(234, 'Panchbibi', 38, 4),
(235, 'Atrai', 37, 4),
(236, 'Badalgachi', 37, 4),
(237, 'Dhamoirhat', 37, 4),
(238, 'Manda', 37, 4),
(239, 'Mahadebpur', 37, 4),
(240, 'Naogaon Sadar', 37, 4),
(241, 'Niamatpur', 37, 4),
(242, 'Patnitala', 37, 4),
(243, 'Porsha', 37, 4),
(244, 'Raninagar', 37, 4),
(245, 'Shapahar', 37, 4),
(246, 'Baghatipara', 31, 4),
(247, 'Baraigram', 31, 4),
(248, 'Gurudaspur', 31, 4),
(249, 'Lalpur', 31, 4),
(250, 'Natore Sadar', 31, 4),
(251, 'Singra', 31, 4),
(252, 'Atgharia', 34, 4),
(253, 'Bera', 34, 4),
(254, 'Bhangura', 34, 4),
(255, 'Chatmohar', 34, 4),
(256, 'Faridpur', 34, 4),
(257, 'Iswardi', 34, 4),
(258, 'Pabna Sadar', 34, 4),
(259, 'Santhia', 34, 4),
(260, 'Sujanagar', 34, 4),
(261, 'Bagha', 32, 4),
(262, 'Bagmara', 32, 4),
(263, 'Charghat', 32, 4),
(264, 'Durgapur', 32, 4),
(265, 'Godagari', 32, 4),
(266, 'Mohanpur', 32, 4),
(267, 'Paba', 32, 4),
(268, 'Putia', 32, 4),
(269, 'Tanore', 32, 4),
(270, 'Belkuchi', 33, 4),
(271, 'Chowhali', 33, 4),
(272, 'Kamarkhanda', 33, 4),
(273, 'Kazipur', 33, 4),
(274, 'Raiganj', 33, 4),
(275, 'Shahajadpur', 33, 4),
(276, ' Serajganj Sadar', 33, 4),
(277, 'Tarash', 33, 4),
(278, 'Ullapara', 33, 4),
(279, 'Ajmeriganj', 53, 3),
(280, 'Bahubal', 53, 3),
(281, 'Baniachang', 53, 3),
(282, 'Chunarughat', 53, 3),
(283, 'Habiganj Sadar', 53, 3),
(284, 'Lakhai', 53, 3),
(285, 'Madhabpur', 53, 3),
(286, 'Nabiganj', 53, 3),
(287, 'Barlekha', 54, 3),
(288, 'Kamalganj', 54, 3),
(289, 'Kulaura', 54, 3),
(290, 'Moulvibazar Sadar', 54, 3),
(291, 'Rajnagar', 54, 3),
(292, 'Sreemongal', 54, 3),
(293, 'Juri', 54, 3),
(294, 'Biswambharpur', 55, 3),
(295, 'Chattak', 55, 3),
(296, 'Derai', 55, 3),
(297, 'Dharmapasha', 55, 3),
(298, 'Dowarabazar', 55, 3),
(299, 'Jagannathpur', 55, 3),
(300, 'Jamalganj', 55, 3),
(301, 'Sulla', 55, 3),
(302, 'Sunamganj Sadar', 55, 3),
(303, 'Taherpur', 55, 3),
(305, 'South Sunamganj', 55, 3),
(306, 'Balaganj', 56, 3),
(307, 'Beanibazar', 56, 3),
(308, 'Biswanath', 56, 3),
(309, 'Companyganj', 56, 3),
(310, 'Fenchuganj', 56, 3),
(311, 'Gowainghat', 56, 3),
(313, 'Golapganj', 56, 3),
(314, 'Jaintapur', 56, 3),
(315, 'Zakiganj', 56, 3),
(316, 'Kanaighat', 56, 3),
(317, 'Sylhet Sadar', 56, 3),
(318, 'South Surma', 56, 3),
(319, 'Amtali', 70, 6),
(320, 'Bamna', 70, 6),
(321, 'Barguna Sadar', 70, 6),
(322, 'Betagi', 70, 6),
(323, 'Patharghata', 70, 6),
(324, 'Agailjhara', 69, 6),
(325, 'Babuganj', 69, 6),
(326, 'Bakerganj', 69, 6),
(327, 'Banaripara', 69, 6),
(328, 'Barisal Sadar', 69, 6),
(329, 'Gournadi', 69, 6),
(330, 'Hijla', 69, 6),
(331, 'Mehendiganj', 69, 6),
(333, 'Muladi', 69, 6),
(334, 'Wazirpur', 69, 6),
(335, 'Bhola Sadar', 71, 6),
(336, 'Borhanuddin', 71, 6),
(337, 'Charfession', 71, 6),
(338, 'Daulatkhan', 71, 6),
(339, 'Lalmohan', 71, 6),
(340, 'Manpura', 71, 6),
(341, 'Tajumuddin', 71, 6),
(342, 'Jhalokathi Sadar', 72, 6),
(343, 'Kathalia', 72, 6),
(344, 'Nalchiti', 72, 6),
(345, 'Rajapur', 72, 6),
(346, 'Bauphal', 73, 6),
(347, 'Dasmina', 73, 6),
(348, 'Dumki', 73, 6),
(349, 'Galachipa', 73, 6),
(350, 'Kalapara', 73, 6),
(351, 'Mirjaganj', 73, 6),
(352, 'Patuakhali Sadar', 73, 6),
(353, 'Bhandaria', 74, 6),
(354, 'Kaukhali', 74, 6),
(355, 'Mothbaria', 74, 6),
(356, 'Nesarabad (Shawrupkathi)', 74, 6),
(357, 'Nazirpur', 74, 6),
(359, 'Perojpur Sadar', 74, 6),
(360, 'Zia Nagar (Indurkani)', 74, 6),
(361, 'Ali Kadam', 65, 9),
(362, 'Bandarban Sadar', 65, 9),
(363, 'Lama', 65, 9),
(364, 'Nakhoyngchari', 65, 9),
(365, 'Rawanchari', 65, 9),
(366, 'Ruma', 65, 9),
(367, 'Thanchi', 65, 9),
(368, 'Akhaura', 57, 9),
(369, 'Ashuganj', 57, 9),
(370, 'Bancharampur', 57, 9),
(371, 'Kashba', 57, 9),
(372, 'Nabinagar', 57, 9),
(373, 'Nasirnagar', 57, 9),
(374, 'Sarail', 57, 9),
(375, 'Chandpur Sadar', 59, 9),
(376, 'Faridganj', 59, 9),
(377, 'Haimchar', 59, 9),
(378, 'Hajiganj', 59, 9),
(379, 'Kachua', 59, 9),
(380, 'Matlab (South)', 59, 9),
(381, 'Matlab (North)(Chengarchar)', 59, 9),
(382, 'Shahrasti', 59, 9),
(383, 'Anwara', 66, 9),
(384, 'Banshkhali', 66, 9),
(385, 'Boalkhali', 66, 9),
(386, 'Chandanaish', 66, 9),
(387, 'Fatikchari', 66, 9),
(388, 'Hathazari', 66, 9),
(389, 'Lohagara', 66, 9),
(390, 'Mirsarai', 66, 9),
(391, 'Patiya', 66, 9),
(392, 'Rangunia', 66, 9),
(393, 'Raujan', 66, 9),
(394, 'Sandwip', 66, 9),
(395, 'Satkania', 66, 9),
(396, 'Sitakundu', 66, 9),
(397, 'Barura', 58, 9),
(398, 'Brahmanpara', 58, 9),
(399, 'Burichang', 58, 9),
(400, 'Chandina', 58, 9),
(401, 'Chowddagram', 58, 9),
(402, 'Comilla Sadar', 58, 9),
(403, 'Daudkandi', 58, 9),
(404, 'Debiduar', 58, 9),
(405, 'Homna', 58, 9),
(406, 'Laksam', 58, 9),
(407, 'Meghna', 58, 9),
(408, 'Muradnagar', 58, 9),
(409, 'Nangolkot', 58, 9),
(410, 'Titas', 58, 9),
(411, 'Monoharganj', 58, 9),
(412, 'Comilla Sadar South', 58, 9),
(413, 'Chakoria', 67, 9),
(414, ' Cox?s Bazar Sadar', 67, 9),
(415, 'Kutubdia', 67, 9),
(416, 'Moheshkhali', 67, 9),
(417, 'Pekua', 67, 9),
(418, 'Ramu', 67, 9),
(419, 'Teknaf', 67, 9),
(420, ' Ukhia', 67, 9),
(421, 'Chagalnayya', 62, 9),
(422, 'Daganbhuiyan', 62, 9),
(423, 'Feni Sadar', 62, 9),
(424, 'Parshuram', 62, 9),
(425, 'Fulgazi', 62, 9),
(426, 'Sonagazi', 62, 9),
(427, 'Dighinala', 63, 9),
(428, 'Khagrachari Sadar', 63, 9),
(429, 'Laksmichar', 63, 9),
(430, 'Mohalchari', 63, 9),
(431, 'Manikchari', 63, 9),
(432, 'Matiranga', 63, 9),
(433, 'Panchari', 63, 9),
(434, 'Ramgor', 63, 9),
(435, 'Laksmipur Sadar', 60, 9),
(436, 'Ramgati', 60, 9),
(437, 'Ramganj', 60, 9),
(438, 'Raipur', 60, 9),
(439, 'Kamalnagar', 60, 9),
(440, 'Begumganj', 61, 9),
(441, 'Chatkhil', 61, 9),
(442, 'Companigan', 61, 9),
(443, 'Hatiya', 61, 9),
(444, 'Noakhali Sadar(Sudharam)', 61, 9),
(445, 'Senbag', 61, 9),
(446, 'Sonaimuri', 61, 9),
(447, 'Subarnachar', 61, 9),
(448, 'Kabir Hat', 61, 9),
(449, 'Baghaichari', 64, 9),
(450, 'Barkal', 64, 9),
(451, 'Belaichari', 64, 9),
(452, 'Jurachari', 64, 9),
(453, 'Kaptai', 64, 9),
(454, 'Kawkhali', 64, 9),
(455, 'Langadu', 64, 9),
(456, 'Naniarchar', 64, 9),
(457, 'Rajasthali', 64, 9),
(458, 'Rangamati Sadar', 64, 9),
(459, 'Birampur', 24, 7),
(460, 'Birganj', 24, 7),
(461, 'Birol', 24, 7),
(462, 'Bochaganj', 24, 7),
(463, 'Chirirbandar', 24, 7),
(464, 'Dinajpur Sadar', 24, 7),
(465, 'Phulbari', 24, 7),
(466, 'Ghoraghat', 24, 7),
(467, 'Hakimpur', 24, 7),
(468, 'Kaharole', 24, 7),
(469, 'Khanshama', 24, 7),
(470, 'Nawabganj', 24, 7),
(471, 'Parbatipur', 24, 7),
(472, 'Fulchari', 26, 7),
(473, 'Gaibandha Sadar', 26, 7),
(474, 'Gobindaganj', 26, 7),
(475, 'Palashbari', 26, 7),
(476, 'Sadullapur', 26, 7),
(477, 'Shaghatta', 26, 7),
(478, 'Sundarganj', 26, 7),
(479, 'Bhurungamari', 25, 7),
(480, 'Chilmary', 25, 7),
(481, 'Fulbari', 25, 7),
(482, 'Kurigram Sadar', 25, 7),
(483, 'Nageswari', 25, 7),
(484, 'Rajarhat', 25, 7),
(485, 'Rajibpur', 25, 7),
(486, 'Rowmari', 25, 7),
(487, 'Ulipur', 25, 7),
(488, 'Aditmari', 27, 7),
(489, 'Hatibandha', 27, 7),
(490, 'Kaliganj', 27, 7),
(491, 'Lalmonirhat Sadar', 27, 7),
(492, 'Patgram', 27, 7),
(493, 'Dimla', 77, 7),
(494, 'Domar', 77, 7),
(495, 'Jaldhaka', 77, 7),
(497, 'Kishoreganj', 77, 7),
(498, 'Nilphamari Sadar', 77, 7),
(499, 'Saidpur', 77, 7),
(500, 'Atwari', 28, 7),
(501, 'Boda', 28, 7),
(502, 'Debiganj', 28, 7),
(503, 'Panchagarh Sadar', 28, 7),
(504, 'Tetulia', 28, 7),
(505, 'Badarganj', 29, 7),
(506, 'Gangachara', 29, 7),
(507, 'Kaunia', 29, 7),
(508, 'Mithapukur', 29, 7),
(509, 'Pirgacha', 29, 7),
(510, 'Pirganj', 29, 7),
(511, 'Rangpur Sadar', 29, 7),
(512, 'Taraganj', 29, 7),
(513, 'Baliadangi', 29, 7),
(514, 'Haripur', 30, 7),
(515, 'Pirganj', 30, 7),
(517, 'Ranishankail', 30, 7),
(518, 'Thakurgaon Sadar', 30, 7);

-- --------------------------------------------------------

--
-- Table structure for table `symptom_symptom`
--

CREATE TABLE `symptom_symptom` (
  `id` int(11) NOT NULL,
  `depart_id_id` int(11) DEFAULT NULL,
  `disease_id_id` int(11) DEFAULT NULL,
  `symptom1` varchar(100) DEFAULT NULL,
  `symptom2` varchar(100) DEFAULT NULL,
  `symptom3` varchar(100) DEFAULT NULL,
  `symptom4` varchar(100) DEFAULT NULL,
  `symptom5` varchar(100) DEFAULT NULL,
  `symptom6` varchar(100) DEFAULT NULL,
  `symptom7` varchar(100) DEFAULT NULL,
  `symptom8` varchar(100) DEFAULT NULL,
  `symptom9` varchar(100) DEFAULT NULL,
  `symptom10` varchar(100) DEFAULT NULL,
  `symptom11` varchar(100) DEFAULT NULL,
  `symptom12` varchar(100) DEFAULT NULL,
  `symptom13` varchar(100) DEFAULT NULL,
  `symptom14` varchar(100) DEFAULT NULL,
  `symptom15` varchar(100) DEFAULT NULL,
  `symptom16` varchar(100) DEFAULT NULL,
  `symptom17` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptom_symptom`
--

INSERT INTO `symptom_symptom` (`id`, `depart_id_id`, `disease_id_id`, `symptom1`, `symptom2`, `symptom3`, `symptom4`, `symptom5`, `symptom6`, `symptom7`, `symptom8`, `symptom9`, `symptom10`, `symptom11`, `symptom12`, `symptom13`, `symptom14`, `symptom15`, `symptom16`, `symptom17`) VALUES
(63, 43, 18, 'I have itching', 'I have nodal_skin_eruptions', 'I have dischromic _patches', 'I have skin_rash', 'I don\'t have shivering', 'I don\'t have chills', 'I don\'t have stomach_pain', 'I don\'t have vomiting', 'I don\'t have fatigue', 'I don\'t have lethargy', 'I don\'t have cough', 'I don\'t have congestion', 'I don\'t have back_pain', 'I don\'t have mild_fever', 'I don\'t have phlegm', 'I don\'t have runny_nose', 'I don\'t have neck_pain'),
(64, 44, 19, 'I have continuous_sneezing', 'I have shivering', 'I have chills', 'I have watering_from_eyes', 'I don\'t have cramps', 'I don\'t have obesity', 'I don\'t have brittle_nails', 'I don\'t have knee_pain', 'I don\'t have stiff_neck', 'I don\'t have depression', 'I don\'t have polyuria', 'I don\'t have rusty_sputum', 'I don\'t have palpitations', 'I don\'t have Swelling', 'I don’t have Ear Pain', 'I don\'t have Reduced Hearing', 'I don\'t have Persistent cough'),
(65, 45, 20, 'I have itching', 'I have yellowish_skin', 'I have nausea', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have yellowing_of_eyes', 'I don\'t have Blood in urine', 'I don’t have Jaundice', 'I don\'t have Neck lump', 'I don’t have Sinus Pressure', 'I don\'t have Blocked nose', 'I don\'t have wheezing', 'I don\'t have Ear fullness', 'I don\'t have discomfort', 'I don\'t have Bloating', 'I don\'t have fractures', 'I don\'t have sneezing'),
(66, 46, 21, 'I have itching', 'I have skin_rash', 'I have stomach_pain', 'I have burning_micturition', 'I have spotting_ urination', 'I don\'t have Hematuria', 'I don\'t have leg cramps', 'I don\'t have Skin ulcers', 'I don\'t have frequent infections', 'I don\'t have Heaviness', 'I don\'t have Vision problems', 'I don\'t have Headache', 'I don\'t have pain in neck', 'I don\'t have Bruising', 'I don’t have Anxiety', 'I don\'t have dizziness', 'I don\'t have constipation'),
(67, 47, 22, 'I have muscle_wasting', 'I have patches_in_throat', 'I have high_fever', 'I have extra_marital_contacts', 'I don\'t have Bad mouth', 'I don\'t have constipation', 'I don\'t have Soreness', 'I don\'t have ulcers', 'I don’t have dehydration', 'I don\'t have fainting', 'I don\'t have Stress', 'I don\'t have dark urine', 'I don\'t have Numbness', 'I don\'t have weakness', 'I don\'t have irregular heartbeat', 'I don\'t have nervousness', 'I don\'t have eruptions'),
(68, 48, 23, 'I have fatigue', 'I have weight_loss', 'I have restlessness', 'I have lethargy', 'I have irregular_sugar_level', 'I have blurred_and_distorted_vision', 'I have obesity', 'I have excessive_hunger', 'I have increased_appetite', 'I have polyuria', 'I don\'t have urination changes', 'I don\'t have decreased smell', 'I don\'t have seizures', 'I don\'t have hearing difficulties', 'I don\'t have bleeding', 'I don\'t have persistent cough', 'I don\'t have shortness of breath'),
(69, 49, 24, 'I have fatigue', 'I have cough', 'I have high_fever', 'I have breathlessness', 'I have family_history', 'I have mucoid_sputum', 'I don\'t have oily skin', 'I don’t have red scaly patch', 'I don\'t have high blood pressure', 'I don\'t have pale stool', 'I don\'t have regurgitation', 'I don\'t have poor appetite', 'I don\'t have dehydration', 'I don\'t have oral thrush', 'I don\'t have bluish lips', 'I don\'t have spotting', 'I don\'t have enlarged pores'),
(70, 50, 25, 'I have headache', 'I have chest_pain', 'I have dizziness', 'I have loss_of_balance', 'I have lack_of_concentration', 'I don\'t have itchy nose', 'I don\'t have changes in voice', 'I don\'t have difficulty walking', 'I don\'t have muscle aches', 'I don\'t have sunken eyes', 'I don\'t have rash', 'I don\'t have nausea', 'I don’t have short of breath', 'I don\'t have memory problems', 'I don\'t have weight loss', 'I don\'t have fractures', 'I don\'t have skin dimpling'),
(71, 51, 26, 'I have acidity', 'I have indigestion', 'I have headache', 'I have blurred_and_distorted_vision', 'I have excessive_hunger', 'I have stiff_neck', 'I have depression', 'I have irritability', 'I have visual_disturbances', 'I don\'t have blister', 'I don\'t have palpitations', 'I don\'t have stomach bleeding', 'I don\'t have mucoid_sputum', 'I don\'t have belly_pain', 'I don\'t have internal_itching', 'I don\'t have swelling_joints', 'I don\'t have cramps'),
(72, 52, 28, 'I have vomiting', 'I have headache', 'I have weakness_of_one_body_side', 'I have altered_sensorium', 'I don\'t have bruising', 'I don\'t have bladder discomfort', 'I don\'t have irritability', 'I don\'t have rusty_sputum', 'I don\'t have high fever', 'I don\'t have skin changes', 'I don\'t have bone pain', 'I don\'t have nosebleeds', 'I don\'t have thirst', 'I don\'t have facial pain', 'I don\'t have hoarseness', 'I don\'t have sneezing', 'I don\'t have leg cramps'),
(73, 53, 29, 'I have chills', 'I have vomiting', 'I have high_fever', 'I have sweating', 'I have headache', 'I have nausea', 'I have diarrhoea', 'I have muscle_pain', 'I don\'t have urination changes', 'I don\'t have dizziness', 'I don\'t have depression', 'I don\'t have restlessness', 'I don\'t have snoring', 'I don\'t have anxiety', 'I don\'t have metallic taste', 'I don\'t have indigestion', 'I don\'t have peeling'),
(74, 54, 30, 'I have itching', 'I have skin_rash', 'I have fatigue', 'I have lethargy', 'I have high_fever', 'I have headache', 'I have loss_of_appetite', 'I have mild_fever', 'I have swelled_lymph_nodes', 'I have malaise', 'I have red_spots_over_body', 'I don\'t have constipation', 'I don\'t have bleeding', 'I don\'t have blurred vision', 'I don\'t have spotting', 'I don\'t have flaring nostrils', 'I don\'t have stress'),
(75, 55, 32, 'I have chills', 'I have vomiting', 'I have fatigue', 'I have high_fever', 'I have headache', 'I have nausea', 'I have constipation', 'I have abdominal_pain', 'I have diarrhoea', 'I have toxic_look_(typhos)', 'I have belly_pain', 'I don\'t have malaise', 'I don\'t have discomfort', 'I don\'t have reduced urination', 'I don\'t have infections', 'I don\'t have Gynecomastia', 'I don\'t have numbness'),
(76, 56, 33, 'I have vomiting', 'I have yellowish_skin', 'I have dark_urine', 'I have nausea', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have diarrhoea', 'I have mild_fever', 'I have yellowing_of_eyes', 'I have muscle_pain', 'I don\'t have cramps', 'I don\'t have leg cramps', 'I don\'t have fatigue', 'I don\'t have nervousness', 'I don\'t have depression', 'I don\'t have urinary tract infections', 'I don\'t have tingling'),
(77, 57, 34, 'I have continuous_sneezing', 'I have chills', 'I have fatigue', 'I have cough', 'I have high_fever', 'I have headache', 'I have swelled_lymph_nodes', 'I have malaise', 'I have phlegm', 'I have throat_irritation', 'I have redness_of_eyes', 'I have sinus_pressure', 'I have runny_nose', 'I have congestion', 'I have chest_pain', 'I have loss_of_smell', 'I have muscle_pain'),
(78, 58, 35, 'I have chills', 'I have fatigue', 'I have cough', 'I have high_fever', 'I have breathlessness', 'I have sweating', 'I have malaise', 'I have phlegm', 'I have chest_pain', 'I have fast_heart_rate', 'I have rusty_sputum', 'I don\'t have neck pain', 'I don\'t have ulcers', 'I don\'t have spotting', 'I don\'t have weak urine flow', 'I don\'t have erythema', 'I don\'t have insomnia'),
(79, 59, 36, 'I have chest_pain', 'I have breathlessness', 'I have sweating', 'I have vomiting', 'I don\'t have Bluish lips', 'I don\'t have oral thrush', 'I don\'t have ulcers', 'I don\'t have dehydration', 'I don\'t have poor appetitie', 'I don\'t have head ache', 'I don\'t have soreness', 'I don\'t have bad breath', 'I don\'t have confusion', 'I don\'t have irritability', 'I don\'t have Change in bowel habits', 'I don\'t have numbness', 'I don\'t have balance issues'),
(80, 60, 37, 'I have fatigue', 'I have weight_gain', 'I have cold_hands_and_feets', 'I have mood_swings', 'I have lethargy', 'I have dizziness', 'I have puffy_face_and_eyes', 'I have enlarged_thyroid', 'I have brittle_nails', 'I have swollen_extremeties', 'I have depression', 'I have irritability', 'I have abnormal_menstruation', 'I don\'t have irritability', 'I don\'t have Localized discomfort', 'I don\'t have ulcers', 'I don\'t have cramps'),
(81, 61, 39, 'I have muscle_weakness', 'I have stiff_neck', 'I have swelling_joints', 'I have movement_stiffness', 'I have painful_walking', 'I don\'t have soreness', 'I don\'t have Eruptions', 'I don\'t have watery eyes', 'I don\'t have eye injury', 'I don\'t have Frequent choking', 'I don\'t have Pustules and Pimples', 'I don\'t have congestion', 'I don\'t have Numbness', 'I don\'t have weakness', 'I don\'t have Chills', 'I don\'t have tingling', 'I don\'t have insomnia'),
(82, 62, 40, 'I have skin_rash', 'I have pus_filled_pimples', 'I have blackheads', 'I have scurring', 'I don\'t have itching', 'I don\'t have blurred vision', 'I don\'t have regurgitation', 'I don\'t have weak urine flow', 'I don\'t have eye injury', 'I don\'t have neck pain', 'I don\'t have spotting', 'I don\'t have irritability', 'I don\'t have erythema', 'I don\'t have blurred vision', 'I don\'t have soreness', 'I don\'t have oral thrush', 'I don\'t have eruptions'),
(83, 63, 41, 'I have chills', 'I have Cough', 'I have difficulty breathing', 'I have Fatigue', 'I have body aches', 'I have loss of taste', 'I have Sore throat', 'I have runny nose', 'I have Nausea', 'I don\'t have Frequent choking', 'I don\'t have frequent urination', 'I don\'t have dark urine', 'I don\'t have cloudy urine', 'I don\'t have oily skin', 'I don\'t have red scaly patch', 'I don\'t have low blood pressure', 'I don\'t have eruptions'),
(84, 64, 42, 'I have Missed Period', 'I have Breast Changes', 'I have Nausea', 'I have Fatigue', 'I have Mood Swings', 'I have Constipation', 'I have Dizziness ', 'I have Fainting', 'I have Frequent Fetal Movements', 'I don\'t have Ketoacidosis', 'I don\'t have Leg swelling', 'I don\'t have Numbness', 'I don\'t have metallic tastle', 'I don\'t have sunken eyes', 'I don\'t have pale skin', 'I don\'t have night sweats', 'I don\'t have excessive thrust'),
(85, 65, 43, 'I have Swelling ', 'I have Skin dimpling', 'I have nipple pain', 'I have Nipple retraction', 'I have Nipple discharge', 'I have Swollen lymph nodes', 'I have Breast Discomfort', 'I have Redness', 'I have Breast Lump', 'I don\'t have bloating', 'I don\'t have irregular mole', 'I don\'t have deformity', 'I don’t have bumps', 'I don\'t have bruising', 'I don\'t have burning', 'I don’t have bad breath', 'I don\'t have dry mouth'),
(86, 66, 44, 'I have White Lesions', 'I have Redness ', 'I have irritation', 'I have Loss of Taste', 'I have Sore throat', 'I have Dry Mouth', 'I have Bleeding', 'I have Oral Thrush', 'I have Bad Breath', 'I don\'t have balance issues', 'I don\'t have Mood swings', 'I don\'t have rash', 'I don\'t have rapd heart rate', 'I don\'t have pain in neck', 'I don\'t have skin ulcers', 'I don\'t have nasal discharge', 'I don\'t have burning sensation'),
(87, 67, 45, 'I have Ear Pain', 'I have Fluid Drainage', 'I have Hearing Loss', 'I have Fever', 'I have Irritability', 'I have Difficulty Sleeping', 'I have Poor Appetite', 'I have Balance Problems', 'I have Fatigue', 'I don\'t have bloating', 'I don\'t have enlarged thyroid', 'I don\'t have cramps', 'I don\'t have malaise', 'I don\'t have palpitations', 'I don\'t have heaviness', 'I don\'t have hoarseness', 'I don\'t have belly_pain'),
(88, 68, 46, 'I have Hearing Loss', 'I have Balance Problems', 'I have Tinnitus', 'I have Vertigo', 'I have Headache', 'I have Nausea', 'I have Vomiting', 'I have Facial Weakness', 'I have Numbness', 'I don\'t have hoarseness', 'I don\'t have heaviness', 'I don\'t have depression', 'I don\'t have indigestion', 'I don\'t have shivering', 'I don\'t have altered_sensorium', 'I don\'t have passage_of_gases', 'I don\'t have congestion'),
(89, 67, 47, 'I have Ear Pressure', 'I have Hearing Difficulties', 'I have Pain', 'I have Tinnitus', 'I have Fullness in Ear', 'I have Dizziness', 'I have Balance Issues', 'I have Reduced Hearing', 'I have Headache', 'I don\'t have watering_from_eyes', 'I don\'t have family_history', 'I don\'t have blood clots', 'I don\'t have blood_in_sputum', 'I don\'t have nervousness', 'I don\'t have numbness', 'I don\'t have changes in voice', 'I don’t have tingling'),
(90, 43, 31, 'I have skin_rash', 'I have chills', 'I have joint_pain', 'I have vomiting', 'I have fatigue', 'I have high_fever', 'I have headache', 'I have nausea', 'I have loss_of_appetite', 'I have pain_behind_the_eyes', 'I have back_pain', 'I have malaise', 'I have muscle_pain', 'I have red_spots_over_body', 'I don\'t have Bad Breath', 'I don\'t have nervousness', 'I don\'t have tingling'),
(91, 56, 49, 'I have itching', 'I have fatigue', 'I have lethargy', 'I have yellowish_skin', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have yellow_urine', 'I have yellowing_of_eyes', 'I have malaise', 'I have receiving_blood_transfusion', 'I have receiving_unsterile_injections', 'I don\'t have watery eyes', 'I don\'t have kidney pain', 'I don\'t have leg swelling', 'I don\'t have insomnia', 'I don\'t have stress', 'I don\'t have tenderness'),
(92, 56, 50, 'I have fatigue', 'I have yellowish_skin', 'I have nausea', 'I have loss_of_appetite', 'I have yellowing_of_eyes', 'I have family_history', 'I don\'t have tenderness', 'I don\'t have fainting', 'I don\'t have erythemia', 'I don\'t have pale stool', 'I don\'t have weight gain', 'I don\'t have blood clots', 'I don\'t have blurred vision', 'I don\'t have localized discomfort', 'I don\'t have indigestion', 'I don\'t have constipation', 'I don\'t have congestion'),
(93, 56, 51, 'I have joint_pain', 'I have vomiting', 'I have fatigue', 'I have yellowish_skin', 'I have dark_urine', 'I have nausea', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have yellowing_of_eyes', 'I don\'t have enlarged pores', 'I don\'t have soreness', 'I don\'t have dry mouth', 'I don\'t have slow heartbeat', 'I don\'t have loss of taste ', 'I don\'t have muscle aches', 'I don\'t have decreased mobility', 'I don\'t have sweating'),
(94, 56, 52, 'I have joint_pain', 'I have vomiting', 'I have fatigue', 'I have high_fever', 'I have yellowish_skin', 'I have dark_urine', 'I have nausea', 'I have loss_of_appetite', 'I have abdominal_pain', 'I have yellowing_of_eyes', 'I have acute_liver_failure', 'I have coma', 'I have stomach_bleeding', 'I don\'t have decreased mobility', 'I don\'t have confusion', 'I don\'t have sunken eyes', 'I don\'t have indigestion'),
(95, 56, 53, 'I have vomiting', 'I have yellowish_skin', 'I have abdominal_pain', 'I have swelling_of_stomach', 'I have distention_of_abdomen', 'I have history_of_alcohol_consumption', 'I have fluid_overload', 'I don\'t have decreased mobility', 'I don\'t have urinary urgency', 'I don\'t have peeling', 'I don\'t have neck pain', 'I don\'t have blurred vision', 'I don\'t have ulcers', 'I don\'t have Concentration issues', 'I don\'t have Regurgitation', 'I don\'t have Poor Appetite', 'I don\'t have flaring nostrils'),
(96, 60, 54, 'I have fatigue', 'I have mood_swings', 'I have weight_loss', 'I have restlessness', 'I have sweating', 'I have diarrhoea', 'I have fast_heart_rate', 'I have excessive_hunger', 'I have muscle_weakness', 'I have irritability', 'I have abnormal_menstruation', 'I don\'t have pain behind the eyes', 'I don\'t have palpitations', 'I don\'t have bleeding', 'I don\'t have Itchy nose', 'I don\'t have changes in voice', 'I don\'t have painful lump'),
(97, 48, 38, 'I have vomiting', 'I have fatigue', 'I have anxiety', 'I have sweating', 'I have headache', 'I have nausea', 'I have blurred_and_distorted_vision', 'I have excessive_hunger', 'I have drying_and_tingling_lips', 'I have slurred_speech', 'I have irritability', 'I have palpitations', 'I don\'t have neck pain', 'I don\'t have frequent urination', 'I don\'t have watery eyes', 'I don\'t have infections', 'I don\'t have Chills'),
(98, 67, 55, 'I have Ringing in Ears', 'I have Hearing Loss', 'I have Dizziness', 'I have Headache', 'I have Anxiety', 'I have Sleep Disturbance', 'I have Concentration Issues', 'I have Stress', 'I don\'t have itching', 'I don\'t have skin rash', 'I don\'t have irregular mole', 'I don\'t have hoarseness', 'I don\'t have bumps', 'I don\'t have joint pain', 'I don\'t have heaviness', 'I don\'t have bad breath', 'I don\'t have night sweats'),
(99, 67, 56, 'I have Vertigo', 'I have Hearing Loss', 'I have Tinnitus', 'I have Nausea', 'I have Vomiting', 'I have Sweating', 'I have Headache', 'I have Fullness in Ear', 'I have Fatigue', 'I don\'t have shivering', 'I don\'t have chills', 'I don\'t have acidity', 'I don\'t have lethargy', 'I don\'t have dehydration ', 'I don\'t have constipation', 'I don\'t have malaise', 'I don\'t have congestion'),
(100, 67, 57, 'I have Ear Pain', 'I have Discharge', 'I have Hearing Loss', 'I have itching', 'I have Fever', 'I have Dizziness', 'I have Swelling', 'I have Tenderness', 'I have Difficulty Hearing', 'I don\'t have chest_pain', 'I don\'t have redness_of_eyes', 'I don\'t have fast_heart_rate', 'I don\'t have bloody stool', 'I don\'t have Bruising', 'I don\'t have unsteadiness', 'I don\'t have passage_of_gases', 'I don\'t have muscle_pain'),
(101, 67, 58, 'I have Hearing Loss', 'I have Tinnitus', 'I have Dizziness', 'I have Vertigo', 'I have Ear Discharge', 'I have Pain', 'I have Reduced Hearing', 'I have Balance Issues', 'I have Difficulty Hearing', 'I don\'t have polyuria', 'I don\'t have lack_of_concentration', 'I don\'t have blackheads', 'I don\'t have palpitations', 'I don\'t have jaundice', 'I don\'t have flank pain', 'I don\'t have Irritation', 'I don\'t have fractures'),
(102, 67, 59, 'I have Ear Discharge', 'I have Hearing Loss', 'I have Ear Pain', 'I have Tinnitus', 'I have Vertigo', 'I have Headache', 'I have Nausea', 'I have Fever', 'I have Reduced Hearing', 'I don\'t have seizures', 'I don\'t have dizziness', 'I don\'t have scrotal pain', 'I don\'t have night sweats', 'I don\'t have short of breath', 'I don\'t have Anemia', 'I don\'t have dizziness', 'I don\'t have bad breath'),
(103, 67, 60, 'I have Hearing Loss', 'I have Tinnitus', 'I have Reduced Sound Clarity', 'I have Difficulty Hearing', 'I have Difficulty Understanding Speech', 'I have Social Isolation', 'I have Depression', 'I have Anxiety', 'I don\'t have muscle aches', 'I don\'t have constipation', 'I don\'t have oily skin', 'I don\'t have bluish lips', 'I don\'t have dark urine', 'I don\'t have numbness', 'I don\'t have weakness', 'I don\'t have hypertension', 'I don\'t have confusion'),
(104, 67, 61, 'I have Vertigo', 'I have Hearing Loss', 'I have Nausea', 'I have Vomiting', 'I have Tinnitus', 'I have Hearing Difficulties', 'I have Balance Issues', 'I have Ear Pain', 'I have Fatigue', 'I don\'t have pus discharge', 'I don\'t have bleeding sores', 'I don\'t have bumps', 'I don\'t have leg cramps', 'I don\'t have difficulty urinating', 'I don\'t have skin rash', 'I don\'t have Bloating', 'I don\'t have thirst'),
(105, 67, 62, 'I have Reduced Hearing', 'I have Ear Fullness', 'I have Earache', 'I have Tinnitus', 'I have Dizziness', 'I have Vertigo', 'I have Cough', 'I have itching', 'I have Dizziness', 'I don\'t have flank pain', 'I don\'t have bone pain', 'I don\'t have blood in stool', 'I don\'t have white lesions', 'I don\'t have prognosis', 'I don\'t have blister', 'I don\'t have blackheads', 'I don\'t have rusty_sputum'),
(106, 67, 63, 'I have Increased Sensitivity to Noise', 'I have Discomfort', 'I have Ear Pain', 'I have Tinnitus', 'I have Anxiety', 'I have Depression', 'I have Social Isolation', 'I have Insomnia', 'I have Concentration Issues', 'I don\'t have dischromic_patches', 'I don\'t have passage_of_gases', 'I don\'t have stiff_neck', 'I don\'t have swelling_joints', 'I don\'t have neck_pain', 'I don\'t have blister', 'I don\'t have knee_pain', 'I don\'t have brittle_nails'),
(107, 67, 64, 'I have Ear Pain', 'I have itching', 'I have Hearing Loss', 'I have Fluid Drainage', 'I have Discharge', 'I have Fullness in Ear', 'I have Fever', 'I have Tinnitus', 'I have Reduced Hearing', 'I don\'t have cramps', 'I don\'t have obesity', 'I don\'t have phlegm', 'I don\'t have diarrhoea', 'I don\'t have dark_urine', 'I don\'t have sunken_eyes', 'I don\'t have restlessness', 'I don\'t have acidity'),
(108, 67, 65, 'I have Hearing Loss', 'I have Earache', 'I have Tinnitus', 'I have Ear Fullness', 'I have Balance Issues', 'I have Dizziness', 'I have Headache', 'I have Reduced Hearing', 'I have Vertigo', 'I don\'t have sinus pressure', 'I don\'t have belly_pain', 'I don\'t have stomach bleeding', 'I don\'t have abdominal pain', 'I don\'t have lump in testicle', 'I don\'t have pelvic pain', 'I don\'t have proteinuria', 'I don\'t have pale skin'),
(109, 67, 66, 'I have Hearing Loss', 'I have Tinnitus', 'I have Sensitivity to Noise', 'I have Difficulty Hearing', 'I have Social Isolation', 'I have Anxiety', 'I have Depression', 'I have Concentration Issues', 'I have Stress', 'I don\'t have rash', 'I don\'t have confusion', 'I don\'t have soreness', 'I don\'t have peeling', 'I don\'t have blood clots', 'I don\'t have oral thrush', 'I don\'t have insomnia', 'I don\'t have congestion'),
(110, 67, 67, 'I have Reduced Hearing', 'I have Ear Fullness', 'I have Ear Pain', 'I have Tinnitus', 'I have Ear Discharge', 'I have itching', 'I have Vertigo', 'I have Balance Issues', 'I have Headache', 'I don\'t have Gynecomastia', 'I don\'t have reduced urination', 'I don\'t have personality changes', 'I don\'t have eruptions', 'I don\'t have tenderness', 'I don\'t have runny nose', 'I don\'t have spotting', 'I don\'t have peeling'),
(111, 67, 68, 'I have Runny nose', 'I have Sneezing', 'I have Nasal Congestion', 'I have Itchy eyes', 'I have Cough', 'I have Headache', 'I have Sore throat', 'I have Fatigue', 'I have Watery eyes', 'I don\'t have prognosis', 'I don\'t have vomiting', 'I don\'t have palpitations', 'I don\'t have hematuria', 'I don\'t have hoarseness', 'I don\'t have rusty sputum', 'I don\'t have depression ', 'I don\'t have unsteadiness'),
(112, 67, 69, 'I have Sinus pressure', 'I have Facial Pain', 'I have Postnasal drip', 'I have Headache', 'I have Cough', 'I have Fever', 'I have Bad breath', 'I have Fatigue', 'I don\'t have heaviness', 'I don\'t have vision problems', 'I don\'t have skin ulcers', 'I don\'t have hematuria', 'I don\'t have hoarseness', 'I don\'t have fluid_overload', 'I don\'t have flank pain', 'I don\'t have palpitations', 'I don\'t have prognosis'),
(113, 67, 70, 'I have Blocked nose', 'I have Decreased smell', 'I have Sneezing', 'I have Itchy eyes', 'I have Runny nose', 'I have Headache', 'I have Facial Pain', 'I have Snoring', 'I have Difficulty breathing', 'I don\'t have oral thrush', 'I don\'t have head ache', 'I don\'t have erythema', 'I don\'t have pale stool', 'I don\'t have indigestion', 'I don\'t have soreness', 'I don\'t have nausea', 'I don\'t have bumps'),
(114, 67, 71, 'I have Blocked nose', 'I have Nosebleeds', 'I have Difficulty breathing', 'I have Snoring', 'I have Headache', 'I have Facial Pain', 'I have Nasal Congestion', 'I have Sleep apnea', 'I don\'t have anemia', 'I don\'t have change in bowel habits', 'I don\'t have metallic taste', 'I don’t have peeling', 'I don’t have ulcers', 'I don\'t have bluish lips', 'I don\'t have dehydration', 'I don\'t have tenderness', 'I don’t have tingling'),
(115, 67, 72, 'I have Nosebleeds', 'I have Swelling', 'I have Deformity', 'I have Bruising', 'I have Pain', 'I have Difficulty breathing', 'I have Headache', 'I have Eye injury', 'I don\'t have irregular mole', 'I don\'t have fractures', 'I don\'t have scrotal pain', 'I don\'t have painful swallowing', 'I don\'t have loss of taste', 'I don\'t have heaviness', 'I don\'t have chronic cough', 'I don\'t have pale skin', 'I don\'t have balance issues'),
(116, 62, 48, 'I have Runny nose', 'I have Sneezing', 'I have Itchy eyes', 'I have Nasal Congestion', 'I have Fatigue', 'I have Cough', 'I have Sore throat', 'I have Watery eyes', 'I don\'t have Difficulty breathing', 'I don\'t have jaundice', 'I don\'t have leg cramps', 'I don\'t have nosebleeds', 'I don\'t have nausea', 'I don\'t have sunken eyes', 'I don\'t have bruising', 'I don\'t have wheezing', 'I don\'t have body aches'),
(117, 67, 73, 'I have Swelling', 'I have Pain', 'I have Redness', 'I have Pus discharge', 'I have Fever', 'I have Soreness', 'I have ulcers', 'I have itching', 'I have Crusting', 'I don\'t have puffy face and eyes', 'I don\'t have obesity', 'I don\'t have phlegm', 'I don\'t have sinus pressure', 'I don\'t have yellow urine', 'I don\'t have malaise', 'I don\'t have palpitations', 'I don\'t have Vertigo'),
(118, 44, 74, 'I have Enlarged nose', 'I have Redness', 'I have Bumps', 'I have Thickening skin', 'I have Visible Blood Vessels', 'I have Enlarged Pores', 'I have Oily Skin', 'I have Skin Discoloration', 'I have Pustules and Pimples', 'I don\'t have throat irritation', 'I don\'t have swelled_lymph_nodes', 'I don\'t have malaise', 'I don\'t have diarrhoea', 'I don\'t have indigestion', 'I don\'t have unsteadiness', 'I don\'t have ulcers_on_tongue', 'I don\'t have bruising'),
(119, 44, 75, 'I have Redness', 'I have itching', 'I have Crusting', 'I have Swelling', 'I have Burning', 'I have Peeling ', 'I have Erythema', 'I have Eruptions ', 'I have discomfort', 'I don\'t have runny nose', 'I don\'t have malaise', 'I don\'t have constipation', 'I don\'t have dehydration', 'I don\'t have decreased mobility', 'I don\'t have sunken_eyes', 'I don\'t have ulcers_on_tongue', 'I don\'t have bruising'),
(120, 67, 76, 'I have bleeding', 'I have Blood in mucus', 'I have Headache', 'I have Anemia', 'I have High blood pressure', 'I have Blood clotting disorder', 'I have Dizziness ', 'I have Swelling ', 'I have congestion', 'I don\'t have nausea', 'I don\'t have depression', 'I don\'t have soreness', 'I don\'t have unsteadiness', 'I don\'t have knee_pain', 'I don\'t have slurred_speech', 'I don\'t have irritation_in_anus', 'I don\'t have runny_nose'),
(121, 67, 77, 'I have Pain', 'I have Swelling', 'I have Redness', 'I have Pus discharge', 'I have Fever', 'I have Localized discomfort', 'I have Painful lump', 'I don\'t have flank pain', 'I don\'t have ear pressure', 'I don\'t have swollen tonsils', 'I don\'t have prognosis', 'I don\'t have blackheads', 'I don\'t have scurryng', 'I don\'t have fluid_overload', 'I don\'t have dischromic_patches', 'I don\'t have internal_patching', 'I don\'t have unsteadiness'),
(122, 67, 78, 'I have Stuffy nose', 'I have Runny nose', 'I have Sneezing', 'I have Headache', 'I have Postnasal drip', 'I have Itchy nose', 'I have Sore throat', 'I have Fatigue', 'I have Cough', 'I don\'t have dizziness', 'I don\'t have body aches', 'I don\'t have bone pain', 'I don\'t have fractures', 'I don\'t have bloating', 'I don\'t have scrotal pain', 'I don\'t have decreased mobility', 'I don\'t have sinus pressure');

-- --------------------------------------------------------

--
-- Table structure for table `user_user_registration`
--

CREATE TABLE `user_user_registration` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `passwoard` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_user_registration`
--

INSERT INTO `user_user_registration` (`id`, `full_name`, `email`, `mobile`, `passwoard`) VALUES
(1, 'salman', 's@gmail.com', 1720651264, '1'),
(2, 'f', 'f@gmail.com', 1720651264, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_address_name`
--
ALTER TABLE `address_address_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_address_name_district_fk_id_8441cf11_fk_district_` (`district_fk_id`),
  ADD KEY `address_address_name_division_fk_id_42b9e303_fk_division_` (`division_fk_id`),
  ADD KEY `address_address_name_hos_type_fk_id_88be2106_fk_hospital_` (`hos_type_fk_id`),
  ADD KEY `address_address_name_station_fk_id_e643658d_fk_station_s` (`station_fk_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_user_user_register`
--
ALTER TABLE `auth_user_user_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_register_v_key_600ce3d8_uniq` (`v_key`);

--
-- Indexes for table `dashboard_from_doctor_depert_name`
--
ALTER TABLE `dashboard_from_doctor_depert_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `dashboard_from_sub_disease`
--
ALTER TABLE `dashboard_from_sub_disease`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dashboard_from_sub_disease_name_5b8f59b4_uniq` (`name`),
  ADD KEY `dashboard_from_sub_d_dep_id_id_3b7624e7_fk_dashboard` (`dep_id_id`);

--
-- Indexes for table `department_details_department_details`
--
ALTER TABLE `department_details_department_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Department_Details_d_select_dep_id_35e27842_fk_dashboard` (`select_dep_id`);

--
-- Indexes for table `district_district_name`
--
ALTER TABLE `district_district_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `district` (`district`),
  ADD KEY `district_district_na_divi_fk_id_a291c9bb_fk_division_` (`divi_fk_id`);

--
-- Indexes for table `division_division_name`
--
ALTER TABLE `division_division_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`division`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `hospital_department_hospital_department`
--
ALTER TABLE `hospital_department_hospital_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Hospital_Department__select_depart_id_b12b5c96_fk_dashboard` (`select_depart_id`),
  ADD KEY `Hospital_Department__select_hosp_id_623f1788_fk_hospital_` (`select_hosp_id`);

--
-- Indexes for table `hospital_hospital_categories`
--
ALTER TABLE `hospital_hospital_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hos_cat` (`hos_cat`);

--
-- Indexes for table `hospital_map_hospital_map`
--
ALTER TABLE `hospital_map_hospital_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_map_hospita_hospital_fk_id_ed9294f2_fk_address_a` (`hospital_fk_id`);

--
-- Indexes for table `station_station`
--
ALTER TABLE `station_station`
  ADD PRIMARY KEY (`id`),
  ADD KEY `station_station_dis_fk_id_fb89dff2_fk_district_district_name_id` (`dis_fk_id`),
  ADD KEY `station_station_divi_fk_id_748271cb_fk_division_division_name_id` (`divi_fk_id`);

--
-- Indexes for table `symptom_symptom`
--
ALTER TABLE `symptom_symptom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `symptom_symptom_depart_id_id_2572cba8_fk_dashboard` (`depart_id_id`),
  ADD KEY `symptom_symptom_disease_id_id_c5795cfb_fk_dashboard` (`disease_id_id`);

--
-- Indexes for table `user_user_registration`
--
ALTER TABLE `user_user_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_address_name`
--
ALTER TABLE `address_address_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_register`
--
ALTER TABLE `auth_user_user_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `dashboard_from_doctor_depert_name`
--
ALTER TABLE `dashboard_from_doctor_depert_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `dashboard_from_sub_disease`
--
ALTER TABLE `dashboard_from_sub_disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `department_details_department_details`
--
ALTER TABLE `department_details_department_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `district_district_name`
--
ALTER TABLE `district_district_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `division_division_name`
--
ALTER TABLE `division_division_name`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `hospital_department_hospital_department`
--
ALTER TABLE `hospital_department_hospital_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital_hospital_categories`
--
ALTER TABLE `hospital_hospital_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital_map_hospital_map`
--
ALTER TABLE `hospital_map_hospital_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `station_station`
--
ALTER TABLE `station_station`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT for table `symptom_symptom`
--
ALTER TABLE `symptom_symptom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `user_user_registration`
--
ALTER TABLE `user_user_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address_address_name`
--
ALTER TABLE `address_address_name`
  ADD CONSTRAINT `address_address_name_district_fk_id_8441cf11_fk_district_` FOREIGN KEY (`district_fk_id`) REFERENCES `district_district_name` (`id`),
  ADD CONSTRAINT `address_address_name_division_fk_id_42b9e303_fk_division_` FOREIGN KEY (`division_fk_id`) REFERENCES `division_division_name` (`id`),
  ADD CONSTRAINT `address_address_name_hos_type_fk_id_88be2106_fk_hospital_` FOREIGN KEY (`hos_type_fk_id`) REFERENCES `hospital_hospital_categories` (`id`),
  ADD CONSTRAINT `address_address_name_station_fk_id_e643658d_fk_station_s` FOREIGN KEY (`station_fk_id`) REFERENCES `station_station` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_from_sub_disease`
--
ALTER TABLE `dashboard_from_sub_disease`
  ADD CONSTRAINT `dashboard_from_sub_d_dep_id_id_3b7624e7_fk_dashboard` FOREIGN KEY (`dep_id_id`) REFERENCES `dashboard_from_doctor_depert_name` (`id`);

--
-- Constraints for table `department_details_department_details`
--
ALTER TABLE `department_details_department_details`
  ADD CONSTRAINT `Department_Details_d_select_dep_id_35e27842_fk_dashboard` FOREIGN KEY (`select_dep_id`) REFERENCES `dashboard_from_doctor_depert_name` (`id`);

--
-- Constraints for table `district_district_name`
--
ALTER TABLE `district_district_name`
  ADD CONSTRAINT `district_district_na_divi_fk_id_a291c9bb_fk_division_` FOREIGN KEY (`divi_fk_id`) REFERENCES `division_division_name` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hospital_department_hospital_department`
--
ALTER TABLE `hospital_department_hospital_department`
  ADD CONSTRAINT `Hospital_Department__select_depart_id_b12b5c96_fk_dashboard` FOREIGN KEY (`select_depart_id`) REFERENCES `dashboard_from_doctor_depert_name` (`id`),
  ADD CONSTRAINT `Hospital_Department__select_hosp_id_623f1788_fk_hospital_` FOREIGN KEY (`select_hosp_id`) REFERENCES `hospital_hospital_categories` (`id`);

--
-- Constraints for table `hospital_map_hospital_map`
--
ALTER TABLE `hospital_map_hospital_map`
  ADD CONSTRAINT `hospital_map_hospita_hospital_fk_id_ed9294f2_fk_address_a` FOREIGN KEY (`hospital_fk_id`) REFERENCES `address_address_name` (`id`);

--
-- Constraints for table `station_station`
--
ALTER TABLE `station_station`
  ADD CONSTRAINT `station_station_dis_fk_id_fb89dff2_fk_district_district_name_id` FOREIGN KEY (`dis_fk_id`) REFERENCES `district_district_name` (`id`),
  ADD CONSTRAINT `station_station_divi_fk_id_748271cb_fk_division_division_name_id` FOREIGN KEY (`divi_fk_id`) REFERENCES `division_division_name` (`id`);

--
-- Constraints for table `symptom_symptom`
--
ALTER TABLE `symptom_symptom`
  ADD CONSTRAINT `symptom_symptom_depart_id_id_2572cba8_fk_dashboard` FOREIGN KEY (`depart_id_id`) REFERENCES `dashboard_from_doctor_depert_name` (`id`),
  ADD CONSTRAINT `symptom_symptom_disease_id_id_c5795cfb_fk_dashboard` FOREIGN KEY (`disease_id_id`) REFERENCES `dashboard_from_sub_disease` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
