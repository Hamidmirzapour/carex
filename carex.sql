-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 07:30 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carex`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_profile`
--

CREATE TABLE `account_profile` (
  `id` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_profile`
--

INSERT INTO `account_profile` (`id`, `date_of_birth`, `photo`, `user_id`) VALUES
(1, '2021-10-17', '', 1),
(2, NULL, 'users/2021/10/26/۲۰۱۹۰۴۰۱_۱۴۲۹۲۹-2-1.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `advertisement_advertisement`
--

CREATE TABLE `advertisement_advertisement` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `viewsNum` int(11) NOT NULL,
  `publishDate` date NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `engheza` int(11) NOT NULL,
  `enghezaDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement_advertisement`
--

INSERT INTO `advertisement_advertisement` (`id`, `category`, `title`, `description`, `published`, `image1`, `image2`, `image3`, `image4`, `viewsNum`, `publishDate`, `created`, `updated`, `city_id`, `user_id`, `cost`, `engheza`, `enghezaDate`) VALUES
(1, 'سدان', 'پژو 405‏ GLX بنزینی | 1385', 'سند تک برگ لاستیک ۸۵ درصد بدون روغن ریزی و روغن سوزی فاقد پوسیدگی لوازم مصرفی همگی تازه تعویض شده ( صفحه کلاچ . شمع و وایر . لنت . تعویض روغن ) روکش صندلی و کفپوش یک تیکه گلگیر سمت شاگرد تعویض نمایندگی است دارای چند تکه آفتاب سوختگی', 1, 'uploads/advertisementas/CarImage9695144_2_thumb_900_600.jpg', '', '', '', 0, '2021-10-26', '2021-10-26 04:20:10.722951', '2021-10-26 04:22:17.262200', 1, 1, '67000000', 30, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement_city`
--

CREATE TABLE `advertisement_city` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement_city`
--

INSERT INTO `advertisement_city` (`id`, `name`) VALUES
(1, 'مشهد');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add پیام', 7, 'add_messages'),
(26, 'Can change پیام', 7, 'change_messages'),
(27, 'Can delete پیام', 7, 'delete_messages'),
(28, 'Can view پیام', 7, 'view_messages'),
(29, 'Can add برند', 8, 'add_brand'),
(30, 'Can change برند', 8, 'change_brand'),
(31, 'Can delete برند', 8, 'delete_brand'),
(32, 'Can view برند', 8, 'view_brand'),
(33, 'Can add کشور', 9, 'add_country'),
(34, 'Can change کشور', 9, 'change_country'),
(35, 'Can delete کشور', 9, 'delete_country'),
(36, 'Can view کشور', 9, 'view_country'),
(37, 'Can add خودرو', 10, 'add_car'),
(38, 'Can change خودرو', 10, 'change_car'),
(39, 'Can delete خودرو', 10, 'delete_car'),
(40, 'Can view خودرو', 10, 'view_car'),
(41, 'Can add رزرو', 11, 'add_reservation'),
(42, 'Can change رزرو', 11, 'change_reservation'),
(43, 'Can delete رزرو', 11, 'delete_reservation'),
(44, 'Can view رزرو', 11, 'view_reservation'),
(45, 'Can add شهر', 12, 'add_city'),
(46, 'Can change شهر', 12, 'change_city'),
(47, 'Can delete شهر', 12, 'delete_city'),
(48, 'Can view شهر', 12, 'view_city'),
(49, 'Can add آگهی', 13, 'add_advertisement'),
(50, 'Can change آگهی', 13, 'change_advertisement'),
(51, 'Can delete آگهی', 13, 'delete_advertisement'),
(52, 'Can view آگهی', 13, 'view_advertisement'),
(53, 'Can add پروفایل', 14, 'add_profile'),
(54, 'Can change پروفایل', 14, 'change_profile'),
(55, 'Can delete پروفایل', 14, 'delete_profile'),
(56, 'Can view پروفایل', 14, 'view_profile');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$VOJJQG39cqiAmzBfwlj6IA$e1iirlvDYl9zx6TjGxIM4rhkpVJlbEtoOxnCFIdRBWI=', '2021-10-26 08:33:08.160683', 1, 'hamid', '', '', '', 1, 1, '2021-10-17 13:55:32.396035'),
(2, 'pbkdf2_sha256$260000$Rvzp6TQE6WwVrr7qDA6Lkr$7T6fpJ/49jg6b3k7YNfl7/HjiixTX8ahI7awXg9YIY0=', '2021-10-26 08:32:38.946203', 0, 'test', 'علی', 'اکبری', 'aliakbari@gmail.com', 0, 1, '2021-10-26 04:14:12.792286');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `car_brand`
--

CREATE TABLE `car_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_brand`
--

INSERT INTO `car_brand` (`id`, `name`) VALUES
(1, 'نیسان'),
(2, 'هیوندا');

-- --------------------------------------------------------

--
-- Table structure for table `car_car`
--

CREATE TABLE `car_car` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `bodyType` varchar(100) NOT NULL,
  `yearOfProduction` int(11) NOT NULL,
  `engineVolume` int(11) NOT NULL,
  `engineType` varchar(100) NOT NULL,
  `cylinderNum` int(11) NOT NULL,
  `valveNum` int(11) NOT NULL,
  `tankCapacity` int(11) NOT NULL,
  `maxPower` int(11) NOT NULL,
  `maxTorque` int(11) NOT NULL,
  `gearboxType` varchar(100) NOT NULL,
  `gearboxNum` int(11) NOT NULL,
  `breakType` varchar(100) NOT NULL,
  `maxSpeed` int(11) NOT NULL,
  `zeroTOHundredAcceleration` decimal(4,1) NOT NULL,
  `cityFuelUse` decimal(4,1) NOT NULL,
  `roadFuelUse` decimal(4,1) NOT NULL,
  `color` varchar(100) NOT NULL,
  `options` longtext NOT NULL,
  `cost` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `mainImage` varchar(100) NOT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `viewsNum` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `publishDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_car`
--

INSERT INTO `car_car` (`id`, `name`, `description`, `bodyType`, `yearOfProduction`, `engineVolume`, `engineType`, `cylinderNum`, `valveNum`, `tankCapacity`, `maxPower`, `maxTorque`, `gearboxType`, `gearboxNum`, `breakType`, `maxSpeed`, `zeroTOHundredAcceleration`, `cityFuelUse`, `roadFuelUse`, `color`, `options`, `cost`, `status`, `mainImage`, `image1`, `image2`, `image3`, `image4`, `viewsNum`, `created`, `updated`, `brand_id`, `country_id`, `publishDate`) VALUES
(1, 'نیسان ماکسیما ‏ اتوماتیک | 1390', '3 لکه رنگ سفید مولتی مدیا فوق العاده سالم', 'سدان', 1390, 3000, 'چهار سیلندر خطی', 4, 22, 70, 220, 300, 'اتوماتیک', 5, 'ABS', 225, '6.5', '14.0', '12.0', 'سفید', 'تهویه مطبوع اتوماتیک، قفل ضد سرقت، و ...', 650000000, 'موجود', 'uploads/cars/CarImage9585961_0_thumb_900_600.jpg', 'uploads/cars/CarImage9585961_1_thumb_900_600.jpg', 'uploads/cars/CarImage9585961_2_thumb_900_600.jpg', 'uploads/cars/CarImage9585961_3_thumb_900_600.jpg', '', 0, '2021-10-26 04:04:58.189816', '2021-10-26 04:04:58.189816', 1, 1, '2021-10-26'),
(2, 'هیوندای آزرا (گرنجور)‏ 6 سیلندر | 2013', 'فول،تمیییز# درصورت عدم جواب تماس بدلیل حجم مراجعات وتماسها لطفا حضوری تشریف بیاورید ساعات کاری۹صبح تا۱۳ عصرها۶تا۹', 'سدان', 2013, 3000, 'خطی', 6, 22, 70, 220, 350, 'دستی', 7, 'ABS', 240, '8.0', '14.0', '12.0', 'سفید', 'سیستم تهویه مطبوع اتوماتیک، لانچر، 12 بلندپو، کروز کنترل و ...', 900000000, 'رزرو شده', 'uploads/cars/CarImage9635483_4_thumb_900_600.jpg', 'uploads/cars/CarImage9635483_0_thumb_900_600.jpg', 'uploads/cars/CarImage9585961_3_thumb_900_600_xTX8XSI.jpg', 'uploads/cars/CarImage9635483_6_thumb_900_600.jpg', '', 0, '2021-10-26 04:12:07.145869', '2021-10-26 04:15:20.744353', 2, 2, '2021-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `car_country`
--

CREATE TABLE `car_country` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_country`
--

INSERT INTO `car_country` (`id`, `name`) VALUES
(1, 'ژاپن'),
(2, 'کره جنوبی');

-- --------------------------------------------------------

--
-- Table structure for table `car_reservation`
--

CREATE TABLE `car_reservation` (
  `id` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `car_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_reservation`
--

INSERT INTO `car_reservation` (`id`, `phone`, `date`, `car_id`, `customer_id`) VALUES
(1, 9222390445, '2021-10-26', 2, 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-10-17 13:57:47.291278', '1', 'Profile for user hamid', 1, '[{\"added\": {}}]', 14, 1),
(2, '2021-10-26 03:58:37.163631', '1', 'نیسان', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-10-26 03:58:53.458544', '1', 'ژاپن', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-10-26 04:04:58.200708', '1', 'نیسان ماکسیما ‏ اتوماتیک | 1390', 1, '[{\"added\": {}}]', 10, 1),
(5, '2021-10-26 04:07:25.573842', '2', 'هیوندا', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-10-26 04:07:39.563032', '2', 'کره جنوبی', 1, '[{\"added\": {}}]', 9, 1),
(7, '2021-10-26 04:12:07.148464', '2', 'هیوندای آزرا (گرنجور)‏ 6 سیلندر | 2013', 1, '[{\"added\": {}}]', 10, 1),
(8, '2021-10-26 04:17:17.097839', '1', 'مشهد', 1, '[{\"added\": {}}]', 12, 1),
(9, '2021-10-26 04:22:17.264917', '1', 'پژو 405‏ GLX بنزینی | 1385', 2, '[{\"changed\": {\"fields\": [\"Published\", \"\\u0645\\u0647\\u0644\\u062a \\u0622\\u06af\\u0647\\u06cc\"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(14, 'account', 'profile'),
(1, 'admin', 'logentry'),
(13, 'advertisement', 'advertisement'),
(12, 'advertisement', 'city'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'car', 'brand'),
(10, 'car', 'car'),
(9, 'car', 'country'),
(11, 'car', 'reservation'),
(5, 'contenttypes', 'contenttype'),
(7, 'pages', 'messages'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-17 13:53:26.889192'),
(2, 'auth', '0001_initial', '2021-10-17 13:53:27.201619'),
(3, 'account', '0001_initial', '2021-10-17 13:53:27.248481'),
(4, 'account', '0002_auto_20190821_0701', '2021-10-17 13:53:27.264136'),
(5, 'admin', '0001_initial', '2021-10-17 13:53:27.342408'),
(6, 'admin', '0002_logentry_remove_auto_add', '2021-10-17 13:53:27.357831'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-17 13:53:27.357831'),
(8, 'advertisement', '0001_initial', '2021-10-17 13:53:27.451559'),
(9, 'advertisement', '0002_auto_20190821_0701', '2021-10-17 13:53:27.482800'),
(10, 'advertisement', '0003_auto_20190821_0705', '2021-10-17 13:53:27.498422'),
(11, 'advertisement', '0004_auto_20190902_1155', '2021-10-17 13:53:27.545320'),
(12, 'contenttypes', '0002_remove_content_type_name', '2021-10-17 13:53:27.592157'),
(13, 'auth', '0002_alter_permission_name_max_length', '2021-10-17 13:53:27.623393'),
(14, 'auth', '0003_alter_user_email_max_length', '2021-10-17 13:53:27.623393'),
(15, 'auth', '0004_alter_user_username_opts', '2021-10-17 13:53:27.639014'),
(16, 'auth', '0005_alter_user_last_login_null', '2021-10-17 13:53:27.670256'),
(17, 'auth', '0006_require_contenttypes_0002', '2021-10-17 13:53:27.670256'),
(18, 'auth', '0007_alter_validators_add_error_messages', '2021-10-17 13:53:27.685878'),
(19, 'auth', '0008_alter_user_username_max_length', '2021-10-17 13:53:27.685878'),
(20, 'auth', '0009_alter_user_last_name_max_length', '2021-10-17 13:53:27.701532'),
(21, 'auth', '0010_alter_group_name_max_length', '2021-10-17 13:53:27.717121'),
(22, 'auth', '0011_update_proxy_permissions', '2021-10-17 13:53:27.732742'),
(23, 'auth', '0012_alter_user_first_name_max_length', '2021-10-17 13:53:27.732742'),
(24, 'car', '0001_initial', '2021-10-17 13:53:27.857713'),
(25, 'car', '0002_auto_20190816_2315', '2021-10-17 13:53:27.873334'),
(26, 'car', '0003_auto_20190816_2355', '2021-10-17 13:53:27.967067'),
(27, 'car', '0004_delete_carview', '2021-10-17 13:53:27.982688'),
(28, 'car', '0005_reservation', '2021-10-17 13:53:28.060790'),
(29, 'car', '0006_auto_20190829_1951', '2021-10-17 13:53:28.092032'),
(30, 'car', '0007_auto_20190831_0638', '2021-10-17 13:53:28.107654'),
(31, 'pages', '0001_initial', '2021-10-17 13:53:28.123275'),
(32, 'pages', '0002_auto_20190901_0607', '2021-10-17 13:53:28.123275'),
(33, 'sessions', '0001_initial', '2021-10-17 13:53:28.138896');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('873xrqun9k8qcps9kgvr58nooprlmvpy', '.eJxVjMEOwiAQBf-FsyFAYRc8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5MsdPvFkN65LYDuod26zz1ti5z5LvCDzr4tVN-Xg7376CGUb81oFMToLau5OJENAKkSkCApZgpFS3IaBOALIK0pKPUEjViVJmkcsDeH730NtM:1mfDzg:L0h8m6a9k4Icgldff_Wcq-qGvFjT-4Xb8Y3LOn_q3_A', '2021-11-09 04:23:24.613901'),
('xy62qn6qoaxj2ce9brr59mx8681y8s6e', '.eJxVjDkOwjAUBe_iGlm2v53YlPQ5Q_Q3SAA5UpYKcXeIlALaNzPvZXrc1qHfFp37UczZeHP63Qj5oXUHcsd6myxPdZ1HsrtiD7rYbhJ9Xg7372DAZfjWoK5ELYTYQHaUsvhEAWLrWgoRWUFyAhBQDw3G4DhckwfhhjNSUfP-ANPwN7w:1mfHtM:nHy2B30yWBwsrXTeK6GWzw-IiauSGxphUdMDm7a8iag', '2021-11-09 08:33:08.168683');

-- --------------------------------------------------------

--
-- Table structure for table `pages_messages`
--

CREATE TABLE `pages_messages` (
  `id` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `messageBody` longtext NOT NULL,
  `dateTime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages_messages`
--

INSERT INTO `pages_messages` (`id`, `fullName`, `email`, `subject`, `messageBody`, `dateTime`) VALUES
(1, 'علی اکبری', 'aliakbari@gmail.com', 'تست', 'این یک پیام تست است.', '2021-10-26 04:24:46.807723');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `advertisement_advertisement`
--
ALTER TABLE `advertisement_advertisement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisement_advert_city_id_f4966c95_fk_advertise` (`city_id`),
  ADD KEY `advertisement_advertisement_user_id_d215b148_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `advertisement_city`
--
ALTER TABLE `advertisement_city`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `car_brand`
--
ALTER TABLE `car_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_car`
--
ALTER TABLE `car_car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_car_brand_id_7b43df3b_fk_car_brand_id` (`brand_id`),
  ADD KEY `car_car_country_id_8fb32ad5_fk_car_country_id` (`country_id`);

--
-- Indexes for table `car_country`
--
ALTER TABLE `car_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_reservation`
--
ALTER TABLE `car_reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_reservation_car_id_8a7ac3c7_fk_car_car_id` (`car_id`),
  ADD KEY `car_reservation_customer_id_a66de890_fk_auth_user_id` (`customer_id`);

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
-- Indexes for table `pages_messages`
--
ALTER TABLE `pages_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_profile`
--
ALTER TABLE `account_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertisement_advertisement`
--
ALTER TABLE `advertisement_advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisement_city`
--
ALTER TABLE `advertisement_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_brand`
--
ALTER TABLE `car_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_car`
--
ALTER TABLE `car_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_country`
--
ALTER TABLE `car_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_reservation`
--
ALTER TABLE `car_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pages_messages`
--
ALTER TABLE `pages_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD CONSTRAINT `account_profile_user_id_bdd52018_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `advertisement_advertisement`
--
ALTER TABLE `advertisement_advertisement`
  ADD CONSTRAINT `advertisement_advert_city_id_f4966c95_fk_advertise` FOREIGN KEY (`city_id`) REFERENCES `advertisement_city` (`id`),
  ADD CONSTRAINT `advertisement_advertisement_user_id_d215b148_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `car_car`
--
ALTER TABLE `car_car`
  ADD CONSTRAINT `car_car_brand_id_7b43df3b_fk_car_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `car_brand` (`id`),
  ADD CONSTRAINT `car_car_country_id_8fb32ad5_fk_car_country_id` FOREIGN KEY (`country_id`) REFERENCES `car_country` (`id`);

--
-- Constraints for table `car_reservation`
--
ALTER TABLE `car_reservation`
  ADD CONSTRAINT `car_reservation_car_id_8a7ac3c7_fk_car_car_id` FOREIGN KEY (`car_id`) REFERENCES `car_car` (`id`),
  ADD CONSTRAINT `car_reservation_customer_id_a66de890_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
