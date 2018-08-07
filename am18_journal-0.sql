-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2018 at 08:08 PM
-- Server version: 10.0.34-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elparduo_journal-0`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'AzvIc56Xu4E5RxjYuC0LeUytuPtamqALhrtjv5MV5QKZtK0HFDu7GUZ8DJVm61Or685xpTK7XkzhXJGPrQwyzWEEeJ4CIWhalhsUEEnvFobNJ7oOqNpFb4P0APcKbZdeo7ZugcvG4bluamuqxfbtRtwwkcbeuYprlFgbJliPfrYQu15AONscamBxM2hZXNM3Iw2MnN9SYLqu0Rbsv5zae6pztdgBjFu6THB7IfZTAH8UJtC0F0XzHDHZ4uAhu9LR', 1, '2017-07-19 18:29:40', '2017-07-19 18:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(1, 3, 'Description'),
(2, 3, 'No. of Cores'),
(4, 3, 'test 1'),
(5, 3, 'test 2'),
(6, 3, 'test 3'),
(7, 3, 'test 4'),
(8, 3, 'test 5'),
(9, 3, 'test 6'),
(10, 3, 'test 7'),
(11, 3, 'test 8'),
(3, 3, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(3, 3, 'Memory'),
(4, 3, 'Technical'),
(5, 3, 'Motherboard'),
(6, 3, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(99, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(110, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(113, 7, 3, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(114, 6, 3, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(115, 8, 3, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(116, 8, 3, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(117, 8, 3, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(118, 8, 3, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(119, 8, 3, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(120, 8, 3, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(121, 8, 3, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(122, 8, 3, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(123, 8, 3, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(124, 7, 3, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(125, 8, 3, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(126, 8, 3, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2018-05-28 18:14:42'),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2018-05-28 18:15:09'),
(28, 'catalog/demo/Prekes/M.jpg', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2018-05-31 10:44:19'),
(29, 'catalog/demo/Prekes/KB2.jpg', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2018-05-31 10:47:51'),
(30, 'catalog/demo/Prekes/SP.jpg', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2018-05-31 10:53:18'),
(31, 'catalog/demo/Prekes/SK.jpeg', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2018-05-31 10:50:30'),
(32, 'catalog/demo/Prekes/k1.jpg', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2018-05-31 10:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 3, 'Monitors', '', 'Monitors', '', ''),
(32, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '', 'Scanners', '', ''),
(30, 1, 'Printers', '', 'Printers', '', ''),
(29, 1, 'Mice and Keybords', '', 'Mice and Keybords', '', ''),
(28, 2, 'Monitoriai', '', 'Monitoriai', '', ''),
(25, 3, 'Components', '', 'Components', '', ''),
(20, 3, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(32, 2, 'Web Kameros', '', 'Web CamerasWeb Kameros', '', ''),
(29, 2, 'Pelės ir klaviatūros', '', 'Pelės ir klaviatūros', '', ''),
(31, 2, 'Skaneriai', '', 'Skaneriai', '', ''),
(25, 1, 'Components', '', 'Components', '', ''),
(28, 1, 'Monitors', '', 'Monitors', '', ''),
(29, 3, 'Mice and Keybords (ru)', '', 'Mice and Keybords (ru)', '', ''),
(30, 2, 'Spausdintuvai', '', 'PrintersSpausdintuvai', '', ''),
(25, 2, 'Priedai', '', 'Priedai', '', ''),
(20, 2, 'Kompiuteriai', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Kompiuteriai', '', ''),
(20, 1, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(31, 3, 'Scanners', '', 'Scanners', '', ''),
(30, 3, 'Printers (ru)', '', 'Printers (ru)', '', ''),
(32, 3, 'Web Cameras (ru)', '', 'Web Cameras (ru)', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(29, 0, 3),
(25, 0, 0),
(20, 0, 0),
(28, 0, 0),
(30, 0, 0),
(31, 0, 3),
(32, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(20, 0),
(25, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lietuva', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(2, 'US Dollar', 'USD', '$', '', '2', 1.17289996, 0, '2018-05-31 15:39:47'),
(3, 'Euro', 'EUR', '', '€', '2', 1.00000000, 1, '2017-07-29 19:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('78.56.20.57', 0, 'http://www.domenas.lt/', '', '2018-08-07 20:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ea_vqmod_manager`
--

CREATE TABLE `oc_ea_vqmod_manager` (
  `id` int(11) NOT NULL,
  `xml_name` varchar(255) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_backup` datetime NOT NULL,
  `comment` text NOT NULL,
  `email` varchar(96) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ea_vqmod_manager`
--

INSERT INTO `oc_ea_vqmod_manager` (`id`, `xml_name`, `date_added`, `date_modified`, `date_backup`, `comment`, `email`, `link`) VALUES
(1, 'enhanced_vqmod.xml', '2017-07-19 23:07:26', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '', '', ''),
(2, 'vqmod_opencart.xml', '2017-07-19 23:07:26', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '', '', ''),
(3, 'ML_seo_keywords.xml', '2017-07-19 23:11:02', '2018-05-25 20:35:43', '1970-01-01 01:00:00', '', '', ''),
(4, 'powerImage.xml', '2017-07-20 00:05:53', '2018-05-25 20:35:45', '1970-01-01 01:00:00', '', '', ''),
(5, 'pQuickEdit.xml', '2018-05-25 20:16:21', '2018-05-25 20:35:44', '1970-01-01 01:00:00', '', '', ''),
(6, 'powerimg.xml', '2018-05-27 16:46:00', '2018-06-01 23:18:11', '1970-01-01 01:00:00', '', '', ''),
(7, 'ckeditor.xml', '2018-06-01 23:10:58', '1970-01-01 01:00:00', '2018-06-01 11:15:57', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, '0000-00-00 00:00:00'),
(10, 'paysera_header', 'catalog/view/common/header/before', 'extension/payment/paysera/paysera_header', 1, '2018-05-31 14:17:43'),
(11, 'paysera_footer', 'catalog/view/common/footer/before', 'extension/payment/paysera/paysera_footer', 1, '2018-05-31 14:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(42, 'payment', 'paysera'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(20, 'theme', 'theme_default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'module', 'information'),
(30, 'module', 'pim'),
(31, 'shipping', 'intuitiveshipping'),
(33, 'payment', 'bank_transfer'),
(41, 'module', 'journal2'),
(43, 'module', 'ckeditorfull');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(4, 'Lietuva', 'Visi Lietuvos miestai', '2017-07-19 20:35:33', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 5, 1),
(6, 1, 4, 1),
(7, 1, 6, 1),
(8, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 1, 'Payment Terms &amp; Conditions', '&lt;p&gt;\r\n	Payment Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Payment Terms &amp; Conditions', '', ''),
(3, 2, 'Privatumo politika', '&lt;p&gt;\r\n	&lt;/p&gt;&lt;p&gt;Privatumo politika ...&lt;/p&gt;&lt;p&gt;&lt;strong&gt;KAIP REDAGUOTI:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;KATALOGAS--&amp;gt;INFORMACINIAI PUSLAPIAI&amp;nbsp;SUSIRANDATE&amp;nbsp;&lt;/em&gt;&quot;&lt;em&gt;Privatumo politika&quot; IR SPAUDŽIATE REDAGUOTI&lt;/em&gt;&lt;/span&gt;.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span&gt;Nuo 2018m. gegužės 25 d. visose ES valstybėse narėse įsigalios Bendrasis duomenų apsaugos reglamentas (angl. General Data Protection Regulation, GDPR), apibrėžiantis griežtesnę ES piliečių asmens duomenų apsaugą.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Kadangi esate UAB &quot;UABAS&quot; toliau (šios el.parduotuvės) klientas, galite jaustis ramesni dėl duomenų, kuriuos patikėjote mums. Prisiimdami mums tenkančią atsakomybę, pateikiame informaciją apie mūsų Privatumo Politiką tvarkant jūsų asmeninius duomenis.Naujausią informaciją rasite žemiau esančiame tekste.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;1. Ši privatumo politika reglamentuoja UAB „UABAS” (toliau – Tiekėjas) administruojamos šios elektroninės parduotuvės  ir el.parduotuvės vartotojų pagrindinius asmens duomenų rinkimo, tvarkymo ir saugojimo principus bei tvarką.&lt;/p&gt;\r\n&lt;p&gt;2. Vartotojo asmens duomenų rinkimą, tvarkymą ir saugojimą nustato ši privatumo politika, Lietuvos Respublikos Asmens duomenų teisinės apsaugos įstatymas ir kiti teisės aktai.&lt;/p&gt;\r\n&lt;p&gt;3. Šioje el.parduotuvėje parduotuvėje nurodydamas savo asmens duomenis, Vartotojas sutinka, kad Tiekėjas juos valdys ir tvarkys šioje privatumo politikoje bei teisės aktuose numatytais tikslais, priemonėmis ir tvarka.&lt;/p&gt;\r\n&lt;p&gt;4. Tiekėjas vadovaujasi šiais pagrindiniais Vartotojo duomenų tvarkymo principais:&lt;/p&gt;\r\n&lt;p&gt;4.1. Asmens duomenys renkami apibrėžtais ir teisėtais tikslais.&lt;/p&gt;\r\n&lt;p&gt;4.2. Asmens duomenys tvarkomi tiksliai ir sąžiningai.&lt;/p&gt;\r\n&lt;p&gt;4.3. Asmens duomenys tvarkomi teisėtai, t. y. tik tais atvejais, kai:&lt;/p&gt;\r\n&lt;p&gt;4.3.1. duomenų subjektas duoda sutikimą, t. y. sutinka laikytis šios el.parduotuvės  taisyklėmis;&lt;/p&gt;\r\n&lt;p&gt;4.3.2. sudaroma arba vykdoma sutartis, kai viena iš šalių yra duomenų subjektas;&lt;/p&gt;\r\n&lt;p&gt;4.3.3. Tiekėjas yra įpareigotas tvarkyti asmens duomenis pagal įstatymus;&lt;/p&gt;\r\n&lt;p&gt;5. Tiekėjas Vartotojo duomenis gali saugoti neribotą laiką.&lt;/p&gt;\r\n&lt;p&gt;6. Asmens duomenis tvarko tik tie darbuotojai, kuriems suteikta tokia teisė.&lt;/p&gt;\r\n&lt;p&gt;7. Visa informacija apie tvarkomus asmens duomenis yra konfidenciali.&lt;/p&gt;\r\n&lt;p&gt;8. &amp;nbsp;Apie asmens duomenų tvarkymą nustatyta tvarka pranešama Valstybinei duomenų apsaugos inspekcijai.&lt;/p&gt;\r\n&lt;p&gt;9. Tiekėjas siekdamas suteikti visavertes paslaugas, Vartotojo kompiuteryje (įrenginyje) gali įrašyti informaciją (slapukus, angliškai &quot;cookies&quot;). Įrašyta informacija yra naudojama Vartotojo, kaip ankstesnio tinklalapio naudotojo, atpažinimui bei tinklalapio lankomumo statistikos rinkimui.&lt;/p&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;10. Visi šioje el.parduotuvėje renkami duomenys yra naudojami šiais tikslais:&lt;/p&gt;\r\n&lt;p&gt;10.1. paslaugų teikimui ir kokybei užtkrinti;&lt;/p&gt;\r\n&lt;p&gt;10.2. finansinių dokumentų išrašymui;&lt;/p&gt;\r\n&lt;p&gt;10.3. problemų, susijusių su paslaugu tiekimu, sprendimui;&lt;/p&gt;\r\n&lt;p&gt;10.4. kitų sutartinių įsipareigojimų vykdymui;&lt;/p&gt;\r\n&lt;p&gt;10.5. tiesioginės rinkodaros tikslais.&lt;/p&gt;\r\n&lt;p&gt;11. Vartotojas, užsakydamas paslaugas šioje parduotuvėje, privalo nurodyti tik teisingus duomenis. Neteisingų duomenų įvedimas yra laikomas naudojimo Sąlygų ir Privatumo politikos pažeidimu.&lt;/p&gt;\r\n&lt;p&gt;12. Tiekėjas statistiniais tikslais gali naudoti su Vartotoju tiesiogiai nesusijusius duomenis, t. y. duomenis apie įsigytas paslaugas, tinklalapio naudojimą ir t.t.. Tokie statistiniai duomenys renkami ir tvarkomi taip, kad neleistų atskleisti Vartotojo asmens tapatybės arba kitų asmens duomenų, pagal kuriuos būtų galima nustatyti asmens tapatybę.&lt;/p&gt;\r\n&lt;p&gt;13. Vartotojas turi teisę bet kada keisti ar atnaujinti savo paslaugos įsigyjimo metu nurodytus duomenis.&lt;/p&gt;\r\n&lt;p&gt;14. Tiekėjas turi teisę iš dalies ar visiškai pakeisti Privatumo politiką.&lt;/p&gt;\r\n&lt;p&gt;15. Privatumo politikos papildymai ar pakeitimai įsigalioja nuo jų paskelbimo šioje parduotuvėje dienos.&lt;/p&gt;\r\n&lt;p&gt;16. Jei po Privatumo politikos papildymo ar pakeitimo Vartotojas ir toliau naudojasi šioje  parduotuve&amp;nbsp;ir jos teikiamomis paslaugomis, laikoma, kad Vartotojas sutinka su šiais papildymais ir/ar pakeitimais.&lt;/p&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12px; font-weight: bold;&quot;&gt;Kokius jūsų duomenis renkame ?&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Jums įsigijus prekę iš šios elektroninės parduotuvės, sudarome pirkimo-pardavimo sutartį, o jos įgyvendinimui reikalinga minimali informacija :&amp;nbsp; Jūsų vardas, pavardė, tel. nr., el. pašto adresas ir, pasirinkus pristatymą į namus - pristatymo adresas. Jūsų kontaktai yra reikalingi tam, kad informuotume apie užsakymo eigą ir kitiems su užsakymu susijusiems klausimams. Ši asmeninė informacija yra reikalinga tik konkrečiai sutarčiai sudaryti ir įgyvendinti.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Tam, kad prekes galėtumėte įsigyti išsimokėtinai, papildomai reikalinga informacija: Jūsų asmens kodas, asmens dokumento numeris, tapatybę patvirtinančio dokumento kopija, informacija apie darbinę padėtį ir per paskutinius 4 mėnesius gautų pajamų vidurkis. Be šios informacijos negalėtume suteikti pirkimo išsimokėtinai paslaugos.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Siekdami, kad naršymas šioje el.parduotuvėje būtų patogus ir efektyvus, o aktualias prekes rastumėte kuo greičiau, saugome:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Jūsų pirkimų ir veiksmų interneto svetainėje istoriją;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;naudojamo įrenginio IP adresą (pvz., tam, kad Kauniečiams pateiktume informaciją apie būtent Kauno regione vykstančias akcijas , nemokamus pristatymus ir t.t..;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Tam, kad Jūsų asmeniniai duomenys būtų apsaugoti visapusiškai, rekomenduojame atkreipti dėmesį ir užtikrinti, kad jungiantis prie mūsų elektroninės parduotuvės Jūsų asmeninių duomenų nematytų pašaliniai asmenys, ir kad jie būtų tinkamai saugomi. Patariame reguliariai keisti prisijungimo slaptažodį, saugoti mokėjimo kortelių bei kitus duomenis, kuriais pasinaudojus gali būti pažeistas Jūsų asmens duomenų saugumas ir privatumas.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Mūsų interneto svetainė yra apsaugota pagal saugumo protokolą, kuris remiasi duomenų kodavimo sistemos sertifikatu (SSL). Tokios parduotuvės internetinio adreso užraše yra raidė „s“: „https://...“.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12px; font-weight: bold;&quot;&gt;Kokia jums nauda iš griežtesnio reglamento (BDAR ) ?&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;Įsigaliojus naujam reglamentui nuo 2018m. gegužės 25d. , jūsų duomenys tapo dar saugesni , nuo šiol jūs galite rasti papildomų funkcijų ir mūsų el.parduotuvėje.&lt;/p&gt;\r\n&lt;p&gt;1. Sužinoti kokius slapukus mes naudojame savo el.parduotuvėje ir kokiu tikslu , plačiau apie tai skaitykite informaciniame puslapyje pavadinimu SLAPUKAI&lt;/p&gt;\r\n&lt;p&gt;2. BDAR užklausa - el.parduotuvės apačioje rasite šią skiltį , paspaudę ją , galite gauti BDAR asmeninių duomenų ataskaitą, kurioje matysite , kokią informaciją apie jus mes esame surinke.&lt;/p&gt;\r\n&lt;p&gt;3. Teisė būti užmirštam - el.parduotuvės apačioje rasite šią skiltį , paspaudę ją, bet jokių papildomų klausimų būsite automatiškai ištrinti iš mūsų sistmos r nebeliks jokių jūsų duomenų.&lt;/p&gt;\r\n&lt;p&gt;4. Naujienlaiškis - el.parduotuvės apačioje rasite šią skiltį , paspaudę ją galite vieno mygtuko paspaudimu užsiprenumeruoti naujienlaiškius / atšaukti prenumerartą.&lt;/p&gt;\r\n', 'Privatumo politika', '', ''),
(6, 3, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(7, 2, 'Pirkimo sąlygos ir grąžinimas', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Kaip redaguoti šį puslapį:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;KATALOGAS--&amp;gt;INFORMACINIAI PUSLAPIAI&amp;nbsp;SUSIRANDATE&amp;nbsp;&lt;/em&gt;&quot;&lt;em&gt;Pirkimo sąlygos&quot; IR SPAUDŽIATE REDAGUOTI&lt;/em&gt;&lt;/span&gt;.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;1. Bendrosios nuostatos.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.1. Šios prekių pirkimo – pardavimo sąlygos ir taisyklės (toliau – Taisyklės) yra Šalims privalomas teisinis dokumentas, kuris nustato Pirkėjo ir Pardavėjo teises, pareigas ir atsakomybę Pirkėjui renkantis, užsakant ir įsigyjant prekes el. parduotuvėje . Vartotojai, prisijungę prie šio tinklalapio, patvirtina, kad sutinka su parduotuvės sąlygomis.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.2. Ši parduotuvė yra mažmeninės prekybos elektroninė parduotuvė, orientuota į vartotojus, perkančius prekes asmeniniams, šeimos, namų ūkio, laisvalaikio, verslo ar profesijos poreikiams tenkinti.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.3. Šioje parduotuvėje prekių prekybą organizuoja, vykdo ir teikia su ja susijusias paslaugas UAB &quot;UABAS&quot;, juridinio asmens kodas&amp;nbsp;000000000 (toliau - &quot;Pardavėjas&quot;).&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.4. Pirkėju laikomas bet kuris asmuo, besirenkantis, užsisakantis ir / arba perkantis prekes parduotuvėje. Pirkti el. parduotuvėje  turi teisę:&lt;br&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 1.4.1. veiksnūs fiziniai asmenys, t.y., asmenys sulaukę pilnametystės, kurių veiksnumas nėra apribotas teismo tvarka;&lt;br&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 1.4.2. nepilnamečiai nuo 14 iki 18 metų amžiaus, tik turėdami tėvų arba rūpintojų sutikimą, išskyrus tuos atvejus, kai jie savarankiškai disponuoja savo pajamomis;&lt;br&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 1.4.3. juridiniai asmenys;&lt;br&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 1.4.4. visų aukščiau nurodytų asmenų įgaliotieji atstovai.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.5. Pirkėjas, užsiregistruodamas arba užsisakydamas prekes parduotuvėje , besąlygiškai patvirtina, kad sutinka su šios parduotuvės Taisyklėmis, taip pat garantuoja, kad turi teisę pirkti prekes šioje parduotuvėje.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.6. Prekių pirkimo - pardavimo sutartis (toliau - &quot;Sutartis&quot;) tarp Pirkėjo ir Pardavėjo laikoma sudaryta nuo to momento, kai Pirkėjas šioje el. parduotuvėje suformavęs prekių krepšelį, nurodęs pristatymo adresą, pasirinkęs atsiskaitymo būdą ir susipažinęs su Pardavėjo Taisyklėmis, paspaudžia mygtuką „Patvirtinti užsakymą“ (žr. 5 punktą „Prekių užsakymas, kainos, atsiskaitymo tvarka ir terminai“).&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.7. Jeigu Pirkėjas nėra susipažinęs ir / arba nesutinka su šios parduotuvės Taisyklėmis arba tam tikra jų dalimi, jam nesuteikiama galimybė užsisakyti prekių šioje parduotuvėje. Jeigu Pirkėjas patvirtina užsakymą, laikoma kad jis susipažino ir besąlygiškai sutiko su visomis šios parduotuvės Taisyklėmis.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.8. Kiekviena Sutartis, sudaryta tarp Pirkėjo ir Pardavėjo, yra saugoma el. parduotuvėje .&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.9. Pardavėjas pasilieka teisę bet kuriuo metu pakeisti, taisyti ar papildyti Taisykles, atsižvelgdamas į teisės aktų nustatytus reikalavimus. Pirkėjui apsiperkant el. parduotuvėje  taikomos Taisyklės, galiojančios užsakymo patvirtinimo momentu. Rekomenduojama Pirkėjui susipažinti su Taisyklėmis kiekvieno apsipirkimo metu. Pardavėjas neprisiima jokios rizikos ar atsakomybės ir yra nuo jos besąlygiškai atleidžiamas, jei Pirkėjas visiškai arba iš dalies nesusipažino su Taisyklėmis.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.10. Pardavėjas turi teisę be įspėjimo apriboti ar sustabdyti Pirkėjo naudojimąsi šios parduotuvės paslaugoms arba panaikinti Pirkėjo registraciją, jeigu Pirkėjas pažeidžia šios parduotuvės taisykles, bando pakenkti parduotuvės darbo stabilumui ir saugumui.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;2. Registracija ir asmens duomenų apsauga.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.1. Užsisakyti ir įsigyti prekes šioje parduotuvėje Pirkėjas gali:&lt;/span&gt;&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 2.1.1. užsiregistruodamas šioje parduotuvėje – įvesdamas registracijoje prašomus duomenis;&lt;br&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 2.1.2. nesiregistruodamas šioje parduotuvėje.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.2. Pirkėjas, užsakydamas prekes 2.1. taisyklių punkte numatytais būdais, atitinkamuose Pardavėjo pateikiamuose informacijos laukuose turi nurodyti prekių užsakymo tinkamam įvykdymui būtinus Pirkėjo asmens duomenis: vardą, pavardę, prekių pristatymo adresą, telefono numerį ir el. pašto adresą. Juridinio asmens įgaliotas atstovas vietoje vardo ir pavardės pateikia juridinio asmens pavadinimą.&lt;/span&gt;&lt;/span&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.3. Pirkėjas yra atsakingas už pateiktų asmens duomenų tikslumą, teisingumą ir išsamumą. Pardavėjas neprisiima jokios atsakomybės ir yra besąlygiškai atleidžiamas nuo atsakomybės už galimą žalą, atsiradusią Pirkėjui ir (ar) tretiesiems asmenims dėl to, kad Pirkėjas nurodė neteisingus ir / arba neišsamius asmens duomenis arba nepakeitė ir nepapildė duomenų jiems pasikeitus.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.4. Pirkėjas, užsiregistravęs šioje parduotuvėje, turi teisę bet kuriuo momentu nevaržomai keisti bei papildyti &amp;nbsp;registracijos duomenis arba panaikinti savo registraciją.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.5. Pirkėjas, užsiregistruodamas el. parduotuvėje bei užsakydamas prekes, įsipareigoja saugoti ir niekam neatskleisti prisijungimo duomenų. Pirkėjas yra atsakingas už jam suteiktų prisijungimo duomenų išsaugojimą, o taip pat už visus veiksmus (duomenų suteikimą, prekių užsakymų pateikimą, vartotojo komentarus ir lt.), kurie atliekami šioje parduotuvėje prisijungus Pirkėjo vardu ir slaptažodžiu. Jeigu šios parduotuvės pasaugomis naudojasi trečiasis asmuo, prisijungęs Pirkėjo registracijos duomenimis, Pardavėjas šį asmenį laiko Pirkėju. Jei Pirkėjas praranda prisijungimo duomenis, jis privalo nedelsiant informuoti apie tai Pardavėją el.laišku, paštu, telefonu arba užpildydamas tam skirtą formą šioje parduotuvėje.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.6. Patvirtindamas šias taisykles Pirkėjas sutinka, jog Pirkėjo pateikti asmens duomenys būtų renkami, kaupiami, sisteminami, naudojami ir tvarkomi Pardavėjo užsakymo vykdymo, klientų aptarnavimo, veiklos analizės ir tiesioginės rinkodaros tikslais.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.7. Pirkėjo pateiktus asmens duomenis naudos išskirtinai tik Pardavėjas ir jo partneriai, su kuriais Pardavėjas tarpininkauja vykdant šios parduotuvės administravimą, prekių pristatymą, klientų aptarnavimą ir / arba kitas su Pirkėjo užsakymo įvykdymu susijusias paslaugas. Pardavėjas neatskleis Pirkėjo asmens duomenų tretiesiems asmenims, išskyrus šiame punkte minimus partnerius arba, kai Lietuvos Respublikos teisės aktuose nustatytais atvejais bus įpareigotas tai padaryti.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.8. Pirkėjas, nenorėdamas gauti Pardavėjo reklaminių pasiūlymų, registracijos anketoje turi galimybę pasirinkti, kad tokie pasiūlymai jam nebūtų siunčiami. Pirkėjui nepageidaujant, Pardavėjas nenaudos Pirkėjo asmens duomenų tiesioginės rinkodaros tikslais ir nesiųs Pirkėjui reklaminių ir komercinių pranešimų, išskyrus tuos, kurie būtini Pirkėjo pateiktų užsakymų vykdymo tikslais.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.9. Pirkėjo pateikti asmens duomenys bus tvarkomi laikantis Lietuvos Respublikos asmens duomenų teisinės apsaugos įstatymo bei kitų Lietuvos Respublikos teisės aktų, reglamentuojančių šių duomenų apsaugą ir tvarkymą.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.10. Pirkėjo pateikti asmens duomenys tiesioginės rinkodaros tikslais bus saugomi ne ilgiau nei 60 (šešiasdešimt) mėnesių nuo paskutinės prekių išsiuntimo datos. Duomenys, reikalingi įsiskolinimų valdymui, saugomi iki įsiskolinimo išieškojimo, tačiau ne ilgiau nei 10 (dešimt) metų.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.11. Pirkėjas turi teisę bet kada pateikti prašymą Pardavėjui susipažinti su Pardavėjo tvarkomais Pirkėjo asmens duomenimis, reikalauti juos pakeisti arba sustabdyti jų naudojimą tiesioginės rinkodaros tikslais.&lt;/span&gt;&lt;/span&gt;&lt;br&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;3. Prekių užsakymas, kainos, atsiskaitymo tvarka ir terminai.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.1. El. parduotuvėje Pirkėjas gali pirkti visą parą, 7 dienas per savaitę.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.2. Sutartis pradeda galioti nuo to momento, kai Pirkėjas paspaudžia mygtuką „Patvirtinti užsakymą“, o gavęs užsakymą Pardavėjas jį patvirtina – atsiunčia patvirtinimo laišką Pirkėjo nurodytu el. paštu. Pirkėjas įsipareigoja priimti užsakytas prekes ir už jas sumokėti sutartą kainą, o Pardavėjas įsipareigoja išsiųsti Pirkėjo užsakytas prekes Pirkėjo nurodytu adresu.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.3. Prekių kainos el. parduotuvėje  ir suformuotame užsakyme nurodomos eurais, įskaitant galiojančius mokesčius. Prekės Pirkėjui parduodamos kainomis, kurios galioja šioje parduotuvėje užsakymo pateikimo momentu.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.4. Pirkėjas atsiskaito už prekes vienu iš šių būdų:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.4.1. Atsiskaitymas naudojantis el. bankininkyste – tai išankstinis apmokėjimas pasinaudojant Pirkėjo naudojama el. bankininkystės sistema. Pirkėjas, norėdamas pasinaudoti šia atsiskaitymo forma, turi būti pasirašęs el. bankininkystės sutartį su vienu iš toliau nurodytų bankų: AB SEB bankas; AB bankas Swedbank; AB DNB Nord bankas; &amp;nbsp;Danske Bank A/S Lietuvos filialas; Nordea Bank AB Lietuvos skyrius; Ab Šiaulių bankas.. Pinigus Pirkėjas perveda į el. parduotuvės  atsiskaitomąją sąskaitą. Atsakomybė už duomenų saugumą šiuo atveju tenka atitinkamam bankui, kadangi visos piniginės operacijos vyksta banko el. bankininkystės sistemoje. Jei pasirinkote šį atsiskaitymo būdą, tuomet:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.4.1.1. Užpildykite užsakymą ir užsakymo žingsnyje &quot;Mokėjimo būdas&quot; pasirinkite savo banką;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.4.1.2. Ši parduotuvė nukreips Jus į pasirinkto banko puslapį ir perduos elektroninės bankininkystės sistemai duomenis apie sumą, kurią reikia apmokėti;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.4.1.3. Elektroninės bankininkystės puslapyje prisijunkite įprastu būdu ir sistema jau bus Jums suformavusi mokėjimą už išsirinktas prekes. Jums beliks tik patvirtinti mokėjimą.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.4.1.4. Patvirtinus mokėjimą, elektroninės bankininkystės puslapis užsidarys, o Jūs vėl sugrįšite į parduotuvės puslapį. Prisijungimo prie elektroninės bankininkystės duomenys naudojami tik prisijungimui prie banko puslapio, o grįžtant į šią parduotuvę neperduodami.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.4.2. Atsiskaitymas banko pavedimu – tai išankstinis atsiskaitymas, kai Pirkėjas, atsispausdinęs užsakymą ir nuėjęs į artimiausią banko skyrių, perveda pinigus į el. parduotuvės  banko sąskaitą. Atkreipkite dėmesį, kad mokėjimo paskirties laukelyje reikia būtinai nurodyti užsakymo numerį.&lt;/span&gt;&lt;/span&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Įmonės&amp;nbsp;rekvizitai:&lt;/u&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;Gavėjas: UAB &quot;UABAS&quot;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;A/S: LT000000000000000000&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;Bankas: Banko pavadinimas&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;Įmonės kodas: 000000000&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;Mokėjimo paskirtis: nurodykite užsakymo numerį&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;strong&gt;Įmokos kodas: nurodykite užsakymo numerį&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.5. Pirkėjas įsipareigoja už prekes sumokėti nedelsiant. Tik gavus apmokėjimą už prekes pradedamas formuoti prekių siuntinys ir pradedamas skaičiuoti prekių pristatymo terminas. Apmokėjimas laikomas įvykdytu kai visa mokėtina suma gaunama ir užskaitoma Pardavėjo banko sąskaitoje, nurodytoje apmokėjimo instrukcijose. Prekių ir jų pristatymo kainos sąskaitai apmokėti yra paskaičiuotos įskaitant galiojantį PVM mokestį.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;3.6. Pardavėjas turi teisę iš anksto nepranešęs Pirkėjui anuliuoti jo užsakymą, jeigu Pirkėjas nesumoka už prekes per&amp;nbsp;48 valandas&amp;nbsp;nuo užsakymo pateikimo momento.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;3.7. PVM sąskaitą - faktūrą Pardavėjas išrašo ir pateikia Pirkėjui kartu su siunčiamomis prekėmis.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;4. Prekių pristatymas.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.1. Šioje parduotuvėje užsakytos prekės pristatomos tik Lietuvos Respublikos teritorijoje.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.2. Prekes pristato Pardavėjas arba Pardavėjo įgaliotas atstovas (kurjeris).&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.3. Pirkėjo užsakytos prekės pristatomos Pirkėjo užsakyme nurodytu adresu. Pirkėjas įsipareigoja nurodyti tikslią prekių pristatymo vietą. Prašome nurodyti asmens duomenis tiksliai ir tvarkingai - iš didžiųjų raidžių, su lietuviškais rašmenimis, skyrybos ženklais reikiamose vietose, teisingais trumpiniais - g. / raj. ir t.t.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.4. Pirkėjas įsipareigoja prekes priimti pats. Tuo atveju, jei Pirkėjas prekių pats priimti negali, o prekės pristatytos nurodytu adresu, Pardavėjas arba jo įgaliotas atstovas turi teisę išduoti prekes bet kuriam kitam nurodytu adresu esančiam pilnamečiui asmeniu, o Pirkėjas neturi teisės reikšti Pardavėjui pretenzijų dėl prekių pristatymo netinkamam subjektui.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.5. Pardavėjas pristato Pirkėjui prekes vadovaudamasis prekių aprašymuose nurodytais terminais. Šie terminai yra preliminarūs, be to, netaikomi tais atvejais, kai Pardavėjo sandėlyje nėra reikiamų prekių, o Pirkėjas informuojamas apie užsakytų prekių trūkumą. Kartu Pirkėjas sutinka, jog išimtiniais atvejais prekių pateikimas gali vėluoti dėl nenumatytų, nuo Pardavėjo nepriklausančių aplinkybių. Tokiu atveju Pardavėjas įsipareigoja nedelsiant susisiekti su Pirkėju ir suderinti prekių pateikimo sąlygas.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.6. Visais atvejais Pardavėjas atleidžiamas nuo atsakomybės už prekių pateikimo terminų pažeidimą, jeigu prekės Pirkėjui nėra pateikiamos arba pateikiamos ne laiku dėl Pirkėjo kaltės arba dėl nuo Pardavėjo nepriklausančių aplinkybių.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.7. Jeigu prekės pristatymas yra neįmanomas dėl Pirkėjo kaltės arba dėl nuo Pirkėjo priklausančių aplinkybių (Pirkėjas užsakydamas prekę nurodė neteisingą adresą, nurodytu adresu Pirkėjas ar gavėjas nerandamas ar kt.), pakartotinai prekės Pirkėjui nėra siunčiamos, (išskyrus atvejus, kai Pirkėjas papildomai sumoka už pakartotinį prekės pristatymą). Tokiu atveju pinigai už prekes grąžinami nuskaičiavus pristatymo mokestį.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.8. Prekių pristatymo metu Pirkėjas privalo kartu su Pardavėju arba jo įgaliotu atstovu patikrinti siuntos būklę, pristatytų prekių komplektiškumą (asortimentą) ir kokybę. Pirkėjas privalo pažymėti kurjerio siuntos priėmimo - perdavimo dokumente nustatytus siuntos pažeidimus : siunta pateikiama sulamdytoje arba kitu būdu pažeistoje pakuotėje, siuntoje pateikiamos neužsakytos prekės arba netinkamas jų kiekis, nepilna prekės komplektacija. Pirkėjui nepatikrinus siuntos būklės ir/arba šiame punkte nustatyta tvarka neužfiksavus duomenų apie siuntos pažeidimus, siunta yra laikoma pristatyta tinkama ir nepažeista.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.9. Tais atvejais, kai prekių priėmimo metu Pirkėjas pastebi, jog siuntoje nėra tinkamas prekių kiekis arba pateiktos prekės neatitinka jo užsakytų prekių ir tai nėra nurodyta sąskaitoje-faktūroje, važtaraštyje ar kitame siuntos perdavimo – priėmimo dokumente, Pirkėjas privalo nedelsiant informuoti apie tai Pardavėją. Kai pirkėjas nustato, kad pristatytos prekės yra netinkamos kokybės, jis nekokybiškų prekių nepriima ir turi jas grąžinti kurjeriui, o prekių grąžinimo faktą bei priežastį atžymėti sąskaitoje-faktūroje, važtaraštyje ar kitame siuntos perdavimo – priėmimo dokumente Pardavėjo egzemplioriuje.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;5. Prekių kokybės, garantijos.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;5.1. Kiekvienos el. parduotuvėje  parduodamos prekės duomenys bendrai nurodomi prie kiekvienos prekės esančiame prekės aprašyme.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;5.2. Pardavėjas neatsako už tai, kad el. parduotuvėje  esančios prekės savo spalva, forma ar kitais parametrais gali neatitikti realaus prekių dydžio, formų ir spalvos dėl Pirkėjo naudojamo vaizduoklio ypatybių.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;6. Sutarties atsisakymas, prekių grąžinimas ir keitimas.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.1. Pirkėjas turi teisę atsisakyti Sutarties, pranešdamas apie tai Pardavėjui raštu (užpildant paskyroje pateiktą formą), nurodant pageidaujamą grąžinti prekę ir jos užsakymo numerį ir kitą reikalaujamą informaciją, ne vėliau kaip per 14 (keturiolika) kalendorinių dienų nuo prekių&amp;nbsp;pristatymo dienos, išskyrus atvejus, kai sutarties negalima atsisakyti pagal LR įstatymus (pvz., kai sutartis sudaryta dėl higienos prekių – patalynės reikmenų – pardavimo; žr. informaciją VšĮ „Vartotojų centras“ tinklalapyje&amp;nbsp;&lt;a href=&quot;http://www.vartotojucentras.lt/istatymas.php?id=1038&quot; style=&quot;color: rgb(17, 85, 204);&quot; target=&quot;_blank&quot; title=&quot;http://www.vartotojucentras.lt/istatymas.php?id=1038\r\nCtrl+Click or tap to follow the link&quot;&gt;http://www.vartotojucentras.&lt;wbr&gt;lt/istatymas.php?id=1038&lt;/a&gt;).&amp;nbsp;&lt;wbr&gt;Kilus klausimams dėl prekės gražinimo prašome kreiptis&amp;nbsp;el. paštu adresu&amp;nbsp; arba nurodytu telefono numeriu.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.2. Pateikęs&amp;nbsp;pranešimą apie sutarties atsisakymą, Pirkėjas privalo ne vėliau kaip per 14 (keturiolika) kalendorinių dienų savo lėšomis išsiųsti grąžinamas prekes (jeigu jos buvo pristatytos) Pardavėjui gavėjo adresu , nurodant grąžinamos prekės pavadinimą, užsakymo numerį ir grąžinimo priežastimi įvardinti sutarties atsisakymą.&lt;/span&gt;&lt;/span&gt; &lt;br&gt;\r\n\r\n&lt;/p&gt;&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.3. Parduotų prekių trūkumai šalinami, nekokybiškos prekės keičiamos, grąžinamos vadovaujantis LR ūkio ministro 2001 m. birželio 29 d. įsakymu Nr. 217 „Dėl Daiktų grąžinimo ir keitimo taisyklių patvirtinimo“ patvirtintomis Daiktų grąžinimo ir keitimo taisyklėmis, išskyrus atvejus, kai sutarties negalima atsisakyti pagal LR įstatymus (pvz., kai sutartis sudaryta dėl higienos prekių – patalynės reikmenų – pardavimo; žr. informaciją VšĮ „Vartotojų centras“ tinklalapyje&lt;a href=&quot;http://www.vartotojucentras.lt/istatymas.php?id=1038&quot; style=&quot;color: rgb(17, 85, 204);&quot; target=&quot;_blank&quot;&gt;http://www.vartotojucentras.&lt;wbr&gt;lt/istatymas.php?id=1038&lt;/a&gt;, „Ne maisto prekių grąžinimo ir keitimo ypatumai“ 18 punktą.).&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.4. Norėdamas grąžinti prekę(-es), Pirkėjas&amp;nbsp;privalo ne vėliau kaip per 14 (keturiolika) kalendorinių dienų nuo prekių pristatymo Pirkėjui dienos savo lėšomis&amp;nbsp;išsiųsti grąžinamas prekes Pardavėjui gavėjo adresu,&amp;nbsp;informuodamas Pardavėją kontaktų skyriuje nurodytomis susisiekimo priemonėmis, nurodant grąžinamos prekės pavadinimą, užsakymo numerį ir grąžinimo priežastis.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.5. Grąžinant gautą ne tą prekę ir/ar nekokybišką prekė, Pardavėjas įsipareigoja atsiimti tokias prekes ir jas pakeisti analogiškomis tinkamomis prekėmis savo sąskaita.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.6. Grąžinamos ar keičiamos kokybiškos prekės privalo būti nesugadintos, nepraradusios prekinės išvaizdos (nenuimtos ir nepažeistos etiketės, nenuplėštos apsauginės plėvelės ir kt.) ir negali būti naudotos. Prekė turi būti grąžinama originalioje pakuotėje, tos pačios komplektacijos, kokios buvo Pirkėjo gauta, būtinai pateikiant prekės įsigijimo dokumentą, garantinę kortelę (jei ji buvo išduota), naudojimo instrukcijas ir kitus prekės priklausinius. Jeigu prekė nėra pilnai sukomplektuota, yra sugadinta, netvarkinga arba nėra tinkamai supakuota, Pardavėjas turi teisę nepriimti prekės, jos nekeisti ir negrąžinti už prekę Pirkėjo sumokėtų pinigų.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.7. Pinigai už grąžintas prekes visais atvejais pervedami tik į Pirkėjo banko sąskaitą, iš kurios buvo atliktas užsakymo apmokėjimas, ne vėliau kaip per 14 kalendorinių dienų nuo grąžinamų prekių gavimo dienos.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.8. Grąžinant&amp;nbsp;kokybiškas ir Pirkėjo užsakymą atitinkančias prekes, prekių pakavimo, pristatymo mokestis Pirkėjui negrąžinamas ir nekompensuojamas. Keičiant kokybiškas ir Pirkėjo užsakymą atitinkančias prekes, Pirkėjas apmoka keičiamų prekių pakavimo ir siuntimo mokestį.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify; color: rgb(0, 0, 0); line-height: normal; font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 16px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;6.9. Tuo atveju, kai Pardavėjas neturi pakeitimui tinkamų prekių, Pirkėjui grąžinama sumokėta už prekę&amp;nbsp;suma, išskaičiavus prekės pakavimo ir pristatymo kaštus.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;7. Rinkodara ir informacija.&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;7.1. Pardavėjas savo nuožiūra gali inicijuoti el. parduotuvėje  įvairias akcijas.&lt;/span&gt;&lt;/span&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;7.2. Pardavėjas turi teisę vienašališkai, be atskiro įspėjimo, pakeisti akcijų sąlygas, taip pat jas panaikinti. Bet koks akcijų sąlygų ir tvarkos pakeitimas ar panaikinimas galioja tik į priekį, t.y. nuo jų atlikimo momento.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;7.3. Pardavėjas visus pranešimus siunčia Pirkėjo registracijos formoje nurodytomis susisiekimo priemonėmis.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;7.4. Pirkėjas visus pranešimus ir klausimus siunčia Pardavėjo el. parduotuvės skyriuje „Kontaktai“ nurodytais telefonais ir el. pašto adresais.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;7.5. Pardavėjas neatsako jei Pirkėjas negauna siunčiamų informacinių ar patvirtinančių pranešimų dėl internetinio ryšio, elektroninio pašto paslaugų tiekėjų tinklų sutrikimų.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;8. Baigiamosios nuostatos&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;\r\n&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;8.1. Šios Taisyklės sudarytos vadovaujantis LR įstatymais ir teisės aktais.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;8.2. Pardavėjas atleidžiamas nuo bet kokios atsakomybės tais atvejais, kai nuostoliai kyla dėl to, jog Pirkėjas, neatsižvelgdamas į Pardavėjo rekomendacijas ir Pirkėjo įsipareigojimus, nesusipažino su šiomis Taisyklėmis, nors tokia galimybė jam buvo suteikta.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;8.3. Atsiradus žalai, kaltoji Šalis atlygina kitai Šaliai tiesioginius nuostolius.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;8.4. Visi nesutarimai, kilę dėl šių Taisyklių vykdymo, sprendžiami derybų būdu. Nepavykus susitarti, ginčai sprendžiami LR įstatymų nustatyta tvarka.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;8.5. Jei Pardavėjo el. parduotuvėje  yra nuorodos į kitų įmonių, įstaigų, organizacijų ar asmenų el. tinklalapius, Pardavėjas nėra atsakingas už ten esančią informaciją ar vykdomą veiklą, tų tinklapių neprižiūri, nekontroliuoja ir toms įmonėms bei asmenims neatstovauja.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;*Atsiradus neaiškumams prašome kreiptis nurodytais kontaktais.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;span style=&quot;font-family: tahoma,geneva,sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;/p&gt;', 'Pirkimo sąlygos ir grąžinimas', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(6, 2, 'Prekių pristatymas', '&lt;br&gt;&lt;p&gt;Prekių pristatymo informacija ...&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Kaip redaguoti šį puslapį:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;KATALOGAS--&amp;gt;INFORMACINIAI PUSLAPIAI&amp;nbsp;SUSIRANDATE&amp;nbsp;&lt;/em&gt;&quot;&lt;em&gt;Prekių pristatymas&quot; IR SPAUDŽIATE REDAGUOTI&lt;/em&gt;&lt;/span&gt;.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;1. NEMOKAMAS&lt;/strong&gt; prekių pristatymas kaip perkate daugiau nei už XX Eur.&lt;/p&gt;&lt;p&gt;2. &lt;strong&gt;PREKIŲ PRISTATYMO BŪDAI IR KAINOS&lt;/strong&gt;:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Lietuvos paštu (registruota siunta) - kaina XX Eur.&lt;/li&gt;&lt;li&gt;Kurjeriu - kaina XX Eur.&lt;/li&gt;&lt;li&gt;Post24 - kaina XX Eur.&lt;/li&gt;&lt;li&gt;Atsiėmimas iš parduotuvės - Nemokamas.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;3. PREKIŲ PRISTATYMO TERMINAI:&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Lietuvos paštu (registruota siunta)&amp;nbsp; iki 3 d.d.&lt;/li&gt;&lt;li&gt;Kurjeriu - kaina XX Eur. 1-2 dienos&lt;/li&gt;&lt;li&gt;LP express - kaina XX Eur. 1-2 dienos&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;\r\n', 'Prekių pristatymas', '', ''),
(4, 2, 'Apie mus', '&lt;p&gt;\r\n	&lt;/p&gt;&lt;p&gt;\r\nApie mus ...&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Kaip redaguoti šį puslapį:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;KATALOGAS--&amp;gt;INFORMACINIAI PUSLAPIAI&amp;nbsp;SUSIRANDATE&amp;nbsp;&lt;/em&gt;&quot;&lt;em&gt;Apie mus&quot; IR SPAUDŽIATE REDAGUOTI&lt;/em&gt;&lt;/span&gt;.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;\r\n', 'Apie mus', '', ''),
(5, 2, 'Atsiskaitymo būdai', '&lt;p&gt;\r\n	&lt;/p&gt;&lt;p&gt;\r\n	&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Kaip redaguoti šį puslapį:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;KATALOGAS--&amp;gt;INFORMACINIAI PUSLAPIAI&amp;nbsp;SUSIRANDATE&amp;nbsp;&lt;/em&gt;&quot;&lt;em&gt;Atsiskaitymo būdai&quot; IR SPAUDŽIATE REDAGUOTI&lt;/em&gt;&lt;/span&gt;.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;&lt;br&gt;&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2&gt;Atsiskaitymo būdai:&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Bankiniu pavedimu &lt;/strong&gt;(atlikę\r\n užsakymą gausite detalius nurodymus ir rekvizitus kur pervesti pinigus \r\nuž prekes, tačiau pinigai pervedami pagal banko nustatytus pervedimo \r\nlaikus).&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Per paysera.lt sistemą&lt;/strong&gt; (pasirinkę šį\r\n mokėjimo būdą Jūs per mokėjimai.lt sistemą būsite nukreipti į Jūsų \r\nbanką ir iškarto galėsite atlikti atsiskaitymą už prekes, o pinigai \r\npervedami nedelsiant).&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Paypal sistema&lt;/strong&gt; (pasirinkę šį mokėjimo būdą Jūs būsite nukreipti į Paypal mokėjimo sisteą ir iškart galėsite atsiskaityti už prekes)&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Grynaisiais&lt;/strong&gt; (už prekes atsiskaitysite prekių atiėmimo/pristatymo metu).&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Mūsų rekvizitai:&lt;/h3&gt;&lt;p&gt;&lt;strong&gt;Pardavėjas:&amp;nbsp;&lt;/strong&gt;&lt;em&gt;UAB &quot;UAB pavadinimas&quot;&lt;/em&gt;&lt;br&gt;&lt;strong&gt;A/S Nr.&lt;/strong&gt;:&amp;nbsp;&lt;em&gt;LT00 0000 0000 0000 0000&lt;/em&gt;&lt;br&gt;&lt;strong&gt;Banko kodas: &lt;/strong&gt;&lt;em&gt;00000&lt;/em&gt;&lt;br&gt;&lt;strong&gt;Bankas:&lt;/strong&gt;&amp;nbsp;&lt;em&gt;Banko pavadinimas&lt;/em&gt;&lt;br&gt;&lt;strong&gt;Mokėjimo paskirtis:&lt;/strong&gt; &lt;em&gt;Jūsų užsakymo numeris&lt;/em&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Atsiskaitymo būdai', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(3, 3, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(4, 3, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 3, 'Payment Terms &amp; Conditions (RU)', '&lt;p&gt;Payment Terms &amp;amp; Conditions (RU)&lt;br&gt;&lt;/p&gt;\r\n', 'Payment Terms &amp; Conditions (RU)', '', ''),
(7, 1, 'Pirkimo sąlygos', '&lt;p&gt;Pirkimo sąlygos&lt;br&gt;&lt;/p&gt;', 'Pirkimo sąlygos', '', ''),
(7, 3, 'Pirkimo sąlygos', '&lt;p&gt;Pirkimo sąlygos&lt;br&gt;&lt;/p&gt;', 'Pirkimo sąlygos', '', ''),
(8, 1, 'Cookies', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Slapukai &lt;/b&gt;tai mažos apimties tekstiniai failai, kurie su Asmens sutikimu, saugomi Asmens naršyklėje ar įrenginyje.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;Norėdami Pirkėjui ar Elektroninės parduotuvės lankytojui pasiūlyti visavertes paslaugas, Elektroninėje parduotuvėje Administratorius naudoja sisteminius slapukus (angl. cookies).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;b&gt;&lt;br&gt;Slapukai naudojami &lt;/b&gt;siekiant atpažinti ankstesnį Elektroninės parduotuvės lankytoją, nustatyti Elektroninės parduotuvės puslapio kalbą, identifikuoti vartotojo sesiją, sesijos raktą, taip pat siekiant identifikuoti ir ištaisyti Elektroninėje parduotuvėje esančias klaidas.Taip pat nadojami “google analytics” - elektroninės parduotuvės lankytojų veiksmams stebėti - tikslas gerinti elektroninės parduotuvės darbą.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;1) tracking - naudojamas &quot;OpenCart&quot; partnerių sistemos&lt;br&gt;2) currency - naudojama valiutai, kuria bus rodomos produktų kainos&lt;br&gt;3) language - vartojama kalbai nustatyti, &quot;OpenCart&quot; bus įkelta&lt;br&gt;4) amazon_Login_state_cache - naudojama &quot;Amazon&quot; plėtiniuose, integruotuose &quot;OpenCart&quot;&lt;br&gt;5)_ga 2 metai, Naudojama vartotojams atskirti.&lt;br&gt;6)_gid 24 valandas, Naudojamas vartotojams atskirti.&lt;br&gt;7)_gat 1 minutė, Naudojama norint padidinti greitį. Jei &quot;Google Analytics&quot; įdiegiamas per &quot;Google&quot; žymų tvarkytuvę, šis slapukas bus pavadintas _dc_gtm_ &amp;lt;property-id&amp;gt;.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;b&gt;Asmuo gali ištrinti arba blokuoti slapukus, pasirinkęs atitinkamus nustatymus savo naršyklėje&lt;/b&gt;, leidžiančius atsisakyti visų ar dalies slapukų. Atkreiptinas dėmesys, kad naudojantis tokiais naršyklės nustatymais, kurie blokuoja slapukus (įskaitant būtinus slapukus), Asmeniui gali iškilti problemų naudojantis visomis ar dalimi elektroninės parduotuvės funkcijų.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Video reportažas apie SLAPUKUS:&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\n&lt;iframe src=&quot;https://www.youtube.com/embed/yoE9-tNvhRs&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen=&quot;&quot; width=&quot;560&quot; height=&quot;315&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;', 'Cookies', '', ''),
(8, 3, 'Cookies', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Slapukai &lt;/b&gt;tai mažos apimties tekstiniai failai, kurie su Asmens sutikimu, saugomi Asmens naršyklėje ar įrenginyje.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;Norėdami Pirkėjui ar Elektroninės parduotuvės lankytojui pasiūlyti visavertes paslaugas, Elektroninėje parduotuvėje Administratorius naudoja sisteminius slapukus (angl. cookies).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;b&gt;&lt;br&gt;Slapukai naudojami &lt;/b&gt;siekiant atpažinti ankstesnį Elektroninės parduotuvės lankytoją, nustatyti Elektroninės parduotuvės puslapio kalbą, identifikuoti vartotojo sesiją, sesijos raktą, taip pat siekiant identifikuoti ir ištaisyti Elektroninėje parduotuvėje esančias klaidas.Taip pat nadojami “google analytics” - elektroninės parduotuvės lankytojų veiksmams stebėti - tikslas gerinti elektroninės parduotuvės darbą.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;1) tracking - naudojamas &quot;OpenCart&quot; partnerių sistemos&lt;br&gt;2) currency - naudojama valiutai, kuria bus rodomos produktų kainos&lt;br&gt;3) language - vartojama kalbai nustatyti, &quot;OpenCart&quot; bus įkelta&lt;br&gt;4) amazon_Login_state_cache - naudojama &quot;Amazon&quot; plėtiniuose, integruotuose &quot;OpenCart&quot;&lt;br&gt;5)_ga 2 metai, Naudojama vartotojams atskirti.&lt;br&gt;6)_gid 24 valandas, Naudojamas vartotojams atskirti.&lt;br&gt;7)_gat 1 minutė, Naudojama norint padidinti greitį. Jei &quot;Google Analytics&quot; įdiegiamas per &quot;Google&quot; žymų tvarkytuvę, šis slapukas bus pavadintas _dc_gtm_ &amp;lt;property-id&amp;gt;.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;b&gt;Asmuo gali ištrinti arba blokuoti slapukus, pasirinkęs atitinkamus nustatymus savo naršyklėje&lt;/b&gt;, leidžiančius atsisakyti visų ar dalies slapukų. Atkreiptinas dėmesys, kad naudojantis tokiais naršyklės nustatymais, kurie blokuoja slapukus (įskaitant būtinus slapukus), Asmeniui gali iškilti problemų naudojantis visomis ar dalimi elektroninės parduotuvės funkcijų.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Video reportažas apie SLAPUKUS:&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\n&lt;iframe src=&quot;https://www.youtube.com/embed/yoE9-tNvhRs&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen=&quot;&quot; width=&quot;560&quot; height=&quot;315&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;', 'Cookies', '', ''),
(8, 2, 'Slapukai', '&lt;br&gt;&lt;p&gt;&lt;strong&gt;Kaip redaguoti šį puslapį:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;em&gt;KATALOGAS--&amp;gt;INFORMACINIAI PUSLAPIAI&amp;nbsp;SUSIRANDATE&amp;nbsp;&lt;/em&gt;&quot;&lt;em&gt;Slapukai&quot; IR SPAUDŽIATE REDAGUOTI&lt;/em&gt;&lt;/span&gt;.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Norėdami Pirkėjui ar Elektroninės parduotuvės lankytojui pasiūlyti \r\nvisavertes paslaugas, Elektroninėje parduotuvėje Administratorius \r\nnaudoja sisteminius slapukus (angl. cookies).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Slapukas (angl. cookies) -&lt;/b&gt; mažas tekstinis dokumentas, turintis unikalų identifikacijos numerį, kuris yra perduodamas iš interneto tinklalapio į lankytojo kompiuterio kietąjį diską, kad tinklalapio administratorius galėtų atskirti lankytojo kompiuterį ir matyti jo veiklą internete. Kai jūs sutinkate, jog slapukai būtų naudojami, šis tekstinis dokumentas yra pridedamas ir slapukai leidžia analizuoti puslapio srauto informaciją. Ši priemonė taip pat leidžia kaupti, analizuoti bei prisiminti informaciją apie tai kuo jūs domitės, kam jūs teikiate pirmenybę. &lt;b&gt;Mes naudojame internetinio srauto slapukus&lt;/b&gt;, kad galėtume matyti kokius puslapius vartotojas lanko. Tai padeda internetinio srauto duomenų analizei atlikti bei pagerinti naršymo kokybę internetiniame puslapyje, atsižvelgiant į vartotojų elgseną. Šią informaciją mes naudojame tik statistinės analizės tikslais.Kai apsilankote mūsų tinklalapyje, norime pateikti informaciją ir funkcijas, pritaikytas tik jums. Jie padeda mums atpažinti jus kaip ankstesnį svetainės lankytoją, išsaugoti jūsų lankymosi tinklalapyje istoriją ir pagal tai pritaikyti turinį. Taip galime svetainę tobulinti, padaryti ją patogesne jums.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;a href=&quot;http://www.google.com/privacypolicy.html&quot;&gt;Google privatumo politika&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;http://www.google.com/ads/preferences/&quot;&gt;Google reklamos nustatymai&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;http://www.google.com/privacy_ads.html&quot;&gt;Atsisakyti Google partnerių tinklo slapukų &lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;http://www.google.com/ads/preferences/plugin&quot;&gt;Užtikrinti nustatymų išsaugojimą naršyklėje&lt;/a&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Naudojami slapukai:&lt;/b&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;b&gt;currency &lt;/b&gt;– išsaugoja numatytos valiutos kodą, pagal tai pirkėjui atvaizduoja prekių / paslaugų kainas atitinkama valiuta (Galiojimo terminas 29 dienos).&lt;/li&gt;&lt;li&gt;&lt;b&gt;language &lt;/b&gt;– išsaugoja numatytos kalbos kodą, pagal kurį sekančio apsilankymo metu parduotuvę užkrauna numatyta kalba    (Galiojimo terminas 29 dienos).&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;PHPSESSID &lt;/b&gt;– išsaugoja informaciją apie pirkėjo prisijungimą, prekių palyginimo / krepšelio, norų sąrašo duomenis, kad sekančiu apsilankymu atitinkamai būtų užkrauti reikalingi duomenys.&lt;/li&gt;&lt;li&gt;&lt;b&gt;@@History/@@scroll|#&lt;/b&gt; - naudojamas tam, kad pagerinti naršymo kokybę internetiniame puslapyje.&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;_ga&amp;nbsp; &lt;/b&gt;- „Google Analytics“ naudojamas tam, kad įvertintų vartotojo apsilankymo tikslus, parengtų ataskaitas apie tinklalapio aktyvumą svetainių operatoriams ir pagerintų vartotojų patirtį besilankant svetainėje. (Galiojimo terminas 2 metai).&lt;/li&gt;&lt;li&gt;&lt;b&gt;_gid&lt;/b&gt; -  „Google Analytics“ naudojamas tam, kad atskirti svetainės lankytojus   (Galiojimo terminas 24 valandos).&lt;/li&gt;&lt;li&gt;&lt;b&gt;_gat &lt;/b&gt;- „Google Analytics“ naudojamas tam, kad apriboti išsiunčiamų užklausų kiekį   (Galiojimo terminas 1 minutė).&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;_dc_gtm_&lt;/b&gt;&amp;nbsp; - Google Tag manager naudojamas tam, kad sekti reklamos kampanijų efektyvumą per Google Analytics  (Galiojimo terminas 2 minutė).&lt;/li&gt;&lt;li&gt;&lt;b&gt;fr &lt;/b&gt;- Facebook pixel - naudojamas tam, kad atskirti svetainės lankytojus   (Galiojimo terminas 3 mėn.).&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;_hjIncludedInSampl&lt;/b&gt; - Hotjar naudojamas tam, kad atskirti svetainės lankytojus   (Galiojimo terminas 365 dienos).&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Google Analytics:&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Ši svetainė naudoja „Google Analytics“ tinklalapio analizės paslaugą, kurią teikia Google Inc. (Google). „Google Analytics“ naudoja slapukus – tekstinius failus, saugomus Jūsų kompiuteryje ir įgalina atlikti naudojimosi svetaine analizę. Slapukų surenkama informacija apie veiksmus svetainėje (įskaitant Jūsų IP adresą) bus persiunčiama ir saugoma Google serveriuose Jungtinėse Amerikos Valstijose. Šią informaciją Google naudos veiksmams svetainėje įvertinti, svetainės operatoriams skirtoms ataskaitoms apie svetainės aktyvumą sudaryti bei kitoms su svetaine ir interneto naudojimu susijusioms paslaugoms teikti. Google gali persiųsti šią informaciją trečiosioms šalims, jeigu to reikalauja įstatymai arba jei šios trečiosios šalys apdoroja informaciją Google pavedimu. Bet kokiu atveju, Google Jūsų IP adreso nesusies su kitais Google turimais duomenimis. Slapukai savarankiškai neidentifikuoja konkretaus asmens. Duomenys surinkti slapukais daugiau susiję su konkretaus kompiuterio panaudojimu negu su konkrečiu interneto naudotoju, tačiau Jūs galite atsisakyti slapukų naudojimo, naršyklėje pasirinkdami tam tikrus nustatymus. Visgi atkreipiame Jūsų dėmesį į tai, kad tokiu atveju Jūs negalėsite išnaudoti visų svetainės teikiamų funkcijų. Naudodamiesi šia svetaine Jūs pareiškiate, kad sutinkate su Jūsų pateiktų duomenų Google apdorojimu aukščiau aprašytu būdu ir nurodytais tikslais.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;strong&gt;Google AdWords:&lt;/strong&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Mūsų tinklapyje matomas trečiųjų šalių reklamas tiekia Google Adwords įrankis. Siekiant pateikti tik Jums, kaip vartotojui, aktualias reklamas mes naudojame trečiųjų šalių slapukų informaciją apie Jūsų naršymo įpročius, kurią mums pateikia Google Adwords įrankis. Trečiosios šalys kurių reklamos vaizduojamos mūsų tinklapyje taip pat gali išsaugoti slapukus Jūsų naršyklėje. Google Adwords mums teikia asmeniškai neindikuojamą informaciją apie Jus ir Jūsų naršymo įpročius remarketingo tikslams.&lt;strong&gt;&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;strong&gt;Socialinių tinklų slapukai:&lt;/strong&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Į savo svetaines galime integruoti funkcijas iš trečiųjų šalių svetainių, ypač iš tam tikrų socialinių tinklų. Šias funkcijas dažnai lydi scenarijai ar kiti elementai, galintys nuskaityti, o kartais ir patalpinti, slapukus iš tų socialinių tinklų jūsų įrenginyje. Šie slapukai gali leisti reklamas pritaikyti prie jūsų poreikių. Nors mes neturime prieigos prie šių slapukų ar jų renkamų duomenų bei negalime jų kontroliuoti, norime jus informuoti ir gauti jūsų sutikimą naudoti tokius elementus. Norėdami sužinoti daugiau, skaitykite toliau pateiktą galimų socialinių tinklų slapukų sąrašą.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;a href=&quot;https://about.pinterest.com/en/privacy-policy&quot;&gt;Pinterest privatumo politika&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;https://www.instagram.com/about/legal/privacy/#&quot;&gt;Instagram privatumo politika&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;https://twitter.com/privacy?lang=lt&quot;&gt;Twitter privatumo politika&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;https://www.google.fr/intl/lt/policies/privacy/&quot;&gt;Google it Youtube privatumo politika&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;https://www.facebook.com/about/privacy/&quot;&gt;Facebook privatumo politika&lt;/a&gt;&lt;strong&gt;&lt;/strong&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;strong&gt;Nuorodos į trečiųjų šalių internetines svetaines:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Mūsų internetiniame tinklalapyje rasite nuorodas į trečiųjų šalių internetines svetaines. Mes neįtakojame šių svetainių privatumo politikos bei asmeninių duomenų naudojimo taisyklių laikymosi.&lt;strong&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;/strong&gt;&lt;br&gt;&lt;br&gt;&lt;b&gt;Asmuo gali ištrinti arba blokuoti slapukus, pasirinkęs atitinkamus nustatymus savo naršyklėje&lt;/b&gt;, leidžiančius atsisakyti visų ar dalies slapukų. Atkreiptinas dėmesys, kad naudojantis tokiais naršyklės nustatymais, kurie blokuoja slapukus (įskaitant būtinus slapukus), Asmeniui gali iškilti problemų naudojantis visomis ar dalimi elektroninės parduotuvės funkcijų.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;right&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;center&quot;&gt;&lt;b&gt;Video reportažas apie SLAPUKUS:&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;center&quot;&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\n&lt;div align=&quot;center&quot;&gt;&lt;iframe src=&quot;https://www.youtube.com/embed/yoE9-tNvhRs&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen=&quot;&quot; width=&quot;560&quot; height=&quot;315&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;&lt;p align=&quot;center&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Slapukai', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 11),
(3, 0, 11),
(7, 0, 11),
(6, 0, 11),
(5, 0, 11),
(8, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_intuitive_shipping`
--

CREATE TABLE `oc_intuitive_shipping` (
  `rate_id` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL,
  `group` text COLLATE utf8_bin NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `total_type` tinyint(1) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `shipping` longtext COLLATE utf8_bin NOT NULL,
  `origin` text COLLATE utf8_bin NOT NULL,
  `geocode_lat` decimal(20,8) NOT NULL,
  `geocode_lng` decimal(20,8) NOT NULL,
  `ocapps_cost` tinyint(1) NOT NULL,
  `ocapps_requirement` tinyint(1) NOT NULL,
  `requirement_match` varchar(10) COLLATE utf8_bin NOT NULL,
  `requirement_cost` varchar(10) COLLATE utf8_bin NOT NULL,
  `requirements` longtext COLLATE utf8_bin NOT NULL,
  `fail_method` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `administrator` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_intuitive_shipping`
--

INSERT INTO `oc_intuitive_shipping` (`rate_id`, `description`, `status`, `sort_order`, `group`, `tax_class_id`, `total_type`, `name`, `shipping`, `origin`, `geocode_lat`, `geocode_lng`, `ocapps_cost`, `ocapps_requirement`, `requirement_match`, `requirement_cost`, `requirements`, `fail_method`, `date_added`, `date_modified`, `administrator`) VALUES
(1, 'Pristatymas kurjeriu', 1, 1, '', 0, 0, '{\"lt-lt\":\"Pristatymas kurjeriu\",\"en-gb\":\"Delivery by courier\",\"ru-ru\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u043a\\u0443\\u0440\\u044c\\u0435\\u0440\\u043e\\u043c\"}', '{\"4\":{\"rate_type\":\"cart_total\",\"shipping_factor\":\"\",\"currency\":\"EUR\",\"rates\":{\"15d6117b1fe\":{\"max\":\"50\",\"cost\":\"5\",\"per\":\"\"},\"15d6117fc13\":{\"max\":\"99999\",\"cost\":\"0\",\"per\":\"\"}},\"shipping_method\":\"\",\"final_cost\":\"0\",\"split\":\"0\",\"cost\":{\"min\":\"\",\"max\":\"\",\"add\":\"\"},\"freight_fee\":\"\"},\"0\":{\"rate_type\":\"cart_quantity\",\"shipping_factor\":\"\",\"currency\":\"EUR\",\"shipping_method\":\"\",\"final_cost\":\"0\",\"split\":\"0\",\"cost\":{\"min\":\"\",\"max\":\"\",\"add\":\"\"},\"freight_fee\":\"\"}}', '', '0.00000000', '0.00000000', 0, 0, 'any', 'every', '[]', 0, '2017-07-20 20:40:02', '2017-07-20 20:42:51', '@root'),
(2, 'Atsiimsiu prekybos vietoje', 1, 1, '', 0, 0, '{\"lt-lt\":\"Atsiimsiu prekybos vietoje\",\"en-gb\":\"Pick up at store\",\"ru-ru\":\"\\u0417\\u0430\\u0431\\u0440\\u0430\\u0442 \\u043d\\u0430 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435\"}', '{\"4\":{\"rate_type\":\"cart_quantity\",\"shipping_factor\":\"\",\"currency\":\"EUR\",\"rates\":{\"15d61246e99\":{\"max\":\"99999999\",\"cost\":\"0\",\"per\":\"\"}},\"shipping_method\":\"\",\"final_cost\":\"0\",\"split\":\"0\",\"cost\":{\"min\":\"\",\"max\":\"\",\"add\":\"\"},\"freight_fee\":\"\"},\"0\":{\"rate_type\":\"cart_quantity\",\"shipping_factor\":\"\",\"currency\":\"EUR\",\"shipping_method\":\"\",\"final_cost\":\"0\",\"split\":\"0\",\"cost\":{\"min\":\"\",\"max\":\"\",\"add\":\"\"},\"freight_fee\":\"\"}}', '', '0.00000000', '0.00000000', 0, 0, 'any', 'every', '[]', 0, '2017-07-20 20:56:22', '2017-07-20 20:56:33', '@root');

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_category`
--

CREATE TABLE `oc_journal2_blog_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_category_description`
--

CREATE TABLE `oc_journal2_blog_category_description` (
  `category_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_category_to_layout`
--

CREATE TABLE `oc_journal2_blog_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_category_to_store`
--

CREATE TABLE `oc_journal2_blog_category_to_store` (
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_comments`
--

CREATE TABLE `oc_journal2_blog_comments` (
  `comment_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `comment` text,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_post`
--

CREATE TABLE `oc_journal2_blog_post` (
  `post_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `comments` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_journal2_blog_post`
--

INSERT INTO `oc_journal2_blog_post` (`post_id`, `author_id`, `image`, `comments`, `status`, `sort_order`, `date_created`, `date_updated`, `views`) VALUES
(1, 2, 'catalog/demo/banner/bg-2.jpg', 2, 1, 0, '2018-05-31 13:33:11', '2018-06-01 23:20:04', 4),
(2, 2, 'catalog/demo/banner/2-1600x1068.jpeg', 2, 1, 0, '2018-05-31 14:02:37', '2018-05-31 14:02:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_post_description`
--

CREATE TABLE `oc_journal2_blog_post_description` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL,
  `tags` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_journal2_blog_post_description`
--

INSERT INTO `oc_journal2_blog_post_description` (`post_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `keyword`, `tags`) VALUES
(1, 1, 'Straipsnis', '<h2>Teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\"><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">Tekstas, tekstas, tekstas, tekstas</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas....</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h2>Kitas teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">T<span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">ekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">tekstas, tekstas, tekstas</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas ...</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h3 style=\"text-align: justify;\">Kaip įkelti video</h3>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\"><iframe allow=\"encrypted-media\" allowfullscreen=\"\" frameborder=\"0\" gesture=\"media\" height=\"600\" scrolling=\"no\" src=\"https://www.youtube.com/embed/lmMoOLWEE7M\" width=\"1100\"></iframe></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\">&nbsp;</p>', '', '', '', '', ''),
(1, 3, 'Straipsnis', '<h2>Teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\"><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">Tekstas, tekstas, tekstas, tekstas</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas....</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h2>Kitas teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">T<span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">ekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">tekstas, tekstas, tekstas</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas ...</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h3 style=\"text-align: justify;\">Kaip įkelti video</h3>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\"><iframe allow=\"encrypted-media\" allowfullscreen=\"\" frameborder=\"0\" gesture=\"media\" height=\"600\" scrolling=\"no\" src=\"https://www.youtube.com/embed/lmMoOLWEE7M\" width=\"1100\"></iframe></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\">&nbsp;</p>', '', '', '', '', '');
INSERT INTO `oc_journal2_blog_post_description` (`post_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `keyword`, `tags`) VALUES
(2, 1, 'Straipsnis', '<h2>Teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\"><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">Tekstas, tekstas, tekstas, tekstas</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas....</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h2>Kitas teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">T<span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">ekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">tekstas, tekstas, tekstas</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas ...</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h3 style=\"text-align: justify;\">Kaip įkelti video</h3>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\"><iframe allow=\"encrypted-media\" allowfullscreen=\"\" frameborder=\"0\" gesture=\"media\" height=\"600\" scrolling=\"no\" src=\"https://www.youtube.com/embed/lmMoOLWEE7M\" width=\"1100\"></iframe></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\">&nbsp;</p>', '', '', '', '', ''),
(2, 3, 'Straipsnis', '<h2>Teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\"><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">Tekstas, tekstas, tekstas, tekstas</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas....</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h2>Kitas teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">T<span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">ekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">tekstas, tekstas, tekstas</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas ...</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h3 style=\"text-align: justify;\">Kaip įkelti video</h3>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\"><iframe allow=\"encrypted-media\" allowfullscreen=\"\" frameborder=\"0\" gesture=\"media\" height=\"600\" scrolling=\"no\" src=\"https://www.youtube.com/embed/lmMoOLWEE7M\" width=\"1100\"></iframe></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\">&nbsp;</p>', '', '', '', '', '');
INSERT INTO `oc_journal2_blog_post_description` (`post_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `keyword`, `tags`) VALUES
(2, 2, 'Straipsnis', '<h2>Teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\"><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">Tekstas, tekstas, tekstas, tekstas</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas....</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h2>Kitas teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">T<span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">ekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">tekstas, tekstas, tekstas</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas ...</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h3 style=\"text-align: justify;\">Kaip įkelti video</h3>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\"><iframe allow=\"encrypted-media\" allowfullscreen=\"\" frameborder=\"0\" gesture=\"media\" height=\"600\" scrolling=\"no\" src=\"https://www.youtube.com/embed/lmMoOLWEE7M\" width=\"1100\"></iframe></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\">&nbsp;</p>', '', '', '', '', ''),
(1, 2, 'Straipsnis', '<h2>Teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\"><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">Tekstas, tekstas, tekstas, tekstas</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas....</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h2>Kitas teksto pavyzdys</h2>\n\n<p style=\"text-align: justify;\">T<span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">ekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">tekstas, tekstas, tekstas</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas, tekstas,&nbsp;</span><span style=\"line-height: 20.7999992370605px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif;\">tek</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: normal;\">,&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Helvetica, Arial, sans-serif; line-height: 20.7999992370605px;\">tekstas, tekstas, tekstas ...</span></p>\n\n<p style=\"text-align: justify;\">&nbsp;</p>\n\n<h3 style=\"text-align: justify;\">Kaip įkelti video</h3>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\"><iframe allow=\"encrypted-media\" allowfullscreen=\"\" frameborder=\"0\" gesture=\"media\" height=\"600\" scrolling=\"no\" src=\"https://www.youtube.com/embed/lmMoOLWEE7M\" width=\"1100\"></iframe></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\">&nbsp;</p>', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_post_to_category`
--

CREATE TABLE `oc_journal2_blog_post_to_category` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_post_to_layout`
--

CREATE TABLE `oc_journal2_blog_post_to_layout` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_journal2_blog_post_to_layout`
--

INSERT INTO `oc_journal2_blog_post_to_layout` (`post_id`, `store_id`, `layout_id`) VALUES
(1, 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_post_to_product`
--

CREATE TABLE `oc_journal2_blog_post_to_product` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_blog_post_to_store`
--

CREATE TABLE `oc_journal2_blog_post_to_store` (
  `post_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_journal2_blog_post_to_store`
--

INSERT INTO `oc_journal2_blog_post_to_store` (`post_id`, `store_id`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_config`
--

CREATE TABLE `oc_journal2_config` (
  `key` varchar(64) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_journal2_config`
--

INSERT INTO `oc_journal2_config` (`key`, `store_id`, `value`, `serialized`) VALUES
('active_skin', 0, '5', 0),
('active_skin', 3, '1', 0),
('blog_settings', 0, '{\"status\":\"1\",\"feed\":\"1\",\"posts_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"related_products\":\"1\",\"related_products_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"posts_display\":\"list\",\"posts_sort\":\"newest\",\"author_name\":\"username\",\"posts_limit\":15,\"title\":{\"value\":{\"1\":\"Blog\",\"2\":\"Blog\",\"3\":\"\\u0411\\u043b\\u043e\\u0433\"}},\"keyword\":{\"value\":{\"1\":\"blog-en\",\"2\":\"blog\",\"3\":\"blog-ru\"}},\"meta_title\":{\"value\":{\"1\":\"Blog\",\"2\":\"Blog\",\"3\":\"Blog\"}},\"meta_keywords\":{\"value\":{\"1\":\"\"}},\"meta_description\":{\"value\":[]},\"posts_image_width\":\"300\",\"posts_image_height\":\"240\",\"posts_image_type\":\"fit\",\"description_char_limit\":\"620\"}', 1),
('copyright', 0, '{\"value\":{\"1\":\"Copyright \\u00a9 2018, Your Store, All Rights Reserved.\",\"2\":\"Copyright \\u00a9 2018, Visos teis\\u0117s saugomos.\",\"3\":\"Copyright \\u00a9 2018, \\u0432\\u0430\\u0448 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, \\u0432\\u0441\\u0435 \\u043f\\u0440\\u0430\\u0432\\u0430 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0435\\u043d\\u044b.\"}}', 1),
('footer_menu', 0, '{\"rows\":[{\"type\":\"columns\",\"text\":[],\"columns\":[{\"type\":\"menu\",\"items\":[{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"4\",\"name\":\"About Us\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"is_open\":true},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"8\",\"name\":\"Slapukai\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"is_open\":false},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"3\",\"name\":\"Privacy Policy\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"is_open\":false},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"6\",\"name\":\"Preki\\u0173 pristatymas\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"is_open\":false},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"5\",\"name\":\"Atsiskaitymo b\\u016bdai\"}},\"name_overwrite\":0,\"target\":0,\"is_open\":false,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"7\",\"name\":\"Pirkimo s\\u0105lygos ir gr\\u0105\\u017einimas\"}},\"name_overwrite\":0,\"target\":0,\"is_open\":false,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}}}],\"text\":[],\"title\":{\"value\":{\"1\":\"Information\",\"2\":\"Informacija\",\"3\":\"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f\",\"4\":\"\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"icon_position\":\"left\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"is_open\":false,\"newsletter_id\":\"\",\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":4,\"module_type\":\"featured\",\"posts_type\":\"newest\",\"posts\":[],\"status\":\"1\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"random_from\":\"all\",\"close_others\":true},{\"type\":\"menu\",\"items\":[{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"information\\/contact\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"is_open\":false},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"account\\/return\\/insert\"}},\"target\":0,\"name_overwrite\":\"0\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"is_open\":false},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"top\":\"1\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"account\\/order\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"is_open\":false},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"name_overwrite\":\"1\",\"target\":0,\"is_open\":false,\"name\":{\"value\":{\"1\":\"GDPR request\",\"2\":\"BDAR u\\u017eklausa\",\"3\":\"\\u0417\\u0430\\u043f\\u0440\\u043e\\u0441 \\u0412\\u0412\\u041f\",\"4\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"name_overwrite\":0,\"target\":0,\"is_open\":false,\"name\":{\"value\":{\"1\":\"Right to be forgotten\",\"2\":\"Teis\\u0117 b\\u016bti pamir\\u0161tam\",\"3\":\"\\u041f\\u0440\\u0430\\u0432\\u043e \\u0431\\u044b\\u0442\\u044c \\u0437\\u0430\\u0431\\u044b\\u0442\\u044b\\u043c\",\"4\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"14px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}},\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"login\"}},\"name_overwrite\":0,\"target\":0,\"is_open\":true,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}}}],\"text\":[],\"title\":{\"value\":{\"1\":\"Customer Support\",\"2\":\"Klient\\u0173 aptarnavimas\",\"3\":\"\\u0421\\u043b\\u0443\\u0436\\u0431\\u0430 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0438\",\"4\":\"\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"icon_position\":\"left\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"is_open\":true,\"newsletter_id\":\"\",\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":4,\"module_type\":\"featured\",\"posts_type\":\"newest\",\"posts\":[],\"status\":\"1\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"random_from\":\"all\",\"close_others\":true},{\"type\":\"newsletter\",\"items\":[{\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"account\\/account\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"account\\/order\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"account\\/wishlist\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"account\\/newsletter\"}},\"name_overwrite\":0,\"target\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}}}],\"text\":[],\"title\":{\"value\":{\"1\":\"Newsletter\",\"2\":\"Naujienlai\\u0161kis\",\"3\":\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u043d\\u0430\\u044f \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\"4\":\"\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"icon_position\":\"left\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"is_open\":false,\"newsletter_id\":\"133\",\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":\"4\",\"module_type\":\"latest\",\"posts_type\":\"newest\",\"posts\":[],\"status\":\"1\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"random_from\":\"all\"},{\"type\":\"text\",\"items\":[],\"text\":{\"1\":\"<p style=\\\"text-align: justify;\\\"><img alt=\\\"\\\" height=\\\"47\\\" src=\\\"\\/image\\/catalog\\/demo\\/banner\\/shopping_cart.png\\\" style=\\\"float: left; margin: 5px 15px 0px 5px;\\\" width=\\\"34\\\" \\/><span>Tai tokia elektronin\\u0117 parduotuv\\u0117, kuri yra skirta preki\\u0173 bei paslaug\\u0173 interaktyviam pateikimui visiems interneto vartotojams. &Scaron;i elektronin\\u0117 parduotuv\\u0117 suteiks Jums galimyb\\u0119 greitai, lengvai ir saugiai apsipirkti. Visuomet r\\u016bpinam\\u0117s savo klient\\u0173 saugumu, tod\\u0117l &scaron;i internetin\\u0117 parduotuv\\u0117 turi \\u012fdiegt\\u0105 SSL sertifikat\\u0105.<\\/span><\\/p>\\n\",\"2\":\"<p style=\\\"text-align: justify;\\\"><img alt=\\\"\\\" height=\\\"47\\\" src=\\\"\\/image\\/catalog\\/demo\\/banner\\/shopping_cart.png\\\" style=\\\"float: left; margin: 5px 15px 0px 5px;\\\" width=\\\"34\\\" \\/><span>Tai tokia elektronin\\u0117 parduotuv\\u0117, kuri yra skirta preki\\u0173 bei paslaug\\u0173 interaktyviam pateikimui visiems interneto vartotojams. &Scaron;i elektronin\\u0117 parduotuv\\u0117 suteiks Jums galimyb\\u0119 greitai, lengvai ir saugiai apsipirkti. Visuomet r\\u016bpinam\\u0117s savo klient\\u0173 saugumu, tod\\u0117l &scaron;i internetin\\u0117 parduotuv\\u0117 turi \\u012fdiegt\\u0105 SSL sertifikat\\u0105.<\\/span><\\/p>\\n\",\"3\":\"<p style=\\\"text-align: justify;\\\"><img alt=\\\"\\\" height=\\\"47\\\" src=\\\"\\/image\\/catalog\\/demo\\/banner\\/shopping_cart.png\\\" style=\\\"float: left; margin: 5px 15px 0px 5px;\\\" width=\\\"34\\\" \\/><span>Tai tokia elektronin\\u0117 parduotuv\\u0117, kuri yra skirta preki\\u0173 bei paslaug\\u0173 interaktyviam pateikimui visiems interneto vartotojams. &Scaron;i elektronin\\u0117 parduotuv\\u0117 suteiks Jums galimyb\\u0119 greitai, lengvai ir saugiai apsipirkti. Visuomet r\\u016bpinam\\u0117s savo klient\\u0173 saugumu, tod\\u0117l &scaron;i internetin\\u0117 parduotuv\\u0117 turi \\u012fdiegt\\u0105 SSL sertifikat\\u0105.<\\/span><\\/p>\\n\"},\"title\":{\"value\":{\"1\":\"About Us\",\"2\":\"Apie mus\",\"3\":\"\\u041e \\u043d\\u0430\\u0441\",\"4\":\"\"}},\"icon_status\":\"0\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"icon_position\":\"top\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"is_open\":false,\"newsletter_id\":\"\",\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"featured\",\"posts_type\":\"newest\",\"posts\":[],\"status\":\"1\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"random_from\":\"all\",\"sort_order\":\"0\"}],\"contacts\":[],\"social_icons\":[],\"status\":\"1\",\"sort_order\":\"1\",\"bottom_spacing\":\"15\",\"padding_top\":\"\",\"padding_right\":\"\",\"padding_bottom\":\"\",\"padding_left\":\"\",\"items_per_row\":{\"hide_columns\":true,\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"is_open\":false,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"close_others\":true},{\"type\":\"contacts\",\"text\":[],\"columns\":[],\"contacts\":[{\"position\":\"left\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"https:\\/\\/www.facebook.com\\/\"}},\"target\":\"1\",\"icon\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe683;\",\"class\":\"facebook3\"}},\"name\":{\"value\":{\"1\":\"Facebook\",\"2\":\"Facebook\",\"3\":\"Facebook\",\"4\":\"\"}},\"tooltip\":\"1\",\"sort_order\":\"\",\"is_open\":false},{\"position\":\"left\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"https:\\/\\/twitter.com\\/\"}},\"target\":\"1\",\"icon\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe682;\",\"class\":\"twitter3\"}},\"name\":{\"value\":{\"1\":\"Twitter\",\"2\":\"Twitter\",\"3\":\"Twitter\",\"4\":\"\"}},\"tooltip\":\"1\",\"sort_order\":\"\",\"is_open\":false},{\"position\":\"left\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"https:\\/\\/www.google.lt\\/\"}},\"target\":0,\"icon\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe635;\",\"class\":\"google-plus\"}},\"name\":{\"value\":{\"1\":\"Google +\",\"2\":\"Google +\",\"3\":\"Google +\",\"4\":\"\"}},\"tooltip\":\"1\",\"sort_order\":\"\",\"is_open\":false},{\"position\":\"left\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"https:\\/\\/www.youtube.com\"}},\"target\":0,\"icon\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe642;\",\"class\":\"youtube\"}},\"name\":{\"value\":{\"1\":\"YouTube\",\"2\":\"YouTube\",\"3\":\"YouTube\",\"4\":\"\"}},\"tooltip\":\"1\",\"sort_order\":\"\",\"is_open\":false},{\"position\":\"left\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"https:\\/\\/www.skype.com\\/en\\/\"}},\"target\":0,\"icon\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe67a;\",\"class\":\"skype\"}},\"name\":{\"value\":{\"1\":\"Skype\",\"2\":\"Skype\",\"3\":\"Skype\",\"4\":\"\"}},\"tooltip\":\"1\",\"sort_order\":\"\",\"is_open\":false},{\"position\":\"left\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"https:\\/\\/www.linkedin.com\\/\"}},\"target\":0,\"icon\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe622;\",\"class\":\"linkedin\"}},\"name\":{\"value\":{\"1\":\"LinkedIn\",\"2\":\"LinkedIn\",\"3\":\"LinkedIn\",\"4\":\"\"}},\"tooltip\":\"1\",\"sort_order\":\"\",\"is_open\":false},{\"position\":\"right\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"tel:+37000000000\"}},\"target\":0,\"icon\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe6a3;\",\"class\":\"phone\"}},\"name\":{\"value\":{\"1\":\"+37000000000\",\"2\":\"+37000000000\",\"3\":\"+37000000000\",\"4\":\"\"}},\"tooltip\":0,\"sort_order\":\"\",\"is_open\":false}],\"social_icons\":[],\"status\":\"1\",\"sort_order\":\"0\",\"bottom_spacing\":\"10\",\"padding_top\":\"\",\"padding_right\":\"\",\"padding_bottom\":\"\",\"padding_left\":\"\",\"items_per_row\":{\"hide_columns\":true,\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"is_open\":false,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgcolor\":{\"value\":{\"color\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}},\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"close_others\":true}],\"close_others\":true}', 1),
('mega_menu', 0, '{\"items\":[{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"common\\/home\"}},\"items\":[],\"target\":\"0\"},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe14f;\",\"class\":\"home3\"}},\"hide_text\":\"1\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"sort_order\":\"10\"},{\"type\":\"categories\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"dropdown\",\"top\":{\"id\":\"20\",\"name\":\"Desktops\"}},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"items\":[],\"target\":\"1\"},\"mixed_columns\":[{\"is_open\":true,\"type\":\"categories\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"left\",\"links_type\":\"categories\",\"items\":[],\"top\":{\"id\":\"59\",\"name\":\"Fashion\"}},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":null},\"items\":[]},\"link\":{\"menu_type\":\"custom\",\"menu_item\":null},\"html_text\":[],\"cms_blocks\":[],\"width\":\"66.66666\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":\"4\",\"status\":\"1\",\"sort_order\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"hide_on_mobile\":\"0\"},{\"is_open\":true,\"type\":\"html-block\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[]},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":null},\"items\":[]},\"link\":{\"menu_type\":\"custom\",\"menu_item\":null},\"html_text\":{\"1\":\"<p><img alt=\\\"\\\" height=\\\"150\\\" src=\\\"https:\\/\\/static.journal-theme.com\\/5\\/image\\/data\\/journal-demo\\/menu-1.jpg\\\" style=\\\"margin-bottom: 5px;\\\" width=\\\"400\\\" \\/><\\/p>\\n\\n<p><span style=\\\"line-height: 1.6;\\\">Journal is a fluid responsive OpenCart theme built with the best design and development&nbsp;practices in mind. It&nbsp;introduces many innovative features and offers more than 1000 customizable admin options including 17 multi-purpose built-in modules.&nbsp;<\\/span><strong style=\\\"line-height: 1.6;\\\"><a href=\\\"http:\\/\\/themeforest.net\\/item\\/journal-premium-responsive-opencart-theme\\/4260361?ref=DigitalAtelier\\\" target=\\\"_blank\\\">Buy Journal!<\\/a><\\/strong><\\/p>\\n\\n<p>&nbsp;<\\/p>\\n\"},\"cms_blocks\":[],\"width\":\"33.33333\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"status\":\"1\",\"sort_order\":\"3\",\"name\":{\"value\":{\"1\":\"Add any Content\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"hide_on_mobile\":\"0\"}],\"icon\":{\"options\":{\"font_size\":\"14px\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe6ab;\",\"class\":\"caret-down\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"category\",\"menu_item\":{\"id\":\"59\",\"name\":\"Fashion\"}},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"sort_order\":\"20\"},{\"type\":\"categories\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"dropdown\",\"top\":{\"id\":\"25\",\"name\":\"Components\"}},\"products\":{\"source\":\"module\",\"module_type\":\"special\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"items\":[],\"target\":\"1\"},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":\"6\",\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":0,\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\"}},\"sort_order\":\"40\"},{\"type\":\"manufacturers\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"dropdown\",\"top\":{\"id\":\"33\",\"name\":\"Cameras\"}},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"target\":0,\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"---\"}},\"hide_text\":\"0\",\"is_open\":true,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":\"6\",\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"250\",\"image_height\":\"250\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"1\":\"Brands\",\"2\":\"Gamintojai\",\"3\":\"\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b\"}},\"sort_order\":\"40\"},{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"blog_home\",\"menu_item\":[]},\"target\":0,\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xf022;\",\"class\":\"list-alt\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"sort_order\":\"50\"},{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"information\\/contact\"}},\"target\":0,\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe67b;\",\"class\":\"envelope\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"right\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"sort_order\":\"60\"}],\"close_others\":true,\"options\":{\"display\":\"floated\",\"table_layout\":\"fixed\",\"is_open\":false}}', 1),
('payments', 0, '{\"payments\":[],\"close_others\":false}', 1),
('primary_menu', 0, '{\"items\":[{\"icon\":{\"options\":{\"font_size\":\"15px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe679;\",\"class\":\"phone2\"}},\"mobile_view\":\"icon\",\"menu\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"tel:+37000000000\"}},\"name_overwrite\":0,\"target\":0,\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"0\",\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"+37000000000\",\"2\":\"+37000000000\",\"3\":\"+37000000000\"}},\"is_open\":true},{\"icon\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe658;\",\"class\":\"truck2\"}},\"mobile_view\":\"icon\",\"menu\":{\"menu_type\":\"information\",\"menu_item\":{\"id\":\"6\",\"name\":\"Delivery Information\"}},\"name_overwrite\":\"0\",\"target\":0,\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"0\",\"is_open\":true,\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}}}]}', 1),
('secondary_menu', 0, '{\"items\":[{\"icon\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe1b4;\",\"class\":\"user\"}},\"mobile_view\":\"both\",\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"login\"}},\"name_overwrite\":0,\"target\":0,\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"0\",\"is_open\":true,\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"15px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe608;\",\"class\":\"arrow-right\"}},\"mobile_view\":\"both\",\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"register\"}},\"name_overwrite\":0,\"target\":0,\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"0\",\"is_open\":false,\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"15px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xf021;\",\"class\":\"refresh2\"}},\"mobile_view\":\"icon\",\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"product\\/compare\"}},\"name_overwrite\":0,\"target\":0,\"enable_on_phone\":\"0\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"1\",\"is_open\":true,\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}}},{\"icon\":{\"options\":{\"font_size\":\"15px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe662;\",\"class\":\"heart2\"}},\"mobile_view\":\"icon\",\"menu\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"account\\/wishlist\"}},\"name_overwrite\":0,\"target\":0,\"enable_on_phone\":\"0\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"hide_on_mobile\":\"1\",\"is_open\":true,\"icon_position\":\"left\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}}}]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_modules`
--

CREATE TABLE `oc_journal2_modules` (
  `module_id` int(11) NOT NULL,
  `module_type` varchar(64) NOT NULL,
  `module_data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_journal2_modules`
--

INSERT INTO `oc_journal2_modules` (`module_id`, `module_type`, `module_data`) VALUES
(52, 'journal2_side_blocks', '{\"module_name\":\"FB Button\",\"module_type\":\"button\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe683;\",\"class\":\"facebook3\"}},\"icon_bg_color\":\"rgb(60, 89, 155)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_hover_color\":\"rgb(155, 89, 182)\",\"content_bg_color\":\"rgb(51, 153, 101)\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"325\",\"offset_side\":\"15\",\"content_width\":\"300\",\"content_padding\":\"10\",\"content\":{\"1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas laoreet. Etiam faucibus massa sed risus lacinia in vulputate dolor imperdiet. Curabitur pharetra, purus a commodo dignissim, sapien nulla tempus nisi, et varius nulla urna at arcu.<\\/p>\\n\",\"2\":\"\"},\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":{\"url\":\"https:\\/\\/www.facebook.com\"}},\"new_window\":\"1\",\"status\":\"1\"}'),
(54, 'journal2_super_filter', '{\"module_name\":\"Filtras\",\"reset\":1,\"product_count\":\"0\",\"price\":1,\"price_slider\":\"1\",\"tags\":\"0\",\"availability\":\"0\",\"tax_class_id\":\"-1\",\"manufacturer\":\"image\",\"manufacturer_type\":\"single\",\"category\":\"off\",\"category_type\":\"single\",\"options\":{\"1\":\"list\",\"2\":\"image\",\"5\":\"list\",\"11\":\"list\",\"16\":\"list\"},\"options_type\":{\"1\":\"multi\",\"2\":\"multi\",\"5\":\"multi\",\"11\":\"multi\",\"16\":\"multi\"},\"attributes\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\",\"4\":\"on\",\"5\":\"on\",\"6\":\"on\",\"7\":\"on\",\"8\":\"on\",\"9\":\"on\",\"10\":\"on\",\"11\":\"on\",\"12\":\"on\",\"13\":\"on\",\"14\":\"on\",\"15\":\"on\",\"16\":\"on\",\"18\":\"on\",\"19\":\"on\",\"20\":\"on\",\"22\":\"on\",\"23\":\"on\",\"24\":\"on\",\"25\":\"on\",\"26\":\"on\",\"27\":\"on\"},\"attributes_type\":{\"1\":\"multi\",\"2\":\"multi\",\"3\":\"multi\",\"4\":\"multi\",\"5\":\"multi\",\"6\":\"multi\",\"7\":\"multi\",\"8\":\"multi\",\"9\":\"multi\",\"10\":\"multi\",\"11\":\"multi\",\"12\":\"multi\",\"13\":\"multi\",\"14\":\"multi\",\"15\":\"multi\",\"16\":\"multi\",\"18\":\"multi\",\"19\":\"multi\",\"20\":\"multi\",\"22\":\"multi\",\"23\":\"multi\",\"24\":\"multi\",\"25\":\"multi\",\"26\":\"multi\",\"27\":\"multi\"},\"sort_orders\":{\"c\":\"1\",\"m\":\"2\",\"p\":\"0\",\"o_2\":\"3\"},\"filters\":[],\"filters_type\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"options_is_open\":true,\"enable_on_mobile\":\"1\",\"is_open\":{\"3\":{\"is_open\":true},\"6\":{\"is_open\":true},\"7\":{\"is_open\":true}}}'),
(9, 'journal2_side_category', '{\"module_name\":\"Kategorijos\",\"type\":\"accordion\",\"title\":{\"value\":{\"1\":\"Categories\",\"2\":\"Kategorijos\",\"3\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\"}},\"show_categories\":\"1\",\"sections\":[],\"general_is_open\":true}'),
(125, 'journal2_carousel', '{\"module_name\":\"Gamintojai\",\"module_type\":\"manufacturer\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"arrows\":\"top\",\"bullets\":\"1\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgimage\":{\"value\":{\"image\":\"\"}},\"bgcolor\":{\"value\":{\"color\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}},\"fullwidth\":\"0\",\"margin_top\":\"20\",\"margin_bottom\":\"\",\"spacing\":\"\",\"show_title\":\"1\",\"brand_name\":\"0\",\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":{\"value\":{\"color\":\"\"}},\"image_width\":\"250\",\"image_height\":\"250\",\"image_type\":\"fit\",\"product_sections\":[],\"category_sections\":[],\"manufacturer_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Featured Brands\",\"2\":\"Gamintojai\",\"3\":\"\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b\"}},\"section_type\":\"all\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"\",\"manufacturers\":[{\"data\":{\"id\":\"8\",\"name\":\"Apple\"}},{\"data\":{\"id\":\"5\",\"name\":\"HTC\"}},{\"data\":{\"id\":\"13\",\"name\":\"Chic D\'or\"}},{\"data\":{\"id\":\"12\",\"name\":\"Awesome Brand\"}},{\"data\":{\"id\":\"9\",\"name\":\"Canon\"}},{\"data\":{\"id\":\"11\",\"name\":\"SuperBrand\"}},{\"data\":{\"id\":\"10\",\"name\":\"Sony\"}},{\"data\":{\"id\":\"7\",\"name\":\"Hewlett-Packard\"}}],\"items_limit\":\"10\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"disable_mobile\":\"0\"}'),
(94, 'journal2_side_blocks', '{\"module_name\":\"Twitter Button\",\"module_type\":\"button\",\"icon\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe682;\",\"class\":\"twitter3\"}},\"icon_bg_color\":\"rgb(43, 176, 227)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_hover_color\":\"rgb(155, 89, 182)\",\"content_bg_color\":\"999999\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"380\",\"offset_side\":\"15\",\"content_width\":\"\",\"content_padding\":\"\",\"content\":[],\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":{\"url\":\"https:\\/\\/twitter.com\\/\"}},\"new_window\":\"1\"}'),
(24, 'journal2_text_rotator', '{\"module_name\":\"Testimonials\",\"module_title\":{\"value\":{\"1\":\"\"}},\"transition_delay\":\"4000\",\"pause_on_hover\":\"1\",\"text_align\":\"center\",\"image_align\":\"center\",\"author_align\":\"center\",\"text_font\":{\"value\":{\"font_type\":\"system\",\"font_size\":\"22px\",\"font_name\":\"Droid Serif\",\"font_weight\":\"normal\",\"font_subset\":[\"latin\"],\"font_style\":\"italic\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_family\":\"Georgia, serif\"}},\"author_font\":{\"value\":{\"font_type\":\"system\",\"font_size\":\"22px\",\"font_name\":\"Ubuntu\",\"font_weight\":\"bold\",\"font_subset\":[\"latin\"],\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_family\":\"Helvetica, Arial, sans-serif\"}},\"text_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"\"}},\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"use_gradient\":0,\"bgimage_size\":\"auto\"}},\"image_border\":{\"value\":{\"border_rounded\":\"1\",\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":{\"text\":\"\"}},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}},\"border_type\":\"solid\",\"border_color\":{\"value\":{\"color\":\"\"}},\"border\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_unit\":\"%\"}},\"bullets\":\"1\",\"bullets_position\":\"center\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgcolor\":{\"value\":{\"color\":\"\"}},\"bgimage\":{\"value\":{\"image\":\"data\\/journal2\\/background\\/2-2.jpg\"}},\"bgimage_attach\":\"fixed\",\"bgimage_repeat\":\"no-repeat\",\"bgimage_position\":\"center bottom\",\"use_gradient\":0,\"bgimage_size\":\"auto\"}},\"fullwidth\":\"0\",\"margin_top\":\"30\",\"margin_bottom\":\"30\",\"sections\":[{\"is_open\":false,\"name\":\"Item 1\",\"text\":{\"value\":{\"1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"2\":\"\"}},\"author\":\"John\",\"icon\":{\"options\":{\"font_size\":\"15px\"}},\"image\":{\"1\":\"data\\/journal-demo\\/av1.jpg\"},\"status\":\"1\",\"sort_order\":\"\",\"cta\":\"0\",\"cta_link\":{\"menu_type\":\"custom\"},\"cta_icon\":{\"options\":{\"font_size\":\"15px\"}},\"cta_new_window\":\"0\",\"cta_text\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"cta_position\":\"center\",\"cta_offset_top\":\"\",\"cta_offset_left\":\"\"},{\"is_open\":false,\"name\":\"\",\"text\":{\"value\":{\"1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas dignissim, sapien nulla tempus nisi, et varius nulla urna at arcu.\",\"2\":\"\"}},\"author\":\"Mike\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"image\":{\"1\":\"data\\/journal-demo\\/av2.jpg\"},\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":false,\"name\":\"\",\"text\":{\"value\":{\"1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas laoreet. Etiam faucibus massa sed risus lacinia in vulputate dolor imperdiet. Curabitur pharetra, purus.\",\"2\":\"\"}},\"author\":\"Amira\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"image\":{\"1\":\"data\\/journal-demo\\/av3.jpg\"},\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":false,\"name\":\"\",\"text\":{\"value\":{\"1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas lao dignissim, sapien nulla tempus nisi, et varius nulla urna at arcu.\",\"2\":\"\"}},\"author\":\"Jackie\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"image\":{\"1\":\"data\\/journal-demo\\/av4.jpg\"},\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":false,\"name\":\"\",\"text\":{\"value\":{\"1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas  cinia in vulputate dolor imperdiet. Curabitur pharetra, purus a commodo dignissim, varius nulla urna at arcu.\",\"2\":\"\"}},\"author\":\"Alma\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"image\":{\"1\":\"data\\/journal-demo\\/av5.jpg\"},\"status\":\"1\",\"sort_order\":\"\"}],\"random_sections\":\"0\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":false,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\",\"bullets_color\":{\"value\":{\"color\":\"rgb(51, 153, 101)\"}},\"bullets_hover_color\":{\"value\":{\"color\":\"rgb(234, 35, 73)\"}},\"margin\":\"none\",\"cta_mode\":\"1\",\"close_others\":true}'),
(76, 'journal2_product_tabs', '{\"module_name\":\"Pasiteirauti apie prek\\u0119\",\"name\":{\"value\":{\"1\":\"Inquire\",\"2\":\"Klauskite\",\"3\":\"\\u0417\\u0430\\u043f\\u0440\\u043e\\u0441\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe67b;\",\"class\":\"envelope\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"icon_width\":\"47\",\"icon_height\":\"47\",\"content_type\":\"custom\",\"out_of_stock_only\":\"0\",\"content\":{\"1\":\"<p>You can submit a question about this product by clicking on this link <strong><a href=\\\"javascript:Journal.openPopup(\'234\')\\\">ASK<\\/a><\\/strong><\\/p>\\n\",\"2\":\"<p>Galite pateikite klausim\\u0105 apie &scaron;i\\u0105 prek\\u0119 paspausdami &scaron;i\\u0105 nuorod\\u0105 <strong><a href=\\\"javascript:Journal.openPopup(\'234\')\\\">PAKLAUSTI<\\/a><\\/strong><\\/p>\\n\",\"3\":\"<p>\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0437\\u0430\\u0434\\u0430\\u0442\\u044c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441 \\u043f\\u043e \\u044d\\u0442\\u043e\\u043c\\u0443 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0443, \\u043d\\u0430\\u0436\\u0430\\u0432 \\u043d\\u0430 \\u044d\\u0442\\u0443 \\u0441\\u0441\\u044b\\u043b\\u043a\\u0443 <strong><a href=\\\"javascript:Journal.openPopup(\'234\')\\\">\\u0441\\u043f\\u0440\\u043e\\u0441\\u0438\\u0442\\u044c<\\/a><\\/strong><\\/p>\\n\"},\"popup\":\"\",\"global\":\"1\",\"products\":[],\"categories\":[],\"manufacturers\":[],\"store_id\":-1,\"status\":\"1\",\"sort_order\":\"1\",\"position\":\"desc\",\"option_position\":\"top\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\"}'),
(234, 'journal2_popup', '{\"module_name\":\"Pasiteirauti apie prek\\u0119\",\"close_button\":\"1\",\"padding\":\"\",\"title\":{\"value\":{\"1\":\"Inquire about this item\",\"2\":\"Pasiteirauti apie prek\\u0119\",\"3\":\"\\u0417\\u0430\\u043f\\u0440\\u043e\\u0441\\u0438\\u0442\\u044c \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044e \\u043e \\u0442\\u043e\\u0432\\u0430\\u0440\\u0435\"}},\"title_align\":\"center\",\"title_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"title_bg_color\":\"\",\"title_height\":40,\"newsletter\":\"0\",\"newsletter_bg_color\":\"\",\"newsletter_height\":80,\"newsletter_id\":\"\",\"footer_height\":60,\"footer_bg_color\":\"\",\"type\":\"contact\",\"text\":[],\"text_font\":[],\"text_height\":\"\",\"image\":\"no_image.jpg\",\"content_overflow\":\"1\",\"status\":\"1\",\"width\":600,\"height\":300,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"button_1\":\"0\",\"button_1_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"button_1_icon\":{\"options\":{\"font_size\":\"---\"}},\"button_1_new_window\":\"0\",\"button_1_text\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"button_1_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"button_1_bgcolor\":\"\",\"button_1_hover_bgcolor\":\"\",\"button_2\":\"0\",\"button_2_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"button_2_icon\":{\"options\":{\"font_size\":\"---\"}},\"button_2_new_window\":\"0\",\"button_2_text\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"button_2_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"button_2_bgcolor\":\"\",\"button_2_hover_bgcolor\":\"\",\"button_submit_icon\":{\"options\":{\"font_size\":\"---\"}},\"button_submit_text\":{\"value\":{\"1\":\"Send\",\"2\":\"Si\\u0173sti\",\"3\":\"\\u041f\\u043e\\u0441\\u043b\\u0430\\u0442\\u044c\"}},\"button_submit_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"button_submit_bgcolor\":\"\",\"button_submit_hover_bgcolor\":\"\",\"button_submit_position\":\"center\",\"show_only_once\":\"0\",\"do_not_show_again\":\"1\",\"do_not_show_again_text\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"do_not_show_again_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"do_not_show_again_cookie\":\"hgn8qi\",\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"header_is_open\":true,\"newsletter_is_open\":true,\"content_is_open\":true,\"footer_is_open\":true,\"top_bottom_is_open\":true}'),
(236, 'journal2_header_notice', '{\"module_name\":\"Slapukai\",\"height\":\"\",\"padding_t\":{\"value\":\"\"},\"padding_l\":{\"value\":{\"text\":\"\"}},\"padding_b\":{\"value\":\"\"},\"padding_r\":{\"value\":{\"text\":\"\"}},\"text\":{\"value\":{\"1\":\"We use cookies to personalize your browsing experience and the content you see and make suggestions that are relevant to you. By clicking \\\"I agree\\\" or continuing to browse the site, you agree to the installation and use of the cookies. You can cancel your consent at any time by changing your web browser settings and deleting saved cookies. Details about cookies <a target=\\\"_blank\\\" href=\\\"\\/laps\\\"> read here <\\/a>\",\"2\":\"Mes naudojame slapukus siekdami individualizuoti J\\u016bs\\u0173 nar\\u0161ymo patirt\\u012f ir Jums rodom\\u0105 turin\\u012f bei pateikti pasi\\u016blymus, kurie b\\u016bt\\u0173 aktual\\u016bs b\\u016btent Jums. Paspaud\\u0119 \\u201esutinku\\u201c arba toliau t\\u0119sdami nar\\u0161ym\\u0105 svetain\\u0117je J\\u016bs sutinkate su slapuk\\u0173 \\u012fdiegimu ir naudojimu. Savo sutikim\\u0105 gal\\u0117site at\\u0161aukti bet kuriuo metu, pakeisdami savo interneto nar\\u0161ykl\\u0117s nustatymus ir i\\u0161trindami \\u012fra\\u0161ytus slapukus. Detaliau apie slapukus <a target=\\\"_blank\\\" href=\\\"\\/slapukai\\\">skaitykite \\u010dia<\\/a>\",\"3\":\"\\u041c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0444\\u0430\\u0439\\u043b\\u044b cookie, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432\\u0430\\u0448 \\u043f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440 \\u0438 \\u043a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0432\\u044b \\u0432\\u0438\\u0434\\u0438\\u0442\\u0435, \\u0438 \\u0432\\u043d\\u043e\\u0441\\u0438\\u0442\\u044c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0438\\u043c\\u0435\\u044e\\u0442 \\u043e\\u0442\\u043d\\u043e\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043a \\u0432\\u0430\\u043c. \\u041d\\u0430\\u0436\\u0438\\u043c\\u0430\\u044f \\u00ab\\u042f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d\\u00bb \\u0438\\u043b\\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u044e \\u043f\\u0440\\u043e\\u0441\\u043c\\u0430\\u0442\\u0440\\u0438\\u0432\\u0430\\u0442\\u044c \\u0441\\u0430\\u0439\\u0442, \\u0432\\u044b \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u0442\\u0435\\u0441\\u044c \\u043d\\u0430 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0443 \\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0444\\u0430\\u0439\\u043b\\u043e\\u0432 cookie. \\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u043e\\u0442\\u043c\\u0435\\u043d\\u0438\\u0442\\u044c \\u0441\\u0432\\u043e\\u0435 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u0438\\u0435, \\u0438\\u0437\\u043c\\u0435\\u043d\\u0438\\u0432 \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0438 \\u0432\\u0435\\u0431-\\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0430 \\u0438 \\u0443\\u0434\\u0430\\u043b\\u0438\\u0432 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0444\\u0430\\u0439\\u043b\\u044b cookie. \\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u0444\\u0430\\u0439\\u043b\\u0430\\u0445 cookie <a target=\\\"_blank\\\" href=\\\"\\/laps\\\"> \\u0447\\u0438\\u0442\\u0430\\u0439\\u0442\\u0435 \\u0437\\u0434\\u0435\\u0441\\u044c <\\/a>\"}},\"text_align\":\"center\",\"text_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\",\"v\":\"2\"}},\"text_link_color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"text_link_hover_color\":{\"value\":{\"color\":\"rgb(88, 143, 39)\"}},\"button_color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"button_hover_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}},\"button_bg_color\":{\"value\":{\"color\":\"rgb(76, 179, 86)\"}},\"button_hover_bg_color\":{\"value\":{\"color\":\"rgb(88, 143, 39)\"}},\"icon\":{\"options\":{\"font_size\":\"---\"}},\"float_icon\":\"1\",\"fullwidth\":\"1\",\"icon_position\":\"left\",\"close_button_type\":\"text\",\"close_button_text\":{\"value\":{\"1\":\"Agree\",\"2\":\"Sutinku\",\"3\":\"\\u0421\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d\"}},\"show_only_once\":\"0\",\"do_not_show_again\":\"1\",\"do_not_show_again_cookie\":\"6p12oe\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"text_background_image\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"text_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"content_is_open\":true,\"text_background_color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}'),
(235, 'journal2_product_tabs', '{\"module_name\":\"Pasiteirauti apie prek\\u0119 (kai preki\\u0173 kiekis lygus nuliui)\",\"name\":{\"value\":{\"1\":\"Inquire\",\"2\":\"Klauskite\",\"3\":\"\\u0417\\u0430\\u043f\\u0440\\u043e\\u0441\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(169, 184, 192)\"}},\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe67b;\",\"class\":\"envelope\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"icon_width\":\"47\",\"icon_height\":\"47\",\"content_type\":\"enquiry\",\"out_of_stock_only\":\"0\",\"content\":{\"1\":\"<p>You can submit a question about this product by clicking on this link <strong><a href=\\\"javascript:Journal.openPopup(\'234\')\\\">ASK<\\/a><\\/strong><\\/p>\\n\",\"2\":\"<p>Galite pateikite klausim\\u0105 apie &scaron;i\\u0105 prek\\u0119 paspausdami &scaron;i\\u0105 nuorod\\u0105 <strong><a href=\\\"javascript:Journal.openPopup(\'234\')\\\">PAKLAUSTI<\\/a><\\/strong><\\/p>\\n\",\"3\":\"<p>\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0437\\u0430\\u0434\\u0430\\u0442\\u044c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441 \\u043f\\u043e \\u044d\\u0442\\u043e\\u043c\\u0443 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0443, \\u043d\\u0430\\u0436\\u0430\\u0432 \\u043d\\u0430 \\u044d\\u0442\\u0443 \\u0441\\u0441\\u044b\\u043b\\u043a\\u0443 <strong><a href=\\\"javascript:Journal.openPopup(\'234\')\\\">\\u0441\\u043f\\u0440\\u043e\\u0441\\u0438\\u0442\\u044c<\\/a><\\/strong><\\/p>\\n\"},\"popup\":\"234\",\"global\":\"4\",\"products\":[],\"categories\":[],\"manufacturers\":[],\"store_id\":-1,\"status\":\"1\",\"sort_order\":\"1\",\"position\":\"tab\",\"option_position\":\"top\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\"}'),
(112, 'journal2_simple_slider', '{\"module_name\":\"side-banner\",\"height\":\"400\",\"transition\":\"coverflow\",\"transition_speed\":\"700\",\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_delay\":3000,\"touch_drag\":\"1\",\"preload_images\":\"1\",\"arrows\":\"0\",\"bullets\":\"1\",\"show_on_hover\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"margin_top\":\"\",\"margin_bottom\":\"\",\"slides\":[{\"is_open\":true,\"slide_name\":\"\",\"image\":{\"1\":\"data\\/journal2\\/banners\\/side-banner-1.jpg\"},\"link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"link_new_window\":\"0\",\"status\":1,\"sort_order\":\"\"},{\"is_open\":true,\"slide_name\":\"\",\"image\":{\"1\":\"data\\/journal2\\/banners\\/side-banner-2.jpg\"},\"link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"link_new_window\":\"0\",\"status\":1,\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"navigation_is_open\":true,\"hideonmobile\":\"0\"}'),
(127, 'journal2_cms_blocks', '{\"module_name\":\"Map\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"bg\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"border\":{\"value\":{\"border_rounded\":\"px\"}},\"padding\":{\"value\":\"\"},\"sections\":[{\"bg_color\":\"\",\"is_open\":true,\"section_title\":[],\"text\":{\"1\":\"<p><iframe frameborder=\\\"0\\\" height=\\\"240\\\" src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d43894.36037032983!2d25.257644237751947!3d54.67595709073713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dd93fb5c6408f5%3A0x400d18c70e9dc40!2sVilnius!5e0!3m2!1slt!2slt!4v1527752316932\\\" style=\\\"border:0\\\" width=\\\"100%\\\"><\\/iframe><\\/p>\\n\",\"2\":\"<p><iframe frameborder=\\\"0\\\" height=\\\"240\\\" src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d43894.36037032983!2d25.257644237751947!3d54.67595709073713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dd93fb5c6408f5%3A0x400d18c70e9dc40!2sVilnius!5e0!3m2!1slt!2slt!4v1527752316932\\\" style=\\\"border:0\\\" width=\\\"100%\\\"><\\/iframe><\\/p>\\n\",\"3\":\"<p><iframe frameborder=\\\"0\\\" height=\\\"240\\\" src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d43894.36037032983!2d25.257644237751947!3d54.67595709073713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dd93fb5c6408f5%3A0x400d18c70e9dc40!2sVilnius!5e0!3m2!1slt!2slt!4v1527752316932\\\" style=\\\"border:0\\\" width=\\\"100%\\\"><\\/iframe><\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"0\",\"icon_position\":\"top\",\"block_icon_offset\":\"\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"status\":\"1\",\"sort_order\":\"\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"bottom_margin\":{\"value\":\"\"},\"cms_heading_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"cms_font_color\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"cms_block_line_height\":{\"value\":\"\"},\"cms_heading_padding\":{\"value\":\"\"},\"cms_block_p_padding\":{\"value\":\"\"},\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"disable_mobile\":\"1\"}'),
(168, 'journal2_custom_sections', '{\"module_name\":\"Featured - New Arrivals\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"top_bottom_placement\":0,\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgcolor\":{\"value\":{\"color\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}},\"fullwidth\":\"0\",\"margin_top\":\"25\",\"margin_bottom\":\"\",\"spacing\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"New Arrivals\",\"2\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"5\",\"module_type\":\"latest\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\",\"filter_category\":\"1\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Bestsellers\",\"2\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"5\",\"module_type\":\"bestsellers\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\",\"filter_category\":\"1\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Special Offers\",\"2\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"5\",\"module_type\":\"specials\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\",\"filter_category\":\"1\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Custom\",\"2\":\"\"}},\"section_type\":\"custom\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[{\"data\":{\"id\":\"270\",\"name\":\"Red Sneakers\"}},{\"data\":{\"id\":\"269\",\"name\":\"Cool Boots\"}},{\"data\":{\"id\":\"271\",\"name\":\"Oversized Sunglasses\"}},{\"data\":{\"id\":\"264\",\"name\":\"Sample Cherry Perfume\"}}],\"category\":\"\",\"items_limit\":\"\",\"module_type\":\"featured\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\",\"filter_category\":\"1\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Apple\",\"2\":\"\"}},\"section_type\":\"manufacturer\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"5\",\"module_type\":\"featured\",\"link\":{\"menu_type\":\"category\",\"url\":\"\",\"menu_item\":{\"id\":\"59\",\"name\":\"Fashion\"}},\"new_window\":\"0\",\"random_from\":\"all\",\"filter_category\":\"1\",\"manufacturer\":{\"data\":{\"id\":\"8\",\"name\":\"Apple\"}}},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Link\",\"2\":\"\"}},\"section_type\":\"link\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"featured\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"category\",\"url\":\"\",\"menu_item\":{\"id\":\"60\",\"name\":\"Fashion &gt; Dresses\"}},\"new_window\":\"0\",\"random_from\":\"all\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),
(133, 'journal2_newsletter', '{\"module_name\":\"Newsletter-footer\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"module_text\":{\"value\":{\"1\":\"Stay up to date with news and promotions by signing up for our newsletter.\",\"2\":\"U\\u017esiprenumeruokite Naujienlai\\u0161k\\u012f ir gaukite i\\u0161skirtinius pasi\\u016blymus itin geromis kainomis!\",\"3\":\"\\u0411\\u0443\\u0434\\u044c\\u0442\\u0435 \\u0432 \\u043a\\u0443\\u0440\\u0441\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0438 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u043d\\u044b\\u0445 \\u0430\\u043a\\u0446\\u0438\\u0439, \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u0432\\u0448\\u0438\\u0441\\u044c \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0443 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443.\"}},\"module_text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"italic\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgimage\":{\"value\":{\"image\":\"\"}},\"bgcolor\":{\"value\":{\"color\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}},\"module_border\":{\"value\":{\"border_rounded\":\"px\"}},\"module_padding_top\":\"\",\"module_padding_right\":\"\",\"module_padding_bottom\":\"\",\"module_padding_left\":\"\",\"text_position\":\"top\",\"input_height\":\"39\",\"input_placeholder\":{\"value\":{\"1\":\"Email Address...\",\"2\":\"El. pa\\u0161to adresas ...\",\"3\":\"\\u0410\\u0434\\u0440\\u0435\\u0441 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u043e\\u0439 \\u043f\\u043e\\u0447\\u0442\\u044b...\"}},\"input_bg_color\":[],\"input_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"input_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}}},\"button_text\":{\"value\":{\"1\":\"Send\",\"2\":\"Si\\u0173sti\",\"3\":\"\\u043f\\u043e\\u0441\\u043b\\u0430\\u0442\\u044c\"}},\"button_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"button_icon\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe67b;\",\"class\":\"envelope\"}},\"button_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_offset_top\":\"3\",\"button_offset_left\":\"3\",\"button_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"button_shadow_hover\":{\"value\":{\"inner_shadow\":\"0\"}},\"button_shadow_active\":{\"value\":{\"inner_shadow\":\"0\"}},\"button_bg_image\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"button_bg_image_hover\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"input_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"top_bottom_is_open\":true,\"module_padding\":\"\",\"disable_mobile\":\"0\"}'),
(227, 'journal2_side_products', '{\"module_name\":\"New Arrivals\",\"section_title\":{\"value\":{\"1\":\"New Arrivals\",\"2\":\"\"}},\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"latest\",\"filter_category\":\"0\",\"random_from\":\"all\"}'),
(163, 'journal2_side_blocks', '{\"module_name\":\"G+\",\"module_type\":\"button\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe635;\",\"class\":\"google-plus\"}},\"icon_bg_color\":\"rgb(218, 39, 19)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_hover_color\":\"rgb(155, 89, 182)\",\"content_bg_color\":\"rgb(255, 255, 255)\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"435\",\"offset_side\":\"15\",\"content_width\":\"\",\"content_padding\":\"\",\"content\":[],\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":{\"url\":\"https:\\/\\/plus.google.com\"}},\"new_window\":\"1\"}'),
(230, 'journal2_blog_categories', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"New Module\",\"title\":{\"value\":{\"1\":\"Blog Categories\"}}}'),
(231, 'journal2_blog_search', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"New Module\",\"title\":{\"value\":{\"1\":\"Blog Search\"}},\"placeholder\":{\"value\":{\"1\":\"\"}}}'),
(179, 'journal2_side_blocks', '{\"module_name\":\"CMS Block\",\"module_type\":\"block\",\"icon\":{\"options\":{\"font_size\":\"28px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62a;\",\"class\":\"question-sign\"}},\"icon_bg_color\":\"rgb(123, 205, 237)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}},\"icon_bg_hover_color\":\"\",\"content_bg_color\":\"rgb(244, 244, 244)\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"460\",\"offset_side\":\"\",\"content_width\":\"275\",\"content_padding\":\"15\",\"content\":{\"1\":\"<h3>Multi Purpose Side Blocks<\\/h3>\\n\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8080\\/journal2\\/image\\/data\\/journal2\\/misc\\/button-up.jpg\\\" style=\\\"width: 290px; height: 80px; margin-bottom: 10px;\\\" \\/>Put anything in these HTML blocks. Social widgets, images, videos, whatever you want. Create <strong>unlimited blocks<\\/strong>&nbsp;and position them globally on all pages or selectively just on the pages you want.<\\/p>\\n\"},\"link\":{\"menu_type\":\"custom\",\"url\":\"\"},\"new_window\":\"0\"}'),
(187, 'journal2_headline_rotator', '{\"module_name\":\"Category discount\",\"transition_delay\":\"5000\",\"text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"italic\",\"font_style\":\"italic\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"text_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}}},\"text_align\":\"center\",\"bullets\":\"0\",\"bullets_position\":\"center\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgcolor\":{\"value\":{\"color\":\"rgb(238, 241, 234)\"}}}},\"disable_mobile\":\"0\",\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"sections\":[{\"is_open\":true,\"name\":\"\",\"text\":{\"value\":{\"1\":\"Purchase over $100 and get Free Shipping on all products.\",\"2\":\"\"}},\"icon\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"left\":\"-5\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe0ad;\",\"class\":\"truck3\"}},\"cta\":\"0\",\"cta_link\":{\"menu_type\":\"custom\"},\"cta_icon\":{\"options\":{\"font_size\":\"16px\"}},\"cta_icon_position\":\"right\",\"cta_new_window\":\"0\",\"cta_text\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"cta_position\":\"center\",\"cta_offset_top\":\"\",\"cta_offset_left\":\"\",\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":true,\"name\":\"\",\"text\":{\"value\":{\"1\":\"This is a Headline Rotator module, you can add it to any page, any position...\",\"2\":\"\"}},\"icon\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62a;\",\"class\":\"question-sign\"}},\"cta\":\"0\",\"cta_link\":{\"menu_type\":\"custom\"},\"cta_icon\":{\"options\":{\"font_size\":\"16px\"}},\"cta_icon_position\":\"right\",\"cta_new_window\":\"0\",\"cta_text\":{\"value\":{\"1\":\"hello\",\"2\":\"\"}},\"cta_position\":\"right\",\"cta_offset_top\":\"\",\"cta_offset_left\":\"\",\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":true,\"name\":\"\",\"text\":{\"value\":{\"1\":\"Use this for any announcements or promo messages, or just remove it.\",\"2\":\"\"}},\"icon\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe657;\",\"class\":\"shield\"}},\"cta\":\"0\",\"cta_link\":{\"menu_type\":\"custom\"},\"cta_icon\":{\"options\":{\"font_size\":\"16px\"}},\"cta_icon_position\":\"right\",\"cta_new_window\":\"0\",\"cta_text\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"cta_position\":\"center\",\"cta_offset_top\":\"\",\"cta_offset_left\":\"\",\"status\":\"1\",\"sort_order\":\"\"}],\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(195, 'journal2_side_blocks', '{\"module_name\":\"FB Block\",\"module_type\":\"block\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe683;\",\"class\":\"facebook3\"}},\"icon_bg_color\":\"rgb(66, 139, 202)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_hover_color\":\"\",\"content_bg_color\":\"rgb(255, 255, 255)\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"360\",\"offset_side\":\"\",\"content_width\":\"300\",\"content_padding\":\"\",\"content\":[null,\"<p><iframe allowtransparency=\\\"true\\\" frameborder=\\\"0\\\" scrolling=\\\"no\\\" src=\\\"\\/\\/www.facebook.com\\/plugins\\/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookDevelopers&amp;width=300&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false&amp;appId=117935585037426\\\" style=\\\"border:none; overflow:hidden; width:300px; height:230px;\\\"><\\/iframe><\\/p>\\n\"],\"link\":{\"menu_type\":\"custom\",\"url\":\"\"},\"new_window\":\"0\"}');
INSERT INTO `oc_journal2_modules` (`module_id`, `module_type`, `module_data`) VALUES
(196, 'journal2_side_blocks', '{\"module_name\":\"Tweets Block\",\"module_type\":\"block\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe682;\",\"class\":\"twitter3\"}},\"icon_bg_color\":\"rgb(43, 176, 227)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_hover_color\":\"\",\"content_bg_color\":\"\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"50\",\"icon_height\":\"50\",\"offset_top\":\"410\",\"offset_side\":\"\",\"content_width\":\"300\",\"content_padding\":\"\",\"content\":[null,\"<p><a class=\\\"twitter-timeline\\\" data-widget-id=\\\"342636600209068032\\\" href=\\\"https:\\/\\/twitter.com\\/envato\\\">Tweets by @envato<\\/a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=\\/^http:\\/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\\\":\\/\\/platform.twitter.com\\/widgets.js\\\";fjs.parentNode.insertBefore(js,fjs);}}(document,\\\"script\\\",\\\"twitter-wjs\\\");<\\/script><\\/p>\\n\"],\"link\":{\"menu_type\":\"custom\",\"url\":\"\"},\"new_window\":\"0\"}'),
(203, 'journal2_side_products', '{\"module_name\":\"Neseniai \\u017ei\\u016br\\u0117tos\",\"section_title\":{\"value\":{\"1\":\"Recently Viewed\",\"2\":\"Neseniai \\u017ei\\u016br\\u0117tos\",\"3\":\"\\u041d\\u0435\\u0434\\u0430\\u0432\\u043d\\u043e \\u043f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043d\\u043d\\u044b\\u0435\"}},\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":\"10\",\"module_type\":\"recently-viewed\",\"filter_category\":\"0\",\"random_from\":\"all\"}'),
(216, 'journal2_slider', '{\"module_name\":\"Slider\",\"width\":\"\",\"height\":\"500\",\"hidecaptionsonmobile\":\"0\",\"timer\":\"bottom\",\"js_options\":{\"delay\":\"3500\",\"onHoverStop\":\"on\",\"thumbWidth\":100,\"thumbHeight\":75,\"thumbAmount\":4,\"hideThumbs\":\"1\",\"navigationType\":\"bullet\",\"navigationArrows\":\"solo\",\"navigationStyle\":\"round\",\"navigationHAlign\":\"center\",\"navigationVAlign\":\"bottom\",\"navigationHOffset\":\"\",\"navigationVOffset\":\"20\",\"arrowsHOffset\":\"33\"},\"preload_images\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"1\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"slides\":[{\"is_open\":false,\"slide_name\":\"\",\"image\":{\"1\":\"catalog\\/demo\\/banner\\/glen-alejandro-347236-unsplash(1).jpg\",\"2\":\"catalog\\/demo\\/banner\\/glen-alejandro-347236-unsplash(1).jpg\",\"3\":\"catalog\\/demo\\/banner\\/glen-alejandro-347236-unsplash(1).jpg\"},\"thumb\":{\"1\":\"\"},\"transition\":\"fade\",\"slotamount\":\"\",\"masterspeed\":800,\"delay\":\"\",\"captions\":[{\"is_open\":true,\"caption_name\":\"Per\\u017ei\\u016br\\u0117ti specialius pasi\\u016blymus\",\"type\":\"text\",\"video_type\":\"youtube\",\"video_yt_id\":\"\",\"video_vm_id\":\"\",\"video_path\":\"\",\"video_fullwidth\":0,\"video_width\":\"\",\"video_height\":\"\",\"video_autoplay\":0,\"video_autoplayonlyfirsttime\":0,\"video_nextslideatend\":1,\"video_volume\":1,\"video_loop\":0,\"text_font\":{\"value\":{\"font_type\":\"system\",\"font_size\":\"16px\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Abel\",\"font_weight\":\"normal\",\"font_style\":\"\",\"font_subset\":[\"latin\",\"latin-ext\"],\"letter_spacing\":\"\",\"text_transform\":\"uppercase\",\"v\":\"2\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"text_color\":\"\",\"text_bgcolor\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"text_hover_color\":\"\",\"text_hover_bg_color\":{\"value\":{\"color\":\"rgb(68, 67, 73)\"}},\"text_border\":{\"value\":{\"border_rounded\":\"px\"}},\"text_hover_border_color\":\"\",\"text_padding_top\":\"5\",\"text_padding_right\":\"10\",\"text_padding_bottom\":\"5\",\"text_padding_left\":\"10\",\"text_line_height\":\"\",\"text_align\":\"center\",\"position\":\"center\",\"multilanguage_position\":\"0\",\"x\":\"\",\"y\":\"190\",\"x_ml\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"y_ml\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"animation_in\":\"fade\",\"animation_out\":\"fadeout\",\"custom_in_transition_x\":\"\",\"custom_in_transition_y\":\"\",\"custom_in_scale_x\":\"\",\"custom_in_scale_y\":\"\",\"custom_in_rotation_x\":\"\",\"custom_in_rotation_y\":\"\",\"custom_in_rotation_z\":\"\",\"transformOriginXin\":\"center\",\"transformOriginYin\":\"center\",\"custom_in_transform_perspective\":\"500\",\"custom_in_opacity\":\"1\",\"custom_out_transition_x\":\"\",\"custom_out_transition_y\":\"\",\"custom_out_scale_x\":\"\",\"custom_out_scale_y\":\"\",\"custom_out_rotation_x\":\"\",\"custom_out_rotation_y\":\"\",\"custom_out_rotation_z\":\"\",\"transformOriginXout\":\"center\",\"transformOriginYout\":\"center\",\"custom_out_transform_perspective\":\"500\",\"custom_out_opacity\":\"1\",\"speed\":\"\",\"start\":\"\",\"endspeed\":\"\",\"end\":\"\",\"status\":\"1\",\"sort_order\":\"\",\"link\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"product\\/special\"}},\"link_new_window\":\"0\",\"easing\":\"easeInOutQuart\",\"endeasing\":\"easeInOutQuart\",\"shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"shadow_hover\":{\"value\":{\"inner_shadow\":\"0\",\"x_offset\":{\"value\":\"\"},\"y_offset\":{\"value\":{\"text\":\"5\"}},\"blur\":{\"value\":{\"text\":\"40\"}},\"spread\":{\"value\":\"\"},\"color\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.39)\"}}}},\"shadow_active\":{\"value\":{\"inner_shadow\":\"0\"}},\"border\":{\"value\":{\"border_rounded\":\"px\"}},\"bg_image\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"bg_image_hover\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"animations_is_open\":true,\"image\":{\"1\":[],\"2\":[],\"3\":[]},\"text\":{\"value\":{\"1\":\"View All Special Offers\",\"2\":\"Per\\u017ei\\u016br\\u0117ti visus specialius pasi\\u016blymus\",\"3\":\"\\u041f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0432\\u0441\\u0435 \\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\"}}}],\"status\":\"1\",\"sort_order\":\"\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"link_new_window\":\"0\",\"easing\":\"easeInOutQuart\",\"close_others\":true},{\"is_open\":true,\"slide_name\":\"\",\"image\":{\"1\":\"catalog\\/demo\\/banner\\/bg-2.jpg\",\"2\":\"catalog\\/demo\\/banner\\/bg-2.jpg\",\"3\":\"catalog\\/demo\\/banner\\/bg-2.jpg\"},\"thumb\":{\"1\":\"\"},\"transition\":\"fade\",\"slotamount\":\"\",\"masterspeed\":800,\"delay\":\"\",\"captions\":[{\"is_open\":true,\"caption_name\":\"Per\\u017ei\\u016br\\u0117ti specialius pasi\\u016blymus\",\"type\":\"text\",\"video_type\":\"youtube\",\"video_yt_id\":\"\",\"video_vm_id\":\"\",\"video_path\":\"\",\"video_fullwidth\":0,\"video_width\":\"\",\"video_height\":\"\",\"video_autoplay\":0,\"video_autoplayonlyfirsttime\":0,\"video_nextslideatend\":1,\"video_volume\":1,\"video_loop\":0,\"text_font\":{\"value\":{\"font_type\":\"system\",\"font_size\":\"16px\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"uppercase\",\"v\":\"2\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"text_color\":\"\",\"text_bgcolor\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"text_hover_color\":\"\",\"text_hover_bg_color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"text_border\":{\"value\":{\"border_rounded\":\"px\"}},\"text_hover_border_color\":\"\",\"text_padding_top\":\"5\",\"text_padding_right\":\"10\",\"text_padding_bottom\":\"5\",\"text_padding_left\":\"10\",\"text_line_height\":\"\",\"text_align\":\"center\",\"position\":\"center\",\"multilanguage_position\":\"0\",\"x\":\"\",\"y\":\"190\",\"x_ml\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"y_ml\":{\"value\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"animation_in\":\"fade\",\"animation_out\":\"fadeout\",\"custom_in_transition_x\":\"\",\"custom_in_transition_y\":\"\",\"custom_in_scale_x\":\"\",\"custom_in_scale_y\":\"\",\"custom_in_rotation_x\":\"\",\"custom_in_rotation_y\":\"\",\"custom_in_rotation_z\":\"\",\"transformOriginXin\":\"center\",\"transformOriginYin\":\"center\",\"custom_in_transform_perspective\":\"500\",\"custom_in_opacity\":\"1\",\"custom_out_transition_x\":\"\",\"custom_out_transition_y\":\"\",\"custom_out_scale_x\":\"\",\"custom_out_scale_y\":\"\",\"custom_out_rotation_x\":\"\",\"custom_out_rotation_y\":\"\",\"custom_out_rotation_z\":\"\",\"transformOriginXout\":\"center\",\"transformOriginYout\":\"center\",\"custom_out_transform_perspective\":\"500\",\"custom_out_opacity\":\"1\",\"speed\":\"\",\"start\":\"\",\"endspeed\":\"\",\"end\":\"\",\"status\":1,\"sort_order\":\"\",\"link\":{\"menu_type\":\"opencart\",\"menu_item\":{\"page\":\"product\\/special\"}},\"link_new_window\":\"0\",\"easing\":\"easeInOutQuart\",\"endeasing\":\"easeInOutQuart\",\"shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"shadow_hover\":{\"value\":{\"inner_shadow\":\"0\",\"x_offset\":{\"value\":\"\"},\"y_offset\":{\"value\":{\"text\":\"4\"}},\"blur\":{\"value\":{\"text\":\"40\"}},\"spread\":{\"value\":\"\"},\"color\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.3)\"}}}},\"shadow_active\":{\"value\":{\"inner_shadow\":\"0\"}},\"border\":{\"value\":{\"border_rounded\":\"px\"}},\"bg_image\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"bg_image_hover\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"image\":{\"1\":[],\"2\":[],\"3\":[]},\"text\":{\"value\":{\"1\":\"View All Special Offers\",\"2\":\"Per\\u017ei\\u016br\\u0117ti specialius pasi\\u016blymus\",\"3\":\"\\u041f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0432\\u0441\\u0435 \\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\"}},\"text_line\":\"single\",\"animations_is_open\":true}],\"status\":\"1\",\"sort_order\":\"\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"link_new_window\":\"0\",\"easing\":\"easeInOutQuart\",\"close_others\":true}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"spinner\":\"0\",\"general_is_open\":false,\"navigation_is_open\":false,\"top_bottom_is_open\":false,\"hideonmobile\":\"0\",\"close_others\":true}'),
(226, 'journal2_custom_sections', '{\"module_name\":\"Related - Also Bought\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"top_bottom_placement\":0,\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"0\",\"margin_top\":\"30\",\"margin_bottom\":\"30\",\"spacing\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"image_bgcolor\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Related Products\",\"2\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"5\",\"module_type\":\"related\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"People Also Bought\",\"2\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"people-also-bought\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Special Offers\",\"2\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"specials\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\"},{\"is_open\":true,\"section_title\":{\"value\":{\"1\":\"Our Bestsellers\",\"2\":\"\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"bestsellers\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\",\"random_from\":\"all\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"disable_mobile\":\"0\"}'),
(219, 'journal2_advanced_grid', '{\"module_name\":\"Demo 5 - 3 piece\",\"height\":\"200\",\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"grid_dimensions\":\"1\",\"module_spacing\":\"20\",\"columns\":[{\"is_open\":true,\"width\":\"50\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"100\",\"module_id\":\"221\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"disable_mobile\":\"0\"}]},{\"is_open\":true,\"width\":\"25\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"100\",\"module_id\":\"222\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"disable_mobile\":\"0\"}]},{\"is_open\":true,\"width\":\"25\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"100\",\"module_id\":\"222\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"disable_mobile\":\"0\"}]}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":false,\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"disable_mobile\":\"0\"}'),
(218, 'journal2_static_banners', '{\"module_name\":\"Demo 5 - 4 piece\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgcolor\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.4)\"}},\"icon\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe648;\",\"class\":\"link\"}},\"fullwidth\":\"0\",\"margin_top\":\"20\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"carousel\":\"0\",\"arrows\":\"1\",\"bullets\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"sections\":[{\"is_open\":true,\"image\":{\"1\":\"data\\/journal2\\/misc\\/ban.jpg\",\"4\":\"\"},\"image_title\":{\"value\":{\"1\":\"\",\"4\":\"\"}},\"link\":{\"menu_type\":\"category\",\"menu_item\":{\"id\":\"59\",\"name\":\"Fashion\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":true,\"image\":{\"1\":\"data\\/journal2\\/misc\\/ban2.jpg\",\"4\":\"\"},\"image_title\":{\"value\":{\"1\":\"\",\"4\":\"\"}},\"link\":{\"menu_type\":\"category\",\"menu_item\":{\"id\":\"109\",\"name\":\"Beauty\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":true,\"image\":{\"1\":\"data\\/journal2\\/misc\\/ban3.jpg\",\"4\":\"\"},\"image_title\":{\"value\":{\"1\":\"\",\"4\":\"\"}},\"link\":{\"menu_type\":\"category\",\"menu_item\":{\"id\":\"107\",\"name\":\"Bags\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":true,\"image\":{\"1\":\"data\\/journal2\\/misc\\/ban4.jpg\",\"4\":\"\"},\"image_title\":{\"value\":{\"1\":\"\",\"4\":\"\"}},\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":false,\"top_bottom_is_open\":true,\"disable_mobile\":\"0\"}'),
(221, 'journal2_static_banners', '{\"module_name\":\"Demo 5 - mid -1\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.4)\"}},\"icon\":{\"options\":{\"font_size\":\"30px\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe662;\",\"class\":\"heart2\"}},\"disable_mobile\":\"0\",\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"sections\":[{\"is_open\":true,\"image\":\"data\\/journal2\\/misc\\/adv.png\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"}],\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(222, 'journal2_static_banners', '{\"module_name\":\"Demo 5 - mid - 2\",\"module_title\":{\"value\":{\"1\":\"\",\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.4)\"}},\"icon\":{\"options\":{\"font_size\":\"30px\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60e;\",\"class\":\"chevron-right\"}},\"disable_mobile\":\"0\",\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"sections\":[{\"is_open\":true,\"image\":\"data\\/journal2\\/misc\\/sample2.png\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"#\"}},\"link_new_window\":\"0\",\"status\":\"1\",\"sort_order\":\"\"}],\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(228, 'journal2_photo_gallery', '{\"module_name\":\"New Module\",\"gallery_name\":{\"value\":{\"1\":\"Photo Gallery\",\"2\":\"\"}},\"thumbs_limit\":\"9\",\"thumbs_width\":\"60\",\"thumbs_height\":\"60\",\"thumbs_type\":\"crop\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"}}},\"carousel\":\"0\",\"carousel_arrows\":\"side\",\"carousel_buttons\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgcolor\":{\"value\":{\"color\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}},\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"fullwidth\":\"0\",\"margin_top\":\"20\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"images\":[{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"Sample Caption\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/1.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"Sample Caption\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/10.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"Sample Caption\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/1sxajip0lis-demetrius-washington.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"Sample Caption\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/4.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"Sample Caption\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/5.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"Sample Caption\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/6.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/7.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/9.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/3.jpg\"},{\"is_open\":false,\"status\":\"1\",\"name\":{\"value\":{\"1\":\"\",\"2\":\"\",\"4\":\"\"}},\"image\":\"data\\/journal2\\/gallery\\/e5imvsjz1da-anna-hamilton.jpg\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":false,\"disable_mobile\":\"0\",\"carousel_bullets\":\"0\",\"close_others\":true}'),
(229, 'journal2_blog_side_posts', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"New Module\",\"module_type\":\"newest\",\"posts\":[],\"limit\":\"4\",\"title\":{\"value\":{\"1\":\"Latest Blog Articles\"}}}'),
(232, 'journal2_blog_comments', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"New Module\",\"limit\":5,\"title\":{\"value\":{\"1\":\"Latest Comments\"}}}'),
(233, 'journal2_blog_tags', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"New Module\",\"limit\":15,\"title\":{\"value\":{\"1\":\"Tags\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_newsletter`
--

CREATE TABLE `oc_journal2_newsletter` (
  `email` varchar(128) NOT NULL,
  `token` varchar(64) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_settings`
--

CREATE TABLE `oc_journal2_settings` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_journal2_settings`
--

INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(5, 'search_radius_mobile', 'header', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'menu_sticky_border', 'header', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'retina_logo', 'header', '{\"value\":{\"image\":\"catalog\\/journal2\\/logo5_2x.png\"}}', 1),
(5, 'header_box_shadow_type', 'header', 'none', 0),
(5, 'search_autosuggest_shadow_custom', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'logo_bg_image', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'header_bg_pages', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'header_box_shadow', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'top_bar_shadow', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'center_logo_bg_image', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'header_bg_sticky', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'cart_content_shadow_custom', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'cart_header_shadow_custom', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'sticky_header_box_shadow', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'header_bg_default', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'cart_button_bg_color_image_hover', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'cart_button_bg_color_image', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'header_cart_button_shadow_hover', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'header_cart_button_shadow', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'cart_button_border', 'header', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'menu_bg_image_sticky', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'autosuggest_price_status', 'header', 'block', 0),
(5, 'header_cart_button_shadow_active', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'search_shadow_custom', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'header_cart_checkout_button_border', 'header', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'autosuggest_product_image_type', 'header', 'fit', 0),
(5, 'search_autocomplete_include_description', 'header', '1', 0),
(5, 'lang_shadow', 'header', '0 2px 2px rgba(0, 0, 0, 0.15)', 0),
(5, 'autosuggest_product_image', 'header', 'block', 0),
(5, 'top_bar_divider_type', 'header', 'solid', 0),
(5, 'autosuggest_view_more_text', 'header', '{\"value\":{\"1\":\"View More\",\"2\":\"Per\\u017ei\\u016br\\u0117ti daugiau\",\"3\":\"\\u041f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\"}}', 1),
(5, 'sticky_header_style', 'header', 'menu', 0),
(5, 'autosuggest_limit', 'header', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'search_bg_center', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'cart_button_color', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'cart_button_color_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'cart_button_bg_hover_color', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'cart_button_bg_color', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'header_height', 'header', 'normal', 0),
(5, 'drop_lang_divider_type', 'header', 'solid', 0),
(5, 'search_bg_mobile', 'header', '{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}', 1),
(5, 'search_bg_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'cart_heading_bg_mobile', 'header', '{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}', 1),
(5, 'boxed_bottom_spacing', 'header', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'cart_heading_bg_center', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'cart_heading_bg_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'lang_divider', 'header', '{\"value\":{\"color\":\"rgb(119, 119, 119)\"}}', 1),
(5, 'cart_header_shadow', 'header', 'none', 0),
(5, 'search_placeholder_text', 'header', '{\"value\":{\"1\":\"Search for products...\",\"2\":\"Paie\\u0161ka ...\",\"3\":\"\\u041f\\u043e\\u0438\\u0441\\u043a ...\"}}', 1),
(5, 'boxed_top_spacing', 'header', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'search_button_bg_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'search_divider', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'autosuggest_divider', 'header', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(5, 'autosuggest_bg', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'autosuggest_hover', 'header', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'lang_drop_color', 'header', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'search_button_bg', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'lang_drop_bg', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'lang_drop_color_hover', 'header', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'lang_drop_bg_hover', 'header', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'curr_bg', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'cart_total_bg', 'header', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'search_placeholder_color', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'autosuggest_divider_type', 'header', 'solid', 0),
(5, 'search_bg', 'header', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'search_icon_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'cart_heading_icon_bg', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'cart_icon_divider', 'header', '{\"value\":{\"color\":\"rgba(244, 244, 244, 0)\"}}', 1),
(5, 'cart_content_bg', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'cart_content_delete_icon_color', 'header', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'cart_content_delete_icon_hover', 'header', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'cart_content_divider_color', 'header', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(5, 'header_bg_color', 'header', '{\"value\":{\"color\":\"rgba(0, 0, 0, 0.85)\"}}', 1),
(5, 'logo_bg_color', 'header', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'cart_heading_bg', 'header', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'search_icon', 'header', '{\"value\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"top\":\"-1\",\"left\":\"2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe697;\",\"class\":\"search\"}}}', 1),
(5, 'top_bar_bg_color', 'header', '{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}', 1),
(5, 'cart_heading_icon', 'header', '{\"value\":{\"options\":{\"font_size\":\"25px\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}},\"top\":\"-1\",\"left\":\"-4\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe000;\",\"class\":\"icon0\"}}}', 1),
(5, 'autosuggest_height', 'header', '{\"value\":{\"text\":\"350\"}}', 1),
(5, 'lang_divider_type', 'header', 'solid', 0),
(5, 'drop_radius', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'curr_radius', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'autosuggest_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'autosuggest_price_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'autosuggest_image_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'search_autocomplete', 'header', '1', 0),
(5, 'autosuggest_name_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'search_button_radius', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'search_radius', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}}}', 1),
(5, 'cart_content_height', 'header', '{\"value\":{\"text\":\"350\"}}', 1),
(5, 'cart_total_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'search_divider_type', 'header', 'solid', 0),
(5, 'search_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'cart_content_image_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'main_menu_mobile_bg_image', 'headermenus', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'mobile_menu_item_bg_phone', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'main_menu_mobile_border_color', 'headermenus', '{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}', 1),
(5, 'dropdown_shadow_custom', 'headermenus', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'main_menu_border_fw', 'headermenus', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'menu_bar_shadow', 'headermenus', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'mega_menu_shadow_custom', 'headermenus', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'mixed_cms_title_padding_bottom', 'headermenus', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'main_menu_bg_image', 'headermenus', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'main_menu_bg_full_image', 'headermenus', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'mobile_menu_cart_display', 'headermenus', 'off', 0),
(5, 'mega_menu_bg_image', 'headermenus', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'mobile_menu_on', 'headermenus', 'tablet', 0),
(5, 'hide_menus_on_phone', 'headermenus', 'off', 0),
(5, 'mobile_menu_item_color_phone', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'mixed_cms_title_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"letter_spacing\":\"1\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(56, 56, 56)\"}}}}', 1),
(5, 'mixed_cms_margin_bottom', 'headermenus', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'mixed_cms_title_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}', 1),
(5, 'mixed_cms_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(56, 56, 56)\"}}}}', 1),
(5, 'view_more_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"500\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'menu_product_grid_item_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'menu_product_grid_price_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(56, 56, 56)\"}}}}', 1),
(5, 'dropdown_shadow', 'headermenus', '0 1px 8px -3px rgba(0, 0, 0, 0.5)', 0),
(5, 'view_more_text', 'headermenus', '{\"value\":[null,\"View More\",\"Per\\u017ei\\u016br\\u0117ti daugiau\",\"\\u041f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\"]}', 1),
(5, 'menu_html_title_padding_left', 'headermenus', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'menu_html_title_padding_top', 'headermenus', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'menu_categories_link_padding', 'headermenus', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'menu_product_grid_name_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'menu_html_title_padding_bottom', 'headermenus', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'menu_categories_item_margin', 'headermenus', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'mega_menu_padding', 'headermenus', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'main_menu_mobile_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'menu_categories_title_padding_right', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'menu_product_grid_price_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'menu_categories_title_padding_left', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'menu_product_grid_button_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'menu_categories_title_padding_bottom', 'headermenus', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'main_menu_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":{\"text\":\"1\"}},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":{\"text\":\"1\"}},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(164, 23, 51)\"}}}}', 1),
(5, 'menu_categories_title_padding_top', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'menu_categories_link_font_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'dropdown_divider', 'headermenus', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(5, 'dropdown_icon_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'dropdown_font_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'secondary_menu_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'dropdown_bg_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'dropdown_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'menu_brands_title_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'menu_brands_title_font_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'menu_brands_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'menu_html_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'menu_html_title_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'menu_categories_title_border_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'menu_categories_title_bg_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'menu_categories_title_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'menu_categories_title_font_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'menu_categories_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'secondary_menu_link_hover_color', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'mega_menu_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'menu_divider', 'headermenus', '{\"value\":{\"color\":\"rgb(164, 23, 51)\"}}', 1),
(5, 'menu_bg_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'menu_font_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'main_menu_bg_full_color', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'main_menu_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'top_menu_link_hover_color', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'top_menu_border_color', 'headermenus', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'top_menu_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'top_menu_link_hover_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'mobile_plus_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'mobile_plus_color', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'mobile_text_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"500\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\",\"latin-ext\"],\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'menu_categories_link_icon', 'headermenus', '{\"value\":{\"options\":{\"font_size\":\"18px\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe094;\",\"class\":\"circle-arrow-right2\"}}}', 1),
(5, 'dropdown_icon', 'headermenus', '{\"value\":{\"options\":{\"font_size\":\"10px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"-3\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe620;\",\"class\":\"play4\"}}}', 1),
(5, 'mobile_menu_icon', 'headermenus', '{\"value\":{\"options\":{\"font_size\":\"20px\",\"top\":\"-1\",\"color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe618;\",\"class\":\"reorder\"}}}', 1),
(5, 'dropdown_link_icon', 'headermenus', '{\"value\":{\"options\":{\"font_size\":\"10px\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe60e;\",\"class\":\"chevron-right\"}}}', 1),
(5, 'mobile_menu_text', 'headermenus', '{\"value\":{\"1\":\"MENU\",\"2\":\"MENIU\",\"3\":\"\\u041c\\u0415\\u041d\\u042e\"}}', 1),
(5, 'mega_menu_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":{\"text\":\"1\"}},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":{\"text\":\"1\"}},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}},\"border_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}}}', 1),
(5, 'menu_html_title_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'menu_html_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(5, 'menu_brands_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'filter_brands_text', 'modulesuperfilter', '{\"value\":[null,\"Brand\",\"Gamintojai\",\"\\u0411\\u0440\\u0435\\u043d\\u0434\"]}', 1),
(5, 'filter_font', 'modulesuperfilter', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'filter_section_padding_from_title', 'modulesuperfilter', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'filter_heading_height', 'modulesuperfilter', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'filter_item_divider', 'modulesuperfilter', '{\"value\":{\"color\":\"rgba(255, 255, 255, 0)\"}}', 1),
(5, 'filter_heading_font', 'modulesuperfilter', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Lato\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'filter_height', 'modulesuperfilter', '{\"value\":{\"text\":\"300\"}}', 1),
(5, 'filter_heading_border', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'filter_item_divider_type', 'modulesuperfilter', 'solid', 0),
(5, 'filter_price_bar_height', 'modulesuperfilter', '{\"value\":{\"text\":\"2\"}}', 1),
(5, 'filter_price_button_radius', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'filter_price_tip_radius', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"10\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'filter_price_padding_right', 'modulesuperfilter', '{\"value\":{\"text\":\"20\"}}', 1),
(5, 'filter_price_padding_top', 'modulesuperfilter', '{\"value\":{\"text\":\"20\"}}', 1),
(5, 'filter_price_padding_bottom', 'modulesuperfilter', '{\"value\":{\"text\":\"35\"}}', 1),
(5, 'filter_image_section_margin_right', 'modulesuperfilter', '{\"value\":{\"text\":\"7\"}}', 1),
(5, 'filter_image_section_padding_top', 'modulesuperfilter', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'filter_image_section_padding_right', 'modulesuperfilter', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'filter_image_section_margin_bottom', 'modulesuperfilter', '{\"value\":{\"text\":\"7\"}}', 1),
(5, 'filter_price_bar_offset', 'modulesuperfilter', '{\"value\":{\"text\":\"-6\"}}', 1),
(5, 'filter_price_button_height', 'modulesuperfilter', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'filter_price_bar_static_color', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'filter_price_button_width', 'modulesuperfilter', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'filter_price_padding_left', 'modulesuperfilter', '{\"value\":{\"text\":\"17\"}}', 1),
(5, 'filter_section_spacing', 'modulesuperfilter', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'filter_section_padding_top', 'modulesuperfilter', '{\"value\":{\"text\":\"2\"}}', 1),
(5, 'filter_section_padding_bottom', 'modulesuperfilter', '{\"value\":{\"text\":\"2\"}}', 1),
(5, 'filter_section_padding_left', 'modulesuperfilter', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'filter_section_padding_right', 'modulesuperfilter', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'filter_show_box', 'modulesuperfilter', '1', 0),
(5, 'filter_reset_display', 'modulesuperfilter', 'icon', 0),
(5, 'filter_border', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":{\"text\":\"2\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}}}', 1),
(5, 'filter_loading_text', 'modulesuperfilter', '{\"value\":{\"1\":\"Loading...\",\"2\":\"\\u012ekeliama...\",\"3\":\"\\u0417\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f...\"}}', 1),
(5, 'filter_reset_text', 'modulesuperfilter', '{\"value\":{\"1\":\"Reset Filters\",\"2\":\"I\\u0161valyti filtracij\\u0105\",\"3\":\"\\u0421\\u043d\\u044f\\u0442\\u044c \\u0444\\u0438\\u043b\\u044c\\u0442\\u0440\\u044b\"}}', 1),
(5, 'filter_active_text', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'menu_categories_image_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'filter_price_button_hover', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'filter_price_button', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'filter_active_border', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'reset_icon', 'modulesuperfilter', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe602;\",\"class\":\"remove\"}}}', 1),
(5, 'filter_price_tip', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'reset_color', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'filter_price_color', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'filter_price_bar', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'reset_hover', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'reset_tip_text', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'reset_tip_bg', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'main_category_image_border', 'category', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'wish_button_icon_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_grid_wishlist_icon_bg_compare', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_button_bg', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_button_icon_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_grid_wishlist_icon_bg_image_hover_compare', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'product_grid_wishlist_icon_bg_image_Compare', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'product_grid_button_font_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_wishlist_icon_border_compare', 'productgrid', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'product_grid_wishlist_icon_bg_image_hover', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'wc_button_shadow', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'wc_button_shadow_hover', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'wc_button_shadow_active', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'product_grid_wishlist_icon_bg_image', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'product_grid_shadow_custom', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'pg_quick_button_shadow', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'pg_quick_button_shadow_hover', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'pg_quick_button_shadow_active', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'product_grid_quickview_button_bg_image', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'product_grid_quickview_button_bg_image_hover', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'pg_button_shadow', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'pg_button_shadow_hover', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\",\"x_offset\":{\"value\":\"\"},\"y_offset\":{\"value\":\"\"},\"blur\":{\"value\":\"\"},\"spread\":{\"value\":\"\"}}}', 1),
(5, 'product_grid_button_bg_image_hover', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'product_grid_button_bg_image', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'pg_button_shadow_active', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'product_grid_quickview_button_font_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_details_padding', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_button_bottom_margin', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_quickview_button_bg_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_quickview_button_border_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_details_bg_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_quickview_button_bg', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_hover_border', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'rating_offset_y', 'productgrid', '{\"value\":{\"text\":\"-35\"}}', 1),
(5, 'product_grid_soft_shadow', 'productgrid', 'none', 0),
(5, 'rating_offset_x', 'productgrid', '{\"value\":{\"text\":\"-47\"}}', 1),
(5, 'product_grid_button_tooltip_bg_color', 'productgrid', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_grid_button_tooltip_font', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_quickview_button_height_px', 'productgrid', '{\"value\":{\"text\":\"40\"}}', 1),
(5, 'product_grid_quickview_button_tooltip_bg_color', 'productgrid', '{\"value\":{\"color\":\"rgb(52, 73, 94)\"}}', 1),
(5, 'product_grid_item_bg', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_wishlist_icon_tip_bg', 'productgrid', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_grid_quickview_button_width_px', 'productgrid', '{\"value\":{\"text\":\"40\"}}', 1),
(5, 'product_grid_button_width_px', 'productgrid', '{\"value\":{\"text\":\"30\"}}', 1),
(5, 'product_grid_button_height_px', 'productgrid', '{\"value\":{\"text\":\"30\"}}', 1),
(5, 'product_grid_quickview_button_tooltip_font', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_wishlist_icon_tip_font', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_wishlist_icon_bg_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_wishlist_font_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_image_overlay', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_details_bg', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_name_font_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_price_background', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_grid_details_tip_color', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_wishlist_icon_bg', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_grid_price_font', 'productgrid', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Abril Fatface\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'product_grid_old_price_font', 'productgrid', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(164, 23, 51)\"}}}}', 1),
(5, 'product_grid_button_font', 'productgrid', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\",\"font_subset\":[]}}', 1),
(5, 'product_grid_quickview_button_font', 'productgrid', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_grid_wishlist_font', 'productgrid', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}}}', 1),
(5, 'product_grid_button_width', 'productgrid', '{\"value\":\"\"}', 1),
(5, 'product_grid_button_height', 'productgrid', '{\"value\":\"\"}', 1),
(5, 'product_grid_button_tooltip_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_grid_quickview_status', 'productgrid', 'hover', 0),
(5, 'product_grid_quickview_button_icon_display', 'productgrid', 'icon', 0),
(5, 'product_grid_quickview_button_icon_position', 'productgrid', 'left', 0),
(5, 'product_grid_quickview_offset_x', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_quickview_offset_y', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_quickview_button_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"30\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_grid_quickview_button_width', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_quickview_button_height', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_quickview_button_tooltip_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_grid_name_font', 'productgrid', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'product_grid_wishlist_icon', 'productgrid', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"top\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe662;\",\"class\":\"heart2\"}}}', 1),
(5, 'product_grid_compare_icon', 'productgrid', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe025;\",\"class\":\"refresh\"}}}', 1),
(5, 'product_grid_button_icon', 'productgrid', '{\"value\":{\"options\":{\"font_size\":\"19px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"top\":\"\",\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe000;\",\"class\":\"icon0\"}}}', 1),
(5, 'product_grid_quickview_button_icon', 'productgrid', '{\"value\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe660;\",\"class\":\"eye\"}}}', 1),
(5, 'product_grid_wishlist_icon_bg_width', 'productgrid', '{\"value\":{\"text\":\"30\"}}', 1),
(5, 'product_grid_wishlist_icon_bg_height', 'productgrid', '{\"value\":{\"text\":\"30\"}}', 1),
(5, 'product_grid_wishlist_icon_tip_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_grid_wishlist_icon_position', 'productgrid', 'button', 0),
(5, 'product_grid_wishlist_icon_on_hover', 'productgrid', 'on', 0),
(5, 'product_grid_wishlist_icon_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_grid_button_icon_display', 'productgrid', 'icon', 0),
(5, 'product_grid_button_icon_position', 'productgrid', 'left', 0),
(5, 'product_grid_button_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'refine_image_padding', 'category', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'pagination_link_font_new', 'category', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}', 1),
(5, 'product_page_gallery_carousel_icon_bg_hover', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_page_gallery_carousel_icon_width', 'productpage', '{\"value\":{\"text\":\"25\"}}', 1),
(5, 'product_page_button_line_height', 'productpage', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_page_gallery_carousel_icon_bg', 'productpage', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(5, 'product_page_gallery_carousel_icon_height', 'productpage', '{\"value\":{\"text\":\"25\"}}', 1),
(5, 'product_page_option_label', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(66, 139, 202)\"}}}}', 1),
(5, 'product_page_gallery_carousel_icon_hover', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'share_buttons_bg', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_page_option_label_hover', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_page_gallery_carousel_icon_offset', 'productpage', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_page_option_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"]}}', 1),
(5, 'product_page_options_push_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'product_page_options_padding_top', 'productpage', '{\"value\":{\"text\":\"20\"}}', 1),
(5, 'product_page_options_padding_bottom', 'productpage', '{\"value\":{\"text\":\"20\"}}', 1),
(5, 'product_page_options_padding_right', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'product_page_options_padding_left', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'product_page_gallery_carousel_icon_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'share_buttons_disable_on_mobile', 'productpage', '1', 0),
(5, 'product_page_gallery_carousel_transition_speed', 'productpage', '{\"value\":{\"text\":\"300\"}}', 1),
(5, 'related_products_carousel_transition_speed', 'productpage', '{\"value\":{\"text\":\"400\"}}', 1),
(5, 'related_products_carousel_transition_delay', 'productpage', '{\"value\":{\"text\":\"3000\"}}', 1),
(5, 'product_page_gallery_carousel_transition_delay', 'productpage', '{\"value\":{\"text\":\"3000\"}}', 1),
(5, 'split_ratio', 'productpage', 'split-40-60', 0),
(5, 'tags_hover_bg', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'tags_hover_font', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'tags_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'tags_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1);
INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(5, 'tags_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'tags_title_bg', 'productpage', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'tags_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"15\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'related_products_carousel_autoplay', 'productpage', '1', 0),
(5, 'related_products_carousel_pause_on_hover', 'productpage', '1', 0),
(5, 'product_page_gallery_carousel_pause_on_hover', 'productpage', '1', 0),
(5, 'product_page_gallery_carousel_touch_drag', 'productpage', '1', 0),
(5, 'tags_align', 'productpage', 'left', 0),
(5, 'related_products_carousel_touch_drag', 'productpage', '1', 0),
(5, 'product_page_gallery_carousel_autoplay', 'productpage', '1', 0),
(5, 'product_page_tabs_content_option_bg', 'productpage', '{\"value\":{\"color\":\"rgba(244, 244, 244, 0)\"}}', 1),
(5, 'product_page_tabs_content_image_bg', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_page_tabs_content_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'related_products_items_per_row', 'productpage', '{\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,8\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet1\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,8\",\"step\":\"1\"},\"desktop\":{\"value\":\"5\",\"range\":\"1,8\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,8\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"5\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,8\"}', 1),
(5, 'product_page_tabs_bg_hover', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_page_tabs_bg', 'productpage', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'product_page_wishlist_font_hover', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_page_wishlist_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'share_buttons', 'productpage', '[{\"id\":\"st_li_fblike\"},{\"id\":\"st_li_twitter\"},{\"id\":\"st_li_instagram\"},{\"id\":\"st_li_linkedin\"},{\"id\":\"st_li_sharethis\"}]', 1),
(5, 'product_page_tabs_font_hover', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_page_button_bg_hover', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_page_button_bg', 'productpage', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'product_page_button_font_hover', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_page_qty_bg_hover_color', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_page_qty_bg_color', 'productpage', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'product_page_qty_hover_color', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_page_options_title_bg', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_page_options_divider', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_page_options_push_select_bg', 'productpage', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'product_page_options_push_select_font_active', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_page_options_push_select_bg_active', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_page_qty_color', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'product_page_options_old_price_bg', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_page_options_item_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'product_page_options_links_hover', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'product_page_compare_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"14px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe025;\",\"class\":\"refresh\"}}}', 1),
(5, 'product_page_wishlist_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"14px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe662;\",\"class\":\"heart2\"}}}', 1),
(5, 'product_page_button_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"27px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"5\",\"left\":\"1\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe000;\",\"class\":\"icon0\"}}}', 1),
(5, 'product_page_gallery_carousel_icon_right', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"\",\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}}}', 1),
(5, 'product_page_gallery_carousel_icon_left', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"\",\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62b;\",\"class\":\"angle-left\"}}}', 1),
(5, 'product_page_gallery_text_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe015;\",\"class\":\"zoom-in2\"}}}', 1),
(5, 'related_products_carousel_bullets', 'productpage', '1', 0),
(5, 'related_products_carousel_arrows', 'productpage', 'top', 0),
(5, 'related_products_status', 'productpage', '0', 0),
(5, 'related_products_carousel', 'productpage', '1', 0),
(5, 'product_page_tabs_content_option_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_page_tabs_content_option_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'product_page_tabs_content_option_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_page_tabs_content_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_page_tabs_content_image_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'product_page_tabs_content_padding', 'productpage', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'product_page_tabs_content_image_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'product_page_tabs_content_ul_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'product_page_tabs_content_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(5, 'product_page_tabs_content_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'product_page_tabs_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'share_buttons_account_key', 'productpage', '{\"value\":\"\"}', 1),
(5, 'product_page_tabs_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"2\"}}', 1),
(5, 'share_buttons_position', 'productpage', 'right', 0),
(5, 'share_buttons_status', 'productpage', '1', 0),
(5, 'product_page_wishlist_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'product_page_button_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_page_button_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"2\"}}', 1),
(5, 'product_page_button_icon_position', 'productpage', 'left', 0),
(5, 'product_page_qty_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_page_options_push_select_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'product_page_options_push_shadow', 'productpage', 'inset 0 0 8px rgba(0, 0, 0, 0.7)', 0),
(5, 'product_page_options_title', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_page_options_push_select', 'productpage', '1', 0),
(5, 'product_page_options_old_price_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"30\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_page_options_old_price_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"22px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'product_page_options_price_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"30px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\",\"latin-ext\"],\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'footer_post_image_width', 'footer', '{\"value\":{\"text\":\"30\"}}', 1),
(5, 'footer_post_divider_type', 'footer', 'solid', 0),
(5, 'footer_product_price_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'footer_product_image_height', 'footer', '{\"value\":{\"text\":\"30\"}}', 1),
(5, 'footer_product_padding', 'footer', '{\"value\":{\"text\":\"4\"}}', 1),
(5, 'footer_product_old_price_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}}}', 1),
(5, 'footer_product_name_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'footer_product_name_overflow', 'footer', 'nowrap', 0),
(5, 'footer_product_divider_type', 'footer', 'solid', 0),
(5, 'footer_product_image_width', 'footer', '{\"value\":{\"text\":\"30\"}}', 1),
(5, 'footer_product_name_font_hover', 'footer', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'html_line_height', 'footer', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'footer_product_divider', 'footer', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'copyright_font_settings', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'contacts_text_font_hover', 'footer', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'contacts_text_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'footer_bg_image', 'footer', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgimage\":{\"value\":{\"image\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}}', 1),
(5, 'bottom_bar_bg', 'footer', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'footer_tooltip_bg_color', 'footer', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'footer_tooltip_font', 'footer', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'contacts_icon_bg_hover', 'footer', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'contacts_icon_bg', 'footer', '{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}', 1),
(5, 'contacts_bar_bg', 'footer', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'footer_titles_divider', 'footer', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'footer_bg_color', 'footer', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'footer_links_hover', 'footer', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'bottom_bar_shadow', 'footer', 'none', 0),
(5, 'boxed_bottom', 'footer', 'fullwidth-bar', 0),
(5, 'bottom_bar_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'footer_tooltip_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'contacts_bar_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"60\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'contacts_display', 'footer', 'on', 0),
(5, 'contacts_bar_shadow', 'footer', 'none', 0),
(5, 'footer_titles', 'footer', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"1\"}}', 1),
(5, 'footer_titles_divider_type', 'footer', 'solid', 0),
(5, 'footer_titles_align', 'footer', 'left', 0),
(5, 'footer_links', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'fullwidth_footer', 'footer', 'fullwidth-footer', 0),
(5, 'footer_top_margin', 'footer', '20', 0),
(5, 'footer_bottom_margin', 'footer', '0', 0),
(5, 'footer_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'body_bg_image_home', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'extended_layout_bg_image_home', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'breadcrumb_full_bg_color', 'general', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'breadcrumb_status', 'general', 'block', 0),
(5, 'breadcrumb_padding', 'general', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'extended_layout_bg_color', 'general', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'breadcrumb_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(5, 'general_button_border_hover', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'main_title_padding_left', 'general', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'scroll_top_icon_hover', 'general', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'general_button_bg', 'general', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'general_button_bg_hover', 'general', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'breadcrumb_hover', 'general', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'breadcrumb_bg_color', 'general', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'ajax_loader', 'general', '{\"value\":{\"image\":\"data\\/journal2\\/loader.gif\"}}', 1),
(5, 'general_button_font_hover', 'general', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'secondary_title_bg', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'main_title_bg', 'general', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'general_links_hover', 'general', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'general_links_color', 'general', '{\"value\":{\"color\":\"rgb(69, 115, 143)\"}}', 1),
(5, 'content_bg_color', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'body_bg_color', 'general', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(5, 'site_width', 'general', '{\"value\":\"1220\",\"range\":\"1024,1920\",\"step\":\"2\"}', 1),
(5, 'extended_layout_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgimage\":{\"value\":{\"image\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}}', 1),
(5, 'content_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"use_gradient\":0,\"bgimage_size\":\"auto\"}}', 1),
(5, 'body_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgimage\":{\"value\":{\"image\":\"data\\/journal2\\/pattern\\/pat2.jpg\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}}', 1),
(5, 'scroll_top_icon', 'general', '{\"value\":{\"options\":{\"font_size\":\"45px\",\"color\":{\"value\":{\"color\":\"rgb(63, 87, 101)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe021;\",\"class\":\"upload\"}}}', 1),
(5, 'scroll_top', 'general', '1', 0),
(5, 'breadcrumb_align', 'general', 'left', 0),
(5, 'breadcrumb_font', 'general', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'general_button_height', 'general', '{\"value\":{\"text\":\"32\"}}', 1),
(5, 'general_button_width', 'general', '{\"value\":{\"text\":\"14\"}}', 1),
(5, 'general_button_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'secondary_title_padding_tb', 'general', '{\"value\":{\"text\":\"8\"}}', 1),
(5, 'secondary_title_padding_lr', 'general', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'general_button_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\"}}', 1),
(5, 'menu_brands_title_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'menu_brands_image_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'catalog_list_wishlist', 'catalog', 'inline-block', 0),
(5, 'catalog_list_compare', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_main_menu_name', 'catalog', 'table', 0),
(5, 'catalog_list_cart', 'catalog', 'block', 0),
(5, 'catalog_grid_main_menu_wishlist', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_main_menu_price', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_main_menu_compare', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_main_menu_cart', 'catalog', 'block', 0),
(5, 'catalog_grid_cs_name', 'catalog', 'table', 0),
(5, 'catalog_grid_cs_price', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_cs_cart', 'catalog', 'block', 0),
(5, 'catalog_grid_cs_wishlist', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_cs_compare', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_side_carousel_name', 'catalog', 'table', 0),
(5, 'catalog_grid_side_carousel_price', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_side_carousel_cart', 'catalog', 'block', 0),
(5, 'catalog_grid_side_carousel_wishlist', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_side_carousel_compare', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_carousel_price', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_carousel_name', 'catalog', 'table', 0),
(5, 'catalog_grid_carousel_compare', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_carousel_wishlist', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_price', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_carousel_cart', 'catalog', 'block', 0),
(5, 'catalog_product_page_wishlist', 'catalog', 'inline-block', 0),
(5, 'catalog_grid_name', 'catalog', 'table', 0),
(5, 'catalog_product_page_options', 'catalog', 'block', 0),
(5, 'catalog_product_page_compare', 'catalog', 'inline-block', 0),
(5, 'catalog_product_page_price', 'catalog', 'block', 0),
(5, 'catalog_product_page_details', 'catalog', 'block', 0),
(5, 'catalog_product_page_cart', 'catalog', 'block', 0),
(5, 'catalog_header_search', 'catalog', 'block', 0),
(5, 'catalog_grid_cart', 'catalog', 'block', 0),
(5, 'catalog_grid_wishlist', 'catalog', 'inline-block', 0),
(5, 'catalog_list_description', 'catalog', 'block', 0),
(5, 'catalog_grid_compare', 'catalog', 'inline-block', 0),
(5, 'catalog_list_price', 'catalog', 'inline-block', 0),
(5, 'catalog_list_name', 'catalog', 'table', 0),
(10, 'product_page_cloud_zoom', 'productpage', '1', 0),
(10, 'product_page_gallery', 'productpage', '1', 0),
(10, 'product_page_gallery_carousel', 'productpage', '1', 0),
(10, 'product_page_gallery_carousel_arrows', 'productpage', 'always', 0),
(10, 'product_page_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(10, 'product_page_additional_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(10, 'product_page_additional_width', 'productpage', '{\"value\":\"5\",\"range\":\"1,8\",\"step\":\"1\"}', 1),
(10, 'product_page_additional_spacing', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_gallery_text', 'productpage', '{\"value\":{\"1\":\"Click Image for Gallery\",\"2\":\"\"}}', 1),
(10, 'product_page_gallery_text_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(10, 'product_page_latest_label_status', 'productpage', 'block', 0),
(10, 'product_page_special_label_status', 'productpage', 'block', 0),
(10, 'product_page_outofstock_label_status', 'productpage', 'block', 0),
(10, 'product_page_options_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\",\"font_subset\":[]}}', 1),
(10, 'product_page_options_links', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(10, 'product_page_options_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(10, 'product_page_options_item_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(10, 'product_page_options_margin', 'productpage', '{\"value\":{\"text\":\"1\"}}', 1),
(10, 'product_page_options_views', 'productpage', '1', 0),
(10, 'product_page_options_views_text', 'productpage', '{\"value\":{\"1\":\"Views\",\"text\":\"Views\"}}', 1),
(10, 'product_page_options_instock_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(51, 153, 101)\"}},\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_options_outstock_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(234, 35, 73)\"}},\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_options_price_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"35px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_options_old_price_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"20px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"],\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_options_old_price_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(10, 'product_page_options_push_select', 'productpage', '1', 0),
(10, 'product_page_options_push_shadow', 'productpage', 'inset 0 0 8px rgba(0, 0, 0, 0.7)', 0),
(10, 'product_page_options_title', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_options_push_select_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_qty_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(10, 'product_page_button_icon_position', 'productpage', 'left', 0),
(10, 'product_page_button_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_button_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(10, 'product_page_wishlist_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'share_buttons_status', 'productpage', '1', 0),
(10, 'share_buttons_position', 'productpage', 'right', 0),
(10, 'share_buttons_account_key', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_tabs_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_tabs_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(10, 'product_page_tabs_content_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_tabs_content_ul_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_tabs_content_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(10, 'product_page_tabs_content_padding', 'productpage', '{\"value\":{\"text\":\"\"}}', 1),
(10, 'product_page_tabs_content_image_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"font_subset\":[\"latin\"],\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_tabs_content_image_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_tabs_content_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'product_page_tabs_content_option_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"font_subset\":[\"latin\"],\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_tabs_content_option_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(10, 'product_page_tabs_content_option_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'related_products_status', 'productpage', '1', 0),
(10, 'related_products_carousel', 'productpage', '1', 0),
(10, 'related_products_carousel_arrows', 'productpage', 'top', 0),
(10, 'related_products_carousel_bullets', 'productpage', '1', 0),
(10, 'product_page_gallery_text_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe015;\",\"class\":\"zoom-in2\"}}}', 1),
(10, 'product_page_gallery_carousel_icon_left', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"left\":\"\",\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62b;\",\"class\":\"angle-left\"}}}', 1),
(10, 'product_page_gallery_carousel_icon_right', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"18px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"left\":\"\",\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}}}', 1),
(10, 'product_page_button_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe180;\",\"class\":\"cart2\"}}}', 1),
(10, 'product_page_wishlist_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe662;\",\"class\":\"heart2\"}}}', 1),
(10, 'product_page_compare_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe025;\",\"class\":\"refresh\"}}}', 1),
(10, 'product_page_options_links_hover', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(10, 'product_page_options_item_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(10, 'product_page_options_old_price_bg', 'productpage', '{\"value\":{\"color\":\"rgb(235, 88, 88)\"}}', 1),
(10, 'product_page_options_title_bg', 'productpage', '{\"value\":{\"color\":\"rgb(169, 184, 192)\"}}', 1),
(10, 'product_page_options_divider', 'productpage', '{\"value\":{\"color\":\"rgb(189, 195, 199)\"}}', 1),
(10, 'product_page_options_push_select_bg', 'productpage', '{\"value\":{\"color\":\"rgb(69, 115, 143)\"}}', 1),
(10, 'product_page_options_push_select_font_active', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(10, 'product_page_options_push_select_bg_active', 'productpage', '{\"value\":{\"color\":\"rgb(235, 88, 88)\"}}', 1),
(10, 'product_page_qty_color', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(10, 'product_page_qty_hover_color', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(10, 'product_page_qty_bg_color', 'productpage', '{\"value\":{\"color\":\"rgb(169, 184, 192)\"}}', 1),
(10, 'product_page_qty_bg_hover_color', 'productpage', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(10, 'product_page_button_font_hover', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(10, 'product_page_button_bg', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(10, 'product_page_button_bg_hover', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(10, 'product_page_wishlist_font_hover', 'productpage', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(10, 'product_page_wishlist_bg', 'productpage', '{\"value\":{\"color\":\"rgb(169, 184, 192)\"}}', 1),
(10, 'share_buttons', 'productpage', '[{\"id\":\"st_li_facebook\"},{\"id\":\"st_li_twitter\"},{\"id\":\"st_li_googleplus\"},{\"id\":\"st_li_sharethis\"},{\"id\":\"st_li_youtube\"},{\"id\":\"st_li_instapaper\"},{\"id\":\"st_li_instagram\"},{\"id\":\"st_li_delicious\"}]', 1),
(10, 'product_page_tabs_font_hover', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(10, 'product_page_tabs_bg', 'productpage', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(10, 'product_page_tabs_bg_hover', 'productpage', '{\"value\":{\"color\":\"rgb(235, 88, 88)\"}}', 1),
(10, 'related_products_items_per_row', 'productpage', '{\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,8\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet1\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet2\":{\"value\":1,\"range\":\"1,8\",\"step\":\"1\"},\"desktop\":{\"value\":\"5\",\"range\":\"1,8\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,8\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"5\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,8\"}', 1),
(10, 'product_page_tabs_content_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(10, 'product_page_tabs_content_image_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(10, 'product_page_tabs_content_option_bg', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(10, 'product_page_button_border_hover', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(10, 'related_products_carousel_touch_drag', 'productpage', '1', 0),
(10, 'related_products_carousel_pause_on_hover', 'productpage', '1', 0),
(10, 'related_products_carousel_autoplay', 'productpage', '1', 0),
(10, 'product_page_gallery_carousel_touch_drag', 'productpage', '1', 0),
(10, 'product_page_gallery_carousel_autoplay', 'productpage', '0', 0),
(10, 'tags_bg', 'productpage', '{\"value\":{\"color\":\"rgb(235, 88, 88)\"}}', 1),
(10, 'tags_title_bg', 'productpage', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(10, 'tags_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'tags_align', 'productpage', 'left', 0),
(10, 'tags_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"15\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(10, 'product_page_gallery_carousel_pause_on_hover', 'productpage', '1', 0),
(10, 'tags_hover_bg', 'productpage', '{\"value\":{\"color\":\"rgb(105, 185, 207)\"}}', 1),
(10, 'tags_hover_font', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(10, 'tags_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(10, 'split_ratio', 'productpage', 'split-50-50', 0),
(10, 'related_products_carousel_transition_speed', 'productpage', '{\"value\":{\"text\":\"400\"}}', 1),
(10, 'related_products_carousel_transition_delay', 'productpage', '{\"value\":{\"text\":\"3000\"}}', 1),
(10, 'product_page_gallery_carousel_transition_speed', 'productpage', '{\"value\":{\"text\":\"400\"}}', 1),
(10, 'share_buttons_disable_on_mobile', 'productpage', '1', 0);
INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(10, 'product_page_options_push_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(10, 'product_page_options_padding_left', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_gallery_carousel_icon_width', 'productpage', '{\"value\":{\"text\":\"22\"}}', 1),
(10, 'product_page_gallery_carousel_icon_height', 'productpage', '{\"value\":{\"text\":\"22\"}}', 1),
(10, 'product_page_options_padding_top', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_options_padding_right', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_options_padding_bottom', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_gallery_carousel_icon_hover', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(10, 'product_page_gallery_carousel_icon_bg', 'productpage', '{\"value\":{\"color\":\"rgb(235, 88, 88)\"}}', 1),
(10, 'product_page_gallery_carousel_icon_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'product_page_gallery_carousel_icon_bg_hover', 'productpage', '{\"value\":{\"color\":\"rgb(69, 115, 143)\"}}', 1),
(10, 'product_page_option_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Georgia, serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"bold\",\"font_style\":\"\",\"letter_spacing\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[],\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_gallery_carousel_icon_offset', 'productpage', '{\"value\":{\"text\":\"\"}}', 1),
(10, 'share_buttons_style', 'productpage', ' ', 0),
(10, 'product_page_tabs_shadow', 'productpage', 'none', 0),
(10, 'product_page_tabs_content_image_padding_right', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_tabs_content_image_padding_bottom', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_tabs_content_image_padding_left', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_tabs_content_image_padding_top', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(10, 'product_page_auto_update_price', 'productpage', '1', 0),
(10, 'product_page_cloud_zoom_inner', 'productpage', '1', 0),
(10, 'manufacturer_image', 'productpage', '0', 0),
(10, 'manufacturer_image_additional_text', 'productpage', 'none', 0),
(10, 'product_page_spec_align', 'productpage', 'left', 0),
(10, 'manufacturer_image_custom_text', 'productpage', '{\"value\":[]}', 1),
(10, 'product_page_options_brand_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'product_page_push_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'product_page_options_sold_text', 'productpage', '{\"value\":{\"1\":\"\"}}', 1),
(10, 'product_page_title_status', 'productpage', '1', 0),
(10, 'product_page_options_sold', 'productpage', '1', 0),
(10, 'product_page_options_sold_text_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"\",\"font_style\":\"\",\"letter_spacing\":\"\",\"text_transform\":\"\",\"font_subset\":[\"latin\"],\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'product_page_title_align', 'productpage', 'left', 0),
(10, 'product_page_options_push_image', 'productpage', '1', 0),
(10, 'product_page_options_push_checkbox', 'productpage', '1', 0),
(10, 'product_page_options_push_radio', 'productpage', '1', 0),
(10, 'product_page_title_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'product_page_title_overflow', 'productpage', 'on', 0),
(10, 'product_page_tabs_position', 'productpage', 'off', 0),
(10, 'product_page_title_position', 'productpage', 'right', 0),
(10, 'product_page_qty_status', 'productpage', 'on', 0),
(10, 'product_page_spec_title_align', 'productpage', 'left', 0),
(10, 'product_page_option_label', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"letter_spacing\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(51, 153, 101)\"}},\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(10, 'upload_button_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'product_page_tabs_content_option_padding_bottom', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_button_line_height', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_tabs_content_option_padding_top', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_quantity_symbol_size', 'productpage', '{\"value\":\"\"}', 1),
(10, 'pp_gallery_arrows_bg_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'pp_gallery_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'pp_gallery_caption_bar_bg_image', 'productpage', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(10, 'product_page_title_line_height', 'productpage', '{\"value\":\"\"}', 1),
(10, 'pp_gallery_thumbs_width', 'productpage', '{\"value\":\"\"}', 1),
(10, 'pp_gallery_thumbs_height', 'productpage', '{\"value\":\"\"}', 1),
(10, 'pp_gallery_thumbs_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'product_page_gallery_carousel_transition_delay', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_title_padding_right', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_title_padding_left', 'productpage', '{\"value\":\"\"}', 1),
(10, 'pp_hide_gallery_bars_after', 'productpage', '{\"value\":\"\"}', 1),
(10, 'pp_gallery_thumbs_spacing', 'productpage', '{\"value\":\"\"}', 1),
(10, 'manufacturer_image_height', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_stats_padding', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_price_padding', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_options_sold_count_padding_left', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_options_sold_count_padding_right', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_options_sold_count_padding_bottom', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_options_sold_count_padding_top', 'productpage', '{\"value\":\"\"}', 1),
(10, 'manufacturer_image_width', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_options_sold_count_max_width', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_cart_padding', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_tabs_line_height', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_option_padding', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_options_push_image_width', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_options_push_image_height', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_tab_image_line_height', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_tabs_content_option_padding_right', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_tabs_content_option_padding_left', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_tab_options_line_height', 'productpage', '{\"value\":\"\"}', 1),
(10, 'product_page_button_bg_image', 'productpage', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(10, 'product_page_button_bg_image_hover', 'productpage', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(10, 'pp_button_shadow', 'productpage', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(10, 'pp_button_shadow_hover', 'productpage', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(10, 'pp_button_shadow_active', 'productpage', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(10, 'product_page_tabs_group_radius', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(10, 'pp_gallery_caption_bar_bg_image_2', 'productpage', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(10, 'review_buttons_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'secondary_title_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}}}', 1),
(5, 'main_title_line_height', 'general', '{\"value\":{\"text\":\"40\"}}', 1),
(5, 'secondary_title_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}}}', 1),
(5, 'main_title_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_page_options_instock_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 153, 101)\"}}}}', 1),
(5, 'product_page_options_outstock_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}}}', 1),
(5, 'product_page_options_margin', 'productpage', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'product_page_options_views', 'productpage', '0', 0),
(5, 'product_page_options_views_text', 'productpage', '{\"value\":{\"1\":\"Views\",\"2\":\"Views\",\"text\":\"Views\"}}', 1),
(5, 'side_module_divider_type', 'sidecolumn', 'solid', 0),
(5, 'side_module_border', 'sidecolumn', '{\"value\":{\"text\":\"5\",\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'side_module_image_border', 'sidecolumn', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'category_plus_border', 'sidecolumn', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'side_module_link_icon', 'sidecolumn', '{\"value\":{\"options\":{\"font_size\":\"15px\",\"color\":{\"value\":{\"color\":\"rgb(169, 184, 192)\"}},\"top\":\"-2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}}}', 1),
(5, 'side_module_bg', 'sidecolumn', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'side_module_font_color', 'sidecolumn', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'side_module_link_hover', 'sidecolumn', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'side_module_link_bg_hover', 'sidecolumn', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'side_module_divider', 'sidecolumn', '{\"value\":{\"color\":\"rgba(255, 255, 255, 0)\"}}', 1),
(5, 'category_plus_color', 'sidecolumn', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'category_plus_bg', 'sidecolumn', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'category_plus_hover', 'sidecolumn', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'category_plus_bg_hover', 'sidecolumn', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'side_module_sub_link_icon', 'sidecolumn', '{\"value\":{\"options\":{\"font_size\":\"13px\",\"color\":{\"value\":{\"color\":\"rgb(169, 184, 192)\"}},\"top\":\"1\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe6ae;\",\"class\":\"caret-right\"}}}', 1),
(5, 'side_title_font', 'sidecolumn', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"20px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Lato\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"]}}', 1),
(5, 'side_category_link_padding_left', 'sidecolumn', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'side_category_link_padding_top', 'sidecolumn', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'side_category_link_padding_bottom', 'sidecolumn', '{\"value\":{\"text\":\"2\"}}', 1),
(5, 'side_category_product_padding_left', 'sidecolumn', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'side_category_product_padding_right', 'sidecolumn', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'side_category_product_padding_bottom', 'sidecolumn', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'side_category_product_padding_top', 'sidecolumn', '{\"value\":{\"text\":\"7\"}}', 1),
(5, 'side_modules_margin', 'sidecolumn', 'on', 0),
(5, 'side_category_sub_left_padding', 'sidecolumn', '{\"value\":{\"text\":\"7\"}}', 1),
(5, 'side_category_link_padding_right', 'sidecolumn', '{\"value\":{\"text\":\"20\"}}', 1),
(5, 'side_category_link_plus_width', 'sidecolumn', '{\"value\":{\"text\":\"20\"}}', 1),
(5, 'side_category_link_plus_height', 'sidecolumn', '{\"value\":{\"text\":\"20\"}}', 1),
(5, 'side_category_link_plus', 'sidecolumn', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'side_category_link_plus_right', 'sidecolumn', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'category_plus_font', 'sidecolumn', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'side_title_border', 'sidecolumn', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'side_product_name_overflow', 'sidecolumn', 'nowrap', 0),
(5, 'side_title_padding_left', 'sidecolumn', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'side_module_link_font', 'sidecolumn', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(56, 56, 56)\"}}}}', 1),
(5, 'site_map_sub', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'site_map_top', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"20px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'checkout_heading_font', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'checkout_bg', 'pages', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'checkout_padding', 'pages', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'site_map_bg', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'site_map_padding', 'pages', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'login_screen_text_font_color', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'checkout_confirm_bg_color', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'checkout_confirm_divider_color', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'shopping_option_bg_hover', 'pages', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'shopping_option_divider', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'checkout_heading_bg_color', 'pages', '{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}', 1),
(5, 'checkout_heading_divider_color', 'pages', '{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}', 1),
(5, 'checkout_confirm_color', 'pages', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(5, 'login_screen_divider', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'shopping_action_header_bg', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'shopping_action_bg', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'shopping_option_hover_color', 'pages', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'shopping_option_bg', 'pages', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'shopping_table_link_hover_color', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'shopping_table_header_color', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'shopping_table_header_bg', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'shopping_divider', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'login_screen_bg', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'shopping_table_link_color', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'shopping_table_color', 'pages', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(5, 'shopping_table_bg_color', 'pages', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'actions_bg_color', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'actions_padding_lr', 'pages', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'actions_padding_tb', 'pages', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'actions_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'checkout_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'shopping_action_margin', 'pages', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'shopping_action_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(5, 'shopping_action_header', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'login_screen_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'shopping_image_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'shopping_divider_style', 'pages', 'solid', 0),
(5, 'shopping_table_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'site_map_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'info_page_title_border', 'pages', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'button_checkout_border', 'pages', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'button_continue_border', 'pages', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'checkout_confirm_border', 'pages', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'maintenance_bg', 'pages', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'newsletter_unsubscribed_message', 'modulenewsletter', '{\"value\":{\"1\":\"\",\"2\":\"Prenumeratos atsisak\\u0117te\",\"3\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043e\\u0442\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430\"}}', 1),
(5, 'newsletter_invalid_email_message', 'modulenewsletter', '{\"value\":{\"1\":\"\",\"2\":\"Netinkamas elektroninio pa\\u0161to adresas\",\"3\":\"\\u041d\\u0435\\u0432\\u0435\\u0440\\u043d\\u044b\\u0439 \\u0410\\u0434\\u0440\\u0435\\u0441 \\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u043e\\u0439 \\u041f\\u043e\\u0447\\u0442\\u044b\"}}', 1),
(5, 'carousel_brand_product_grid_hover_border', 'modulecarousel', '{\"value\":{\"color\":\"rgba(221, 0, 23, 0.35)\"}}', 1),
(5, 'carousel_product_grid_shadow_custom', 'modulecarousel', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'carousel_brand_product_grid_item_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'carousel_product_grid_soft_shadow', 'modulecarousel', 'none', 0),
(5, 'carousel_product_grid_item_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'carousel_side_icon_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'carousel_icon_offset_top', 'modulecarousel', '{\"value\":{\"text\":\"-58\"}}', 1),
(5, 'carousel_icon_offset_right', 'modulecarousel', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'carousel_side_icon_offset_top', 'modulecarousel', '{\"value\":{\"text\":\"-60\"}}', 1),
(5, 'carousel_side_icon_offset_right', 'modulecarousel', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'carousel_side_icon_offset_left', 'modulecarousel', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'carousel_side_left_icon', 'modulecarousel', '{\"value\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60f;\",\"class\":\"chevron-left\"}}}', 1),
(5, 'carousel_icon_offset_left', 'modulecarousel', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'carousel_bullet_margin', 'modulecarousel', '{\"value\":{\"text\":\"8\"}}', 1),
(5, 'carousel_title_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'carousel_title_bg_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'carousel_icon_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'carousel_side_right_icon', 'modulecarousel', '{\"value\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60e;\",\"class\":\"chevron-right\"}}}', 1),
(5, 'carousel_side_icon_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'carousel_bullet_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'carousel_title_bg', 'modulecarousel', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'carousel_title_divider', 'modulecarousel', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'carousel_bullet_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"5\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'carousel_bullet_height', 'modulecarousel', '{\"value\":{\"text\":\"7\"}}', 1),
(5, 'carousel_bullet_width', 'modulecarousel', '{\"value\":{\"text\":\"20\"}}', 1),
(5, 'carousel_bullet_scale', 'modulecarousel', '{\"value\":{\"text\":\"1\"}}', 1),
(5, 'carousel_right_icon', 'modulecarousel', '{\"value\":{\"options\":{\"font_size\":\"17px\",\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60e;\",\"class\":\"chevron-right\"}}}', 1),
(5, 'carousel_bullet_color', 'modulecarousel', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'secondary_title_align', 'general', 'left', 0),
(5, 'main_title_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"letter_spacing\":\"\"}}', 1),
(5, 'main_title_align', 'general', 'left', 0),
(5, 'container_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'responsive_design', 'general', '1', 0),
(5, 'extended_layout', 'general', '1', 0),
(5, 'cart_content_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}', 1),
(5, 'cart_heading_icon_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(5, 'cart_heading_content_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'cart_heading_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}}}', 1),
(5, 'cart_heading_font', 'header', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"500\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'cart_content_divider_type', 'header', 'solid', 0),
(5, 'cart_content_shadow', 'header', '0 2px 5px rgba(0, 0, 0, 0.10)', 0),
(5, 'header_type', 'header', 'center', 0),
(5, 'sticky_header', 'header', '1', 0),
(5, 'cart_icon_divider_type', 'header', 'solid', 0),
(5, 'boxed_header', 'header', '0', 0),
(5, 'menu_line_height', 'headermenus', '{\"value\":{\"text\":\"38\"}}', 1),
(5, 'menu_categories_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'menu_categories_title_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}', 1),
(5, 'menu_brands_padding', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'menu_categories_padding', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'menu_html_title_align', 'headermenus', 'left', 0),
(5, 'menu_categories_title_align', 'headermenus', 'left', 0),
(5, 'menu_brands_title_align', 'headermenus', 'left', 0),
(5, 'menu_divider_type', 'headermenus', 'solid', 0),
(5, 'dropdown_divider_type', 'headermenus', 'solid', 0),
(5, 'main_menu_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"2\"}}', 1),
(5, 'menu_html_title_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"300\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'header_cart_checkout_button_bg_color_image', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'header_cart_checkout_button_bg_color_image_hover', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'post_list_title_border_color', 'blog', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'post_list_title_font_hover', 'blog', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'rm_button_shadow_hover', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'rm_list_button_shadow', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'post_grid_button_bg_image_hover', 'blog', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'rm_button_shadow', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'post_grid_button_bg_image', 'blog', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'post_grid_shadow_custom', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'post_list_button_bg_image_hover', 'blog', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'post_list_button_bg_image', 'blog', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'rm_button_shadow_active', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'post_list_shadow_custom', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'post_grid_title_font', 'blog', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'post_grid_padding', 'blog', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'post_grid_border', 'blog', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}', 1),
(5, 'rm_list_button_shadow_active', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'rm_list_button_shadow_hover', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'feed_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"---\"}}}', 1),
(5, 'feed_text', 'blog', '{\"value\":{\"1\":\"RSS Feed\",\"2\":\"RSS kanalas\",\"3\":\"RSS \\u041f\\u043e\\u0434\\u0430\\u0447\\u0430\"}}', 1),
(5, 'post_list_title_divider_type', 'blog', 'solid', 0),
(5, 'post_grid_align', 'blog', 'center', 0),
(5, 'post_list_image_width', 'blog', '{\"value\":{\"text\":\"25\"}}', 1),
(5, 'post_grid_title_overflow', 'blog', 'nowrap', 0),
(5, 'post_grid_desc_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'post_grid_details_padding_top', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'post_grid_details_padding_right', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'post_grid_image_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'post_grid_author_date_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"letter_spacing\":\"\",\"text_transform\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'post_grid_details_padding_left', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'post_grid_button_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'post_grid_button_padding_top', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_grid_button_padding_right', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_grid_button_padding_bottom', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_grid_button_padding_left', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_grid_details_padding_bottom', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'post_list_border', 'blog', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'post_grid_button_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'post_list_title_overflow', 'blog', 'nowrap', 0),
(5, 'post_list_shadow', 'blog', 'hover', 0),
(5, 'post_list_padding', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_grid_author_date_padding', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_grid_author_date_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'post_list_author_date_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"letter_spacing\":\"\",\"text_transform\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'post_list_title_font', 'blog', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"20px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"\",\"font_style\":\"\",\"letter_spacing\":\"\",\"text_transform\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\",\"font_subset\":[]}}', 1),
(5, 'post_list_image_border', 'blog', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'one_page_section_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'one_page_section_padding', 'journalcheckout', '{\"value\":\"\"}', 1),
(5, 'one_page_text_input_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'one_page_lang_coupon_button', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Panaudoti\",\"3\":\"\\u0418\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c\"}}', 1),
(5, 'product_page_tabs_line_height', 'productpage', '{\"value\":{\"text\":\"17\"}}', 1),
(5, 'share_buttons_style', 'productpage', '_hcount', 0),
(5, 'product_page_tabs_shadow', 'productpage', 'inset 0 -3px 6px -2px rgba(0, 0, 0, 0.5)', 0),
(5, 'one_page_lang_reward_placeholder', 'journalcheckout', '{\"value\":[]}', 1),
(5, 'one_page_coupon_voucher_button_bg_image', 'journalcheckout', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'one_page_hide_newsletter', 'journalcheckout', 'block', 0),
(5, 'qc_button_shadow_active', 'journalcheckout', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'one_page_lang_loading_text', 'journalcheckout', '{\"value\":{\"1\":\"Loading ...\",\"2\":\"Kraunasi ...\",\"3\":\"\\u0417\\u0430\\u0433\\u0440\\u0443\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f ...\"}}', 1),
(5, 'cv_button_shadow_hover', 'journalcheckout', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'one_page_confirm_button_bg_image_hover', 'journalcheckout', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'qc_button_shadow_hover', 'journalcheckout', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'qc_button_shadow', 'journalcheckout', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'one_page_confirm_button_bg_image', 'journalcheckout', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'cv_button_shadow_active', 'journalcheckout', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'one_page_coupon_voucher_button_bg_image_hover', 'journalcheckout', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'one_page_coupon_voucher_button_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'one_page_lang_reward_button', 'journalcheckout', '{\"value\":[]}', 1),
(5, 'cv_button_shadow', 'journalcheckout', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'one_page_hide_shipping_option_label', 'journalcheckout', 'none', 0),
(5, 'one_page_default_auth', 'journalcheckout', 'register', 0),
(5, 'one_page_dividers_color', 'journalcheckout', '{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}', 1),
(5, 'one_page_confirm_button_width', 'journalcheckout', '{\"value\":\"\"}', 1),
(5, 'one_page_confirm_button_height', 'journalcheckout', '{\"value\":\"\"}', 1),
(5, 'one_page_lang_bill_address', 'journalcheckout', '{\"value\":[null,null,\"Mok\\u0117tojo adresas\",\"\\u041f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u0439 \\u0410\\u0434\\u0440\\u0435\\u0441\"]}', 1),
(5, 'one_page_section_padding_l', 'journalcheckout', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'one_page_show_fax', 'journalcheckout', 'block', 0),
(5, 'one_page_show_company', 'journalcheckout', 'block', 0),
(5, 'one_page_show_address_2', 'journalcheckout', 'block', 0),
(5, 'one_page_coupon_status', 'journalcheckout', 'on', 0),
(5, 'one_page_voucher_status', 'journalcheckout', 'on', 0),
(5, 'one_page_lang_payment_details', 'journalcheckout', '{\"value\":[null,null,\"Mok\\u0117jimo nurodymai\",\"\\u0414\\u0435\\u0442\\u0430\\u043b\\u0438 \\u041e\\u043f\\u043b\\u0430\\u0442\\u044b\"]}', 1),
(5, 'one_page_confirm_button_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"0\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'one_page_confirm_button_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'one_page_lang_confirm_order', 'journalcheckout', '{\"value\":{\"1\":\"Confirm order\",\"2\":\"Patvirtinti u\\u017esakym\\u0105\",\"3\":\"\\u041f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0434\\u0438\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437\"}}', 1),
(5, 'one_page_lang_payment_method', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Mok\\u0117jimo metodas\",\"3\":\"\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u041e\\u043f\\u043b\\u0430\\u0442\\u044b\"}}', 1),
(5, 'one_page_lang_returning', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Sugr\\u012f\\u017e\\u0119s klientas\",\"3\":\"\\u0412\\u043e\\u0437\\u0432\\u0440\\u0430\\u0449\\u0430\\u044e\\u0449\\u0438\\u0439\\u0441\\u044f \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\"}}', 1),
(5, 'one_page_lang_ship_address', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Pristatymo adresas\",\"3\":\"\\u0410\\u0434\\u0440\\u0435\\u0441 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\"}}', 1),
(5, 'one_page_confirm_button_align', 'journalcheckout', 'left', 0),
(5, 'one_page_lang_comments', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"U\\u017esakymo komentarai\",\"3\":\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0438 \\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0435\"}}', 1),
(5, 'one_page_lang_shop_cart', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Preki\\u0173 krep\\u0161elis\",\"3\":\"\\u041a\\u043e\\u0440\\u0437\\u0438\\u043d\\u0430\"}}', 1),
(5, 'one_page_lang_coupon_voucher', 'journalcheckout', '{\"value\":{\"1\":\"Do you Have a Coupon or Voucher?\",\"2\":\"Ar turite nuolaidos kod\\u0105 arba dovan\\u0173 kupon\\u0105?\",\"3\":\"\\u0423 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u043a\\u043e\\u0434 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 \\u0438\\u043b\\u0438 \\u0432\\u0430\\u0443\\u0447\\u0435\\u0440?\"}}', 1),
(5, 'one_page_lang_your_pass', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"J\\u016bs\\u0173 slapta\\u017eodis\",\"3\":\"\\u0412\\u0430\\u0448 \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c\"}}', 1),
(5, 'one_page_lang_your_address', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"J\\u016bs\\u0173 adresas\",\"3\":\"\\u0412\\u0430\\u0448 \\u0410\\u0434\\u0440\\u0435\\u0441\"}}', 1),
(5, 'one_page_lang_ship_method', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Pristatymo metodas\",\"3\":\"\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\"}}', 1),
(5, 'one_page_text_product_image_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'one_page_lang_register_selector', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Registruokit\\u0117s arba pirkite be registracijos\",\"3\":\"\\u0417\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u0438\\u043b\\u0438 \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0431\\u0435\\u0437 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438\"}}', 1);
INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(5, 'one_page_lang_pers_details', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"J\\u016bs\\u0173 asmenin\\u0117 informacija\",\"3\":\"\\u0412\\u0430\\u0448\\u0438 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0435\"}}', 1),
(5, 'one_page_table_footer_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'one_page_table_product_name_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'one_page_table_header_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'one_page_table_height', 'journalcheckout', '{\"value\":{\"text\":\"378\"}}', 1),
(5, 'one_page_lang_voucher_placeholder', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"\\u012era\\u0161ykite dovan\\u0173 kupono kod\\u0105\",\"3\":\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043a\\u043e\\u0434 \\u0432\\u0430\\u0443\\u0447\\u0435\\u0440\\u0430\"}}', 1),
(5, 'one_page_table_style', 'journalcheckout', 'solid', 0),
(5, 'one_page_lang_coupon_placeholder', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"\\u012era\\u0161ykite nuolaidos kod\\u0105\",\"3\":\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043a\\u043e\\u0434 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438\"}}', 1),
(5, 'out_of_stock_ribbon_right_space', 'productlabels', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'out_of_stock_bg', 'productlabels', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'out_of_stock_disable_button', 'productlabels', '0', 0),
(5, 'out_of_stock_ribbon_top_space', 'productlabels', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'label_special_width', 'productlabels', '{\"value\":{\"text\":\"47\"}}', 1),
(5, 'label_special_height', 'productlabels', '{\"value\":{\"text\":\"47\"}}', 1),
(5, 'out_of_stock_status', 'productlabels', 'always', 0),
(5, 'label_latest_bg', 'productlabels', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'label_special_bg', 'productlabels', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'label_special_border', 'productlabels', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'label_latest_height', 'productlabels', '{\"value\":{\"text\":\"47\"}}', 1),
(5, 'label_special_status', 'productlabels', 'always', 0),
(5, 'label_special_type', 'productlabels', 'percent', 0),
(5, 'label_special_text', 'productlabels', '{\"value\":{\"1\":\"\",\"2\":\"\"}}', 1),
(5, 'label_special_font', 'productlabels', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'label_latest_width', 'productlabels', '{\"value\":{\"text\":\"47\"}}', 1),
(5, 'label_latest_border', 'productlabels', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'pp_countdown_numbers_font', 'countdown', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'pp_countdown_divider_type', 'countdown', 'solid', 0),
(5, 'show_countdown_product_page', 'countdown', 'on', 0),
(5, 'countdown_text_font', 'countdown', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'countdown_sec', 'countdown', '{\"value\":{\"1\":\"\",\"2\":\"Sek\",\"3\":\"\\u0421\\u0435\\u043a\"}}', 1),
(5, 'show_countdown', 'countdown', 'never', 0),
(5, 'countdown_divider_type', 'countdown', 'solid', 0),
(5, 'countdown_numbers_font', 'countdown', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'countdown_days', 'countdown', '{\"value\":{\"1\":\"\",\"2\":\"Dienos\",\"3\":\"\\u0414\\u043d\\u0438\"}}', 1),
(5, 'countdown_hours', 'countdown', '{\"value\":{\"1\":\"\",\"2\":\"Valandos\",\"3\":\"\\u0427\\u0430\\u0441\\u043e\\u0432\"}}', 1),
(5, 'countdown_min', 'countdown', '{\"value\":{\"1\":\"\",\"2\":\"Min\",\"3\":\"\\u041c\\u0438\\u043d\"}}', 1),
(5, 'pp_countdown_text_font', 'countdown', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'countdown_product_page_title', 'countdown', '{\"value\":{\"1\":\"This offers ends in:\",\"2\":\"\\u0160is pasi\\u016blymas baigsis po:\",\"3\":\"\\u042d\\u0442\\u043e \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0437\\u0430\\u043a\\u043e\\u043d\\u0447\\u0438\\u0442\\u0441\\u044f \\u0447\\u0435\\u0440\\u0435\\u0437:\"}}', 1),
(5, 'countdown_product_page_padding_top', 'countdown', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'countdown_product_page_padding_right', 'countdown', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'countdown_product_page_padding_bottom', 'countdown', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'countdown_product_page_padding_left', 'countdown', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'countdown_product_page_title_bg', 'countdown', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'countdown_product_page_title_font', 'countdown', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'countdown_product_page_title_align', 'countdown', 'left', 0),
(5, 'countdown_product_page_border', 'countdown', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'quickview_description_padding_right', 'quickview', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'quickview_cloud_zoom', 'quickview', '1', 0),
(5, 'quickview_more_details_tip_bg', 'quickview', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'quickview_bg_color', 'quickview', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'quickview_title_bg', 'quickview', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'quickview_more_details_tip_font', 'quickview', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'quickview_more_details_icon', 'quickview', '{\"value\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"left\":\"-2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe094;\",\"class\":\"circle-arrow-right2\"}}}', 1),
(5, 'quickview_button_text', 'quickview', '{\"value\":{\"1\":\"QuickView\",\"2\":\"\\u017dvilgtelti\",\"3\":\"\\u041f\\u0440\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\"}}', 1),
(5, 'quickview_more_details_text', 'quickview', '{\"value\":{\"1\":\"More Details\",\"2\":\"Detaliau\",\"3\":\"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435\"}}', 1),
(5, 'quickview_title_border', 'quickview', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'quickview_more_details_tip_border', 'quickview', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'quickview_title_font', 'quickview', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Lato\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"2\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'quickview_border', 'quickview', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'quickview_height', 'quickview', '{\"value\":{\"text\":\"563\"}}', 1),
(5, 'quickview_description_position', 'quickview', 'options', 0),
(5, 'quickview_product_options', 'quickview', '1', 0),
(5, 'quickview_status', 'quickview', '1', 0),
(5, 'blog_button_read_more', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Skaityti Daugiau\",\"3\":\"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0414\\u0430\\u043b\\u0435\\u0435\"}}', 1),
(5, 'blog_posted_by_text', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Paskelb\\u0117\",\"3\":\"\\u0410\\u0432\\u0442\\u043e\\u0440\"}}', 1),
(5, 'blog_comment_text', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Komentaras (-ai)\",\"3\":\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439 (\\u0438\\u0438)\"}}', 1),
(5, 'blog_reply_button', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Atsakyti\",\"3\":\"O\\u0442\\u0432\\u0435\\u0442\\u0438\\u0442\\u044c\"}}', 1),
(5, 'blog_leave_reply_text', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Para\\u0161yti atsakym\\u0105\",\"3\":\"\\u041d\\u0430\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c \\u043e\\u0442\\u0432\\u0435\\u0442\"}}', 1),
(5, 'blog_leave_comment_text', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Ra\\u0161yti komentar\\u0105\",\"3\":\"\\u041d\\u0430\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c \\u043a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439\"}}', 1),
(5, 'blog_form_name', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Vardas\",\"3\":\"\\u0418\\u043c\\u044f\"}}', 1),
(5, 'blog_form_email', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"El. pa\\u0161tas\",\"3\":\"\\u042d\\u043b. \\u0430\\u0434\\u0440\\u0435\\u0441\"}}', 1),
(5, 'blog_form_website', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Interneto svetain\\u0117\",\"3\":\"\\u0412\\u0435\\u0431-\\u0441\\u0430\\u0439\\u0442\"}}', 1),
(5, 'blog_form_comment', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Komentaras\",\"3\":\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439\"}}', 1),
(5, 'blog_form_submit', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Si\\u0173sti\",\"3\":\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c\"}}', 1),
(5, 'blog_form_comment_submitted', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Komentaras Pateiktas\",\"3\":\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0439\"}}', 1),
(5, 'blog_form_comment_awaiting_approval', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Komentaras laukia patvirtinimo\",\"3\":\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439 \\u043e\\u0436\\u0438\\u0434\\u0430\\u0435\\u0442 \\u043e\\u0434\\u043e\\u0431\\u0440\\u0435\\u043d\\u0438\\u044f\"}}', 1),
(5, 'newsletter_confirm_unsubscribe_message', 'modulenewsletter', '{\"value\":{\"1\":\"\",\"2\":\"Patvirtinti prenumeratos atsisakym\\u0105?\",\"3\":\"\\u041f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0434\\u0438\\u0442\\u0435 \\u041e\\u0442\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c\\u0441\\u044f?\"}}', 1),
(5, 'newsletter_subscribed_message', 'modulenewsletter', '{\"value\":{\"1\":\"\",\"2\":\"Prenumeruoti\",\"3\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u044b\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f\"}}', 1),
(5, 'newsletter_privacy_information', 'modulenewsletter', '{\"id\":\"3\",\"name\":\"Privatumo politika\"}', 1),
(5, 'newsletter_privacy', 'modulenewsletter', '1', 0),
(5, 'popup_close_size', 'modulepopup', '{\"value\":\"\"}', 1),
(5, 'popup_close_offset_top', 'modulepopup', '{\"value\":\"\"}', 1),
(5, 'popup_close_offset_right', 'modulepopup', '{\"value\":\"\"}', 1),
(5, 'popup_p_font', 'modulepopup', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}}', 1),
(5, 'popup_h1_font', 'modulepopup', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}}', 1),
(5, 'popup_h2_font', 'modulepopup', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}}', 1),
(5, 'popup_h3_font', 'modulepopup', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}}', 1),
(5, 'popup_privacy_information', 'modulepopup', '{\"id\":\"3\",\"name\":\"Privatumo politika\"}', 1),
(5, 'product_grid_wishlist_icon_display', 'productgrid', 'icon', 0),
(5, 'product_grid_price_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_grid_button_block_button', 'productgrid', 'inline-button', 0),
(5, 'product_grid_price_pt', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_price_pr', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_price_pb', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_price_pl', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_details_tip_size', 'productgrid', '{\"value\":{\"text\":\"25\"}}', 1),
(5, 'product_grid_details_tip_offset_x', 'productgrid', '{\"value\":{\"text\":\"-14\"}}', 1),
(5, 'product_grid_details_tip_offset_y', 'productgrid', '{\"value\":{\"text\":\"-21\"}}', 1),
(5, 'product_grid_image_overlay_opacity', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_latest_label_status', 'productgrid', 'block', 0),
(5, 'product_grid_special_label_status', 'productgrid', 'block', 0),
(5, 'product_grid_outofstock_label_status', 'productgrid', 'block', 0),
(5, 'product_grid_name_overflow', 'productgrid', 'nowrap', 0),
(5, 'product_grid_price_full', 'productgrid', 'inline-block', 0),
(5, 'product_grid_details_tip', 'productgrid', 'never', 0),
(5, 'product_grid_details_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_grid_details_margin', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'product_grid_second_image', 'productgrid', '1', 0),
(5, 'product_grid_image_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_page_options_item_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'product_page_options_links', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'product_page_options_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_page_special_label_status', 'productpage', 'block', 0),
(5, 'product_page_outofstock_label_status', 'productpage', 'block', 0),
(5, 'product_page_options_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\",\"font_subset\":[]}}', 1),
(5, 'product_page_latest_label_status', 'productpage', 'block', 0),
(5, 'product_page_gallery_text', 'productpage', '{\"value\":{\"1\":\"Click Image for Gallery\",\"2\":\"Paspauskite, kad per\\u017ei\\u016br\\u0117ti nuotraukas\",\"3\":\"\\u041d\\u0430\\u0436\\u043c\\u0438\\u0442\\u0435 \\u043d\\u0430 \\u0438\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0433\\u0430\\u043b\\u0435\\u0440\\u0435\\u0438\"}}', 1),
(5, 'product_page_gallery_text_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_page_additional_spacing', 'productpage', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'product_page_additional_width', 'productpage', '{\"value\":\"4\",\"range\":\"1,8\",\"step\":\"1\"}', 1),
(5, 'product_page_additional_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'product_page_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}}}', 1),
(5, 'pagination_text_font', 'category', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'pagination_soft_shadow', 'category', 'none', 0),
(5, 'pagination_link_bg', 'category', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'pagination_link_hover_bg_color', 'category', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'refine_link_divider_color', 'category', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(5, 'refine_bar_bg', 'category', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(5, 'pagination_bar_bg', 'category', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'pagination_radius', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'category_view_icon_hover', 'category', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'product_filter_bg', 'category', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'product_compare_hover_color', 'category', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'pagination_bar_border', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'refine_image_font_hover', 'category', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'refine_image_bg', 'category', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'refine_image_bg_hover', 'category', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'refine_category_images_per_row', 'category', '{\"value\":{\"mobile\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,10\"}', 1),
(5, 'category_list_view_icon', 'category', '{\"value\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe68c;\",\"class\":\"list3\"}}}', 1),
(5, 'category_page_products_per_row', 'category', '{\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,10\"}', 1),
(5, 'pagination_link_hover_color', 'category', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'category_grid_view_icon', 'category', '{\"value\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe689;\",\"class\":\"grid\"}}}', 1),
(5, 'product_filter_font', 'category', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}}}', 1),
(5, 'product_compare_link_status', 'category', '1', 0),
(5, 'product_filter_radius', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'refine_image_border', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'refine_image_border_radius', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'refine_bar_radius', 'category', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'refine_link_divider', 'category', '{\"value\":\"\"}', 1),
(5, 'refine_image_font', 'category', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"500\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'refine_category', 'category', 'carousel', 0),
(5, 'category_description_font', 'category', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'hide_category_image', 'category', '0', 0),
(5, 'product_view', 'category', 'grid', 0),
(5, 'quickview_description_padding_left', 'quickview', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'quickview_description_padding_top', 'quickview', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'quickview_description_padding_bottom', 'quickview', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'quickview_title_align', 'quickview', 'left', 0),
(5, 'product_grid_item_padding', 'productgrid', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'product_grid_item_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}', 1),
(5, 'category_description_line_height', 'category', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'category_description_bg', 'category', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'category_page_title_border', 'category', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'infinite_button_border', 'category', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'infinite_msg_border', 'category', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'infinite_scroll_load_more_items_text', 'category', '{\"value\":[]}', 1),
(5, 'infinite_scroll_loading_text', 'category', '{\"value\":[]}', 1),
(5, 'infinite_scroll_no_more_items_text', 'category', '{\"value\":[]}', 1),
(5, 'refine_text', 'category', '{\"value\":[]}', 1),
(5, 'product_compare_icon', 'category', '{\"value\":{\"options\":{\"font_size\":\"---\"}}}', 1),
(5, 'infinite_scroll', 'category', '0', 0),
(5, 'body_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin-ext\"],\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'product_page_gallery_carousel_arrows', 'productpage', 'always', 0),
(5, 'product_page_gallery_carousel', 'productpage', '1', 0),
(5, 'product_page_gallery', 'productpage', '1', 0),
(5, 'product_page_cloud_zoom', 'productpage', '1', 0),
(5, 'filter_categories_text', 'modulesuperfilter', '{\"value\":[null,\"Categories\",\"Kategorijos\",\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\"]}', 1),
(5, 'filter_price_text', 'modulesuperfilter', '{\"value\":{\"1\":\"By Price\",\"2\":\"Pagal kain\\u0105\",\"3\":\"\\u041f\\u043e \\u0446\\u0435\\u043d\\u0435\"}}', 1),
(5, 'filter_price_tooltip_radius', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'filter_heading_bg', 'modulesuperfilter', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'filter_image_size', 'modulesuperfilter', '16.666666', 0),
(5, 'filter_brand_image_size', 'modulesuperfilter', '25', 0),
(5, 'filter_cat_image_size', 'modulesuperfilter', '20', 0),
(5, 'filter_tags_text', 'modulesuperfilter', '{\"value\":{\"1\":\"Tags\",\"2\":\"\\u017dymos\",\"3\":\"T\\u0430\\u0433\\u0438\"}}', 1),
(5, 'filter_availability_text', 'modulesuperfilter', '{\"value\":[null,\"Availability\",\"Prieinamumas\",\"\\u0414\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\\u0441\\u0442\\u044c\"]}', 1),
(5, 'filter_availability_yes_text', 'modulesuperfilter', '{\"value\":[null,\"\",\"Sand\\u0117lyje\",\"\\u041d\\u0430 \\u0441\\u043a\\u043b\\u0430\\u0434\\u0435\"]}', 1),
(5, 'filter_availability_no_text', 'modulesuperfilter', '{\"value\":[null,\"Out of Stock\",\"I\\u0161parduota\",\"\\u0420\\u0430\\u0441\\u043f\\u0440\\u043e\\u0434\\u0430\\u043d\\u043e\"]}', 1),
(5, 'filter_price_apply_text', 'modulesuperfilter', '{\"value\":[null,\"\"]}', 1),
(5, 'filter_mobile_text', 'modulesuperfilter', '{\"value\":{\"1\":\"Filter\",\"2\":\"Filtruoti\",\"3\":\"\\u0444\\u0438\\u043b\\u044c\\u0442\\u0440\\u044b\"}}', 1),
(5, 'filter_mobile_icon', 'modulesuperfilter', '{\"value\":{\"options\":{\"font_size\":\"---\"}}}', 1),
(5, 'filter_columns_mobile', 'modulesuperfilter', '0', 0),
(5, 'top_menu_link_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'top_menu_text_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\",\"font_subset\":[]}}', 1),
(5, 'menu_categories_link_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'menu_brands_title_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'dropdown_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}', 1),
(5, 'menu_categories_title_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}},\"letter_spacing\":\"1\"}}', 1),
(5, 'secondary_menu_text_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'carousel_title_font', 'modulecarousel', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"24px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Lato\",\"font_weight\":\"\",\"font_style\":\"normal\",\"text_transform\":\"\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(153, 153, 153)\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'carousel_icon_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'carousel_title_line_height', 'modulecarousel', '{\"value\":\"\"}', 1),
(5, 'carousel_left_icon', 'modulecarousel', '{\"value\":{\"options\":{\"font_size\":\"17px\",\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60f;\",\"class\":\"chevron-left\"}}}', 1),
(5, 'carousel_title_divider_type', 'modulecarousel', 'solid', 0),
(5, 'carousel_title_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'footer_post_image_height', 'footer', '{\"value\":{\"text\":\"30\"}}', 1),
(5, 'footer_post_divider', 'footer', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'footer_post_padding', 'footer', '{\"value\":{\"text\":\"5\"}}', 1),
(5, 'footer_boxed_bg_image', 'footer', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'footer_shadow', 'footer', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'footer_product_image_border', 'footer', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'footer_blog_image_border', 'footer', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'contacts_icon_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_radius_unit\":\"%\"}}', 1),
(5, 'boxed_footer_shadow', 'footer', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'post_grid_button_icon_position', 'blog', 'left', 0),
(5, 'post_list_button_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'post_list_desc_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"letter_spacing\":\"\",\"text_transform\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'post_list_button_icon_position', 'blog', 'left', 0),
(5, 'post_list_author_date_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'post_list_author_date_padding', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_list_button_padding_right', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_list_button_padding_top', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_list_button_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'post_list_date_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(5, 'post_list_author_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(5, 'post_grid_button_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(5, 'post_grid_date_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(5, 'post_grid_comments_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(5, 'post_list_button_padding_bottom', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_list_button_padding_left', 'blog', '{\"value\":\"\"}', 1),
(5, 'post_grid_author_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(5, 'post_list_comments_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(5, 'post_list_button_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(5, 'post_grid_bg', 'blog', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'notification_status', 'notification', 'block', 0),
(5, 'notification_position', 'notification', 'top-right', 0),
(5, 'notification_show_close', 'notification', 'always', 0),
(5, 'notification_shadow', 'notification', '1', 0),
(5, 'notification_show_image', 'notification', 'block', 0),
(5, 'notification_hide', 'notification', '{\"value\":{\"text\":\"2000\"}}', 1),
(5, 'notification_border', 'notification', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'notification_title_font', 'notification', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"],\"letter_spacing\":\"2\"}}', 1),
(5, 'notification_title_border', 'notification', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'notification_text_font', 'notification', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'notification_image_border', 'notification', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'notification_close_color', 'notification', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'notification_close_hover', 'notification', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'notification_bg_color', 'notification', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'notification_title_bg', 'notification', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(5, 'notification_text_link_color', 'notification', '{\"value\":{\"color\":\"rgb(69, 115, 143)\"}}', 1),
(5, 'notification_text_link_hover', 'notification', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'notification_buttons_status', 'notification', 'block', 0),
(5, 'notification_cart_button_font', 'notification', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'notification_checkout_button_color_hover', 'notification', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'notification_cart_button_color_hover', 'notification', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'notification_checkout_button_font', 'notification', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'notification_cart_button_bg_color_image', 'notification', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'notification_cart_button_bg_color_image_hover', 'notification', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'notification_checkout_button_bg_color_image', 'notification', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'notification_checkout_button_bg_color_image_hover', 'notification', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'noti_button_shadow', 'notification', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'noti_button_shadow_hover', 'notification', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'noti_button_shadow_active', 'notification', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'notification_width', 'notification', '{\"value\":{\"text\":\"380\"}}', 1),
(5, 'custom_js', 'custom_code', '{\"value\":\"\"}', 1),
(5, 'custom_css', 'custom_code', '{\"value\":{\"text\":\".newsletter label {padding-right: 0px;}\\n.newsletter label input {margin: 10px 0px 0px 0px; text-align: left;}\\n.journal-newsletter .checkbox {text-align: left;}\\n.journal-blog-feed {padding-right: 10px;}\\n.post-item-details .comment-date {margin-left: 0px;}\\n.header-notice .notice-text {width: calc(100% - 90px);\"}}', 1),
(5, 'one_page_lang_voucher_button', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Panaudoti\",\"3\":\"\\u0418\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c\"}}', 1),
(5, 'one_page_section_border_settings', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'one_page_title_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'one_page_dividers_style', 'journalcheckout', 'solid', 0),
(5, 'one_page_title_padding_right', 'journalcheckout', '{\"value\":\"\"}', 1),
(5, 'one_page_title', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Atsiskaitymas u\\u017e prekes\",\"3\":\"\\u041e\\u0444\\u043e\\u0440\\u043c\\u0438\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437\"}}', 1),
(5, 'one_page_title_padding_left', 'journalcheckout', '{\"value\":\"\"}', 1),
(5, 'one_page_title_line_height', 'journalcheckout', '{\"value\":\"\"}', 1),
(5, 'one_page_title_align', 'journalcheckout', 'left', 0),
(5, 'one_page_title_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'one_page_section_title_align', 'journalcheckout', 'left', 0),
(5, 'one_page_title_bg', 'journalcheckout', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'one_page_status', 'journalcheckout', 'one-page', 0),
(5, 'one_page_auto_save', 'journalcheckout', '0', 0),
(5, 'one_page_table_border', 'journalcheckout', '{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}', 1),
(5, 'one_page_section_title_bg', 'journalcheckout', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'menu_html_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(5, 'secondary_menu_link_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"\",\"font_style\":\"\",\"text_transform\":\"\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\",\"v\":\"2\",\"font_size_mobile\":\"---\"}}', 1),
(5, 'one_page_section_title_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'product_page_tabs_content_option_padding_top', 'productpage', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'product_page_tabs_content_option_padding_bottom', 'productpage', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'product_page_tabs_content_option_padding_right', 'productpage', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'product_page_tabs_content_option_padding_left', 'productpage', '{\"value\":{\"text\":\"0\"}}', 1),
(5, 'product_page_auto_update_price', 'productpage', '1', 0),
(5, 'product_page_cloud_zoom_inner', 'productpage', '1', 0),
(5, 'manufacturer_image', 'productpage', '0', 0),
(5, 'manufacturer_image_additional_text', 'productpage', 'none', 0),
(5, 'product_page_spec_align', 'productpage', 'left', 0),
(5, 'manufacturer_image_custom_text', 'productpage', '{\"value\":[]}', 1),
(5, 'product_page_options_brand_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1);
INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(5, 'product_page_options_sold', 'productpage', '0', 0),
(5, 'product_page_title_status', 'productpage', '1', 0),
(5, 'product_page_options_sold_text', 'productpage', '{\"value\":[]}', 1),
(5, 'product_page_push_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'product_page_title_align', 'productpage', 'left', 0),
(5, 'product_page_options_push_image', 'productpage', '1', 0),
(5, 'product_page_options_push_checkbox', 'productpage', '1', 0),
(5, 'product_page_options_push_radio', 'productpage', '1', 0),
(5, 'product_page_title_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'product_page_title_overflow', 'productpage', 'on', 0),
(5, 'product_page_tabs_position', 'productpage', 'off', 0),
(5, 'product_page_status_p_code', 'productpage', 'block', 0),
(5, 'pp_gallery_thumbs_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'pp_button_shadow_hover', 'productpage', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'review_buttons_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'pp_gallery_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'pp_gallery_caption_bar_bg_image', 'productpage', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'pp_button_shadow', 'productpage', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'product_page_button_bg_image_hover', 'productpage', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'product_page_button_bg_image', 'productpage', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'pp_button_shadow_active', 'productpage', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'product_page_tabs_group_radius', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'pp_gallery_caption_bar_bg_image_2', 'productpage', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'pp_gallery_arrows_bg_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'upload_button_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(5, 'content_bg_image_home', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'general_button_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'general_button_bg_image_hover', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(5, 'button_shadow', 'general', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'button_shadow_hover', 'general', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'button_shadow_active', 'general', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'old_browser_message', 'general', '{\"value\":[null,\"Please update you web browser!\",\"Pra\\u0161ome atnaujinti interneto nar\\u0161ykl\\u0119!\",\"\\u041e\\u0431\\u043d\\u043e\\u0432\\u0438\\u0442\\u0435 \\u0432\\u0435\\u0431-\\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440!\"]}', 1),
(5, 'scroll_to_top', 'general', '0', 0),
(5, 'container_shadow', 'general', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(5, 'pinch_zoom', 'general', '0', 0),
(5, 'label_latest_font', 'productlabels', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(5, 'label_latest_limit', 'productlabels', '{\"value\":{\"text\":\"10\"}}', 1),
(5, 'label_latest_text', 'productlabels', '{\"value\":{\"1\":\"New\",\"2\":\"Nauja\",\"3\":\"\\u041d\\u043e\\u0432\\u044b\\u0435\"}}', 1),
(5, 'label_latest_status', 'productlabels', 'always', 0),
(5, 'out_of_stock_ribbon_bottom_space', 'productlabels', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'out_of_stock_ribbon_left_space', 'productlabels', '{\"value\":{\"text\":\"\"}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_journal2_skins`
--

CREATE TABLE `oc_journal2_skins` (
  `skin_id` int(11) NOT NULL,
  `skin_name` varchar(64) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 2, 1),
(2, 'Lietuvių', 'lt-lt', 'lt_LT.UTF-8,lt_LT,lithuanian', '', '', 1, 1),
(3, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'PRADŽIOS puslapis'),
(2, 'Produktų puslapis'),
(3, 'Kategorijų puslapis'),
(4, 'Numatytasis puslapis'),
(5, 'Gamintojų puslapis'),
(6, 'Paskyros puslapis'),
(7, 'Atsiskaitymo puslapis'),
(8, 'Kontaktų puslapis'),
(9, 'Svetainės žemėlapio puslapis'),
(10, 'Partnerystės puslapis'),
(11, 'Informacijos puslapis'),
(12, 'Palyginimų puslapis'),
(13, 'Paieškos puslapis'),
(14, 'Puslapis nerastas'),
(15, 'Akcijų puslapis'),
(16, 'Journal Blog'),
(17, 'Journal Blog Post');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(87, 6, 'account', 'column_right', 0),
(75, 10, 'account', 'column_right', 1),
(205, 15, 'journal2_side_category.9', 'column_left', 0),
(204, 5, 'journal2_side_category.9', 'column_left', 0),
(203, 2, 'journal2_side_category.9', 'column_left', 0),
(84, 11, 'information', 'column_left', 0),
(88, 1, 'journal2_side_blocks.52', 'footer', 1),
(89, 1, 'journal2_side_blocks.94', 'footer', 2),
(90, 1, 'journal2_side_blocks.163', 'footer', 3),
(91, 1, 'journal2_side_blocks.179', 'footer', 1),
(92, 1, 'journal2_side_blocks.195', 'footer', 3),
(93, 1, 'journal2_side_blocks.196', 'footer', 2),
(186, 2, 'journal2_simple_slider.112', 'column_right', 6),
(98, 1, 'journal2_newsletter.98', 'bottom', 20),
(99, 1, 'journal2_newsletter.98', 'column_left', 4),
(189, 1, 'journal2_headline_rotator.187', 'content_top', 10),
(185, 1, 'journal2_static_banners.218', 'top', 1),
(184, 8, 'journal2_cms_blocks.127', 'content_top', 0),
(182, 1, 'journal2_cms_blocks.27', 'bottom', 0),
(183, 1, 'journal2_cms_blocks.113', 'column_left', 5),
(177, 2, 'journal2_custom_sections.226', 'bottom', 3),
(176, 1, 'journal2_custom_sections.168', 'top', 4),
(188, 1, 'journal2_text_rotator.24', 'bottom', 0),
(187, 1, 'journal2_advanced_grid.219', 'content_top', 15),
(202, 13, 'journal2_side_category.9', 'column_left', 0),
(127, -1, 'journal2_fullscreen_slider.25', 'footer', 1),
(128, 1, 'journal2_fullscreen_slider.122', 'footer', 0),
(181, 1, 'journal2_photo_gallery.228', 'column_left', 0),
(196, 5, 'journal2_side_products.203', 'column_left', 2),
(195, 15, 'journal2_side_products.203', 'column_left', 2),
(180, 1, 'journal2_carousel.125', 'content_top', 20),
(179, 1, 'journal2_carousel.88', 'content_top', 10),
(178, 1, 'journal2_carousel.85', 'content_top', 11),
(218, 1, 'journal2_slider.216', 'top', 0),
(208, 5, 'journal2_super_filter.54', 'column_left', 1),
(207, 3, 'journal2_super_filter.54', 'column_left', 1),
(211, 16, 'journal2_blog_side_posts.229', 'column_right', 0),
(212, 16, 'journal2_blog_categories.230', 'column_right', 0),
(215, 16, 'journal2_blog_search.231', 'column_right', 0),
(214, 16, 'journal2_blog_comments.232', 'column_right', 0),
(217, -1, 'journal2_header_notice.236', 'header', 0),
(216, 16, 'journal2_blog_tags.233', 'column_right', 0),
(201, 3, 'journal2_side_category.9', 'column_left', 0),
(197, 3, 'journal2_side_products.203', 'column_left', 2),
(198, 13, 'journal2_side_products.203', 'column_left', 2),
(199, 2, 'journal2_side_products.203', 'column_left', 2),
(200, 2, 'journal2_side_products.227', 'column_right', 0),
(206, 14, 'journal2_side_category.9', 'column_left', 0),
(209, 13, 'journal2_super_filter.54', 'column_left', 1),
(210, 15, 'journal2_super_filter.54', 'column_left', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(71, 6, 0, 'account/%'),
(55, 10, 0, 'affiliate/%'),
(76, 3, 0, 'product/category'),
(61, 1, 0, 'common/home'),
(64, 2, 0, 'product/product'),
(68, 11, 0, 'information/information'),
(57, 7, 0, 'checkout/%'),
(59, 8, 0, 'information/contact'),
(66, 9, 0, 'information/sitemap'),
(73, 4, 0, ''),
(72, 5, 0, 'product/manufacturer'),
(58, 12, 0, 'product/compare'),
(65, 13, 0, 'product/search'),
(67, 15, 0, 'product/special'),
(74, 16, 0, 'journal2/blog'),
(75, 17, 0, 'journal2/blog/post'),
(77, 14, 0, 'error/not_found');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 3, 'сантиметр', 'cm'),
(2, 3, 'миллиметр', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(1, 2, 'Centimetrai', 'cm'),
(2, 2, 'Milimetrai', 'mm'),
(3, 2, 'Inčai', 'in'),
(3, 3, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'Dell', 'catalog/demo/gamintojai/Dell_logo-2.gif', 0),
(12, 'Epson', 'catalog/demo/gamintojai/EpsonLogo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/gamintojai/HP-emblem.jpg', 0),
(8, 'Apple', 'catalog/demo/gamintojai/apple.jpeg', 0),
(9, 'Microsoft', 'catalog/demo/gamintojai/MS.jpg', 0),
(11, 'Logitech', 'catalog/demo/gamintojai/logitech-logo-vector-01.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(7, 0),
(8, 0),
(9, 0),
(11, 0),
(12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu`
--

CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_description`
--

CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_module`
--

CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(5, 'select', 1),
(11, 'select', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(11, 1, 'Memory size - SSD'),
(5, 1, 'Select'),
(5, 3, 'Выбрать'),
(11, 3, 'Memory size - SSD'),
(5, 2, 'Pasirinkite'),
(11, 2, 'Atminties talpa - SSD');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(50, 11, '', 4),
(42, 5, '', 4),
(41, 5, '', 3),
(49, 11, '', 3),
(48, 11, '', 2),
(46, 11, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(50, 1, 11, '1 TB'),
(50, 2, 11, '1 TB'),
(49, 3, 11, '512 GB'),
(49, 1, 11, '512 GB'),
(49, 2, 11, '512 GB'),
(42, 3, 5, 'Space Gray'),
(42, 1, 5, 'Space Gray'),
(42, 2, 5, 'Kosminė pilka'),
(48, 3, 11, '256 GB'),
(48, 1, 11, '256 GB'),
(48, 2, 11, '256 GB'),
(41, 3, 5, 'Silver'),
(41, 1, 5, 'Silver'),
(41, 2, 5, 'Pilka'),
(50, 3, 11, '1 TB'),
(46, 3, 11, '126 GB'),
(46, 1, 11, '126 GB'),
(46, 2, 11, '126 GB');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` text NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2017-00', 0, 'UAB &quot;Uabas&quot;', 'http://www.opencart.dev/', 0, 1, 'ewwef', 'wefwe', 'sdas@sefsdf.ghf', '65465', '', '[]', 'ewwef', 'wefwe', 'wefwef', 'wefwe', '', 'wefwef', '', 'Lithuania', 123, 'Alytus', 1911, '', '[]', 'Grynais pristatymo metu', 'cod', 'ewwef', 'wefwe', 'wefwef', 'wefwe', '', 'wefwef', '', 'Lithuania', 123, 'Alytus', 1911, '', '[]', 'Pristatymas kurjeriu', 'intuitiveshipping.intuitiveshipping_1_4', '', '122.2100', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', 'lt,en;q=0.8,pl;q=0.5,ru;q=0.3', '2017-07-20 20:56:53', '2017-07-20 20:56:53'),
(2, 0, 'INV-2017-00', 0, 'UAB &quot;Uabas&quot;', 'http://www.opencart.dev/', 0, 1, 'ewwef', 'wefwe', 'sdas@sefsdf.ghf', '65465', '', '[]', 'ewwef', 'wefwe', 'wefwef', 'wefwe', '', 'wefwef', '', 'Lithuania', 123, 'Alytus', 1911, '', '[]', 'Grynais pristatymo metu', 'cod', 'ewwef', 'wefwe', 'wefwef', 'wefwe', '', 'wefwef', '', 'Lithuania', 123, 'Alytus', 1911, '', '[]', 'Pristatymas kurjeriu', 'intuitiveshipping.intuitiveshipping_1_4', '', '101.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', 'lt,en;q=0.8,pl;q=0.5,ru;q=0.3', '2017-07-20 21:02:06', '2017-07-20 21:02:06'),
(3, 0, 'INV-2017-00', 0, 'UAB &quot;Uabas&quot;', 'http://opencart.develop/', 0, 1, '', '', '', '', '', '\"\"', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.17289996', '127.0.0.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'lt,en;q=0.8,pl;q=0.5,ru;q=0.3', '2018-05-28 17:38:46', '2018-05-28 17:40:04'),
(4, 0, 'INV-2017-00', 0, 'UAB &quot;Uabas&quot;', 'http://opencart.develop/', 0, 1, '', '', '', '', '', '\"\"', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '560.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'lt,en;q=0.8,pl;q=0.5,ru;q=0.3', '2018-05-28 21:58:56', '2018-05-28 21:58:57'),
(5, 0, 'INV-2018-00', 0, 'UAB &quot;Uabas&quot;', 'http://www.domenas.lt/', 0, 1, '', '', '', '', '', '\"\"', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '520.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '88.119.94.126', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', 'lt,en-US;q=0.8,en;q=0.6,ru;q=0.4,pl;q=0.2', '2018-05-31 14:14:43', '2018-05-31 15:36:30'),
(6, 0, 'INV-2018-00', 0, 'UAB &quot;Uabas&quot;', 'http://www.domenas.lt/', 0, 1, '', '', '', '', '', '\"\"', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '669.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '78.56.20.57', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'lt,en;q=0.8,pl;q=0.5,ru;q=0.3', '2018-05-31 17:20:22', '2018-05-31 17:20:23'),
(7, 0, 'INV-2018-00', 0, 'UAB &quot;Uabas&quot;', 'http://www.domenas.lt/', 0, 1, '', '', '', '', '', '\"\"', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '279.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '78.56.20.57', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'lt,en;q=0.8,pl;q=0.5,ru;q=0.3', '2018-06-04 21:27:17', '2018-06-04 21:27:19'),
(8, 0, 'INV-2018-00', 0, 'UAB &quot;Uabas&quot;', 'http://www.domenas.lt/', 0, 1, '', '', '', '', '', '\"\"', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '1100.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '78.56.20.57', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'lt,en;q=0.8,pl;q=0.5,ru;q=0.3', '2018-06-13 16:44:25', '2018-06-13 16:44:27'),
(9, 0, 'INV-2018-00', 0, 'UAB &quot;Uabas&quot;', 'http://www.domenas.lt/', 0, 1, '', '', '', '', '', '\"\"', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', '', 123, '', 0, '', '[]', '', '', '', '2750.0000', 0, 0, '0.0000', 0, '', 2, 3, 'EUR', '1.00000000', '78.56.20.57', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'en,lt;q=0.8,pl;q=0.5,ru;q=0.3', '2018-07-16 18:55:19', '2018-07-16 18:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(65, 8, 234, 231, 30, 'Atminties talpa - SSD', '256 GB', 'select'),
(99, 9, 251, 230, 28, 'Atminties talpa - SSD', '1 TB', 'select'),
(98, 9, 251, 229, 24, 'Pasirinkite', 'Kosminė pilka', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '21.2100', 0),
(2, 2, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(36, 3, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(53, 4, 50, 'Dell Ultrasharp U2713H 27&quot; Monitorius', 'U2713H 27', 1, '560.0000', '560.0000', '0.0000', 0),
(155, 5, 50, 'Dell Ultrasharp U2713H 27&quot; Monitorius (pvz.)', 'U2713H 27', 1, '520.0000', '520.0000', '0.0000', 0),
(172, 6, 65, 'LifeCam Studio', 'MSweb-004', 1, '669.0000', '669.0000', '0.0000', 0),
(203, 7, 58, 'HP spausdintuvas', 'PRN-001', 1, '279.0000', '279.0000', '0.0000', 0),
(234, 8, 69, 'Dell kompiuteris', 'DELL023', 1, '1100.0000', '1100.0000', '0.0000', 0),
(251, 9, 68, 'MacBook Pro 13.3&quot; Retina', 'MacBook Pro 13.3&quot;', 1, '2750.0000', '2750.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 3, 'Отмененный'),
(5, 3, 'законченный 	'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(2, 3, 'Processing'),
(3, 2, 'Išsiųsta'),
(7, 2, 'Panaikinta'),
(5, 2, 'Įvykdyta'),
(8, 2, 'Uždrausta'),
(9, 2, 'Atšauktas panaikinimas'),
(10, 2, 'Nepavyko'),
(11, 3, 'Refunded'),
(12, 3, 'Reversed'),
(13, 2, 'Grąžinti pinigai'),
(1, 2, 'Vykdomas'),
(16, 3, 'Voided'),
(15, 3, 'Processed'),
(14, 2, 'Pasibaigęs'),
(9, 3, 'Отмененный реверс'),
(13, 3, 'Возврат денег'),
(8, 3, 'запрещен'),
(14, 3, 'Истекший'),
(10, 3, 'Не удалось'),
(1, 3, 'в ожидании'),
(3, 3, 'Высылаем');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Tarpinė suma', '101.0000', 1),
(2, 1, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(3, 1, 'tax', 'PVM (21%)', '21.2100', 5),
(4, 1, 'total', 'Iš viso', '122.2100', 9),
(5, 2, 'sub_total', 'Tarpinė suma', '101.0000', 1),
(6, 2, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(7, 2, 'total', 'Iš viso', '101.0000', 9),
(103, 3, 'total', 'Iš viso', '100.0000', 9),
(102, 3, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(101, 3, 'sub_total', 'Tarpinė suma', '100.0000', 1),
(148, 4, 'total', 'Iš viso', '560.0000', 9),
(147, 4, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(146, 4, 'sub_total', 'Tarpinė suma', '560.0000', 1),
(391, 5, 'total', 'Iš viso', '520.0000', 9),
(390, 5, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(389, 5, 'sub_total', 'Tarpinė suma', '520.0000', 1),
(436, 6, 'total', 'Iš viso', '669.0000', 9),
(435, 6, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(434, 6, 'sub_total', 'Tarpinė suma', '669.0000', 1),
(523, 7, 'total', 'Iš viso', '279.0000', 9),
(522, 7, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(521, 7, 'sub_total', 'Tarpinė suma', '279.0000', 1),
(610, 8, 'total', 'Iš viso', '1100.0000', 9),
(609, 8, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(608, 8, 'sub_total', 'Tarpinė suma', '1100.0000', 1),
(655, 9, 'total', 'Iš viso', '2750.0000', 9),
(654, 9, 'shipping', 'Pristatymas kurjeriu', '0.0000', 3),
(653, 9, 'sub_total', 'Tarpinė suma', '2750.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(54, 'Logitech-Craft-789', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/craft.png', 11, 1, '100.0000', 0, 0, '2018-05-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 9, '2018-05-30 17:51:13', '0000-00-00 00:00:00'),
(55, 'Logitech-89', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/Prekes/16811.1.0.jpg', 11, 1, '50.0000', 0, 0, '2018-05-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 15, '2018-05-30 17:52:18', '2018-05-30 17:53:43'),
(56, 'MSX-710', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/m1.png', 11, 1, '99.0000', 0, 0, '2018-05-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 8, '2018-05-30 17:55:59', '2018-05-30 18:02:48'),
(57, 'MSX-788', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/logitech-performance-mouse-mx-rf-draadloos-laser-zwart-muis-efd.jpg', 11, 1, '79.0000', 0, 0, '2018-05-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-05-30 18:03:14', '2018-05-30 18:04:13'),
(58, 'PRN-001', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/PR1.png', 7, 1, '279.0000', 0, 0, '2018-05-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-05-30 19:04:09', '2018-05-30 19:08:44'),
(59, 'PRN-002', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/PRN2.png', 7, 1, '479.0000', 0, 0, '2018-05-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 5, '2018-05-30 19:09:53', '2018-05-30 19:10:37'),
(60, 'PRN-003', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/PRN3.jpg', 7, 1, '179.0000', 0, 0, '2018-05-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-05-30 19:11:58', '2018-05-30 19:12:48'),
(61, 'PRN-004', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/PRN4.png', 7, 1, '199.0000', 0, 0, '2018-05-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 5, '2018-05-30 19:12:54', '2018-05-30 19:13:55'),
(50, 'U2713H 27', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/d1.jpg', 5, 1, '560.0000', 0, 0, '2018-05-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 40, '2018-05-28 21:29:23', '2018-05-28 22:47:02'),
(51, 'UXXXXXH XX', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/_20171130170444_Curved_Monitor.png', 5, 1, '1560.0000', 0, 0, '2018-05-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-05-30 17:22:09', '2018-05-30 17:25:54'),
(52, 'UXXXXH XX', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/210-AMRC_v3.jpg', 5, 1, '1160.0000', 0, 0, '2018-05-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 8, '2018-05-30 17:27:04', '2018-05-30 17:28:17'),
(53, 'UXXXXH XX', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/Prekes/apiudak3h04ldel5geiy.jpg', 5, 1, '2160.0000', 0, 0, '2018-05-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-05-30 17:29:26', '2018-05-30 17:30:18'),
(62, 'MSweb-001', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/k1.jpg', 9, 1, '198.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 5, '2018-05-31 08:38:27', '2018-05-31 08:39:05'),
(63, 'MSweb-002', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/K2.jpg', 9, 1, '158.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-05-31 08:40:40', '2018-05-31 08:41:26'),
(64, 'MSweb-003', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/K2.jpg', 9, 1, '128.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-05-31 08:41:45', '0000-00-00 00:00:00'),
(65, 'MSweb-004', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/K3.jpg', 9, 1, '987.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-05-31 08:42:12', '2018-05-31 08:43:37'),
(66, 'EPSON Perfection -001', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/sk1.jpg', 12, 1, '235.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 8, '2018-05-31 08:50:49', '0000-00-00 00:00:00'),
(67, 'MacBook Pro 15.4&quot;', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/a0.jpg', 8, 1, '3300.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 8, '2018-05-31 09:10:44', '2018-05-31 09:24:52'),
(68, 'MacBook Pro 13.3&quot;', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/a0.jpg', 8, 1, '2300.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 7, '2018-05-31 09:25:02', '2018-05-31 09:34:56'),
(69, 'DELL023', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/del2.jpg', 5, 1, '1000.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2018-05-31 09:33:04', '2018-05-31 09:34:31'),
(70, 'DELL333', '', '', '', '', '', '', '', 100, 5, 'catalog/demo/Prekes/del2.jpg', 5, 1, '1200.0000', 0, 0, '2018-05-31', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-05-31 09:33:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(57, 3, 'Logitech  mouse', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s\r\n flagship mouse is designed for power users and masters of their craft \r\nwho want to get more done, more efficiently. MX Master 2S packs a punch \r\nwith Logitech Flow that lets you seamlessly control two computers with \r\none mouse and copy-paste content between them. Combined with other \r\nadvanced features and a stunning design, it provides exceptional \r\ncomfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash\r\n the potential of MX Master 2S by using Logitech Flow, for the smoothest\r\n workflow between computers. Move your mouse cursor across up to three \r\ncomputers and even copy/paste text, images and files from one computer \r\nto another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n premium mouse deserves the best quality tracking. So we designed the MX\r\n Master 2S with a brand new 4000-DPi precision sensor that tracks on \r\nvirtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug\r\n MX Master 2S into your computer with the micro-USB charging cable and \r\nin just 3 minutes, it will be charged up and ready to power you through \r\nyour entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll\r\n through long documents or web pages faster and easier. The \r\nspeed-adaptive scroll wheel auto-shifts from click-to-click to \r\nhyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling \r\nside-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect\r\n MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® \r\nlow energy technology. Thanks to Logitech Easy-Switch™ technology, pair \r\nup to 3 devices and easily switch between them with the touch of a \r\nbutton.&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n perfectly sculpted, hand-crafted shape supports your hand and wrist in a\r\n comfortable, natural position. Experience fine-motion control and fluid\r\n experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s\r\n flagship mouse is designed for power users and masters of their craft \r\nwho want to get more done, more efficiently. MX Master 2S packs a punch \r\nwith Logitech Flow that lets you seamlessly control two computers with \r\none mouse and copy-paste content between them. Combined with other \r\nadvanced features and a stunning design, it provides exceptional \r\ncomfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash\r\n the potential of MX Master 2S by using Logitech Flow, for the smoothest\r\n workflow between computers. Move your mouse cursor across up to three \r\ncomputers and even copy/paste text, images and files from one computer \r\nto another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n premium mouse deserves the best quality tracking. So we designed the MX\r\n Master 2S with a brand new 4000-DPi precision sensor that tracks on \r\nvirtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug\r\n MX Master 2S into your computer with the micro-USB charging cable and \r\nin just 3 minutes, it will be charged up and ready to power you through \r\nyour entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll\r\n through long documents or web pages faster and easier. The \r\nspeed-adaptive scroll wheel auto-shifts from click-to-click to \r\nhyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling \r\nside-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect\r\n MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® \r\nlow energy technology. Thanks to Logitech Easy-Switch™ technology, pair \r\nup to 3 devices and easily switch between them with the touch of a \r\nbutton.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n perfectly sculpted, hand-crafted shape supports your hand and wrist in a\r\n comfortable, natural position. Experience fine-motion control and fluid\r\n experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;', '', 'Logitech  mouse', '', ''),
(57, 1, 'Logitech  mouse', '&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s\r\n flagship mouse is designed for power users and masters of their craft \r\nwho want to get more done, more efficiently. MX Master 2S packs a punch \r\nwith Logitech Flow that lets you seamlessly control two computers with \r\none mouse and copy-paste content between them. Combined with other \r\nadvanced features and a stunning design, it provides exceptional \r\ncomfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash\r\n the potential of MX Master 2S by using Logitech Flow, for the smoothest\r\n workflow between computers. Move your mouse cursor across up to three \r\ncomputers and even copy/paste text, images and files from one computer \r\nto another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n premium mouse deserves the best quality tracking. So we designed the MX\r\n Master 2S with a brand new 4000-DPi precision sensor that tracks on \r\nvirtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug\r\n MX Master 2S into your computer with the micro-USB charging cable and \r\nin just 3 minutes, it will be charged up and ready to power you through \r\nyour entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll\r\n through long documents or web pages faster and easier. The \r\nspeed-adaptive scroll wheel auto-shifts from click-to-click to \r\nhyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling \r\nside-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect\r\n MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® \r\nlow energy technology. Thanks to Logitech Easy-Switch™ technology, pair \r\nup to 3 devices and easily switch between them with the touch of a \r\nbutton.&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n perfectly sculpted, hand-crafted shape supports your hand and wrist in a\r\n comfortable, natural position. Experience fine-motion control and fluid\r\n experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s\r\n flagship mouse is designed for power users and masters of their craft \r\nwho want to get more done, more efficiently. MX Master 2S packs a punch \r\nwith Logitech Flow that lets you seamlessly control two computers with \r\none mouse and copy-paste content between them. Combined with other \r\nadvanced features and a stunning design, it provides exceptional \r\ncomfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash\r\n the potential of MX Master 2S by using Logitech Flow, for the smoothest\r\n workflow between computers. Move your mouse cursor across up to three \r\ncomputers and even copy/paste text, images and files from one computer \r\nto another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n premium mouse deserves the best quality tracking. So we designed the MX\r\n Master 2S with a brand new 4000-DPi precision sensor that tracks on \r\nvirtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug\r\n MX Master 2S into your computer with the micro-USB charging cable and \r\nin just 3 minutes, it will be charged up and ready to power you through \r\nyour entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll\r\n through long documents or web pages faster and easier. The \r\nspeed-adaptive scroll wheel auto-shifts from click-to-click to \r\nhyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling \r\nside-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect\r\n MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® \r\nlow energy technology. Thanks to Logitech Easy-Switch™ technology, pair \r\nup to 3 devices and easily switch between them with the touch of a \r\nbutton.&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n perfectly sculpted, hand-crafted shape supports your hand and wrist in a\r\n comfortable, natural position. Experience fine-motion control and fluid\r\n experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;', '', 'Logitech  mouse', '', ''),
(55, 2, 'Logitech  klaviatūra', '&lt;p&gt;&lt;h2&gt;CREATE IN YOUR ELEMENT\r\nWith Craft — advanced keyboard with creative input dial\r\n&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\nCOMPLETE CREATIVE CONTROL\r\n\r\nCraft is a wireless keyboard with a premium typing experience and a versatile input dial that adapts to what you’re making — keeping you focused and in your creative flow.\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/p&gt;&lt;h3&gt;\r\n\r\n\r\nCONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n&lt;/p&gt;&lt;h3&gt;&lt;br&gt;&lt;/h3&gt;&lt;h3&gt;CONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;TYPE WITH EFFORTLESS PRECISION\r\n\r\n&lt;/h3&gt;&lt;p&gt;Confidently type on a keyboard crafted for efficiency, stability, and precision.\r\n\r\nIncreased key stability reduces noise and optimizes responsiveness so you feel, but don’t hear, every keystroke. The spherical key dishing is crafted for accuracy, and blind navigation details make it easy to orient your fingers so you never miss a key — or a beat.\r\n\r\n&lt;/p&gt;', '', 'Logitech  klaviatūra', '', ''),
(55, 1, 'Logitech  keyboard', '&lt;h2&gt;CREATE IN YOUR ELEMENT\r\nWith Craft — advanced keyboard with creative input dial\r\n&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\nCOMPLETE CREATIVE CONTROL\r\n\r\nCraft is a wireless keyboard with a premium typing experience and a \r\nversatile input dial that adapts to what you’re making — keeping you \r\nfocused and in your creative flow.\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;\r\n\r\n\r\nCONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n&lt;/p&gt;&lt;h3&gt;&lt;br&gt;&lt;/h3&gt;&lt;h3&gt;CONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;TYPE WITH EFFORTLESS PRECISION\r\n\r\n&lt;/h3&gt;&lt;p&gt;Confidently type on a keyboard crafted for efficiency, \r\nstability, and precision.\r\n\r\nIncreased key stability reduces noise and optimizes responsiveness so \r\nyou feel, but don’t hear, every keystroke. The spherical key dishing is \r\ncrafted for accuracy, and blind navigation details make it easy to \r\norient your fingers so you never miss a key — or a beat.\r\n\r\n&lt;/p&gt;', '', 'Logitech  keyboard', '', ''),
(55, 3, 'Logitech  keyboard', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;CREATE IN YOUR ELEMENT\r\nWith Craft — advanced keyboard with creative input dial\r\n&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\nCOMPLETE CREATIVE CONTROL\r\n\r\nCraft is a wireless keyboard with a premium typing experience and a \r\nversatile input dial that adapts to what you’re making — keeping you \r\nfocused and in your creative flow.\r\n&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;\r\n\r\n\r\nCONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;&lt;br&gt;&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;CONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;TYPE WITH EFFORTLESS PRECISION\r\n\r\n&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Confidently type on a keyboard crafted for efficiency, \r\nstability, and precision.\r\n\r\nIncreased key stability reduces noise and optimizes responsiveness so \r\nyou feel, but don’t hear, every keystroke. The spherical key dishing is \r\ncrafted for accuracy, and blind navigation details make it easy to \r\norient your fingers so you never miss a key — or a beat.\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Logitech  keyboard', '', ''),
(56, 2, 'Logitech  pelytė', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s flagship mouse is designed for power users and masters of their craft who want to get more done, more efficiently. MX Master 2S packs a punch with Logitech Flow that lets you seamlessly control two computers with one mouse and copy-paste content between them. Combined with other advanced features and a stunning design, it provides exceptional comfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash the potential of MX Master 2S by using Logitech Flow, for the smoothest workflow between computers. Move your mouse cursor across up to three computers and even copy/paste text, images and files from one computer to another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A premium mouse deserves the best quality tracking. So we designed the MX Master 2S with a brand new 4000-DPi precision sensor that tracks on virtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug MX Master 2S into your computer with the micro-USB charging cable and in just 3 minutes, it will be charged up and ready to power you through your entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll through long documents or web pages faster and easier. The speed-adaptive scroll wheel auto-shifts from click-to-click to hyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling side-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® low energy technology. Thanks to Logitech Easy-Switch™ technology, pair up to 3 devices and easily switch between them with the touch of a button.&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A perfectly sculpted, hand-crafted shape supports your hand and wrist in a comfortable, natural position. Experience fine-motion control and fluid experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s flagship mouse is designed for power users and masters of their craft who want to get more done, more efficiently. MX Master 2S packs a punch with Logitech Flow that lets you seamlessly control two computers with one mouse and copy-paste content between them. Combined with other advanced features and a stunning design, it provides exceptional comfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash the potential of MX Master 2S by using Logitech Flow, for the smoothest workflow between computers. Move your mouse cursor across up to three computers and even copy/paste text, images and files from one computer to another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A premium mouse deserves the best quality tracking. So we designed the MX Master 2S with a brand new 4000-DPi precision sensor that tracks on virtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug MX Master 2S into your computer with the micro-USB charging cable and in just 3 minutes, it will be charged up and ready to power you through your entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll through long documents or web pages faster and easier. The speed-adaptive scroll wheel auto-shifts from click-to-click to hyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling side-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® low energy technology. Thanks to Logitech Easy-Switch™ technology, pair up to 3 devices and easily switch between them with the touch of a button.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A perfectly sculpted, hand-crafted shape supports your hand and wrist in a comfortable, natural position. Experience fine-motion control and fluid experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;', '', 'Logitech  klaviatūra', '', ''),
(56, 1, 'Logitech  mouse', '&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s\r\n flagship mouse is designed for power users and masters of their craft \r\nwho want to get more done, more efficiently. MX Master 2S packs a punch \r\nwith Logitech Flow that lets you seamlessly control two computers with \r\none mouse and copy-paste content between them. Combined with other \r\nadvanced features and a stunning design, it provides exceptional \r\ncomfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash\r\n the potential of MX Master 2S by using Logitech Flow, for the smoothest\r\n workflow between computers. Move your mouse cursor across up to three \r\ncomputers and even copy/paste text, images and files from one computer \r\nto another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n premium mouse deserves the best quality tracking. So we designed the MX\r\n Master 2S with a brand new 4000-DPi precision sensor that tracks on \r\nvirtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug\r\n MX Master 2S into your computer with the micro-USB charging cable and \r\nin just 3 minutes, it will be charged up and ready to power you through \r\nyour entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll\r\n through long documents or web pages faster and easier. The \r\nspeed-adaptive scroll wheel auto-shifts from click-to-click to \r\nhyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling \r\nside-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect\r\n MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® \r\nlow energy technology. Thanks to Logitech Easy-Switch™ technology, pair \r\nup to 3 devices and easily switch between them with the touch of a \r\nbutton.&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n perfectly sculpted, hand-crafted shape supports your hand and wrist in a\r\n comfortable, natural position. Experience fine-motion control and fluid\r\n experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s\r\n flagship mouse is designed for power users and masters of their craft \r\nwho want to get more done, more efficiently. MX Master 2S packs a punch \r\nwith Logitech Flow that lets you seamlessly control two computers with \r\none mouse and copy-paste content between them. Combined with other \r\nadvanced features and a stunning design, it provides exceptional \r\ncomfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash\r\n the potential of MX Master 2S by using Logitech Flow, for the smoothest\r\n workflow between computers. Move your mouse cursor across up to three \r\ncomputers and even copy/paste text, images and files from one computer \r\nto another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n premium mouse deserves the best quality tracking. So we designed the MX\r\n Master 2S with a brand new 4000-DPi precision sensor that tracks on \r\nvirtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug\r\n MX Master 2S into your computer with the micro-USB charging cable and \r\nin just 3 minutes, it will be charged up and ready to power you through \r\nyour entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll\r\n through long documents or web pages faster and easier. The \r\nspeed-adaptive scroll wheel auto-shifts from click-to-click to \r\nhyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling \r\nside-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect\r\n MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® \r\nlow energy technology. Thanks to Logitech Easy-Switch™ technology, pair \r\nup to 3 devices and easily switch between them with the touch of a \r\nbutton.&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n perfectly sculpted, hand-crafted shape supports your hand and wrist in a\r\n comfortable, natural position. Experience fine-motion control and fluid\r\n experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;', '', 'Logitech  mouse', '', ''),
(56, 3, 'Logitech  mouse', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s\r\n flagship mouse is designed for power users and masters of their craft \r\nwho want to get more done, more efficiently. MX Master 2S packs a punch \r\nwith Logitech Flow that lets you seamlessly control two computers with \r\none mouse and copy-paste content between them. Combined with other \r\nadvanced features and a stunning design, it provides exceptional \r\ncomfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash\r\n the potential of MX Master 2S by using Logitech Flow, for the smoothest\r\n workflow between computers. Move your mouse cursor across up to three \r\ncomputers and even copy/paste text, images and files from one computer \r\nto another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n premium mouse deserves the best quality tracking. So we designed the MX\r\n Master 2S with a brand new 4000-DPi precision sensor that tracks on \r\nvirtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug\r\n MX Master 2S into your computer with the micro-USB charging cable and \r\nin just 3 minutes, it will be charged up and ready to power you through \r\nyour entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll\r\n through long documents or web pages faster and easier. The \r\nspeed-adaptive scroll wheel auto-shifts from click-to-click to \r\nhyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling \r\nside-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect\r\n MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® \r\nlow energy technology. Thanks to Logitech Easy-Switch™ technology, pair \r\nup to 3 devices and easily switch between them with the touch of a \r\nbutton.&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n perfectly sculpted, hand-crafted shape supports your hand and wrist in a\r\n comfortable, natural position. Experience fine-motion control and fluid\r\n experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s\r\n flagship mouse is designed for power users and masters of their craft \r\nwho want to get more done, more efficiently. MX Master 2S packs a punch \r\nwith Logitech Flow that lets you seamlessly control two computers with \r\none mouse and copy-paste content between them. Combined with other \r\nadvanced features and a stunning design, it provides exceptional \r\ncomfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash\r\n the potential of MX Master 2S by using Logitech Flow, for the smoothest\r\n workflow between computers. Move your mouse cursor across up to three \r\ncomputers and even copy/paste text, images and files from one computer \r\nto another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n premium mouse deserves the best quality tracking. So we designed the MX\r\n Master 2S with a brand new 4000-DPi precision sensor that tracks on \r\nvirtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug\r\n MX Master 2S into your computer with the micro-USB charging cable and \r\nin just 3 minutes, it will be charged up and ready to power you through \r\nyour entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll\r\n through long documents or web pages faster and easier. The \r\nspeed-adaptive scroll wheel auto-shifts from click-to-click to \r\nhyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling \r\nside-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect\r\n MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® \r\nlow energy technology. Thanks to Logitech Easy-Switch™ technology, pair \r\nup to 3 devices and easily switch between them with the touch of a \r\nbutton.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A\r\n perfectly sculpted, hand-crafted shape supports your hand and wrist in a\r\n comfortable, natural position. Experience fine-motion control and fluid\r\n experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;', '', 'Logitech  mouse', '', ''),
(51, 3, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (RU)', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp UXXXXX XX&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp UXXXX XX&quot;&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors use captured data in order to determine the health state of an object. The monitor then displays the state of the object (Healthy, Warning, or Critical). Additionally, FEP monitors can also generate alerts. Information that is displayed by monitors is event-driven. The FEP Security Management Pack contains four types of monitors: Vulnerability, Security State, Overall Health, and Deployment. For more information about FEP Security Management Pack monitors, see Security Management Pack Monitors.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability monitors track the settings and dynamic statuses of FEP clients. These monitors can be used to identify possible security vulnerabilities. The FEP Security Management Pack contains the following Vulnerability monitors:&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP Security State monitors monitor the security state of FEP clients. The FEP Security Management Pack contains the following Security State monitors:&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The FEP Overall Health monitor reflects the overall health of all protected systems running FEP client software. This monitor is not visible, but is used to generate alerts when the overall health of monitored protected clients is unsatisfactory. The FEP Security Management Pack contains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (RU)', '', ''),
(54, 1, 'Logitech Craft keyboard', '&lt;h2&gt;CREATE IN YOUR ELEMENT\r\nWith Craft — advanced keyboard with creative input dial\r\n&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\nCOMPLETE CREATIVE CONTROL\r\n\r\nCraft is a wireless keyboard with a premium typing experience and a \r\nversatile input dial that adapts to what you’re making — keeping you \r\nfocused and in your creative flow.\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;\r\n\r\n\r\nCONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n&lt;/p&gt;&lt;h3&gt;&lt;br&gt;&lt;/h3&gt;&lt;h3&gt;CONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;TYPE WITH EFFORTLESS PRECISION\r\n\r\n&lt;/h3&gt;&lt;p&gt;Confidently type on a keyboard crafted for efficiency, \r\nstability, and precision.\r\n\r\nIncreased key stability reduces noise and optimizes responsiveness so \r\nyou feel, but don’t hear, every keystroke. The spherical key dishing is \r\ncrafted for accuracy, and blind navigation details make it easy to \r\norient your fingers so you never miss a key — or a beat.\r\n\r\n&lt;/p&gt;', '', 'Logitech Craft keyboard', '', ''),
(54, 3, 'Logitech Craft keyboard', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;CREATE IN YOUR ELEMENT\r\nWith Craft — advanced keyboard with creative input dial\r\n&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\nCOMPLETE CREATIVE CONTROL\r\n\r\nCraft is a wireless keyboard with a premium typing experience and a \r\nversatile input dial that adapts to what you’re making — keeping you \r\nfocused and in your creative flow.\r\n&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;\r\n\r\n\r\nCONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;&lt;br&gt;&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;CONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;TYPE WITH EFFORTLESS PRECISION\r\n\r\n&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Confidently type on a keyboard crafted for efficiency, \r\nstability, and precision.\r\n\r\nIncreased key stability reduces noise and optimizes responsiveness so \r\nyou feel, but don’t hear, every keystroke. The spherical key dishing is \r\ncrafted for accuracy, and blind navigation details make it easy to \r\norient your fingers so you never miss a key — or a beat.\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Logitech Craft keyboard', '', ''),
(53, 2, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.)', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp UXXXXX XX&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp UXXXX XX&quot;&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors use captured data in order to determine the health state of an object. The monitor then displays the state of the object (Healthy, Warning, or Critical). Additionally, FEP monitors can also generate alerts. Information that is displayed by monitors is event-driven. The FEP Security Management Pack contains four types of monitors: Vulnerability, Security State, Overall Health, and Deployment. For more information about FEP Security Management Pack monitors, see Security Management Pack Monitors.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability monitors track the settings and dynamic statuses of FEP clients. These monitors can be used to identify possible security vulnerabilities. The FEP Security Management Pack contains the following Vulnerability monitors:&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP Security State monitors monitor the security state of FEP clients. The FEP Security Management Pack contains the following Security State monitors:&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The FEP Overall Health monitor reflects the overall health of all protected systems running FEP client software. This monitor is not visible, but is used to generate alerts when the overall health of monitored protected clients is unsatisfactory. The FEP Security Management Pack contains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.)', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(52, 2, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.)', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp UXXXXX XX&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp UXXXX XX&quot;&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors use captured data in order to determine the health state of an object. The monitor then displays the state of the object (Healthy, Warning, or Critical). Additionally, FEP monitors can also generate alerts. Information that is displayed by monitors is event-driven. The FEP Security Management Pack contains four types of monitors: Vulnerability, Security State, Overall Health, and Deployment. For more information about FEP Security Management Pack monitors, see Security Management Pack Monitors.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability monitors track the settings and dynamic statuses of FEP clients. These monitors can be used to identify possible security vulnerabilities. The FEP Security Management Pack contains the following Vulnerability monitors:&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP Security State monitors monitor the security state of FEP clients. The FEP Security Management Pack contains the following Security State monitors:&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The FEP Overall Health monitor reflects the overall health of all protected systems running FEP client software. This monitor is not visible, but is used to generate alerts when the overall health of monitored protected clients is unsatisfactory. The FEP Security Management Pack contains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.)', '', ''),
(52, 1, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (EN)', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp U2713H 27&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp U2713h 27&quot;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors\r\n use captured data in order to determine the health state of an object. \r\nThe monitor then displays the state of the object (Healthy, Warning, or \r\nCritical). Additionally, FEP monitors can also generate alerts. \r\nInformation that is displayed by monitors is event-driven. The FEP \r\nSecurity Management Pack contains four types of monitors: Vulnerability,\r\n Security State, Overall Health, and Deployment. For more information \r\nabout FEP Security Management Pack monitors, see Security Management \r\nPack Monitors.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability\r\n monitors track the settings and dynamic statuses of FEP clients. These \r\nmonitors can be used to identify possible security vulnerabilities. The \r\nFEP Security Management Pack contains the following Vulnerability \r\nmonitors:&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP\r\n Security State monitors monitor the security state of FEP clients. The \r\nFEP Security Management Pack contains the following Security State \r\nmonitors:&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The\r\n FEP Overall Health monitor reflects the overall health of all protected\r\n systems running FEP client software. This monitor is not visible, but \r\nis used to generate alerts when the overall health of monitored \r\nprotected clients is unsatisfactory. The FEP Security Management Pack \r\ncontains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (EN)', '', ''),
(52, 3, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (RU)', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp UXXXXX XX&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp UXXXX XX&quot;&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors use captured data in order to determine the health state of an object. The monitor then displays the state of the object (Healthy, Warning, or Critical). Additionally, FEP monitors can also generate alerts. Information that is displayed by monitors is event-driven. The FEP Security Management Pack contains four types of monitors: Vulnerability, Security State, Overall Health, and Deployment. For more information about FEP Security Management Pack monitors, see Security Management Pack Monitors.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability monitors track the settings and dynamic statuses of FEP clients. These monitors can be used to identify possible security vulnerabilities. The FEP Security Management Pack contains the following Vulnerability monitors:&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP Security State monitors monitor the security state of FEP clients. The FEP Security Management Pack contains the following Security State monitors:&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The FEP Overall Health monitor reflects the overall health of all protected systems running FEP client software. This monitor is not visible, but is used to generate alerts when the overall health of monitored protected clients is unsatisfactory. The FEP Security Management Pack contains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (RU)', '', ''),
(53, 3, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (RU)', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp UXXXXX XX&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp UXXXX XX&quot;&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors use captured data in order to determine the health state of an object. The monitor then displays the state of the object (Healthy, Warning, or Critical). Additionally, FEP monitors can also generate alerts. Information that is displayed by monitors is event-driven. The FEP Security Management Pack contains four types of monitors: Vulnerability, Security State, Overall Health, and Deployment. For more information about FEP Security Management Pack monitors, see Security Management Pack Monitors.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability monitors track the settings and dynamic statuses of FEP clients. These monitors can be used to identify possible security vulnerabilities. The FEP Security Management Pack contains the following Vulnerability monitors:&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP Security State monitors monitor the security state of FEP clients. The FEP Security Management Pack contains the following Security State monitors:&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The FEP Overall Health monitor reflects the overall health of all protected systems running FEP client software. This monitor is not visible, but is used to generate alerts when the overall health of monitored protected clients is unsatisfactory. The FEP Security Management Pack contains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (RU)', '', ''),
(54, 2, 'Logitech Craft klaviatūra', '&lt;p&gt;&lt;h2&gt;CREATE IN YOUR ELEMENT\r\nWith Craft — advanced keyboard with creative input dial\r\n&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\nCOMPLETE CREATIVE CONTROL\r\n\r\nCraft is a wireless keyboard with a premium typing experience and a versatile input dial that adapts to what you’re making — keeping you focused and in your creative flow.\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/p&gt;&lt;h3&gt;\r\n\r\n\r\nCONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n&lt;/p&gt;&lt;h3&gt;&lt;br&gt;&lt;/h3&gt;&lt;h3&gt;CONTROL YOU NEED, THE MOMENT YOU NEED IT\r\n\r\n&lt;/h3&gt;&lt;p&gt;The creative input dial adapts to the app you\'re using — giving you instant access to specific functions for the task at hand.\r\n\r\nThe touch-sensitive control lets you feel your way through your creation — for a more efficient and immersive workflow.\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;TYPE WITH EFFORTLESS PRECISION\r\n\r\n&lt;/h3&gt;&lt;p&gt;Confidently type on a keyboard crafted for efficiency, stability, and precision.\r\n\r\nIncreased key stability reduces noise and optimizes responsiveness so you feel, but don’t hear, every keystroke. The spherical key dishing is crafted for accuracy, and blind navigation details make it easy to orient your fingers so you never miss a key — or a beat.\r\n\r\n&lt;/p&gt;', '', 'Logitech Craft klaviatūra', '', ''),
(53, 1, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (EN)', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp U2713H 27&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp U2713h 27&quot;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors\r\n use captured data in order to determine the health state of an object. \r\nThe monitor then displays the state of the object (Healthy, Warning, or \r\nCritical). Additionally, FEP monitors can also generate alerts. \r\nInformation that is displayed by monitors is event-driven. The FEP \r\nSecurity Management Pack contains four types of monitors: Vulnerability,\r\n Security State, Overall Health, and Deployment. For more information \r\nabout FEP Security Management Pack monitors, see Security Management \r\nPack Monitors.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability\r\n monitors track the settings and dynamic statuses of FEP clients. These \r\nmonitors can be used to identify possible security vulnerabilities. The \r\nFEP Security Management Pack contains the following Vulnerability \r\nmonitors:&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP\r\n Security State monitors monitor the security state of FEP clients. The \r\nFEP Security Management Pack contains the following Security State \r\nmonitors:&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The\r\n FEP Overall Health monitor reflects the overall health of all protected\r\n systems running FEP client software. This monitor is not visible, but \r\nis used to generate alerts when the overall health of monitored \r\nprotected clients is unsatisfactory. The FEP Security Management Pack \r\ncontains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (EN)', '', ''),
(50, 2, 'Dell Ultrasharp U2713H 27&quot; Monitorius (pvz.)', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp U2713H 27&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp U2713h 27&quot;&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors use captured data in order to determine the health state of an object. The monitor then displays the state of the object (Healthy, Warning, or Critical). Additionally, FEP monitors can also generate alerts. Information that is displayed by monitors is event-driven. The FEP Security Management Pack contains four types of monitors: Vulnerability, Security State, Overall Health, and Deployment. For more information about FEP Security Management Pack monitors, see Security Management Pack Monitors.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability monitors track the settings and dynamic statuses of FEP clients. These monitors can be used to identify possible security vulnerabilities. The FEP Security Management Pack contains the following Vulnerability monitors:&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP Security State monitors monitor the security state of FEP clients. The FEP Security Management Pack contains the following Security State monitors:&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The FEP Overall Health monitor reflects the overall health of all protected systems running FEP client software. This monitor is not visible, but is used to generate alerts when the overall health of monitored protected clients is unsatisfactory. The FEP Security Management Pack contains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp U2713H 27&quot; Monitorius', '', ''),
(50, 1, 'Dell Ultrasharp U2713H 27&quot; Monitorius (EN)', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp U2713H 27&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp U2713h 27&quot;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors\r\n use captured data in order to determine the health state of an object. \r\nThe monitor then displays the state of the object (Healthy, Warning, or \r\nCritical). Additionally, FEP monitors can also generate alerts. \r\nInformation that is displayed by monitors is event-driven. The FEP \r\nSecurity Management Pack contains four types of monitors: Vulnerability,\r\n Security State, Overall Health, and Deployment. For more information \r\nabout FEP Security Management Pack monitors, see Security Management \r\nPack Monitors.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability\r\n monitors track the settings and dynamic statuses of FEP clients. These \r\nmonitors can be used to identify possible security vulnerabilities. The \r\nFEP Security Management Pack contains the following Vulnerability \r\nmonitors:&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP\r\n Security State monitors monitor the security state of FEP clients. The \r\nFEP Security Management Pack contains the following Security State \r\nmonitors:&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The\r\n FEP Overall Health monitor reflects the overall health of all protected\r\n systems running FEP client software. This monitor is not visible, but \r\nis used to generate alerts when the overall health of monitored \r\nprotected clients is unsatisfactory. The FEP Security Management Pack \r\ncontains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp U2713H 27&quot; Monitorius (EN)', '', ''),
(50, 3, 'Dell Ultrasharp U2713H 27&quot; Monitorius (RU)', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp U2713H 27&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp U2713h 27&quot;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors\r\n use captured data in order to determine the health state of an object. \r\nThe monitor then displays the state of the object (Healthy, Warning, or \r\nCritical). Additionally, FEP monitors can also generate alerts. \r\nInformation that is displayed by monitors is event-driven. The FEP \r\nSecurity Management Pack contains four types of monitors: Vulnerability,\r\n Security State, Overall Health, and Deployment. For more information \r\nabout FEP Security Management Pack monitors, see Security Management \r\nPack Monitors.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability\r\n monitors track the settings and dynamic statuses of FEP clients. These \r\nmonitors can be used to identify possible security vulnerabilities. The \r\nFEP Security Management Pack contains the following Vulnerability \r\nmonitors:&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP\r\n Security State monitors monitor the security state of FEP clients. The \r\nFEP Security Management Pack contains the following Security State \r\nmonitors:&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The\r\n FEP Overall Health monitor reflects the overall health of all protected\r\n systems running FEP client software. This monitor is not visible, but \r\nis used to generate alerts when the overall health of monitored \r\nprotected clients is unsatisfactory. The FEP Security Management Pack \r\ncontains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp U2713H 27&quot; Monitorius (RU)', '', ''),
(51, 2, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.)', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp UXXXXX XX&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp UXXXX XX&quot;&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors use captured data in order to determine the health state of an object. The monitor then displays the state of the object (Healthy, Warning, or Critical). Additionally, FEP monitors can also generate alerts. Information that is displayed by monitors is event-driven. The FEP Security Management Pack contains four types of monitors: Vulnerability, Security State, Overall Health, and Deployment. For more information about FEP Security Management Pack monitors, see Security Management Pack Monitors.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability monitors track the settings and dynamic statuses of FEP clients. These monitors can be used to identify possible security vulnerabilities. The FEP Security Management Pack contains the following Vulnerability monitors:&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP Security State monitors monitor the security state of FEP clients. The FEP Security Management Pack contains the following Security State monitors:&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The FEP Overall Health monitor reflects the overall health of all protected systems running FEP client software. This monitor is not visible, but is used to generate alerts when the overall health of monitored protected clients is unsatisfactory. The FEP Security Management Pack contains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.)', '', ''),
(51, 1, 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (EN)', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;Dell Ultrasharp U2713H 27&quot; Monitorius&lt;br&gt;&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Dell Ultrasharp U2713h 27&quot;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Parduodamas monitorius DELL UltraSharp U2713H 27&quot;, \r\n2560x1440, AH IPS, LED Backlight, 1000:1, 2000000:1(DCR), 178/178, 6ms, \r\n0.231mm, HDMI, 4 x USB 3.0, DVI-D (HDCP) dual link,DisplayPort 1.24 / \r\nmini-DisplayPort, DisplayPort out, Black &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Monitors\r\n use captured data in order to determine the health state of an object. \r\nThe monitor then displays the state of the object (Healthy, Warning, or \r\nCritical). Additionally, FEP monitors can also generate alerts. \r\nInformation that is displayed by monitors is event-driven. The FEP \r\nSecurity Management Pack contains four types of monitors: Vulnerability,\r\n Security State, Overall Health, and Deployment. For more information \r\nabout FEP Security Management Pack monitors, see Security Management \r\nPack Monitors.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Security Management Pack Monitor Types&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;b&gt;Vulnerability Monitors&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Vulnerability\r\n monitors track the settings and dynamic statuses of FEP clients. These \r\nmonitors can be used to identify possible security vulnerabilities. The \r\nFEP Security Management Pack contains the following Vulnerability \r\nmonitors:&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;&amp;nbsp;Antimalware Engine&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions Age&lt;/li&gt;&lt;li&gt;&amp;nbsp;Antimalware Definitions&lt;/li&gt;&lt;li&gt;&amp;nbsp;Vulnerability Protection&lt;/li&gt;&lt;li&gt;Real-time Protection&lt;/li&gt;&lt;li&gt;&amp;nbsp;Windows Firewall&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;&lt;br&gt;Security State Monitors&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;FEP\r\n Security State monitors monitor the security state of FEP clients. The \r\nFEP Security Management Pack contains the following Security State \r\nmonitors:&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div align=&quot;justify&quot;&gt;&lt;ul&gt;&lt;li&gt;Active Malware&lt;/li&gt;&lt;li&gt;Additional Actions Pending&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;b&gt;Overall Health Monitor&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;The\r\n FEP Overall Health monitor reflects the overall health of all protected\r\n systems running FEP client software. This monitor is not visible, but \r\nis used to generate alerts when the overall health of monitored \r\nprotected clients is unsatisfactory. The FEP Security Management Pack \r\ncontains the following Overall Health Monitor:&lt;br&gt;&lt;br&gt;&amp;nbsp; &lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Dell Ultrasharp UXXXXXX&quot; Monitorius (pvz.) (EN)', '', ''),
(57, 2, 'Logitech  pelytė', '&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s flagship mouse is designed for power users and masters of their craft who want to get more done, more efficiently. MX Master 2S packs a punch with Logitech Flow that lets you seamlessly control two computers with one mouse and copy-paste content between them. Combined with other advanced features and a stunning design, it provides exceptional comfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash the potential of MX Master 2S by using Logitech Flow, for the smoothest workflow between computers. Move your mouse cursor across up to three computers and even copy/paste text, images and files from one computer to another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A premium mouse deserves the best quality tracking. So we designed the MX Master 2S with a brand new 4000-DPi precision sensor that tracks on virtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug MX Master 2S into your computer with the micro-USB charging cable and in just 3 minutes, it will be charged up and ready to power you through your entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll through long documents or web pages faster and easier. The speed-adaptive scroll wheel auto-shifts from click-to-click to hyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling side-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® low energy technology. Thanks to Logitech Easy-Switch™ technology, pair up to 3 devices and easily switch between them with the touch of a button.&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A perfectly sculpted, hand-crafted shape supports your hand and wrist in a comfortable, natural position. Experience fine-motion control and fluid experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;REVOLUTIONARY MULTI-COMPUTER CONTROL&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Logitech’s flagship mouse is designed for power users and masters of their craft who want to get more done, more efficiently. MX Master 2S packs a punch with Logitech Flow that lets you seamlessly control two computers with one mouse and copy-paste content between them. Combined with other advanced features and a stunning design, it provides exceptional comfort, control, precision and customization.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EFFORTLESS MULTI-COMPUTER WORKFLOW&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Unleash the potential of MX Master 2S by using Logitech Flow, for the smoothest workflow between computers. Move your mouse cursor across up to three computers and even copy/paste text, images and files from one computer to another&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;TRACKS ON ANY SURFACE&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A premium mouse deserves the best quality tracking. So we designed the MX Master 2S with a brand new 4000-DPi precision sensor that tracks on virtually any surface, even glass.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;FAST RECHARGING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Plug MX Master 2S into your computer with the micro-USB charging cable and in just 3 minutes, it will be charged up and ready to power you through your entire day. A full charge lasts over 70 days.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HYPER-EFFICIENT SCROLLING&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Scroll through long documents or web pages faster and easier. The speed-adaptive scroll wheel auto-shifts from click-to-click to hyper-fast scroll. A stroke of the thumb wheel, and you\'re scrolling side-to-side.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;EASY-SWITCH AND DUAL CONNECTIVITY&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;Connect MX Master 2S via the included Logitech Unifying Receiver or Bluetooth® low energy technology. Thanks to Logitech Easy-Switch™ technology, pair up to 3 devices and easily switch between them with the touch of a button.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;HAND-SCULPTED FOR COMFORT&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;A perfectly sculpted, hand-crafted shape supports your hand and wrist in a comfortable, natural position. Experience fine-motion control and fluid experience with well-positioned buttons and wheels.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;', '', 'Logitech  klaviatūra', '', ''),
(59, 2, 'HP spausdintuvas', '&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set up, connect and print right from your mobile device,[1] and produce high-quality photos and everyday documents. Print, scan, copy, and fax with ease. HP Office Inkjet All-in-One Printers are designed for micro/small business users looking for an all-in-one capable of printing professional-quality documents in rich, attention-grabbing color at a low cost per page. Dynamic security enabled printer. Intended to be used with cartridges using only HP original electronic circuitry. Cartridges with modified or non-HP electronic circuitry may not work, and those that work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Get simple Wi-Fi® setup in less than a minute, and start printing fast. Have confidence in your connection with steady performance from dual band Wi-Fi®. Scan on the go, print from social media and the cloud, and easily order ink, with the HP Smart app. Easily print from a variety of smartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;HP Instant Ink delivers the right ink, right on time, so you never run out again. Make an impression with Original HP ink cartridges – designed to deliver vivid color and crisp, sharp text. Create high-quality borderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Print scan, copy, and fax with fast speeds, and keep tasks moving. Breeze through tasks with hands-free printing, scanning, copying, and faxing, using the 35-page ADF. Speed through multipage print jobs with automatic two-sided printing. Create timesaving shortcuts and easily print, scan and copy directly at the printer.&lt;br&gt;&lt;/p&gt;', '', 'HP spausdintuvas', '', ''),
(59, 1, 'HP printer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set \r\nup, connect and print right from your mobile device,[1] and produce \r\nhigh-quality photos and everyday documents. Print, scan, copy, and fax \r\nwith ease. HP Office Inkjet All-in-One Printers are designed for \r\nmicro/small business users looking for an all-in-one capable of printing\r\n professional-quality documents in rich, attention-grabbing color at a \r\nlow cost per page. Dynamic security enabled printer. Intended to be used\r\n with cartridges using only HP original electronic circuitry. Cartridges\r\n with modified or non-HP electronic circuitry may not work, and those \r\nthat work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Get\r\n simple Wi-Fi® setup in less than a minute, and start printing fast. \r\nHave confidence in your connection with steady performance from dual \r\nband Wi-Fi®. Scan on the go, print from social media and the cloud, and \r\neasily order ink, with the HP Smart app. Easily print from a variety of \r\nsmartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;HP\r\n Instant Ink delivers the right ink, right on time, so you never run out\r\n again. Make an impression with Original HP ink cartridges – designed to\r\n deliver vivid color and crisp, sharp text. Create high-quality \r\nborderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Print\r\n scan, copy, and fax with fast speeds, and keep tasks moving. Breeze \r\nthrough tasks with hands-free printing, scanning, copying, and faxing, \r\nusing the 35-page ADF. Speed through multipage print jobs with automatic\r\n two-sided printing. Create timesaving shortcuts and easily print, scan \r\nand copy directly at the printer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'HP printer', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(59, 3, 'HP printer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set \r\nup, connect and print right from your mobile device,[1] and produce \r\nhigh-quality photos and everyday documents. Print, scan, copy, and fax \r\nwith ease. HP Office Inkjet All-in-One Printers are designed for \r\nmicro/small business users looking for an all-in-one capable of printing\r\n professional-quality documents in rich, attention-grabbing color at a \r\nlow cost per page. Dynamic security enabled printer. Intended to be used\r\n with cartridges using only HP original electronic circuitry. Cartridges\r\n with modified or non-HP electronic circuitry may not work, and those \r\nthat work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Get\r\n simple Wi-Fi® setup in less than a minute, and start printing fast. \r\nHave confidence in your connection with steady performance from dual \r\nband Wi-Fi®. Scan on the go, print from social media and the cloud, and \r\neasily order ink, with the HP Smart app. Easily print from a variety of \r\nsmartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;HP\r\n Instant Ink delivers the right ink, right on time, so you never run out\r\n again. Make an impression with Original HP ink cartridges – designed to\r\n deliver vivid color and crisp, sharp text. Create high-quality \r\nborderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Print\r\n scan, copy, and fax with fast speeds, and keep tasks moving. Breeze \r\nthrough tasks with hands-free printing, scanning, copying, and faxing, \r\nusing the 35-page ADF. Speed through multipage print jobs with automatic\r\n two-sided printing. Create timesaving shortcuts and easily print, scan \r\nand copy directly at the printer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'HP printer', '', ''),
(60, 1, 'HP printer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set \r\nup, connect and print right from your mobile device,[1] and produce \r\nhigh-quality photos and everyday documents. Print, scan, copy, and fax \r\nwith ease. HP Office Inkjet All-in-One Printers are designed for \r\nmicro/small business users looking for an all-in-one capable of printing\r\n professional-quality documents in rich, attention-grabbing color at a \r\nlow cost per page. Dynamic security enabled printer. Intended to be used\r\n with cartridges using only HP original electronic circuitry. Cartridges\r\n with modified or non-HP electronic circuitry may not work, and those \r\nthat work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Get\r\n simple Wi-Fi® setup in less than a minute, and start printing fast. \r\nHave confidence in your connection with steady performance from dual \r\nband Wi-Fi®. Scan on the go, print from social media and the cloud, and \r\neasily order ink, with the HP Smart app. Easily print from a variety of \r\nsmartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;HP\r\n Instant Ink delivers the right ink, right on time, so you never run out\r\n again. Make an impression with Original HP ink cartridges – designed to\r\n deliver vivid color and crisp, sharp text. Create high-quality \r\nborderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Print\r\n scan, copy, and fax with fast speeds, and keep tasks moving. Breeze \r\nthrough tasks with hands-free printing, scanning, copying, and faxing, \r\nusing the 35-page ADF. Speed through multipage print jobs with automatic\r\n two-sided printing. Create timesaving shortcuts and easily print, scan \r\nand copy directly at the printer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'HP printer', '', ''),
(60, 3, 'HP printer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set \r\nup, connect and print right from your mobile device,[1] and produce \r\nhigh-quality photos and everyday documents. Print, scan, copy, and fax \r\nwith ease. HP Office Inkjet All-in-One Printers are designed for \r\nmicro/small business users looking for an all-in-one capable of printing\r\n professional-quality documents in rich, attention-grabbing color at a \r\nlow cost per page. Dynamic security enabled printer. Intended to be used\r\n with cartridges using only HP original electronic circuitry. Cartridges\r\n with modified or non-HP electronic circuitry may not work, and those \r\nthat work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Get\r\n simple Wi-Fi® setup in less than a minute, and start printing fast. \r\nHave confidence in your connection with steady performance from dual \r\nband Wi-Fi®. Scan on the go, print from social media and the cloud, and \r\neasily order ink, with the HP Smart app. Easily print from a variety of \r\nsmartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;HP\r\n Instant Ink delivers the right ink, right on time, so you never run out\r\n again. Make an impression with Original HP ink cartridges – designed to\r\n deliver vivid color and crisp, sharp text. Create high-quality \r\nborderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Print\r\n scan, copy, and fax with fast speeds, and keep tasks moving. Breeze \r\nthrough tasks with hands-free printing, scanning, copying, and faxing, \r\nusing the 35-page ADF. Speed through multipage print jobs with automatic\r\n two-sided printing. Create timesaving shortcuts and easily print, scan \r\nand copy directly at the printer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'HP printer', '', ''),
(58, 2, 'HP spausdintuvas', '&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set up, connect and print right from your mobile device,[1] and produce high-quality photos and everyday documents. Print, scan, copy, and fax with ease. HP Office Inkjet All-in-One Printers are designed for micro/small business users looking for an all-in-one capable of printing professional-quality documents in rich, attention-grabbing color at a low cost per page. Dynamic security enabled printer. Intended to be used with cartridges using only HP original electronic circuitry. Cartridges with modified or non-HP electronic circuitry may not work, and those that work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Get simple Wi-Fi® setup in less than a minute, and start printing fast. Have confidence in your connection with steady performance from dual band Wi-Fi®. Scan on the go, print from social media and the cloud, and easily order ink, with the HP Smart app. Easily print from a variety of smartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;HP Instant Ink delivers the right ink, right on time, so you never run out again. Make an impression with Original HP ink cartridges – designed to deliver vivid color and crisp, sharp text. Create high-quality borderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Print scan, copy, and fax with fast speeds, and keep tasks moving. Breeze through tasks with hands-free printing, scanning, copying, and faxing, using the 35-page ADF. Speed through multipage print jobs with automatic two-sided printing. Create timesaving shortcuts and easily print, scan and copy directly at the printer.&lt;br&gt;&lt;/p&gt;', '', 'HP spausdintuvas', '', ''),
(58, 1, 'HP printer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set \r\nup, connect and print right from your mobile device,[1] and produce \r\nhigh-quality photos and everyday documents. Print, scan, copy, and fax \r\nwith ease. HP Office Inkjet All-in-One Printers are designed for \r\nmicro/small business users looking for an all-in-one capable of printing\r\n professional-quality documents in rich, attention-grabbing color at a \r\nlow cost per page. Dynamic security enabled printer. Intended to be used\r\n with cartridges using only HP original electronic circuitry. Cartridges\r\n with modified or non-HP electronic circuitry may not work, and those \r\nthat work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Get\r\n simple Wi-Fi® setup in less than a minute, and start printing fast. \r\nHave confidence in your connection with steady performance from dual \r\nband Wi-Fi®. Scan on the go, print from social media and the cloud, and \r\neasily order ink, with the HP Smart app. Easily print from a variety of \r\nsmartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;HP\r\n Instant Ink delivers the right ink, right on time, so you never run out\r\n again. Make an impression with Original HP ink cartridges – designed to\r\n deliver vivid color and crisp, sharp text. Create high-quality \r\nborderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Print\r\n scan, copy, and fax with fast speeds, and keep tasks moving. Breeze \r\nthrough tasks with hands-free printing, scanning, copying, and faxing, \r\nusing the 35-page ADF. Speed through multipage print jobs with automatic\r\n two-sided printing. Create timesaving shortcuts and easily print, scan \r\nand copy directly at the printer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'HP printer', '', ''),
(58, 3, 'HP printer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set \r\nup, connect and print right from your mobile device,[1] and produce \r\nhigh-quality photos and everyday documents. Print, scan, copy, and fax \r\nwith ease. HP Office Inkjet All-in-One Printers are designed for \r\nmicro/small business users looking for an all-in-one capable of printing\r\n professional-quality documents in rich, attention-grabbing color at a \r\nlow cost per page. Dynamic security enabled printer. Intended to be used\r\n with cartridges using only HP original electronic circuitry. Cartridges\r\n with modified or non-HP electronic circuitry may not work, and those \r\nthat work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Get\r\n simple Wi-Fi® setup in less than a minute, and start printing fast. \r\nHave confidence in your connection with steady performance from dual \r\nband Wi-Fi®. Scan on the go, print from social media and the cloud, and \r\neasily order ink, with the HP Smart app. Easily print from a variety of \r\nsmartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;HP\r\n Instant Ink delivers the right ink, right on time, so you never run out\r\n again. Make an impression with Original HP ink cartridges – designed to\r\n deliver vivid color and crisp, sharp text. Create high-quality \r\nborderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Print\r\n scan, copy, and fax with fast speeds, and keep tasks moving. Breeze \r\nthrough tasks with hands-free printing, scanning, copying, and faxing, \r\nusing the 35-page ADF. Speed through multipage print jobs with automatic\r\n two-sided printing. Create timesaving shortcuts and easily print, scan \r\nand copy directly at the printer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'HP printer', '', ''),
(60, 2, 'HP spausdintuvas', '&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set up, connect and print right from your mobile device,[1] and produce high-quality photos and everyday documents. Print, scan, copy, and fax with ease. HP Office Inkjet All-in-One Printers are designed for micro/small business users looking for an all-in-one capable of printing professional-quality documents in rich, attention-grabbing color at a low cost per page. Dynamic security enabled printer. Intended to be used with cartridges using only HP original electronic circuitry. Cartridges with modified or non-HP electronic circuitry may not work, and those that work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Get simple Wi-Fi® setup in less than a minute, and start printing fast. Have confidence in your connection with steady performance from dual band Wi-Fi®. Scan on the go, print from social media and the cloud, and easily order ink, with the HP Smart app. Easily print from a variety of smartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;HP Instant Ink delivers the right ink, right on time, so you never run out again. Make an impression with Original HP ink cartridges – designed to deliver vivid color and crisp, sharp text. Create high-quality borderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Print scan, copy, and fax with fast speeds, and keep tasks moving. Breeze through tasks with hands-free printing, scanning, copying, and faxing, using the 35-page ADF. Speed through multipage print jobs with automatic two-sided printing. Create timesaving shortcuts and easily print, scan and copy directly at the printer.&lt;br&gt;&lt;/p&gt;', '', 'HP spausdintuvas', '', ''),
(61, 3, 'HP printer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set \r\nup, connect and print right from your mobile device,[1] and produce \r\nhigh-quality photos and everyday documents. Print, scan, copy, and fax \r\nwith ease. HP Office Inkjet All-in-One Printers are designed for \r\nmicro/small business users looking for an all-in-one capable of printing\r\n professional-quality documents in rich, attention-grabbing color at a \r\nlow cost per page. Dynamic security enabled printer. Intended to be used\r\n with cartridges using only HP original electronic circuitry. Cartridges\r\n with modified or non-HP electronic circuitry may not work, and those \r\nthat work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Get\r\n simple Wi-Fi® setup in less than a minute, and start printing fast. \r\nHave confidence in your connection with steady performance from dual \r\nband Wi-Fi®. Scan on the go, print from social media and the cloud, and \r\neasily order ink, with the HP Smart app. Easily print from a variety of \r\nsmartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;HP\r\n Instant Ink delivers the right ink, right on time, so you never run out\r\n again. Make an impression with Original HP ink cartridges – designed to\r\n deliver vivid color and crisp, sharp text. Create high-quality \r\nborderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Print\r\n scan, copy, and fax with fast speeds, and keep tasks moving. Breeze \r\nthrough tasks with hands-free printing, scanning, copying, and faxing, \r\nusing the 35-page ADF. Speed through multipage print jobs with automatic\r\n two-sided printing. Create timesaving shortcuts and easily print, scan \r\nand copy directly at the printer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'HP printer', '', ''),
(61, 2, 'HP spausdintuvas', '&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set up, connect and print right from your mobile device,[1] and produce high-quality photos and everyday documents. Print, scan, copy, and fax with ease. HP Office Inkjet All-in-One Printers are designed for micro/small business users looking for an all-in-one capable of printing professional-quality documents in rich, attention-grabbing color at a low cost per page. Dynamic security enabled printer. Intended to be used with cartridges using only HP original electronic circuitry. Cartridges with modified or non-HP electronic circuitry may not work, and those that work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Get simple Wi-Fi® setup in less than a minute, and start printing fast. Have confidence in your connection with steady performance from dual band Wi-Fi®. Scan on the go, print from social media and the cloud, and easily order ink, with the HP Smart app. Easily print from a variety of smartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;HP Instant Ink delivers the right ink, right on time, so you never run out again. Make an impression with Original HP ink cartridges – designed to deliver vivid color and crisp, sharp text. Create high-quality borderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;Print scan, copy, and fax with fast speeds, and keep tasks moving. Breeze through tasks with hands-free printing, scanning, copying, and faxing, using the 35-page ADF. Speed through multipage print jobs with automatic two-sided printing. Create timesaving shortcuts and easily print, scan and copy directly at the printer.&lt;br&gt;&lt;/p&gt;', '', 'HP spausdintuvas', '', ''),
(61, 1, 'HP printer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;HP printers&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Handle it all and get affordable prints. Set \r\nup, connect and print right from your mobile device,[1] and produce \r\nhigh-quality photos and everyday documents. Print, scan, copy, and fax \r\nwith ease. HP Office Inkjet All-in-One Printers are designed for \r\nmicro/small business users looking for an all-in-one capable of printing\r\n professional-quality documents in rich, attention-grabbing color at a \r\nlow cost per page. Dynamic security enabled printer. Intended to be used\r\n with cartridges using only HP original electronic circuitry. Cartridges\r\n with modified or non-HP electronic circuitry may not work, and those \r\nthat work today may not work in the future.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Wireless connectivity you can count on&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Get\r\n simple Wi-Fi® setup in less than a minute, and start printing fast. \r\nHave confidence in your connection with steady performance from dual \r\nband Wi-Fi®. Scan on the go, print from social media and the cloud, and \r\neasily order ink, with the HP Smart app. Easily print from a variety of \r\nsmartphones and tablets.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Documents and photos&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;HP\r\n Instant Ink delivers the right ink, right on time, so you never run out\r\n again. Make an impression with Original HP ink cartridges – designed to\r\n deliver vivid color and crisp, sharp text. Create high-quality \r\nborderless photos and flyers – right in your home.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Get projects done with easy versatility&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;Print\r\n scan, copy, and fax with fast speeds, and keep tasks moving. Breeze \r\nthrough tasks with hands-free printing, scanning, copying, and faxing, \r\nusing the 35-page ADF. Speed through multipage print jobs with automatic\r\n two-sided printing. Create timesaving shortcuts and easily print, scan \r\nand copy directly at the printer.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'HP printer', '', ''),
(62, 1, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;p&gt;&lt;br&gt;Enjoy\r\n a superior HD video quality with the LifeCam Studio, which includes a \r\n1080p HD sensor. But great video is about more than HD. Keep your \r\nsubject crisp with autofocus, from four inches to infinity. Shoot with \r\ngreat accuracy in wide angle with the LifeCam precision glass element \r\nlens. And, to make filming even easier, LifeCam features TrueColor \r\nTechnology, which means your video remains bright and colorful in \r\nvirtually all light conditions. Use the built-in High-Fidelity \r\nMicrophone to bring it all together: the vivid sights, colors, and \r\nsounds of real life.&lt;br&gt;&lt;/p&gt;', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(62, 3, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;p&gt;&lt;br&gt;Enjoy a superior HD video quality with the LifeCam Studio, which includes a 1080p HD sensor. But great video is about more than HD. Keep your subject crisp with autofocus, from four inches to infinity. Shoot with great accuracy in wide angle with the LifeCam precision glass element lens. And, to make filming even easier, LifeCam features TrueColor Technology, which means your video remains bright and colorful in virtually all light conditions. Use the built-in High-Fidelity Microphone to bring it all together: the vivid sights, colors, and sounds of real life.&lt;br&gt;&lt;/p&gt;', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(62, 2, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;br&gt;Enjoy\r\n a superior HD video quality with the LifeCam Studio, which includes a \r\n1080p HD sensor. But great video is about more than HD. Keep your \r\nsubject crisp with autofocus, from four inches to infinity. Shoot with \r\ngreat accuracy in wide angle with the LifeCam precision glass element \r\nlens. And, to make filming even easier, LifeCam features TrueColor \r\nTechnology, which means your video remains bright and colorful in \r\nvirtually all light conditions. Use the built-in High-Fidelity \r\nMicrophone to bring it all together: the vivid sights, colors, and \r\nsounds of real life.', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(63, 3, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;p&gt;&lt;br&gt;Enjoy a superior HD video quality with the LifeCam Studio, which includes a 1080p HD sensor. But great video is about more than HD. Keep your subject crisp with autofocus, from four inches to infinity. Shoot with great accuracy in wide angle with the LifeCam precision glass element lens. And, to make filming even easier, LifeCam features TrueColor Technology, which means your video remains bright and colorful in virtually all light conditions. Use the built-in High-Fidelity Microphone to bring it all together: the vivid sights, colors, and sounds of real life.&lt;br&gt;&lt;/p&gt;', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(63, 1, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;p&gt;&lt;br&gt;Enjoy\r\n a superior HD video quality with the LifeCam Studio, which includes a \r\n1080p HD sensor. But great video is about more than HD. Keep your \r\nsubject crisp with autofocus, from four inches to infinity. Shoot with \r\ngreat accuracy in wide angle with the LifeCam precision glass element \r\nlens. And, to make filming even easier, LifeCam features TrueColor \r\nTechnology, which means your video remains bright and colorful in \r\nvirtually all light conditions. Use the built-in High-Fidelity \r\nMicrophone to bring it all together: the vivid sights, colors, and \r\nsounds of real life.&lt;br&gt;&lt;/p&gt;', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(63, 2, 'Microsoft LifeCam', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;br&gt;Enjoy\r\n a superior HD video quality with the LifeCam Studio, which includes a \r\n1080p HD sensor. But great video is about more than HD. Keep your \r\nsubject crisp with autofocus, from four inches to infinity. Shoot with \r\ngreat accuracy in wide angle with the LifeCam precision glass element \r\nlens. And, to make filming even easier, LifeCam features TrueColor \r\nTechnology, which means your video remains bright and colorful in \r\nvirtually all light conditions. Use the built-in High-Fidelity \r\nMicrophone to bring it all together: the vivid sights, colors, and \r\nsounds of real life.', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(64, 1, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;p&gt;&lt;br&gt;Enjoy\r\n a superior HD video quality with the LifeCam Studio, which includes a \r\n1080p HD sensor. But great video is about more than HD. Keep your \r\nsubject crisp with autofocus, from four inches to infinity. Shoot with \r\ngreat accuracy in wide angle with the LifeCam precision glass element \r\nlens. And, to make filming even easier, LifeCam features TrueColor \r\nTechnology, which means your video remains bright and colorful in \r\nvirtually all light conditions. Use the built-in High-Fidelity \r\nMicrophone to bring it all together: the vivid sights, colors, and \r\nsounds of real life.&lt;br&gt;&lt;/p&gt;', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(64, 2, 'LifeCam', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;br&gt;Enjoy\r\n a superior HD video quality with the LifeCam Studio, which includes a \r\n1080p HD sensor. But great video is about more than HD. Keep your \r\nsubject crisp with autofocus, from four inches to infinity. Shoot with \r\ngreat accuracy in wide angle with the LifeCam precision glass element \r\nlens. And, to make filming even easier, LifeCam features TrueColor \r\nTechnology, which means your video remains bright and colorful in \r\nvirtually all light conditions. Use the built-in High-Fidelity \r\nMicrophone to bring it all together: the vivid sights, colors, and \r\nsounds of real life.', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(64, 3, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;p&gt;&lt;br&gt;Enjoy a superior HD video quality with the LifeCam Studio, which includes a 1080p HD sensor. But great video is about more than HD. Keep your subject crisp with autofocus, from four inches to infinity. Shoot with great accuracy in wide angle with the LifeCam precision glass element lens. And, to make filming even easier, LifeCam features TrueColor Technology, which means your video remains bright and colorful in virtually all light conditions. Use the built-in High-Fidelity Microphone to bring it all together: the vivid sights, colors, and sounds of real life.&lt;br&gt;&lt;/p&gt;', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(65, 3, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;p&gt;&lt;br&gt;Enjoy a superior HD video quality with the LifeCam Studio, which includes a 1080p HD sensor. But great video is about more than HD. Keep your subject crisp with autofocus, from four inches to infinity. Shoot with great accuracy in wide angle with the LifeCam precision glass element lens. And, to make filming even easier, LifeCam features TrueColor Technology, which means your video remains bright and colorful in virtually all light conditions. Use the built-in High-Fidelity Microphone to bring it all together: the vivid sights, colors, and sounds of real life.&lt;br&gt;&lt;/p&gt;', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(65, 2, 'LifeCam Studio', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;br&gt;Enjoy\r\n a superior HD video quality with the LifeCam Studio, which includes a \r\n1080p HD sensor. But great video is about more than HD. Keep your \r\nsubject crisp with autofocus, from four inches to infinity. Shoot with \r\ngreat accuracy in wide angle with the LifeCam precision glass element \r\nlens. And, to make filming even easier, LifeCam features TrueColor \r\nTechnology, which means your video remains bright and colorful in \r\nvirtually all light conditions. Use the built-in High-Fidelity \r\nMicrophone to bring it all together: the vivid sights, colors, and \r\nsounds of real life.', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(65, 1, 'Microsoft LifeCam Studio *FULL-HD* ', '&lt;h2&gt;&amp;nbsp;LifeCam Studio gets you the closest to being there&lt;/h2&gt;&lt;p&gt;&lt;br&gt;Enjoy\r\n a superior HD video quality with the LifeCam Studio, which includes a \r\n1080p HD sensor. But great video is about more than HD. Keep your \r\nsubject crisp with autofocus, from four inches to infinity. Shoot with \r\ngreat accuracy in wide angle with the LifeCam precision glass element \r\nlens. And, to make filming even easier, LifeCam features TrueColor \r\nTechnology, which means your video remains bright and colorful in \r\nvirtually all light conditions. Use the built-in High-Fidelity \r\nMicrophone to bring it all together: the vivid sights, colors, and \r\nsounds of real life.&lt;br&gt;&lt;/p&gt;', '', 'Microsoft LifeCam Studio *FULL-HD* ', '', ''),
(66, 2, 'Skeneris EPSON Perfection', '', '', 'Skeneris EPSON Perfection', '', ''),
(66, 1, 'EPSON Perfection', '', '', 'EPSON Perfection', '', ''),
(66, 3, 'EPSON Perfection', '', '', 'EPSON Perfection', '', ''),
(67, 3, 'MacBook Pro 15.4&quot; Retina', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;MacBook Pro 15.4&quot; Retina&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Spartesnis\r\n ir galingesnis, tačiau žymiai plonesnis ir lengvesnis nei anksčiau. \r\nJame yra ryškiausias ir spalvingiausias visų laikų nešiojamo „Mac“ \r\nekranas. Jo klaviatūroje įtaisyta „Touch Bar“ stiklo juosta su \r\n„Multi‑Touch“, kad galėtum iš karto pasiekti reikalingus įrankius, kai \r\ntik panorėsi. Naujasis „MacBook Pro“ sukurtas ieškant visiško proveržio.\r\n Ir dabar jis tavo rankose.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Visiškai naujas revoliucingas būdas naudotis savo „Mac“. &lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;„Touch\r\n Bar“ keičia nuo seno klaviatūros viršuje buvusius funkcijų mygtukus \r\nuniversalesniu ir pajėgesniu įrankiu.2 Tai juosta, kuri keičiasi \r\nautomatiškai, atsižvelgdama į tai, ką darai ir rodo aktualius įrankius, \r\nkuriais jau moki naudotis – sistemos valdiklius, tokius kaip garsumo ir \r\nryškumo slankiklius, interaktyvius būdus koreguoti ir naršyti turinį, \r\nišmaniąsias teksto įvedimo funkcijas – jaustukus ir dar daugiau. Be to, \r\nnuo šiol „Touch ID“ gali naudotis ir „Mac“, todėl gali prisijungti iš \r\nkarto.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Naujos greičio aukštumos &lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Naujasis\r\n „MacBook Pro“ yra visiškai naujo našumo ir mobilumo lygio nešiojamasis \r\nkompiuteris. Kad ir ką sugalvotum, naujausios grafikos technologijos, \r\nitin spartūs procesoriai, išmani saugykla ir kitos savybės padės tai \r\npaversti tikrove greičiau nei bet kada.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Grafika, kuri atveria akis&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Visų\r\n konfigūracijų 15 colių „MacBook Pro“ turi atskirą galingą „Radeon Pro“ \r\ngrafikos procesorių. „Radeon Pro“ grafikos procesorius, pagamintas \r\npasitelkus 14 nm technologiją, yra ir itin galingas, ir ypatingai \r\nefektyvus energijos naudojimo prasme. Dabar 4 GB GDDR5 atminties tampa \r\naukščiausios konfigūracijos standartu, kuris leidžia sklandžiai \r\nrealiuoju laiku atlikti profesionalias užduotis, pvz., atvaizduoti \r\ntrimates antraštes su „Final Cut Pro X“. Kiekviename 13 colių modelyje \r\nintegruotas galingas grafikos procesorius su įtaisyta 64 MB DRAM, kuri \r\npaspartina grafines užduotis. Tai reiškia, kad turi daugiau laiko kurti \r\nnuostabius dalykus. &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'MacBook Pro 15.4&quot; Retina', '', ''),
(67, 1, 'MacBook Pro 15.4&quot; Retina', '&lt;h2 align=&quot;justify&quot;&gt;MacBook Pro 15.4&quot; Retina&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;Spartesnis\r\n ir galingesnis, tačiau žymiai plonesnis ir lengvesnis nei anksčiau. \r\nJame yra ryškiausias ir spalvingiausias visų laikų nešiojamo „Mac“ \r\nekranas. Jo klaviatūroje įtaisyta „Touch Bar“ stiklo juosta su \r\n„Multi‑Touch“, kad galėtum iš karto pasiekti reikalingus įrankius, kai \r\ntik panorėsi. Naujasis „MacBook Pro“ sukurtas ieškant visiško proveržio.\r\n Ir dabar jis tavo rankose.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Visiškai naujas revoliucingas būdas naudotis savo „Mac“. &lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;„Touch\r\n Bar“ keičia nuo seno klaviatūros viršuje buvusius funkcijų mygtukus \r\nuniversalesniu ir pajėgesniu įrankiu.2 Tai juosta, kuri keičiasi \r\nautomatiškai, atsižvelgdama į tai, ką darai ir rodo aktualius įrankius, \r\nkuriais jau moki naudotis – sistemos valdiklius, tokius kaip garsumo ir \r\nryškumo slankiklius, interaktyvius būdus koreguoti ir naršyti turinį, \r\nišmaniąsias teksto įvedimo funkcijas – jaustukus ir dar daugiau. Be to, \r\nnuo šiol „Touch ID“ gali naudotis ir „Mac“, todėl gali prisijungti iš \r\nkarto.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Naujos greičio aukštumos &lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;Naujasis\r\n „MacBook Pro“ yra visiškai naujo našumo ir mobilumo lygio nešiojamasis \r\nkompiuteris. Kad ir ką sugalvotum, naujausios grafikos technologijos, \r\nitin spartūs procesoriai, išmani saugykla ir kitos savybės padės tai \r\npaversti tikrove greičiau nei bet kada.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Grafika, kuri atveria akis&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;Visų\r\n konfigūracijų 15 colių „MacBook Pro“ turi atskirą galingą „Radeon Pro“ \r\ngrafikos procesorių. „Radeon Pro“ grafikos procesorius, pagamintas \r\npasitelkus 14 nm technologiją, yra ir itin galingas, ir ypatingai \r\nefektyvus energijos naudojimo prasme. Dabar 4 GB GDDR5 atminties tampa \r\naukščiausios konfigūracijos standartu, kuris leidžia sklandžiai \r\nrealiuoju laiku atlikti profesionalias užduotis, pvz., atvaizduoti \r\ntrimates antraštes su „Final Cut Pro X“. Kiekviename 13 colių modelyje \r\nintegruotas galingas grafikos procesorius su įtaisyta 64 MB DRAM, kuri \r\npaspartina grafines užduotis. Tai reiškia, kad turi daugiau laiko kurti \r\nnuostabius dalykus. &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;', '', 'MacBook Pro 15.4&quot; Retina', '', ''),
(67, 2, 'MacBook Pro 15.4&quot; Retina', '&lt;h2 align=&quot;justify&quot;&gt;MacBook Pro 15.4&quot; Retina&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;Spartesnis ir galingesnis, tačiau žymiai plonesnis ir lengvesnis nei anksčiau. Jame yra ryškiausias ir spalvingiausias visų laikų nešiojamo „Mac“ ekranas. Jo klaviatūroje įtaisyta „Touch Bar“ stiklo juosta su „Multi‑Touch“, kad galėtum iš karto pasiekti reikalingus įrankius, kai tik panorėsi. Naujasis „MacBook Pro“ sukurtas ieškant visiško proveržio. Ir dabar jis tavo rankose.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Visiškai naujas revoliucingas būdas naudotis savo „Mac“. &lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;„Touch Bar“ keičia nuo seno klaviatūros viršuje buvusius funkcijų mygtukus universalesniu ir pajėgesniu įrankiu.2 Tai juosta, kuri keičiasi automatiškai, atsižvelgdama į tai, ką darai ir rodo aktualius įrankius, kuriais jau moki naudotis – sistemos valdiklius, tokius kaip garsumo ir ryškumo slankiklius, interaktyvius būdus koreguoti ir naršyti turinį, išmaniąsias teksto įvedimo funkcijas – jaustukus ir dar daugiau. Be to, nuo šiol „Touch ID“ gali naudotis ir „Mac“, todėl gali prisijungti iš karto.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Naujos greičio aukštumos &lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;Naujasis „MacBook Pro“ yra visiškai naujo našumo ir mobilumo lygio nešiojamasis kompiuteris. Kad ir ką sugalvotum, naujausios grafikos technologijos, itin spartūs procesoriai, išmani saugykla ir kitos savybės padės tai paversti tikrove greičiau nei bet kada.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Grafika, kuri atveria akis&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;Visų konfigūracijų 15 colių „MacBook Pro“ turi atskirą galingą „Radeon Pro“ grafikos procesorių. „Radeon Pro“ grafikos procesorius, pagamintas pasitelkus 14 nm technologiją, yra ir itin galingas, ir ypatingai efektyvus energijos naudojimo prasme. Dabar 4 GB GDDR5 atminties tampa aukščiausios konfigūracijos standartu, kuris leidžia sklandžiai realiuoju laiku atlikti profesionalias užduotis, pvz., atvaizduoti trimates antraštes su „Final Cut Pro X“. Kiekviename 13 colių modelyje integruotas galingas grafikos procesorius su įtaisyta 64 MB DRAM, kuri paspartina grafines užduotis. Tai reiškia, kad turi daugiau laiko kurti nuostabius dalykus. &lt;/p&gt;&lt;p align=&quot;center&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;div align=&quot;center&quot;&gt;&lt;iframe src=&quot;https://www.youtube.com/embed/WVPRkcczXCY?rel=0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen=&quot;&quot; width=&quot;560&quot; height=&quot;315&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;', '', 'MacBook Pro 15.4&quot; Retina', '', ''),
(68, 3, 'MacBook Pro 15.4&quot; Retina', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2 align=&quot;justify&quot;&gt;MacBook Pro 15.4&quot; Retina&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Spartesnis\r\n ir galingesnis, tačiau žymiai plonesnis ir lengvesnis nei anksčiau. \r\nJame yra ryškiausias ir spalvingiausias visų laikų nešiojamo „Mac“ \r\nekranas. Jo klaviatūroje įtaisyta „Touch Bar“ stiklo juosta su \r\n„Multi‑Touch“, kad galėtum iš karto pasiekti reikalingus įrankius, kai \r\ntik panorėsi. Naujasis „MacBook Pro“ sukurtas ieškant visiško proveržio.\r\n Ir dabar jis tavo rankose.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Visiškai naujas revoliucingas būdas naudotis savo „Mac“. &lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;„Touch\r\n Bar“ keičia nuo seno klaviatūros viršuje buvusius funkcijų mygtukus \r\nuniversalesniu ir pajėgesniu įrankiu.2 Tai juosta, kuri keičiasi \r\nautomatiškai, atsižvelgdama į tai, ką darai ir rodo aktualius įrankius, \r\nkuriais jau moki naudotis – sistemos valdiklius, tokius kaip garsumo ir \r\nryškumo slankiklius, interaktyvius būdus koreguoti ir naršyti turinį, \r\nišmaniąsias teksto įvedimo funkcijas – jaustukus ir dar daugiau. Be to, \r\nnuo šiol „Touch ID“ gali naudotis ir „Mac“, todėl gali prisijungti iš \r\nkarto.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Naujos greičio aukštumos &lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Naujasis\r\n „MacBook Pro“ yra visiškai naujo našumo ir mobilumo lygio nešiojamasis \r\nkompiuteris. Kad ir ką sugalvotum, naujausios grafikos technologijos, \r\nitin spartūs procesoriai, išmani saugykla ir kitos savybės padės tai \r\npaversti tikrove greičiau nei bet kada.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Grafika, kuri atveria akis&lt;/h3&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;Visų\r\n konfigūracijų 15 colių „MacBook Pro“ turi atskirą galingą „Radeon Pro“ \r\ngrafikos procesorių. „Radeon Pro“ grafikos procesorius, pagamintas \r\npasitelkus 14 nm technologiją, yra ir itin galingas, ir ypatingai \r\nefektyvus energijos naudojimo prasme. Dabar 4 GB GDDR5 atminties tampa \r\naukščiausios konfigūracijos standartu, kuris leidžia sklandžiai \r\nrealiuoju laiku atlikti profesionalias užduotis, pvz., atvaizduoti \r\ntrimates antraštes su „Final Cut Pro X“. Kiekviename 13 colių modelyje \r\nintegruotas galingas grafikos procesorius su įtaisyta 64 MB DRAM, kuri \r\npaspartina grafines užduotis. Tai reiškia, kad turi daugiau laiko kurti \r\nnuostabius dalykus. &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'MacBook Pro 15.4&quot; Retina', '', ''),
(68, 2, 'MacBook Pro 13.3&quot; Retina', '&lt;h2 align=&quot;justify&quot;&gt;MacBook Pro 15.4&quot; Retina&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;Spartesnis ir galingesnis, tačiau žymiai plonesnis ir lengvesnis nei anksčiau. Jame yra ryškiausias ir spalvingiausias visų laikų nešiojamo „Mac“ ekranas. Jo klaviatūroje įtaisyta „Touch Bar“ stiklo juosta su „Multi‑Touch“, kad galėtum iš karto pasiekti reikalingus įrankius, kai tik panorėsi. Naujasis „MacBook Pro“ sukurtas ieškant visiško proveržio. Ir dabar jis tavo rankose.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Visiškai naujas revoliucingas būdas naudotis savo „Mac“. &lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;„Touch Bar“ keičia nuo seno klaviatūros viršuje buvusius funkcijų mygtukus universalesniu ir pajėgesniu įrankiu.2 Tai juosta, kuri keičiasi automatiškai, atsižvelgdama į tai, ką darai ir rodo aktualius įrankius, kuriais jau moki naudotis – sistemos valdiklius, tokius kaip garsumo ir ryškumo slankiklius, interaktyvius būdus koreguoti ir naršyti turinį, išmaniąsias teksto įvedimo funkcijas – jaustukus ir dar daugiau. Be to, nuo šiol „Touch ID“ gali naudotis ir „Mac“, todėl gali prisijungti iš karto.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Naujos greičio aukštumos &lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;Naujasis „MacBook Pro“ yra visiškai naujo našumo ir mobilumo lygio nešiojamasis kompiuteris. Kad ir ką sugalvotum, naujausios grafikos technologijos, itin spartūs procesoriai, išmani saugykla ir kitos savybės padės tai paversti tikrove greičiau nei bet kada.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Grafika, kuri atveria akis&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;Visų konfigūracijų 15 colių „MacBook Pro“ turi atskirą galingą „Radeon Pro“ grafikos procesorių. „Radeon Pro“ grafikos procesorius, pagamintas pasitelkus 14 nm technologiją, yra ir itin galingas, ir ypatingai efektyvus energijos naudojimo prasme. Dabar 4 GB GDDR5 atminties tampa aukščiausios konfigūracijos standartu, kuris leidžia sklandžiai realiuoju laiku atlikti profesionalias užduotis, pvz., atvaizduoti trimates antraštes su „Final Cut Pro X“. Kiekviename 13 colių modelyje integruotas galingas grafikos procesorius su įtaisyta 64 MB DRAM, kuri paspartina grafines užduotis. Tai reiškia, kad turi daugiau laiko kurti nuostabius dalykus. &lt;/p&gt;&lt;p align=&quot;center&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;div align=&quot;center&quot;&gt;&lt;iframe src=&quot;https://www.youtube.com/embed/WVPRkcczXCY?rel=0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen=&quot;&quot; width=&quot;560&quot; height=&quot;315&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;', '', 'MacBook Pro 15.4&quot; Retina', '', ''),
(68, 1, 'MacBook Pro 15.4&quot; Retina', '&lt;h2 align=&quot;justify&quot;&gt;MacBook Pro 15.4&quot; Retina&lt;/h2&gt;&lt;p align=&quot;justify&quot;&gt;Spartesnis\r\n ir galingesnis, tačiau žymiai plonesnis ir lengvesnis nei anksčiau. \r\nJame yra ryškiausias ir spalvingiausias visų laikų nešiojamo „Mac“ \r\nekranas. Jo klaviatūroje įtaisyta „Touch Bar“ stiklo juosta su \r\n„Multi‑Touch“, kad galėtum iš karto pasiekti reikalingus įrankius, kai \r\ntik panorėsi. Naujasis „MacBook Pro“ sukurtas ieškant visiško proveržio.\r\n Ir dabar jis tavo rankose.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Visiškai naujas revoliucingas būdas naudotis savo „Mac“. &lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;„Touch\r\n Bar“ keičia nuo seno klaviatūros viršuje buvusius funkcijų mygtukus \r\nuniversalesniu ir pajėgesniu įrankiu.2 Tai juosta, kuri keičiasi \r\nautomatiškai, atsižvelgdama į tai, ką darai ir rodo aktualius įrankius, \r\nkuriais jau moki naudotis – sistemos valdiklius, tokius kaip garsumo ir \r\nryškumo slankiklius, interaktyvius būdus koreguoti ir naršyti turinį, \r\nišmaniąsias teksto įvedimo funkcijas – jaustukus ir dar daugiau. Be to, \r\nnuo šiol „Touch ID“ gali naudotis ir „Mac“, todėl gali prisijungti iš \r\nkarto.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Naujos greičio aukštumos &lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;Naujasis\r\n „MacBook Pro“ yra visiškai naujo našumo ir mobilumo lygio nešiojamasis \r\nkompiuteris. Kad ir ką sugalvotum, naujausios grafikos technologijos, \r\nitin spartūs procesoriai, išmani saugykla ir kitos savybės padės tai \r\npaversti tikrove greičiau nei bet kada.&lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 align=&quot;justify&quot;&gt;Grafika, kuri atveria akis&lt;/h3&gt;&lt;p align=&quot;justify&quot;&gt;Visų\r\n konfigūracijų 15 colių „MacBook Pro“ turi atskirą galingą „Radeon Pro“ \r\ngrafikos procesorių. „Radeon Pro“ grafikos procesorius, pagamintas \r\npasitelkus 14 nm technologiją, yra ir itin galingas, ir ypatingai \r\nefektyvus energijos naudojimo prasme. Dabar 4 GB GDDR5 atminties tampa \r\naukščiausios konfigūracijos standartu, kuris leidžia sklandžiai \r\nrealiuoju laiku atlikti profesionalias užduotis, pvz., atvaizduoti \r\ntrimates antraštes su „Final Cut Pro X“. Kiekviename 13 colių modelyje \r\nintegruotas galingas grafikos procesorius su įtaisyta 64 MB DRAM, kuri \r\npaspartina grafines užduotis. Tai reiškia, kad turi daugiau laiko kurti \r\nnuostabius dalykus. &lt;/p&gt;&lt;p align=&quot;justify&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;', '', 'MacBook Pro 15.4&quot; Retina', '', ''),
(69, 1, 'Dell loptop', '', '', 'Dell loptop', '', ''),
(69, 2, 'Dell kompiuteris', '', '', 'Dell kompiuteris', '', ''),
(70, 1, 'Dell loptop', '', '', 'Dell loptop', '', ''),
(70, 2, 'Dell kompiuteris', '', '', 'Dell kompiuteris', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(70, 3, 'Dell loptop', '', '', 'Dell loptop', '', ''),
(69, 3, 'Dell loptop', '', '', 'Dell loptop', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2443, 60, 'catalog/demo/Prekes/PRN3.jpg', 0),
(2435, 59, 'catalog/demo/Prekes/PRN2.png', 0),
(2428, 58, 'catalog/demo/Prekes/PR1.png', 0),
(2429, 58, 'catalog/demo/Prekes/PR1.png', 0),
(2430, 58, 'catalog/demo/Prekes/PR1.png', 0),
(2442, 60, 'catalog/demo/Prekes/PR1.png', 0),
(2437, 59, 'catalog/demo/Prekes/PRN2.png', 0),
(2436, 59, 'catalog/demo/Prekes/PRN2.png', 0),
(2427, 58, 'catalog/demo/Prekes/PR1.png', 0),
(2422, 57, 'catalog/demo/Prekes/m3.png', 0),
(2421, 57, 'catalog/demo/Prekes/m6.png', 0),
(2414, 56, 'catalog/demo/Prekes/m6.png', 0),
(2420, 57, 'catalog/demo/Prekes/m5.png', 0),
(2413, 56, 'catalog/demo/Prekes/m5.png', 0),
(2411, 56, 'catalog/demo/Prekes/m2.png', 0),
(2407, 55, 'catalog/demo/Prekes/16811.1.0.jpg', 0),
(2380, 51, 'catalog/demo/Prekes/_20171130170444_Curved_Monitor.png', 0),
(2399, 54, 'catalog/demo/Prekes/craft.png', 0),
(2398, 54, 'catalog/demo/Prekes/craft.png', 0),
(2397, 54, 'catalog/demo/Prekes/craft.png', 0),
(2385, 52, 'catalog/demo/Prekes/210-AMRC_v3.jpg', 0),
(2386, 52, 'catalog/demo/Prekes/210-AMRC_v3.jpg', 0),
(2387, 52, 'catalog/demo/Prekes/210-AMRC_v3.jpg', 0),
(2388, 52, 'catalog/demo/Prekes/210-AMRC_v3.jpg', 0),
(2396, 53, 'catalog/demo/Prekes/apiudak3h04ldel5geiy.jpg', 0),
(2393, 53, 'catalog/demo/Prekes/apiudak3h04ldel5geiy.jpg', 0),
(2394, 53, 'catalog/demo/Prekes/apiudak3h04ldel5geiy.jpg', 0),
(2395, 53, 'catalog/demo/Prekes/apiudak3h04ldel5geiy.jpg', 0),
(2419, 57, 'catalog/demo/Prekes/m2.png', 0),
(2412, 56, 'catalog/demo/Prekes/m3.png', 0),
(2405, 55, 'catalog/demo/Prekes/16811.1.0.jpg', 0),
(2406, 55, 'catalog/demo/Prekes/16811.1.0.jpg', 0),
(2400, 54, 'catalog/demo/Prekes/craft.png', 0),
(2379, 51, 'catalog/demo/Prekes/_20171130170444_Curved_Monitor.png', 0),
(2378, 51, 'catalog/demo/Prekes/_20171130170444_Curved_Monitor.png', 0),
(2365, 50, 'catalog/demo/Prekes/d1.jpg', 0),
(2366, 50, 'catalog/demo/Prekes/d3.png', 0),
(2367, 50, 'catalog/demo/Prekes/d2.png', 0),
(2368, 50, 'catalog/demo/Prekes/d4.jpg', 0),
(2377, 51, 'catalog/demo/Prekes/_20171130170444_Curved_Monitor.png', 0),
(2441, 60, 'catalog/demo/Prekes/PRN2.png', 0),
(2449, 61, 'catalog/demo/Prekes/PRN2.png', 0),
(2448, 61, 'catalog/demo/Prekes/PR1.png', 0),
(2447, 61, 'catalog/demo/Prekes/PRN3.jpg', 0),
(2450, 62, 'catalog/demo/Prekes/K4.jpg', 0),
(2451, 62, 'catalog/demo/Prekes/K3.jpg', 0),
(2452, 62, 'catalog/demo/Prekes/K2.jpg', 0),
(2458, 63, 'catalog/demo/Prekes/k1.jpg', 0),
(2457, 63, 'catalog/demo/Prekes/K3.jpg', 0),
(2456, 63, 'catalog/demo/Prekes/K4.jpg', 0),
(2459, 64, 'catalog/demo/Prekes/k1.jpg', 0),
(2460, 64, 'catalog/demo/Prekes/K3.jpg', 0),
(2461, 64, 'catalog/demo/Prekes/K4.jpg', 0),
(2467, 65, 'catalog/demo/Prekes/K4.jpg', 0),
(2466, 65, 'catalog/demo/Prekes/K3.jpg', 0),
(2465, 65, 'catalog/demo/Prekes/k1.jpg', 0),
(2468, 66, 'catalog/demo/Prekes/sk3.jpg', 0),
(2469, 66, 'catalog/demo/Prekes/sk2.jpg', 0),
(2470, 66, 'catalog/demo/Prekes/sk4.jpg', 0),
(2490, 67, 'catalog/demo/Prekes/a4.jpg', 0),
(2489, 67, 'catalog/demo/Prekes/a3.jpg', 0),
(2488, 67, 'catalog/demo/Prekes/a00.jpg', 0),
(2487, 67, 'catalog/demo/Prekes/a1.jpg', 0),
(2506, 68, 'catalog/demo/Prekes/a00.jpg', 0),
(2505, 68, 'catalog/demo/Prekes/a3.jpg', 0),
(2504, 68, 'catalog/demo/Prekes/a4.jpg', 0),
(2503, 69, 'catalog/demo/Prekes/del5.jpg', 0),
(2502, 69, 'catalog/demo/Prekes/del4.jpg', 0),
(2501, 69, 'catalog/demo/Prekes/del2-1.jpg', 0),
(2498, 70, 'catalog/demo/Prekes/del2-1.jpg', 0),
(2499, 70, 'catalog/demo/Prekes/del4.jpg', 0),
(2500, 70, 'catalog/demo/Prekes/del5.jpg', 0),
(2507, 68, 'catalog/demo/Prekes/a1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(227, 67, 5, '', 1),
(228, 67, 11, '', 1),
(230, 68, 11, '', 1),
(229, 68, 5, '', 1),
(231, 69, 11, '', 1),
(232, 70, 11, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(17, 227, 67, 5, 42, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(18, 227, 67, 5, 41, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(22, 228, 67, 11, 50, 100, 1, '450.0000', '+', 0, '+', '0.00000000', '+'),
(21, 228, 67, 11, 49, 100, 1, '300.0000', '+', 0, '+', '0.00000000', '+'),
(20, 228, 67, 11, 48, 100, 1, '100.0000', '+', 0, '+', '0.00000000', '+'),
(19, 228, 67, 11, 46, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(28, 230, 68, 11, 50, 100, 1, '450.0000', '+', 0, '+', '0.00000000', '+'),
(26, 230, 68, 11, 48, 100, 1, '100.0000', '+', 0, '+', '0.00000000', '+'),
(23, 229, 68, 5, 41, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(24, 229, 68, 5, 42, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(32, 231, 69, 11, 50, 100, 1, '250.0000', '+', 0, '+', '0.00000000', '+'),
(30, 231, 69, 11, 48, 100, 1, '100.0000', '+', 0, '+', '0.00000000', '+'),
(33, 232, 70, 11, 46, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(34, 232, 70, 11, 48, 100, 1, '100.0000', '+', 0, '+', '0.00000000', '+'),
(35, 232, 70, 11, 49, 100, 1, '180.0000', '+', 0, '+', '0.00000000', '+'),
(36, 232, 70, 11, 50, 100, 1, '250.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(448, 52, 1, 0, '1520.0000', '0000-00-00', '0000-00-00'),
(446, 51, 1, 0, '1520.0000', '0000-00-00', '0000-00-00'),
(442, 50, 1, 0, '520.0000', '0000-00-00', '0000-00-00'),
(450, 61, 1, 0, '179.0000', '0000-00-00', '0000-00-00'),
(451, 59, 1, 0, '400.0000', '0000-00-00', '0000-00-00'),
(452, 65, 1, 0, '669.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(50, 25),
(50, 28),
(51, 25),
(51, 28),
(52, 25),
(52, 28),
(53, 25),
(53, 28),
(54, 25),
(54, 29),
(55, 25),
(55, 29),
(56, 25),
(56, 29),
(57, 25),
(57, 29),
(58, 25),
(58, 30),
(59, 25),
(59, 30),
(60, 25),
(60, 30),
(61, 25),
(61, 30),
(62, 25),
(62, 32),
(63, 25),
(63, 32),
(64, 25),
(64, 32),
(65, 25),
(65, 32),
(66, 25),
(66, 31),
(67, 20),
(68, 20),
(69, 20),
(70, 20);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(50, 0, 2),
(51, 0, 2),
(52, 0, 2),
(53, 0, 2),
(54, 0, 2),
(55, 0, 2),
(56, 0, 2),
(57, 0, 2),
(58, 0, 2),
(59, 0, 2),
(60, 0, 2),
(61, 0, 2),
(62, 0, 2),
(63, 0, 2),
(64, 0, 2),
(65, 0, 2),
(66, 0, 2),
(67, 0, 2),
(68, 0, 2),
(69, 0, 2),
(70, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Grąžinti pinigai'),
(3, 3, 'Replacement Sent'),
(3, 2, 'Pakeista prekė išsiųsta'),
(1, 3, 'Refunded');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(2, 3, 'Получен неправильный товар'),
(5, 1, 'Other, please supply details'),
(2, 1, 'Received Wrong Item'),
(1, 2, 'Gauta pažeista (sugadinta) prekė'),
(2, 2, 'Gauta ne ta prekė'),
(5, 3, 'Другое, пожалуйста, сообщите подробности'),
(5, 2, 'Kita, pateikite detaliau kodėl prekė grąžinama'),
(1, 1, 'Dead On Arrival'),
(1, 3, 'Получил поврежденный продукт');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(3, 3, 'законченный'),
(2, 1, 'Awaiting Products'),
(3, 1, 'Complete'),
(3, 2, 'Įvykdyta'),
(2, 2, 'Laukiama grąžinamos prekės'),
(2, 3, 'Ожидаемые Продукты');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1461, 0, 'pim', 'pim_height', '400', 0),
(1670, 0, 'config', 'journal_db_check_journal2_newsletter_store_id', '1', 0),
(1667, 0, 'config', 'config_error_display', '0', 0),
(1668, 0, 'config', 'config_error_log', '1', 0),
(1669, 0, 'config', 'config_error_filename', 'error.log', 0),
(1460, 0, 'pim', 'pim_width', '800', 0),
(1459, 0, 'pim', 'pim_language', '', 0),
(1659, 0, 'config', 'config_compression', '0', 0),
(1660, 0, 'config', 'config_secure', '0', 0),
(1661, 0, 'config', 'config_password', '1', 0),
(1662, 0, 'config', 'config_shared', '1', 0),
(1663, 0, 'config', 'config_encryption', 'OGVB0KZw5d592jf1A321CVrVOwOrdbg1CSJrvGWeakN2wLtDed5dIjCqd0AMkybJKLHYzTUWZbQjF9BSsITNJbwfWCmd28unXMMIRoMgFQ0rBeqLCk7qVxK7vPquz8NXHDxKjwNUMo1ce6n34KfKp0YupqmzQjxTSUzXvWdllSLFkwWz6x8VWLOSmd2DfoT7mv2wWdFws3EksPox5sHokqdARnMz4PbbVxCm9ys1zOSYRHFXtetmGMQ0GcmDTCH1h8dQuCH35MNalGKvkY5kUUMTgEhcxanr3hSViMVzQMgWPQLfrM0Mx35NEJ4JU5UmaxXjDyHnSbk1ENYqi4OE3nIjdAVJflYTp9YmGsEKYbBPiwFQpNO1CWHrm7gVJkrhmRRq647u6Vkb2bDsjVqXY3tmdD7gvIHei3pAt59ioDbEgjhGlcjSef79NzCojSQZYxIP7K182o9hJGnLsQ5zPsV3lOpHvDrWohnWf92AW2M1YM0Xs7BBQUolFe58xlpsvsmj12LtdY4krnPBLsiw3UIw0iRUMRxVKLdtIGpdMrh6MbQEdF0FHbXLSIF3eJOeIhWigF8nQtmLSkhznmuDGdMKhm9J054lrwQfnMuFDKV6NtQGkjYSOy7trScl6kTL2GXYXRXe8saBBHplPTeZvnktys1ZjfcS9nl4CMaPRuJad7yRBhkTUEoLEgdssjSyMYJYwZO9HIseARCl2zDLCa0CZP0iOGRFzJhDSYrVcG34A9anC8YCdsssuDOYWEY6qz7L3fjmFkjCnBmdZTgFUQSw8CqAFUziLzf1SyoznTkt4YaGXSui33mp6vxSiqybQVCjM5jQtB2PF5RQpi8psiLkgnQJu9lyz7NYgtL6K3QL4UbHKvTM6lbx1ePrXrP1IkfilYvJ4K2AkSkUFeaCXs6HWMQ53DgegB11js38Mw1lfLVK1GcGOIp8xec6bWnT81sYrBy3LtwW1oSNTXpeLanqqd7PweunkeJApUfqScNLbnN1ryjpqqBMqWKf8WWF', 0),
(1664, 0, 'config', 'config_file_max_size', '300000', 0),
(1665, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1595, 0, 'config', 'config_zone_id', '', 0),
(1596, 0, 'config', 'config_language', 'lt-lt', 0),
(1597, 0, 'config', 'config_admin_language', 'lt-lt', 0),
(1598, 0, 'config', 'config_currency', 'EUR', 0),
(1599, 0, 'config', 'config_currency_auto', '0', 0),
(1600, 0, 'config', 'config_length_class_id', '1', 0),
(1601, 0, 'config', 'config_weight_class_id', '1', 0),
(1602, 0, 'config', 'config_product_count', '0', 0),
(1603, 0, 'config', 'config_limit_admin', '20', 0),
(1604, 0, 'config', 'config_review_status', '1', 0),
(1605, 0, 'config', 'config_review_guest', '1', 0),
(1606, 0, 'config', 'config_voucher_min', '1', 0),
(1607, 0, 'config', 'config_voucher_max', '1000', 0),
(1608, 0, 'config', 'config_tax', '0', 0),
(1609, 0, 'config', 'config_tax_default', 'shipping', 0),
(1610, 0, 'config', 'config_tax_customer', 'payment', 0),
(1611, 0, 'config', 'config_customer_online', '1', 0),
(1612, 0, 'config', 'config_customer_activity', '1', 0),
(1613, 0, 'config', 'config_customer_search', '0', 0),
(1614, 0, 'config', 'config_customer_group_id', '1', 0),
(1615, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1616, 0, 'config', 'config_customer_price', '0', 0),
(4, 0, 'voucher', 'voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'voucher_status', '1', 0),
(95, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(96, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'shipping', 'shipping_sort_order', '3', 0),
(98, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(99, 0, 'sub_total', 'sub_total_status', '1', 0),
(100, 0, 'tax', 'tax_status', '1', 0),
(101, 0, 'total', 'total_sort_order', '9', 0),
(102, 0, 'total', 'total_status', '1', 0),
(103, 0, 'tax', 'tax_sort_order', '5', 0),
(104, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(105, 0, 'cod', 'cod_sort_order', '5', 0),
(106, 0, 'cod', 'cod_total', '0.01', 0),
(107, 0, 'cod', 'cod_order_status_id', '1', 0),
(108, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(109, 0, 'cod', 'cod_status', '1', 0),
(110, 0, 'shipping', 'shipping_status', '1', 0),
(111, 0, 'shipping', 'shipping_estimator', '1', 0),
(112, 0, 'coupon', 'coupon_sort_order', '4', 0),
(113, 0, 'coupon', 'coupon_status', '1', 0),
(1081, 0, 'intuitiveshipping', 'intuitiveshipping_ocapps_status', '', 0),
(1080, 0, 'intuitiveshipping', 'intuitiveshipping_backup', '', 0),
(119, 0, 'credit', 'credit_sort_order', '7', 0),
(120, 0, 'credit', 'credit_status', '1', 0),
(121, 0, 'reward', 'reward_sort_order', '2', 0),
(122, 0, 'reward', 'reward_status', '1', 0),
(123, 0, 'category', 'category_status', '1', 0),
(124, 0, 'account', 'account_status', '1', 0),
(125, 0, 'affiliate', 'affiliate_status', '1', 0),
(1571, 0, 'theme_default', 'theme_default_image_wishlist_width', '120', 0),
(1570, 0, 'theme_default', 'theme_default_image_compare_height', '150', 0),
(1569, 0, 'theme_default', 'theme_default_image_compare_width', '150', 0),
(1568, 0, 'theme_default', 'theme_default_image_related_height', '250', 0),
(1567, 0, 'theme_default', 'theme_default_image_related_width', '250', 0),
(1566, 0, 'theme_default', 'theme_default_image_additional_height', '150', 0),
(1565, 0, 'theme_default', 'theme_default_image_additional_width', '150', 0),
(1564, 0, 'theme_default', 'theme_default_image_product_height', '250', 0),
(1563, 0, 'theme_default', 'theme_default_image_product_width', '250', 0),
(1562, 0, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(1561, 0, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(1560, 0, 'theme_default', 'theme_default_image_thumb_height', '600', 0),
(1559, 0, 'theme_default', 'theme_default_image_thumb_width', '600', 0),
(1558, 0, 'theme_default', 'theme_default_image_category_height', '250', 0),
(1557, 0, 'theme_default', 'theme_default_image_category_width', '250', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(158, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(159, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(160, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(161, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(167, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(168, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(1658, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1657, 0, 'config', 'config_seo_url', '1', 0),
(1656, 0, 'config', 'config_maintenance', '0', 0),
(1654, 0, 'config', 'config_mail_alert', '[\"account\",\"affiliate\",\"order\",\"review\"]', 1),
(1655, 0, 'config', 'config_mail_alert_email', '', 0),
(1653, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1652, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1651, 0, 'config', 'config_mail_smtp_password', '', 0),
(1650, 0, 'config', 'config_mail_smtp_username', '', 0),
(1649, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(268, 0, 'information', 'information_status', '1', 0),
(1648, 0, 'config', 'config_mail_parameter', '', 0),
(1647, 0, 'config', 'config_mail_protocol', 'mail', 0),
(1646, 0, 'config', 'config_ftp_status', '0', 0),
(1645, 0, 'config', 'config_ftp_root', '', 0),
(1644, 0, 'config', 'config_ftp_password', '', 0),
(1458, 0, 'pim', 'pim_uploadMaxType', 'M', 0),
(1457, 0, 'pim', 'pim_uploadMaxSize', '1500', 0),
(1456, 0, 'pim', 'pim_uploadOverwrite', '0', 0),
(1455, 0, 'pim', 'pim_copyOverwrite', '0', 0),
(1454, 0, 'pim', 'pim_deletedef', '0', 0),
(1453, 0, 'pim', 'pim_miu', '0', 0),
(1452, 0, 'pim', 'pim_status', '1', 0),
(1079, 0, 'intuitiveshipping', 'intuitiveshipping_cache', '', 0),
(1078, 0, 'intuitiveshipping', 'intuitiveshipping_debug', '', 0),
(1075, 0, 'intuitiveshipping', 'intuitiveshipping_title', '{\"lt-lt\":\"\",\"en-gb\":\"\",\"ru-ru\":\"\"}', 1),
(1077, 0, 'intuitiveshipping', 'intuitiveshipping_sort_quotes', '0', 0),
(1076, 0, 'intuitiveshipping', 'intuitiveshipping_sort_order', '', 0),
(1074, 0, 'intuitiveshipping', 'intuitiveshipping_test', '0', 0),
(893, 0, 'bank_transfer', 'bank_transfer_bank2', 'UAB &quot;UABAS&quot;\r\nĮm. kodas: 123456789\r\nBankas: SEB\r\nA/S: LT0000000000000000\r\nSWIFT kodas 0000000000\r\nBanko kodas 000000\r\n\r\nPaskirtis: &quot;įrašykite užsakymo numerį&quot;', 0),
(894, 0, 'bank_transfer', 'bank_transfer_bank1', 'UAB &quot;UABAS&quot;\r\nĮm. kodas: 123456789\r\nBankas: SEB\r\nA/S: LT0000000000000000\r\nSWIFT kodas 0000000000\r\nBanko kodas 000000\r\n\r\nPaskirtis: &quot;įrašykite užsakymo numerį&quot;', 0),
(895, 0, 'bank_transfer', 'bank_transfer_bank3', 'UAB &quot;UABAS&quot;\r\nĮm. kodas: 123456789\r\nBankas: SEB\r\nA/S: LT0000000000000000\r\nSWIFT kodas 0000000000\r\nBanko kodas 000000\r\n\r\nPaskirtis: &quot;įrašykite užsakymo numerį&quot;', 0),
(896, 0, 'bank_transfer', 'bank_transfer_total', '', 0),
(897, 0, 'bank_transfer', 'bank_transfer_order_status_id', '1', 0),
(898, 0, 'bank_transfer', 'bank_transfer_geo_zone_id', '0', 0),
(899, 0, 'bank_transfer', 'bank_transfer_status', '1', 0),
(900, 0, 'bank_transfer', 'bank_transfer_sort_order', '2', 0),
(1643, 0, 'config', 'config_ftp_username', '', 0),
(1642, 0, 'config', 'config_ftp_port', '21', 0),
(1641, 0, 'config', 'config_ftp_hostname', 'domenas.lt', 0),
(1640, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1639, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(1638, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1637, 0, 'config', 'config_captcha', '', 0),
(1636, 0, 'config', 'config_return_status_id', '2', 0),
(1635, 0, 'config', 'config_return_id', '7', 0),
(1634, 0, 'config', 'config_affiliate_id', '4', 0),
(1633, 0, 'config', 'config_affiliate_commission', '', 0),
(1632, 0, 'config', 'config_affiliate_auto', '1', 0),
(1631, 0, 'config', 'config_affiliate_approval', '0', 0),
(1630, 0, 'config', 'config_stock_checkout', '1', 0),
(1629, 0, 'config', 'config_stock_warning', '1', 0),
(1073, 0, 'intuitiveshipping', 'intuitiveshipping_status', '1', 0),
(1628, 0, 'config', 'config_stock_display', '0', 0),
(1556, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(1555, 0, 'theme_default', 'theme_default_product_limit', '16', 0),
(1554, 0, 'theme_default', 'theme_default_status', '1', 0),
(1553, 0, 'theme_default', 'theme_default_directory', 'journal2', 0),
(1107, 0, 'journal2_side_blocks', 'journal2_side_blocks_88_status', '0', 0),
(1108, 0, 'journal2_side_blocks', 'journal2_side_blocks_89_status', '0', 0),
(1109, 0, 'journal2_side_blocks', 'journal2_side_blocks_90_status', '0', 0),
(1110, 0, 'journal2_side_blocks', 'journal2_side_blocks_91_status', '0', 0),
(1111, 0, 'journal2_side_blocks', 'journal2_side_blocks_92_status', '0', 0),
(1112, 0, 'journal2_side_blocks', 'journal2_side_blocks_93_status', '0', 0),
(1205, 0, 'journal2_simple_slider', 'journal2_simple_slider_186_status', '0', 0),
(1116, 0, 'journal2_carousel_grid', 'journal2_carousel_grid_97_status', '0', 0),
(1117, 0, 'journal2_newsletter', 'journal2_newsletter_98_status', '0', 0),
(1118, 0, 'journal2_newsletter', 'journal2_newsletter_99_status', '0', 0),
(1316, 0, 'journal2_side_category', 'journal2_side_category_205_status', '1', 0),
(1208, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_189_status', '0', 0),
(1204, 0, 'journal2_static_banners', 'journal2_static_banners_185_status', '0', 0),
(1201, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_182_status', '0', 0),
(1202, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_183_status', '0', 0),
(1203, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_184_status', '1', 0),
(1196, 0, 'journal2_custom_sections', 'journal2_custom_sections_177_status', '0', 0),
(1195, 0, 'journal2_custom_sections', 'journal2_custom_sections_176_status', '0', 0),
(1207, 0, 'journal2_text_rotator', 'journal2_text_rotator_188_status', '0', 0),
(1206, 0, 'journal2_advanced_grid', 'journal2_advanced_grid_187_status', '0', 0),
(1315, 0, 'journal2_side_category', 'journal2_side_category_204_status', '1', 0),
(1146, 0, 'journal2_fullscreen_slider', 'journal2_fullscreen_slider_127_status', '0', 0),
(1147, 0, 'journal2_fullscreen_slider', 'journal2_fullscreen_slider_128_status', '0', 0),
(1200, 0, 'journal2_photo_gallery', 'journal2_photo_gallery_181_status', '0', 0),
(1307, 0, 'journal2_side_products', 'journal2_side_products_196_status', '1', 0),
(1306, 0, 'journal2_side_products', 'journal2_side_products_195_status', '1', 0),
(1199, 0, 'journal2_carousel', 'journal2_carousel_180_status', '1', 0),
(1198, 0, 'journal2_carousel', 'journal2_carousel_179_status', '0', 0),
(1197, 0, 'journal2_carousel', 'journal2_carousel_178_status', '0', 0),
(1683, 0, 'ckeditorfull', 'ckeditorfull_acf', 'false', 0),
(1682, 0, 'ckeditorfull', 'ckeditorfull_apikey', '', 0),
(1681, 0, 'ckeditorfull', 'ckeditorfull_height', '100', 0),
(1680, 0, 'ckeditorfull', 'ckeditorfull_skin', 'bootstrapck', 0),
(1671, 0, 'journal2_slider', 'journal2_slider_218_status', '1', 0),
(1320, 0, 'journal2_super_filter', 'journal2_super_filter_209_status', '1', 0),
(1319, 0, 'journal2_super_filter', 'journal2_super_filter_208_status', '1', 0),
(1318, 0, 'journal2_super_filter', 'journal2_super_filter_207_status', '1', 0),
(1594, 0, 'config', 'config_country_id', '123', 0),
(1322, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_211_status', '0', 0),
(1593, 0, 'config', 'config_comment', '', 0),
(1323, 0, 'journal2_blog_categories', 'journal2_blog_categories_212_status', '0', 0),
(1627, 0, 'config', 'config_api_id', '1', 0),
(1326, 0, 'journal2_blog_search', 'journal2_blog_search_215_status', '0', 0),
(1626, 0, 'config', 'config_fraud_status_id', '7', 0),
(1325, 0, 'journal2_blog_comments', 'journal2_blog_comments_214_status', '0', 0),
(1625, 0, 'config', 'config_complete_status', '[\"3\",\"5\"]', 1),
(1327, 0, 'journal2_blog_tags', 'journal2_blog_tags_216_status', '0', 0),
(1314, 0, 'journal2_side_category', 'journal2_side_category_203_status', '1', 0),
(1313, 0, 'journal2_side_category', 'journal2_side_category_202_status', '1', 0),
(1312, 0, 'journal2_side_category', 'journal2_side_category_201_status', '1', 0),
(1666, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1624, 0, 'config', 'config_processing_status', '[\"3\",\"5\",\"2\",\"1\"]', 1),
(1621, 0, 'config', 'config_checkout_guest', '1', 0),
(1622, 0, 'config', 'config_checkout_id', '7', 0),
(1623, 0, 'config', 'config_order_status_id', '1', 0),
(1617, 0, 'config', 'config_login_attempts', '5', 0),
(1618, 0, 'config', 'config_account_id', '3', 0),
(1619, 0, 'config', 'config_invoice_prefix', 'INV-2018-00', 0),
(1620, 0, 'config', 'config_cart_weight', '0', 0),
(1592, 0, 'config', 'config_open', 'Prekyba internetu:\r\nI-VII - 24/7', 0),
(1591, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(1590, 0, 'config', 'config_fax', '+37000000000', 0),
(1589, 0, 'config', 'config_telephone', '+37000000000', 0),
(1588, 0, 'config', 'config_email', 'info@manodomenas.lt', 0),
(1587, 0, 'config', 'config_geocode', '', 0),
(1585, 0, 'config', 'config_owner', 'vardenis pavardenis', 0),
(1586, 0, 'config', 'config_address', 'Įm. kodas: 123456789 \r\nGatvės g. 1-1, Vilnius \r\nEl. paštas: info@manodomenas.lt', 0),
(1584, 0, 'config', 'config_name', 'UAB &quot;Uabas&quot;', 0),
(1583, 0, 'config', 'config_layout_id', '4', 0),
(1582, 0, 'config', 'config_theme', 'theme_default', 0),
(1308, 0, 'journal2_side_products', 'journal2_side_products_197_status', '1', 0),
(1309, 0, 'journal2_side_products', 'journal2_side_products_198_status', '1', 0),
(1310, 0, 'journal2_side_products', 'journal2_side_products_199_status', '1', 0),
(1311, 0, 'journal2_side_products', 'journal2_side_products_200_status', '0', 0),
(1317, 0, 'journal2_side_category', 'journal2_side_category_206_status', '1', 0),
(1321, 0, 'journal2_super_filter', 'journal2_super_filter_210_status', '1', 0),
(1580, 0, 'config', 'config_meta_description', '{\"2\":\"\",\"1\":\"\",\"3\":\"\"}', 1),
(1581, 0, 'config', 'config_meta_keyword', '{\"2\":\"\",\"1\":\"\",\"3\":\"\"}', 1),
(1572, 0, 'theme_default', 'theme_default_image_wishlist_height', '120', 0),
(1573, 0, 'theme_default', 'theme_default_image_cart_width', '120', 0),
(1574, 0, 'theme_default', 'theme_default_image_cart_height', '120', 0),
(1575, 0, 'theme_default', 'theme_default_image_location_width', '200', 0),
(1576, 0, 'theme_default', 'theme_default_image_location_height', '100', 0),
(1579, 0, 'config', 'config_meta_title', '{\"2\":\"Internetin\\u0117 parduotuv\\u0117 | manodomenas.lt\",\"1\":\"Online Store | manodomenas.lt\",\"3\":\"Online Store | manodomenas.lt\"}', 1),
(1578, 0, 'journal2_header_notice', 'journal2_header_notice_217_status', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 3, 'на складе'),
(8, 3, 'Предзаказ'),
(5, 3, 'нет на складе'),
(6, 3, '2-3 дня'),
(7, 1, 'In Stock'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'Sandėlyje'),
(8, 1, 'Pre-Order'),
(5, 2, 'Laikinai nėra'),
(6, 2, 'Per 5 d.d.'),
(8, 2, 'Laikinai nėra');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Apmokestintos prekės (PVM)', 'Apmokestintos prekės (PVM)', '2009-01-06 23:21:53', '2017-07-19 20:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 4, 'PVM (21%)', '21.0000', 'P', '2011-03-09 21:17:10', '2017-07-19 20:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(129, 9, 86, 'shipping', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`, `language_id`) VALUES
(848, 'category_id=20', 'desktops', 0),
(858, 'information_id=4', 'apie-mus', 2),
(859, 'information_id=5', 'atsiskaitymo-budai', 2),
(868, 'information_id=8', 'slapukai', 2),
(856, 'information_id=3', 'privatumo-politika', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, '@root', '6a7078b159e469a9b69b28ccca31c6e8ca1f4041', 'BQdZTSX8t', 'root', 'root', 'gediminas.venckus.gv@gmail.com', '', '', '145.253.92.206', 1, '2017-07-19 18:29:40'),
(2, 10, 'demo', '138e37b0f2bd00b5eea55c57bf0ef0bbbe4044b8', 'odTfic15V', 'demo', 'demo', 'demo@demo.lt', '', '', '127.0.0.1', 1, '2017-07-19 18:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/product_extra\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"enhancement\\/ea_vqmod_manager\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pim\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/paysera\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/intuitiveshipping\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/journal2\",\"extension\\/module\\/journal2\",\"module\\/journal2\",\"extension\\/payment\\/paysera\",\"extension\\/module\\/ckeditorfull\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/product_extra\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"enhancement\\/ea_vqmod_manager\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pim\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/paysera\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/intuitiveshipping\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/journal2\",\"extension\\/module\\/journal2\",\"module\\/journal2\",\"extension\\/payment\\/paysera\",\"extension\\/module\\/ckeditorfull\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General'),
(6, 3, 'Christmas'),
(7, 3, 'Birthday'),
(8, 3, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 3, 'грамм', 'г'),
(2, 1, 'Gram', 'g'),
(1, 2, 'Kilogramai', 'kg'),
(2, 2, 'Gramai', 'g'),
(1, 3, 'Килограмм', 'кг');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipėda', 'KL', 1),
(1914, 123, 'Marijampolė', 'MA', 1),
(1915, 123, 'Panevėžys', 'PA', 1),
(1916, 123, 'Šiauliai', 'SI', 1),
(1917, 123, 'Tauragė', 'TA', 1),
(1918, 123, 'Telšiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 123, 'Kuršių Nerija', 'KN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(110, 123, 0, 4, '2017-07-19 20:35:33', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`),
  ADD KEY `affiliate_id` (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`),
  ADD KEY `affiliate_id` (`affiliate_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`),
  ADD KEY `api_id` (`api_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`),
  ADD KEY `api_id` (`api_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_group_id` (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`),
  ADD KEY `banner_id` (`banner_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`),
  ADD KEY `layout_id` (`layout_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_group_id` (`customer_group_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_ea_vqmod_manager`
--
ALTER TABLE `oc_ea_vqmod_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`),
  ADD KEY `filter_group_id` (`filter_group_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`),
  ADD KEY `filter_group_id` (`filter_group_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`),
  ADD KEY `layout_id` (`layout_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_intuitive_shipping`
--
ALTER TABLE `oc_intuitive_shipping`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `tax_class_id` (`tax_class_id`);

--
-- Indexes for table `oc_journal2_blog_category`
--
ALTER TABLE `oc_journal2_blog_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_journal2_blog_category_description`
--
ALTER TABLE `oc_journal2_blog_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`);

--
-- Indexes for table `oc_journal2_blog_category_to_layout`
--
ALTER TABLE `oc_journal2_blog_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`),
  ADD KEY `layout_id` (`layout_id`);

--
-- Indexes for table `oc_journal2_blog_category_to_store`
--
ALTER TABLE `oc_journal2_blog_category_to_store`
  ADD KEY `category_id` (`category_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_journal2_blog_comments`
--
ALTER TABLE `oc_journal2_blog_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `oc_journal2_blog_post`
--
ALTER TABLE `oc_journal2_blog_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `oc_journal2_blog_post_description`
--
ALTER TABLE `oc_journal2_blog_post_description`
  ADD PRIMARY KEY (`post_id`,`language_id`);

--
-- Indexes for table `oc_journal2_blog_post_to_category`
--
ALTER TABLE `oc_journal2_blog_post_to_category`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `oc_journal2_blog_post_to_layout`
--
ALTER TABLE `oc_journal2_blog_post_to_layout`
  ADD PRIMARY KEY (`post_id`,`store_id`),
  ADD KEY `layout_id` (`layout_id`);

--
-- Indexes for table `oc_journal2_blog_post_to_product`
--
ALTER TABLE `oc_journal2_blog_post_to_product`
  ADD PRIMARY KEY (`post_id`,`product_id`);

--
-- Indexes for table `oc_journal2_blog_post_to_store`
--
ALTER TABLE `oc_journal2_blog_post_to_store`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_journal2_config`
--
ALTER TABLE `oc_journal2_config`
  ADD PRIMARY KEY (`key`,`store_id`);

--
-- Indexes for table `oc_journal2_modules`
--
ALTER TABLE `oc_journal2_modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_journal2_newsletter`
--
ALTER TABLE `oc_journal2_newsletter`
  ADD PRIMARY KEY (`email`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_journal2_settings`
--
ALTER TABLE `oc_journal2_settings`
  ADD PRIMARY KEY (`key`,`theme_id`);

--
-- Indexes for table `oc_journal2_skins`
--
ALTER TABLE `oc_journal2_skins`
  ADD PRIMARY KEY (`skin_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`),
  ADD KEY `layout_id` (`layout_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`),
  ADD KEY `layout_id` (`layout_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_menu`
--
ALTER TABLE `oc_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_menu_description`
--
ALTER TABLE `oc_menu_description`
  ADD PRIMARY KEY (`menu_id`,`language_id`);

--
-- Indexes for table `oc_menu_module`
--
ALTER TABLE `oc_menu_module`
  ADD PRIMARY KEY (`menu_module_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `customer_group_id` (`customer_group_id`),
  ADD KEY `payment_country_id` (`payment_country_id`),
  ADD KEY `payment_zone_id` (`payment_zone_id`),
  ADD KEY `shipping_country_id` (`shipping_country_id`),
  ADD KEY `shipping_zone_id` (`shipping_zone_id`),
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `affiliate_id` (`affiliate_id`),
  ADD KEY `marketing_id` (`marketing_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `custom_field_id` (`custom_field_id`),
  ADD KEY `custom_field_value_id` (`custom_field_value_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_status_id` (`order_status_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_product_id` (`order_product_id`),
  ADD KEY `product_option_id` (`product_option_id`),
  ADD KEY `product_option_value_id` (`product_option_value_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `recurring_id` (`recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`),
  ADD KEY `order_recurring_id` (`order_recurring_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `voucher_id` (`voucher_id`),
  ADD KEY `voucher_theme_id` (`voucher_theme_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `model` (`model`),
  ADD KEY `stock_status_id` (`stock_status_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `tax_class_id` (`tax_class_id`),
  ADD KEY `weight_class_id` (`weight_class_id`),
  ADD KEY `length_class_id` (`length_class_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_group_id` (`customer_group_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`),
  ADD KEY `product_option_id` (`product_option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `option_value_id` (`option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_group_id` (`customer_group_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_group_id` (`customer_group_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`),
  ADD KEY `layout_id` (`layout_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `return_reason_id` (`return_reason_id`),
  ADD KEY `return_action_id` (`return_action_id`),
  ADD KEY `return_status_id` (`return_status_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `return_status_id` (`return_status_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `geo_zone_id` (`geo_zone_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`),
  ADD KEY `tax_class_id` (`tax_class_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_group_id` (`user_group_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `voucher_theme_id` (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`),
  ADD KEY `voucher_id` (`voucher_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `geo_zone_id` (`geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_ea_vqmod_manager`
--
ALTER TABLE `oc_ea_vqmod_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_intuitive_shipping`
--
ALTER TABLE `oc_intuitive_shipping`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_journal2_blog_category`
--
ALTER TABLE `oc_journal2_blog_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_journal2_blog_category_to_layout`
--
ALTER TABLE `oc_journal2_blog_category_to_layout`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_journal2_blog_comments`
--
ALTER TABLE `oc_journal2_blog_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_journal2_blog_post`
--
ALTER TABLE `oc_journal2_blog_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_journal2_blog_post_to_layout`
--
ALTER TABLE `oc_journal2_blog_post_to_layout`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_journal2_modules`
--
ALTER TABLE `oc_journal2_modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `oc_journal2_skins`
--
ALTER TABLE `oc_journal2_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_menu`
--
ALTER TABLE `oc_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2508;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1684;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4237;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
