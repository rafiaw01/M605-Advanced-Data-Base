-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 04:43 PM
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
-- Database: `csv_db 6`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `contact_number` varchar(250) DEFAULT NULL,
  `customer_review` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `customer_email`, `customer_address`, `contact_number`, `customer_review`) VALUES
(1, 'awais', 'rafi', 'awaisrafi2009@gmail.com', 'michaelkirch', '1234567890', 1),
(2, 'rafi', 'zulu', 'rafiawais3009@gmail.com', 'kirchmicahel', '0987654321', 2),
(3, 'hewlett', 'packard', 'hewlettpackard2909@gmail.com', 'kirchstrasse', '1234567890', 3),
(4, 'pcikard', 'hewlett', 'packardhewlet20009@gmail.com', 'michstrasse', '1234509876', 4),
(5, 'bang', 'olufsen', 'bangolufsen9002@gmail.com', 'bangkirchstrase', '5432167890', 5),
(6, 'apple', 'orange', 'appleorange2009@hotmail.com', 'bananaestrass', '5674328901', 6),
(7, 'melon', 'grape', 'grapielemone968@gmail.com', 'zebrstrasse', '1234567890', 7),
(8, 'sezal', 'elanor', 'rivercash2349@gmail.com', 'sweetkirch', '2134567890', 8),
(9, 'adam', 'berry', 'atlanicsazom2229@gmail.com', 'berlinkirch', '1234567089', 9),
(10, 'cheezy', 'whiteez', 'crispyzulu209@gmail.com', 'eggsykirch', '1299567890', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_address`
-- (See below for the actual view)
--
CREATE TABLE `customer_address` (
`customer_address` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_by_lastname`
-- (See below for the actual view)
--
CREATE TABLE `customer_by_lastname` (
`last_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_greater_thanfive`
-- (See below for the actual view)
--
CREATE TABLE `customer_greater_thanfive` (
`id` int(11)
,`first_name` varchar(100)
,`last_name` varchar(100)
,`customer_email` varchar(100)
,`customer_address` varchar(100)
,`contact_number` varchar(250)
,`customer_review` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL,
  `date_of_order` varchar(200) NOT NULL,
  `total_order_amount` decimal(8,2) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `date_of_order`, `total_order_amount`, `customer_id`, `order_type`) VALUES
(1, '01-01-23', 23.06, 1, 0),
(2, '10-01-23', 56.60, 2, 0),
(3, '20-01-23', 70.06, 3, 0),
(4, '01-02-23', 10.23, 4, 0),
(5, '20-02-23', 5.00, 5, 0),
(6, '01-03-23', 66.23, 6, 0),
(7, '05-03-23', 66.23, 7, 0),
(8, '10-03-23', 83.50, 8, 0),
(9, '15-04-23', 13.10, 9, 0),
(10, '20-04-23', 100.23, 10, 0),
(11, '06-03-23', 66.23, 11, 11);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_order_update`
-- (See below for the actual view)
--
CREATE TABLE `customer_order_update` (
`id` int(11)
,`date_of_order` varchar(200)
,`total_order_amount` decimal(8,2)
,`customer_id` int(11)
,`order_type` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_order_view`
-- (See below for the actual view)
--
CREATE TABLE `customer_order_view` (
`id` int(11)
,`date_of_order` varchar(200)
,`total_order_amount` decimal(8,2)
,`customer_id` int(11)
,`order_type` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer_review`
--

CREATE TABLE `customer_review` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` varchar(200) NOT NULL,
  `product_list` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_review`
--

INSERT INTO `customer_review` (`id`, `comment`, `comment_date`, `product_list`) VALUES
(1, 'Very Good', '01-01-23', 1),
(2, 'Good', '10-01-23', 2),
(3, 'Very Bad', '20-01-23', 3),
(4, 'Bad', '01-02-23', 4),
(5, 'Excellent', '20-02-23', 5),
(6, 'Good', '01-03-23', 6),
(7, 'Excellent', '05-03-23', 7),
(8, 'Very Bad', '10-03-23', 8),
(9, 'Good', '15-04-23', 9),
(10, 'Bad', '20-04-23', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_review_view`
-- (See below for the actual view)
--
CREATE TABLE `customer_review_view` (
`id` int(11)
,`comment` text
,`comment_date` varchar(200)
,`product_list` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_table_view`
-- (See below for the actual view)
--
CREATE TABLE `customer_table_view` (
`id` int(11)
,`first_name` varchar(100)
,`last_name` varchar(100)
,`customer_email` varchar(100)
,`customer_address` varchar(100)
,`contact_number` varchar(250)
,`customer_review` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `inventory_status_view`
-- (See below for the actual view)
--
CREATE TABLE `inventory_status_view` (
`inventory_status` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(300) NOT NULL,
  `date_of_invoice` varchar(150) NOT NULL,
  `payment_status` varchar(150) NOT NULL,
  `customer` int(11) NOT NULL,
  `customer_order` int(11) NOT NULL,
  `payment_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `payment_type`, `date_of_invoice`, `payment_status`, `customer`, `customer_order`, `payment_info`) VALUES
(1, 'Cash', '01-01-23', 'Cleared', 1, 1, 1),
(2, 'Credit', '10-01-23', 'Pending', 2, 2, 2),
(3, 'Cash', '20-01-23', 'Cleared', 3, 3, 3),
(4, 'Credit', '01-02-23', 'Cleared', 4, 4, 4),
(5, 'Credit', '01-02-23', 'Cleared', 5, 5, 5),
(6, 'Cash', '01-03-23', 'Pending', 6, 6, 6),
(7, 'Cash', '05-03-23', 'Pending', 7, 7, 7),
(8, 'Credit', '10-03-23', 'Cleared', 8, 8, 8),
(9, 'Cash', '15-04-23', 'Pending', 9, 9, 9),
(10, 'Credit', '20-04-23', 'Pending', 10, 10, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `invoice_view`
-- (See below for the actual view)
--
CREATE TABLE `invoice_view` (
`id` int(11)
,`payment_type` varchar(300)
,`date_of_invoice` varchar(150)
,`payment_status` varchar(150)
,`customer` int(11)
,`customer_order` int(11)
,`payment_info` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(11) NOT NULL,
  `order_quantity` varchar(300) NOT NULL,
  `order_item_price` decimal(8,2) NOT NULL,
  `customer_order` int(11) NOT NULL,
  `product_list` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_quantity`, `order_item_price`, `customer_order`, `product_list`) VALUES
(1, '1', 23.06, 1, 1),
(2, '1', 56.60, 2, 2),
(3, '1', 70.06, 3, 3),
(4, '1', 10.23, 4, 4),
(5, '1', 5.00, 5, 5),
(6, '1', 66.23, 6, 6),
(7, '1', 66.23, 7, 7),
(8, '1', 83.50, 8, 8),
(9, '1', 13.10, 9, 9),
(10, '1', 100.23, 10, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_list_view`
-- (See below for the actual view)
--
CREATE TABLE `order_list_view` (
`id` int(11)
,`order_quantity` varchar(300)
,`order_item_price` decimal(8,2)
,`customer_order` int(11)
,`product_list` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_type`
--

CREATE TABLE `order_type` (
  `id` int(11) NOT NULL,
  `order_delivery` varchar(100) NOT NULL,
  `delivery_vendor` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_type`
--

INSERT INTO `order_type` (`id`, `order_delivery`, `delivery_vendor`) VALUES
(1, 'Home', 'DHL'),
(2, 'Shop', 'Fedex'),
(3, 'Shop', 'DHL'),
(4, 'Home', 'DHL'),
(5, 'Shop', 'Fedex'),
(6, 'Home', 'DHL'),
(7, 'Shop', 'Fedex'),
(8, 'Home', 'DHL'),
(9, 'Shop', 'Fedex'),
(10, 'Home', 'Fedex');

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_type_view`
-- (See below for the actual view)
--
CREATE TABLE `order_type_view` (
`id` int(11)
,`order_delivery` varchar(100)
,`delivery_vendor` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(300) NOT NULL,
  `bank_address` varchar(150) NOT NULL,
  `bank_email` varchar(150) NOT NULL,
  `payment_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`id`, `bank_name`, `bank_address`, `bank_email`, `payment_type`) VALUES
(1, 'Nova Scotia', 'Ottawa Street', 'novabank@bnk.com', 'Cash'),
(2, 'Chilie Bank', 'Santiago Street', 'chiliebank@bnk.com', 'Credit'),
(3, 'Nova Scotia', 'Ottawa Street', 'novabank@bnk.com', 'Cash'),
(4, 'Chilie Bank', 'Santiago Street', 'chiliebank@bnk.com', 'Credit'),
(5, 'Nova Scotia', 'Ottawa Street', 'novabank@bnk.com', 'Cash'),
(6, 'Chilie Bank', 'Santiago Street', 'chiliebank@bnk.com', 'Credit'),
(7, 'Nova Scotia', 'Ottawa Street', 'novabank@bnk.com', 'Pay Order'),
(8, 'Nova Scotia', 'Ottawa Street', 'novabank@bnk.com', 'Pay Order'),
(9, 'Chilie Bank', 'Santiago Street', 'chiliebank@bnk.com', 'Cheque'),
(10, 'Nova Scotia', 'Ottawa Street', 'novabank@bnk.com', 'Cash');

-- --------------------------------------------------------

--
-- Stand-in structure for view `payment_info__view`
-- (See below for the actual view)
--
CREATE TABLE `payment_info__view` (
`id` int(11)
,`bank_name` varchar(300)
,`bank_address` varchar(150)
,`bank_email` varchar(150)
,`payment_type` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(11) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_description` varchar(150) NOT NULL,
  `supplier_info` int(11) NOT NULL,
  `warehouse_inventory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `product_name`, `product_price`, `product_description`, `supplier_info`, `warehouse_inventory`) VALUES
(1, 'Printing Paper', 23.06, 'Printing Paper with trees from Malaysia', 1, 1),
(2, 'Printer INK', 56.60, 'Premium Quality INK - Black', 2, 2),
(3, 'Power Bank', 70.06, 'Energy Certified Power Bank with long duration', 3, 3),
(4, 'Mouse', 10.23, 'Computer Mouse with ergonomic Design', 4, 4),
(5, 'Cartoon Stickers', 5.00, 'Kid Stickers for the Fridge', 5, 5),
(6, 'KitchenWare', 66.23, 'Premium Imported Pans and Pots', 6, 6),
(7, 'Shaving Trimmer', 66.23, 'Japanese Technology - Trimmer', 7, 7),
(8, 'PC Chair', 83.50, 'Ready to assemble chair for PC', 8, 8),
(9, 'Laundry Bag', 13.10, 'Fine Mesh long Lasting Laundry Bag ', 9, 9),
(10, 'Bed Mattress', 100.23, 'Orthopaedic Recommended', 10, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_list_view`
-- (See below for the actual view)
--
CREATE TABLE `product_list_view` (
`id` int(11)
,`product_name` varchar(300)
,`product_price` decimal(8,2)
,`product_description` varchar(150)
,`supplier_info` int(11)
,`warehouse_inventory` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE `product_return` (
  `id` int(11) NOT NULL,
  `reason_of_return` text NOT NULL,
  `date_of_return` varchar(150) NOT NULL,
  `product_list` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `customer_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_return`
--

INSERT INTO `product_return` (`id`, `reason_of_return`, `date_of_return`, `product_list`, `invoice`, `customer_order`) VALUES
(1, 'product was damaged in shipping', '06-06-23', 5, 5, 5),
(2, 'Faulty Product', '10-08-23', 3, 3, 3),
(3, 'Product notupto standard', '02-05-23', 7, 7, 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_return_view`
-- (See below for the actual view)
--
CREATE TABLE `product_return_view` (
`id` int(11)
,`reason_of_return` text
,`date_of_return` varchar(150)
,`product_list` int(11)
,`invoice` int(11)
,`customer_order` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `shipping_company_name`
-- (See below for the actual view)
--
CREATE TABLE `shipping_company_name` (
`shipping_info` varchar(300)
,`shipping_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_info`
--

CREATE TABLE `shipping_info` (
  `id` int(11) NOT NULL,
  `shipping_company` varchar(300) NOT NULL,
  `contact_info` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `shipping_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_info`
--

INSERT INTO `shipping_info` (`id`, `shipping_company`, `contact_info`, `email`, `address`, `shipping_type`) VALUES
(1, 'DHL', '456-789-986', 'dhlcontact@dhl.com', 'berlinstrasse', 'Road'),
(2, 'DHL', '456-789-986', 'dhlcontact@dhl.com', 'berlinstrasse', 'AIR'),
(3, 'Fedex', '654-789-986', 'fedexcontact@dhl.com', 'arcadestrasse', 'AIR'),
(4, 'DHL', '456-789-986', 'dhlcontact@dhl.com', 'berlinstrasse', 'SHIP'),
(5, 'Fedex', '654-789-986', 'fedexcontact@dhl.com', 'arcadestrasse', 'AIR'),
(6, 'DHL', '456-789-986', 'dhlcontact@dhl.com', 'berlinstrasse', 'SHIP'),
(7, 'Fedex', '654-789-986', 'fedexcontact@dhl.com', 'arcadestrasse', 'AIR'),
(8, 'DHL', '456-789-986', 'dhlcontact@dhl.com', 'berlinstrasse', 'Road'),
(9, 'Fedex', '654-789-986', 'fedexcontact@dhl.com', 'arcadestrasse', 'AIR'),
(10, 'DHL', '456-789-986', 'dhlcontact@dhl.com', 'berlinstrasse', 'AIR');

-- --------------------------------------------------------

--
-- Stand-in structure for view `shipping_info_view`
-- (See below for the actual view)
--
CREATE TABLE `shipping_info_view` (
`id` int(11)
,`shipping_company` varchar(300)
,`contact_info` varchar(150)
,`email` varchar(150)
,`address` varchar(150)
,`shipping_type` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_info`
--

CREATE TABLE `supplier_info` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(300) NOT NULL,
  `supplier_contact_number` varchar(150) NOT NULL,
  `supplier_email` varchar(150) NOT NULL,
  `supplier_address` int(11) NOT NULL,
  `supplier_country` int(11) NOT NULL,
  `shipping_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_info`
--

INSERT INTO `supplier_info` (`id`, `supplier_name`, `supplier_contact_number`, `supplier_email`, `supplier_address`, `supplier_country`, `shipping_info`) VALUES
(1, 'Amsterdam Corp', '456-654-123', 'amsterdamcorp@gmail.com', 0, 0, 0),
(2, 'Berlin Corp', '456-456-123', 'berlincorp@gmail.com', 0, 0, 0),
(3, 'Helsinki Corp', '416-624-183', 'helsinki@gmail.com', 0, 0, 0),
(4, 'Rome Corp', '426-666-123', 'romecorp@gmail.com', 0, 0, 0),
(5, 'Madrid Corp', '456-654-123', 'madridcorp@gmail.com', 0, 0, 0),
(6, 'Honolulu Corp', '446-624-113', 'honolulucorp@gmail.com', 0, 0, 0),
(7, 'Adelaide Corp', '987-622-023', 'adelaidecorp@gmail.com', 0, 0, 0),
(8, 'Perth Corp', '416-654-133', 'perthcorp@gmail.com', 0, 0, 0),
(9, 'Hamburg Corp', '456-604-113', 'hamburgcorp@gmail.com', 0, 0, 0),
(10, 'Lisbon Corp', '436-614-123', 'lisboncorp@gmail.com', 0, 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplier_info_table`
-- (See below for the actual view)
--
CREATE TABLE `supplier_info_table` (
`id` int(11)
,`supplier_name` varchar(300)
,`supplier_contact_number` varchar(150)
,`supplier_email` varchar(150)
,`supplier_address` int(11)
,`supplier_country` int(11)
,`shipping_info` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_inventory`
--

CREATE TABLE `warehouse_inventory` (
  `id` int(11) NOT NULL,
  `floor` varchar(300) NOT NULL,
  `zone` varchar(150) NOT NULL,
  `inventory_status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_inventory`
--

INSERT INTO `warehouse_inventory` (`id`, `floor`, `zone`, `inventory_status`) VALUES
(1, '2', 'E', 'Not-Available'),
(2, '1', 'A', 'Available'),
(3, '3', 'E', 'Not-Available'),
(4, '2', 'B', 'Available'),
(5, '1', 'C', 'Not-Available'),
(6, '4', 'C', 'Available'),
(7, '4', 'A', 'Not-Available'),
(8, '1', 'E', 'Available'),
(9, '3', 'A', 'Available'),
(10, '1', 'B', 'Not-Available');

-- --------------------------------------------------------

--
-- Stand-in structure for view `warehouse_inventory_view`
-- (See below for the actual view)
--
CREATE TABLE `warehouse_inventory_view` (
`id` int(11)
,`floor` varchar(300)
,`zone` varchar(150)
,`inventory_status` varchar(150)
);

-- --------------------------------------------------------

--
-- Structure for view `customer_address`
--
DROP TABLE IF EXISTS `customer_address`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_address`  AS SELECT `customer`.`customer_address` AS `customer_address` FROM `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `customer_by_lastname`
--
DROP TABLE IF EXISTS `customer_by_lastname`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_by_lastname`  AS SELECT `customer`.`last_name` AS `last_name` FROM `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `customer_greater_thanfive`
--
DROP TABLE IF EXISTS `customer_greater_thanfive`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_greater_thanfive`  AS SELECT `customer`.`id` AS `id`, `customer`.`first_name` AS `first_name`, `customer`.`last_name` AS `last_name`, `customer`.`customer_email` AS `customer_email`, `customer`.`customer_address` AS `customer_address`, `customer`.`contact_number` AS `contact_number`, `customer`.`customer_review` AS `customer_review` FROM `customer` WHERE `customer`.`id` > 5 ;

-- --------------------------------------------------------

--
-- Structure for view `customer_order_update`
--
DROP TABLE IF EXISTS `customer_order_update`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_order_update`  AS SELECT `customer_order`.`id` AS `id`, `customer_order`.`date_of_order` AS `date_of_order`, `customer_order`.`total_order_amount` AS `total_order_amount`, `customer_order`.`customer_id` AS `customer_id`, `customer_order`.`order_type` AS `order_type` FROM `customer_order` ;

-- --------------------------------------------------------

--
-- Structure for view `customer_order_view`
--
DROP TABLE IF EXISTS `customer_order_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_order_view`  AS SELECT `customer_order`.`id` AS `id`, `customer_order`.`date_of_order` AS `date_of_order`, `customer_order`.`total_order_amount` AS `total_order_amount`, `customer_order`.`customer_id` AS `customer_id`, `customer_order`.`order_type` AS `order_type` FROM `customer_order` ;

-- --------------------------------------------------------

--
-- Structure for view `customer_review_view`
--
DROP TABLE IF EXISTS `customer_review_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_review_view`  AS SELECT `customer_review`.`id` AS `id`, `customer_review`.`comment` AS `comment`, `customer_review`.`comment_date` AS `comment_date`, `customer_review`.`product_list` AS `product_list` FROM `customer_review` ;

-- --------------------------------------------------------

--
-- Structure for view `customer_table_view`
--
DROP TABLE IF EXISTS `customer_table_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_table_view`  AS SELECT `customer`.`id` AS `id`, `customer`.`first_name` AS `first_name`, `customer`.`last_name` AS `last_name`, `customer`.`customer_email` AS `customer_email`, `customer`.`customer_address` AS `customer_address`, `customer`.`contact_number` AS `contact_number`, `customer`.`customer_review` AS `customer_review` FROM `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `inventory_status_view`
--
DROP TABLE IF EXISTS `inventory_status_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inventory_status_view`  AS SELECT `warehouse_inventory`.`inventory_status` AS `inventory_status` FROM `warehouse_inventory` ;

-- --------------------------------------------------------

--
-- Structure for view `invoice_view`
--
DROP TABLE IF EXISTS `invoice_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `invoice_view`  AS SELECT `invoice`.`id` AS `id`, `invoice`.`payment_type` AS `payment_type`, `invoice`.`date_of_invoice` AS `date_of_invoice`, `invoice`.`payment_status` AS `payment_status`, `invoice`.`customer` AS `customer`, `invoice`.`customer_order` AS `customer_order`, `invoice`.`payment_info` AS `payment_info` FROM `invoice` ;

-- --------------------------------------------------------

--
-- Structure for view `order_list_view`
--
DROP TABLE IF EXISTS `order_list_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_list_view`  AS SELECT `order_list`.`id` AS `id`, `order_list`.`order_quantity` AS `order_quantity`, `order_list`.`order_item_price` AS `order_item_price`, `order_list`.`customer_order` AS `customer_order`, `order_list`.`product_list` AS `product_list` FROM `order_list` ;

-- --------------------------------------------------------

--
-- Structure for view `order_type_view`
--
DROP TABLE IF EXISTS `order_type_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_type_view`  AS SELECT `order_type`.`id` AS `id`, `order_type`.`order_delivery` AS `order_delivery`, `order_type`.`delivery_vendor` AS `delivery_vendor` FROM `order_type` ;

-- --------------------------------------------------------

--
-- Structure for view `payment_info__view`
--
DROP TABLE IF EXISTS `payment_info__view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `payment_info__view`  AS SELECT `payment_info`.`id` AS `id`, `payment_info`.`bank_name` AS `bank_name`, `payment_info`.`bank_address` AS `bank_address`, `payment_info`.`bank_email` AS `bank_email`, `payment_info`.`payment_type` AS `payment_type` FROM `payment_info` ;

-- --------------------------------------------------------

--
-- Structure for view `product_list_view`
--
DROP TABLE IF EXISTS `product_list_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_list_view`  AS SELECT `product_list`.`id` AS `id`, `product_list`.`product_name` AS `product_name`, `product_list`.`product_price` AS `product_price`, `product_list`.`product_description` AS `product_description`, `product_list`.`supplier_info` AS `supplier_info`, `product_list`.`warehouse_inventory` AS `warehouse_inventory` FROM `product_list` ;

-- --------------------------------------------------------

--
-- Structure for view `product_return_view`
--
DROP TABLE IF EXISTS `product_return_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_return_view`  AS SELECT `product_return`.`id` AS `id`, `product_return`.`reason_of_return` AS `reason_of_return`, `product_return`.`date_of_return` AS `date_of_return`, `product_return`.`product_list` AS `product_list`, `product_return`.`invoice` AS `invoice`, `product_return`.`customer_order` AS `customer_order` FROM `product_return` ;

-- --------------------------------------------------------

--
-- Structure for view `shipping_company_name`
--
DROP TABLE IF EXISTS `shipping_company_name`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `shipping_company_name`  AS SELECT `shipping_info`.`shipping_company` AS `shipping_info`, count(0) AS `shipping_count` FROM `shipping_info` GROUP BY `shipping_info`.`shipping_company` ;

-- --------------------------------------------------------

--
-- Structure for view `shipping_info_view`
--
DROP TABLE IF EXISTS `shipping_info_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `shipping_info_view`  AS SELECT `shipping_info`.`id` AS `id`, `shipping_info`.`shipping_company` AS `shipping_company`, `shipping_info`.`contact_info` AS `contact_info`, `shipping_info`.`email` AS `email`, `shipping_info`.`address` AS `address`, `shipping_info`.`shipping_type` AS `shipping_type` FROM `shipping_info` ;

-- --------------------------------------------------------

--
-- Structure for view `supplier_info_table`
--
DROP TABLE IF EXISTS `supplier_info_table`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplier_info_table`  AS SELECT `supplier_info`.`id` AS `id`, `supplier_info`.`supplier_name` AS `supplier_name`, `supplier_info`.`supplier_contact_number` AS `supplier_contact_number`, `supplier_info`.`supplier_email` AS `supplier_email`, `supplier_info`.`supplier_address` AS `supplier_address`, `supplier_info`.`supplier_country` AS `supplier_country`, `supplier_info`.`shipping_info` AS `shipping_info` FROM `supplier_info` ;

-- --------------------------------------------------------

--
-- Structure for view `warehouse_inventory_view`
--
DROP TABLE IF EXISTS `warehouse_inventory_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `warehouse_inventory_view`  AS SELECT `warehouse_inventory`.`id` AS `id`, `warehouse_inventory`.`floor` AS `floor`, `warehouse_inventory`.`zone` AS `zone`, `warehouse_inventory`.`inventory_status` AS `inventory_status` FROM `warehouse_inventory` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_ibfk_1` (`customer_review`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_type` (`order_type`);

--
-- Indexes for table `customer_review`
--
ALTER TABLE `customer_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_review_ibfk_1` (`product_list`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `customer_order` (`customer_order`),
  ADD KEY `payment_info` (`payment_info`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_order` (`customer_order`),
  ADD KEY `product_list` (`product_list`);

--
-- Indexes for table `order_type`
--
ALTER TABLE `order_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_info` (`supplier_info`),
  ADD KEY `warehouse_inventory` (`warehouse_inventory`);

--
-- Indexes for table `product_return`
--
ALTER TABLE `product_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_list` (`product_list`),
  ADD KEY `invoice` (`invoice`),
  ADD KEY `customer_order` (`customer_order`);

--
-- Indexes for table `shipping_info`
--
ALTER TABLE `shipping_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_info`
--
ALTER TABLE `supplier_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_info` (`shipping_info`);

--
-- Indexes for table `warehouse_inventory`
--
ALTER TABLE `warehouse_inventory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_review`
--
ALTER TABLE `customer_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_type`
--
ALTER TABLE `order_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_return`
--
ALTER TABLE `product_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_info`
--
ALTER TABLE `shipping_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier_info`
--
ALTER TABLE `supplier_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `warehouse_inventory`
--
ALTER TABLE `warehouse_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_review`) REFERENCES `customer_review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `customer_order_ibfk_2` FOREIGN KEY (`order_type`) REFERENCES `order_type` (`id`);

--
-- Constraints for table `customer_review`
--
ALTER TABLE `customer_review`
  ADD CONSTRAINT `customer_review_ibfk_1` FOREIGN KEY (`product_list`) REFERENCES `product_list` (`id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`customer_order`) REFERENCES `customer_order` (`id`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`payment_info`) REFERENCES `payment_info` (`id`);

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`customer_order`) REFERENCES `customer_order` (`id`),
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`product_list`) REFERENCES `product_list` (`id`);

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`supplier_info`) REFERENCES `supplier_info` (`id`),
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`warehouse_inventory`) REFERENCES `warehouse_inventory` (`id`);

--
-- Constraints for table `product_return`
--
ALTER TABLE `product_return`
  ADD CONSTRAINT `product_return_ibfk_1` FOREIGN KEY (`product_list`) REFERENCES `product_list` (`id`),
  ADD CONSTRAINT `product_return_ibfk_2` FOREIGN KEY (`invoice`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `product_return_ibfk_3` FOREIGN KEY (`customer_order`) REFERENCES `customer_order` (`id`);

--
-- Constraints for table `supplier_info`
--
ALTER TABLE `supplier_info`
  ADD CONSTRAINT `supplier_info_ibfk_1` FOREIGN KEY (`shipping_info`) REFERENCES `shipping_info` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
