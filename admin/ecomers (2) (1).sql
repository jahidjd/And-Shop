-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 08:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Jahid', 'jahidjd18@gmail.com', '12345'),
(2, 'Hasan', 'hasan@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `short_details` varchar(150) NOT NULL,
  `details` text NOT NULL,
  `author` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `title_two` varchar(100) NOT NULL,
  `title_two_details` varchar(255) NOT NULL,
  `title_two_photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `photo`, `short_details`, `details`, `author`, `date`, `title_two`, `title_two_details`, `title_two_photo`) VALUES
(7, 'This Designer Bronzer Has Even The Drugstore-Beaut', 'Blog-Photo-236110468.png', ' Today kicks off early access to the Sephora Spring Sales Event so I wanted to share some of my top recent beauty buys I have been	', ' Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Vivamus suscipit tortor eget felis porttitor volutpat. Vivamus suscipit tortor eget felis porttitor volutpat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum congue leo eget malesuada. Sed porttitor lectus nibh.	', 'Jahid', '2022-03-16', 'There Are Many Variayions Of Product	', ' Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec', 'Blog-photo-two1401625014.png');

-- --------------------------------------------------------

--
-- Table structure for table `blog_reply`
--

CREATE TABLE `blog_reply` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(15) NOT NULL,
  `website` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_login`
--

CREATE TABLE `customer_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_login`
--

INSERT INTO `customer_login` (`id`, `user_name`, `email`, `password`) VALUES
(1, 'jahid', 'jahidjd18@gmail.com', '12345'),
(2, 'hasan', 'hasan@gmail.com', '123456'),
(3, 'naim', 'naim@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `bennar_pic` varchar(100) NOT NULL,
  `bennar_text_one` varchar(50) NOT NULL,
  `bennar_text_two` varchar(50) NOT NULL,
  `bennar_text_three` varchar(50) NOT NULL,
  `spacial_discount_photo` varchar(100) NOT NULL,
  `discount_title` varchar(50) NOT NULL,
  `discount_details` varchar(255) NOT NULL,
  `footer_text` varchar(255) NOT NULL,
  `common_bennar` varchar(100) NOT NULL,
  `about_text` text NOT NULL,
  `about_pic` varchar(100) NOT NULL,
  `contact_text` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `map` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`id`, `logo`, `bennar_pic`, `bennar_text_one`, `bennar_text_two`, `bennar_text_three`, `spacial_discount_photo`, `discount_title`, `discount_details`, `footer_text`, `common_bennar`, `about_text`, `about_pic`, `contact_text`, `address`, `email`, `phone`, `map`) VALUES
(1, 'Logo-604168815.png', 'Bennar-Photo-996392982.jpg', 'LIVE FOR', 'FASHION', 'SAVE UP TO 50%', 'Discouent-Photo-314376193.png', 'DSAGD GEG', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro quisquam, odit assumenda sit modi commodi esse necessitatibus temporibus aperiam veritatis eveniet!\r\n\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Obcaecati culpa assumenda voluptas placeat amet consectetur adipisicing elit. Obcaecati culpa assumenda voluptas placeat.', 'Common-Bennar-2123112350.png', 'We believe that every project existing in digital world is a result of an idea and every idea has a cause.\r\nFor this reason, our each design serves an idea. Our strength in design is reflected by our name, our care for details. Our specialist wont be afraid to go extra miles just to approach near perfection. We dont require everything to be perfect, but we need them to be perfectly cared for.\r\n\r\nThats a reason why we are willing to give contributions at best.Not a single detail is missed out under Billeys professional eyes. The amount of dedication and effort equals to the level of passion and determination. Get better, together as one. Proin eget tortor risus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', 'About-Photo-1082417139.jpg', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta. Proin eget tortor risus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.', 'Mohammadpur, Dhaka', 'jahidjd18@gmail.com', '01627809808', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `home_products`
--

CREATE TABLE `home_products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `short_details` varchar(50) NOT NULL,
  `status` enum('NEW','HOT') NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_products`
--

INSERT INTO `home_products` (`id`, `name`, `short_details`, `status`, `photo`) VALUES
(4, 'OUTERWEAR', '	COLLECTION', 'HOT', 'Home-Offer-Product-1743034335.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('Pending','Done','Canceled') NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `product_id`, `order_id`, `qty`, `name`, `address`, `phone`, `email`, `payment_method`, `total_amount`, `status`, `date`) VALUES
(5, 2, 18, 315062457, 1, 'Jahid Hasan', 'Mohammadpur', '01627809808', 'jahidjd18@gmail.com', 'Cash On Delivery', '15850.00', 'Pending', '2022-03-22'),
(6, 2, 17, 315062457, 3, 'Jahid Hasan', 'Mohammadpur', '01627809808', 'jahidjd18@gmail.com', 'Cash On Delivery', '15850.00', 'Pending', '2022-03-22'),
(9, 3, 18, 1516536747, 2, 'Naim Hasan', 'Dhanmondi', '01954943468', 'jahidjd18@gmail.com', 'bKash', '15050.00', 'Pending', '2022-03-22'),
(10, 3, 17, 1516536747, 1, 'Naim Hasan', 'Dhanmondi', '01954943468', 'jahidjd18@gmail.com', 'bKash', '15050.00', 'Pending', '2022-03-22'),
(11, 3, 11, 1516536747, 2, 'Naim Hasan', 'Dhanmondi', '01954943468', 'jahidjd18@gmail.com', 'bKash', '15050.00', 'Pending', '2022-03-22'),
(21, 1, 18, 1303053245, 1, 'Sabiha hasan', 'Village/Town: Nabinagar, Road/House: Bijoypara', '01627809808', 'jahidjd18@gmail.com', 'Cash On Delivery', '32350.00', 'Pending', '2022-03-22'),
(22, 1, 17, 1303053245, 3, 'Sabiha hasan', 'Village/Town: Nabinagar, Road/House: Bijoypara', '01627809808', 'jahidjd18@gmail.com', 'Cash On Delivery', '32350.00', 'Pending', '2022-03-22'),
(23, 1, 11, 1303053245, 1, 'Sabiha hasan', 'Village/Town: Nabinagar, Road/House: Bijoypara', '01627809808', 'jahidjd18@gmail.com', 'Cash On Delivery', '32350.00', 'Pending', '2022-03-22'),
(24, 1, 19, 1303053245, 3, 'Sabiha hasan', 'Village/Town: Nabinagar, Road/House: Bijoypara', '01627809808', 'jahidjd18@gmail.com', 'Cash On Delivery', '32350.00', 'Pending', '2022-03-22'),
(25, 1, 18, 633446709, 3, 'jahid hasan', 'Village/Town: Nabinagar, Road/House: Bijoypara', '01627809808', 'jahidjd18@gmail.com', 'Cash On Delivery', '16050.00', 'Pending', '2022-03-23'),
(26, 1, 17, 633446709, 1, 'jahid hasan', 'Village/Town: Nabinagar, Road/House: Bijoypara', '01627809808', 'jahidjd18@gmail.com', 'Cash On Delivery', '16050.00', 'Pending', '2022-03-23'),
(27, 1, 18, 1255452694, 2, 'test test', 'test', '5454', 'test@test.com', 'Bank Transfer', '8150.00', 'Pending', '2022-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `hover_photo` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `long_details` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `weight` varchar(30) NOT NULL,
  `dimensions` varchar(50) NOT NULL,
  `materials` varchar(50) NOT NULL,
  `other_info` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `photo`, `hover_photo`, `details`, `long_details`, `price`, `weight`, `dimensions`, `materials`, `other_info`, `status`) VALUES
(2, 1, 'Black fashion handbag JI9023', 'Product-822172228.png', 'Hover-Product-1752978370.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '5000.00', '400 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'trending'),
(5, 5, 'Woman Full Sliv Dresss', 'Product-237621043.png', 'Hover-Product-833031024.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '4000.00', '400 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'trending'),
(6, 4, 'Blue Dress For Woman', 'Product-123413666.png', 'Hover-Product-1637531408.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '3500.00', '250 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'best_sellers'),
(7, 1, 'Black T-Shirt For Woman', 'Product-1190070992.png', 'Hover-Product-1534712009.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '3500.00', '150 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'featured'),
(8, 1, 'Black T-Shirt For Woman', 'Product-384775430.png', 'Hover-Product-343506498.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '4000.00', '250 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'on_sall'),
(9, 4, 'Blue Dress For Woman', 'Product-134412240.png', 'Hover-Product-73535481.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '5000.00', '400 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'featured'),
(10, 1, 'Black T-Shirt For Woman', 'Product-1123846445.png', 'Hover-Product-942540262.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '3500.00', '400 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'on_sall'),
(11, 4, 'Blue Dress For Woman	', 'Product-1860079585.png', 'Hover-Product-1142790765.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '1500.00', '250 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'new_arrival'),
(12, 1, 'Black T-Shirt For Woman', 'Product-890220223.png', 'Hover-Product-100130839.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '4000.00', '400 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'trending'),
(13, 1, 'Black T-Shirt For Woman', 'Product-1739541007.png', 'Hover-Product-1177099914.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '5000.00', '400 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'best_sellers'),
(14, 4, 'Black fashion handbag JI9023', 'Product-1006941450.png', 'Hover-Product-1671809035.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '1500.00', '400 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'trending'),
(15, 4, 'Blue Dress For Woman', 'Product-1366129017.png', 'Hover-Product-712451918.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '1500.00', '150 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'best_sellers'),
(17, 1, 'Black T-Shirt For Woman	', 'Product-350647844.png', 'Hover-Product-320734404.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '3900.00', '250 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'new_arrival'),
(18, 1, 'Black T-Shirt For Woman', 'Product-521337590.png', 'Hover-Product-368746807.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '4000.00', '250 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'new_arrival'),
(19, 4, 'Blue Dress For Woman', 'Product-2071814165.png', 'Hover-Product-111163762.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '5000.00', '150 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'new_arrival'),
(20, 1, 'Black T-Shirt For Woman', 'Product-1045090959.png', 'Hover-Product-1273702006.png', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus	', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.  Vivamus magna justo, lacinia eget consectetur sed Curabitur aliquet quam id dui posuere blandit Mauris blandit aliquet elit, eget tincidunt nibh pulvinar Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', '5000.00', '400 g', '10 x 10 x 15 cm', '60% cotton, 40% polyester', 'American heirloom jean shorts pug seitan letterpress', 'featured');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(1, 'T-Shirt'),
(4, 'Dress'),
(5, 'Sliv Dress');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_reply`
--
ALTER TABLE `blog_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_login`
--
ALTER TABLE `customer_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_products`
--
ALTER TABLE `home_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_reply`
--
ALTER TABLE `blog_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_login`
--
ALTER TABLE `customer_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_products`
--
ALTER TABLE `home_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
