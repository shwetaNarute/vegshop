-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2022 at 04:18 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Beds Fruits And Vegetables', 'While fresh vegetables should be a part of your everyday meals, some vegetables are hard to find even in the huge supermarkets in your area. However, the luxury of online shopping offers customers the comfort of relishing these veggies by ordering them from the comfort of their home. While beetroot, amlas, green peas, broccoli can easily be found in the market, we makes grocery shopping easier for you with their fresh produce delivered in top class packages right at your doorstep. With their wide delivery network, geographical barriers are easily overcome in more than 25 major cities, thereby giving you the benefit of fresh fruits and vegetables every time.', '2017-01-24 19:17:37', '13-02-2022 08:37:48 PM'),
(4, 'Fresh Fruits & Veggies', 'While fresh vegetables should be a part of your everyday meals, some vegetables are hard to find even in the huge supermarkets in your area. However, the luxury of online shopping offers customers the comfort of relishing these veggies by ordering them from the comfort of their home. While beetroot, amlas, green peas, broccoli can easily be found in the market, we makes grocery shopping easier for you with their fresh produce delivered in top class packages right at your doorstep. With their wide delivery network, geographical barriers are easily overcome in more than 25 major cities, thereby giving you the benefit of fresh fruits and vegetables every time.', '2017-01-24 19:19:32', '13-02-2022 08:35:09 PM'),
(5, 'Organic fruits & Vegetables', 'While fresh vegetables should be a part of your everyday meals, some vegetables are hard to find even in the huge supermarkets in your area. However, the luxury of online shopping offers customers the comfort of relishing these veggies by ordering them from the comfort of their home. While beetroot, amlas, green peas, broccoli can easily be found in the market, we makes grocery shopping easier for you with their fresh produce delivered in top class packages right at your doorstep. With their wide delivery network, geographical barriers are easily overcome in more than 25 major cities, thereby giving you the benefit of fresh fruits and vegetables every time.', '2017-01-24 19:19:54', ''),
(6, 'Herbs & Seasonings ', 'While fresh vegetables should be a part of your everyday meals, some vegetables are hard to find even in the huge supermarkets in your area. However, the luxury of online shopping offers customers the comfort of relishing these veggies by ordering them from the comfort of their home. While beetroot, amlas, green peas, broccoli can easily be found in the market, we makes grocery shopping easier for you with their fresh produce delivered in top class packages right at your doorstep. With their wide delivery network, geographical barriers are easily overcome in more than 25 major cities, thereby giving you the benefit of fresh fruits and vegetables every time.', '2017-02-20 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Banana,Yelakki-12pcs', 'Fresho', 30, 45, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular; font-size: 13px; white-space: normal;\">Tiny and small sized, this variety is called Yelakki in Bangalore and Elaichi in Mumbai. Despite its small size, they are naturally flavoured, aromatic and sweeter compared to regular bananas.</span><br><ul style=\"box-sizing: border-box; border-width: 0px; border-style: solid; margin-bottom: 0px; margin-left: 0px; list-style: none; color: rgb(32, 32, 32); font-family: ProximaNova-Regular; font-size: 13px; white-space: normal;\"><li></li></ul></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular; font-size: 13px; white-space: normal;\">Yelakki bananas are around 3- 4 inches long and contain a thinner skin and better shelf life than Robusta bananas.</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular; font-size: 13px; white-space: normal;\"></div>', 'banana.jpg', 'banana1.jpg', 'a3.jpg', 0, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Gift Box - Apple Washington, 12 pcs', 'Fresho', 489, 600, '<div class=\"Accordion___StyledDiv-qxi0o9-0 btYfE MoreDetails___StyledAccordionItem-sc-1h9rbjh-1 kLMchh\" style=\"box-sizing: border-box; border-width: 0px 0px 1px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; display: flex; flex-direction: column; --border-opacity:1; border-color: rgba(221,221,221,var(--border-opacity)); padding-bottom: 1rem; color: rgb(32, 32, 32); font-family: ProximaNova, Helvetica, Arial, sans-serif; font-size: 16px;\"><div class=\"Accordion___StyledDiv3-qxi0o9-2 krvVHK\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; transition-property: all; position: relative; transition-duration: 300ms; overflow: hidden; visibility: visible; opacity: 1; max-height: 34px;\"><div class=\"jsx-126741615 \" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat;\"><div class=\"pt-4 text-md\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; font-size: 0.875rem; padding-top: 1rem;\"><div style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; font-family: ProximaNova-Regular; font-size: 13px; line-height: 18px;\">Premium Apple Washington and Pomegranates for a perfect mix of health and taste, make for an ideal gift</div></div></div></div></div><div class=\"Accordion___StyledDiv-qxi0o9-0 btYfE MoreDetails___StyledAccordionItem-sc-1h9rbjh-1 kLMchh\" style=\"box-sizing: border-box; border-width: 0px 0px 1px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; display: flex; flex-direction: column; --border-opacity:1; border-color: rgba(221,221,221,var(--border-opacity)); padding-bottom: 1rem; color: rgb(32, 32, 32); font-family: ProximaNova, Helvetica, Arial, sans-serif; font-size: 16px;\"><div class=\"Accordion___StyledDiv2-qxi0o9-1 bWcoqA MoreDetails___StyledAccordionHeader-sc-1h9rbjh-2 hEdQvw\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; cursor: pointer; display: flex; -webkit-box-pack: justify; justify-content: space-between; -webkit-box-align: center; align-items: center; padding-top: 0.5rem;\"></div></div>', 'fb.jpg', 'fb1.jpg', 'a3.jpg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Small Fruit Basket', 'Fresho', 289, 350, '<ul><li><div class=\"product-single__description rte\" style=\"box-sizing: border-box; color: rgb(120, 129, 136); margin-bottom: 10px; font-family: Poppins, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px;\">This Beautiful Basket Consists Of : 2.5 Kg Fresh Fruit (Apple, Pomegranate, Orange, etc.) Arrange in a beautiful basket&nbsp; This is the best online fruit basket gift in India. While we always strive to ensure that products are accurately represented...</div></li></ul>', 'fb2.jpg', 'fb22.jpg', 'a3.jpg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(7, 4, 4, 'Sweet Fruity Basket Of Love', 'Fresho', 589, 700, '<ul><li><div class=\"product-single__description rte\" style=\"box-sizing: border-box; color: rgb(120, 129, 136); margin-bottom: 10px; font-family: Poppins, Helvetica, Tahoma, Arial, sans-serif; font-size: 14px;\">&nbsp; This Beautiful Basket Consists Of : 6 Kg Fresh Fruit (Apple,Pineapple,Orange,Grapes Etc..) Arrange in a Beautiful Basket While we always strive to ensure that products are accurately represented in our photographs, from season to season and subject to availability,..</div></li></ul>', 'fb3.jpg', 'fb33.jpg', 'a3.jpg', 20, 'In Stock', '2017-02-04 04:10:17', ''),
(9, 4, 5, 'Brinjal - Bottle Shape, 500 g', 'Fresho', 127, 16, '<ul><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; padding: 0px; margin: 0px; list-style: none;\">Deep purple and oval shaped bottle brinjals are glossy skinned vegetables with a white and have a soft flesh.</li></ul>', 'br.jpg', 'br1.jpg', 'a3.jpg', 0, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Methi/Venthaya Keerai -', 'Fresho', 11, 14, '<ul><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; padding: 0px; margin: 0px; list-style: none;\">Methi leaves are a very popular ingredient in Indian dishes that has a bitter taste and strong aroma.</li><li></li></ul>', 'meth.jpg', 'meth1.jpg', 'a3.jpg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Coriander Leaves - Organically Grown, 100 g', 'Fresho', 38, 55, '<ul><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Fresho Organic products are Organically grown and handpicked by expert.</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\"></li><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Product image shown is for representation purpose only, the actually product may vary based on season, produce &amp; availability.</span></li></ul>', 'cor1.jpg', 'cor2.jpg', 'cor3.jpg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'Betel Leaf, 5pcs', 'Fresho', 10, 12, '<div><ul><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; padding: 0px; margin: 0px; list-style: none;\">Fresho brings to you fresh Betel Leaf. This is also called paan ka Patta.</li></ul></div>', 'betal.jpg', 'betal1.jpg', 'a3.jpg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Amaranthus - , 250 g', 'Fresho', 11, 14, '<div><ul><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; padding: 0px; margin: 0px; list-style: none;\">A highly nutritious leafy vegetable, Red Amaranthus has bright red leaves and a flavor similar to a beat.</li><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; padding: 0px; margin: 0px; list-style: none;\">The Red variety produces feathery purple, magenta, or red flowers from the central stalk which is packed with edible seeds</li></ul></div>', 'amarath.jpg', 'amarath1.jpg', 'amarath2.jpg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(22, 5, 14, 'Ginger - Organically Grown, 250 g', 'Fresho', 11, 16, '<span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">It is organically grown and handpicked from farm</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\"><div><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Product image shown is for representation purpose only, the actually product may vary based on season, produce &amp; availability.</span><p style=\"box-sizing: border-box; border-width: 0px; border-style: solid; margin-bottom: 0px; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\"></p></div><div><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\"><br></span></div>', 'ginger.jpg', 'giner1.jpg', 'ginger2.jpg', 0, 'In Stock', '2022-02-13 08:13:26', NULL),
(23, 5, 14, 'Cucumber - Organically Grown, 500 g', 'Fresho', 10, 13, '<ul><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">It Is Organically Grown And Handpicked From Farm</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\"></li><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Product image shown is for representation purpose only, the actually product may vary based on season, produce &amp; availability.</span></li></ul>', 'cuc.jpg', 'cuc1.jpg', 'a3.jpg', 0, 'In Stock', '2022-02-13 08:16:01', NULL),
(24, 5, 13, 'Pumpkin - Organically Grown, 1 pc', 'Fresho', 58, 76, '<ul><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">It is organically grown and handpicked from farm</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\"></li><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Product image shown is for representation purpose only, the actually product may vary based on season, produce &amp; availability.</span></li></ul>', 'pumpin.jpg', 'pump1.jpg', 'pump2.jpg', 0, 'In Stock', '2022-02-13 08:18:00', NULL),
(25, 5, 13, 'Sweet Potato-21g', 'Fresho', 500, 26, '<ul><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Fresho Organic products are organically grown and handpicked by expert. Sweet potatoes are large, starchy, sweet-tasting root vegetables. Product image shown is for representation purpose only, the actual product may vary based on season, produce &amp; availability.</span></li></ul>', 'sweet.jpg', 'sweet1.jpg', 'sweet3.jpg', 0, 'In Stock', '2022-02-13 08:20:26', NULL),
(26, 6, 15, 'Chilli - Green Long, 250g', 'Fresho', 29, 37, '<div class=\"Accordion___StyledDiv-qxi0o9-0 btYfE MoreDetails___StyledAccordionItem-sc-1h9rbjh-1 kLMchh\" style=\"box-sizing: border-box; border-width: 0px 0px 1px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; display: flex; flex-direction: column; --border-opacity:1; border-color: rgba(221,221,221,var(--border-opacity)); padding-bottom: 1rem; color: rgb(32, 32, 32); font-family: ProximaNova, Helvetica, Arial, sans-serif; font-size: 16px;\"><div class=\"Accordion___StyledDiv3-qxi0o9-2 krvVHK\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; transition-property: all; position: relative; transition-duration: 300ms; overflow: hidden; visibility: visible; opacity: 1; max-height: 34px;\"><div class=\"jsx-126741615 \" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat;\"><div class=\"pt-4 text-md\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; font-size: 0.875rem; padding-top: 1rem;\"><div style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; font-family: ProximaNova-Regular; font-size: 13px; line-height: 18px;\"><p style=\"box-sizing: border-box; border-width: 0px; border-style: solid; margin-bottom: 0px;\">Green chillis are the best kitchen ingredient to bring a dash of spiciness to recipes. The fresh flavour and sharp bite make them a must in almost all Indian dishes. This particular green chilli variety is big.</p></div></div></div></div></div><div class=\"Accordion___StyledDiv-qxi0o9-0 btYfE MoreDetails___StyledAccordionItem-sc-1h9rbjh-1 kLMchh\" style=\"box-sizing: border-box; border-width: 0px 0px 1px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; display: flex; flex-direction: column; --border-opacity:1; border-color: rgba(221,221,221,var(--border-opacity)); padding-bottom: 1rem; color: rgb(32, 32, 32); font-family: ProximaNova, Helvetica, Arial, sans-serif; font-size: 16px;\"><div class=\"Accordion___StyledDiv2-qxi0o9-1 bWcoqA MoreDetails___StyledAccordionHeader-sc-1h9rbjh-2 hEdQvw\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; cursor: pointer; display: flex; -webkit-box-pack: justify; justify-content: space-between; -webkit-box-align: center; align-items: center; padding-top: 0.5rem;\"></div></div>', 'chilli.jpg', 'chilli1.jpg', 'a3.jpg', 0, 'In Stock', '2022-02-13 08:27:11', NULL),
(27, 6, 15, 'Celery, 1 kg', 'Fresho', 79, 99, '<ul><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; padding: 0px; margin: 0px; list-style: none;\">Relish juicy, crunchy and mildly salty flavoured celeries that are individually handpicked everyday by our trained farmers.</li></ul>', 'celery.jpg', 'celery.jpg', 'celery1.jpg', 0, 'In Stock', '2022-02-13 08:32:11', NULL),
(28, 6, 16, 'Lemon,4pcs', 'Fresho', 21, 26, '<ul><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">It is organically grown and handpicked from farm</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\"></li><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Product image shown is for representation purpose only, the actually product may vary based on season, produce &amp; availability.</span></li></ul>', 'lemon.jpg', 'lemon1.jpg', 'lemon4.jpg', 0, 'In Stock', '2022-02-13 08:39:09', NULL),
(29, 6, 16, 'Garlic,250g', 'Fresho', 22, 27, '<ul><li><span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Garlic is made of several heads wrapped in thin whitish layers. They are firm and have a mild flavour. Once crushed, they emit a strong and pungent aroma.</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\"></li></ul>', 'garlic.jpg', 'garlic1.jpg', 'a3.jpg', 0, 'In Stock', '2022-02-13 08:45:09', NULL),
(30, 3, 5, 'Guava - Thai, 1 pc', 'Fresho', 42, 52, '<span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Large sized, apple green skinned Thai guavas have a white flesh with pale yellow seeds and tend to be drier than the pink guavas. Thai guavas are only mildly sweet and have very little fragrance.</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">', 'ghuva.jpg', 'ghuva1.jpg', 'a3.jpg', 0, 'In Stock', '2022-02-13 15:12:55', NULL),
(31, 3, 7, 'Avocado - Imported, Medium, 1 pc', 'Fresho', 299, 37, '<span style=\"color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">Imported avocados come with an irresistible buttery flavour. They have a unique-textured, creamy and light green flesh with a special aroma. Avocados are also known as an alligator pear or butter fruit.</span><br style=\"box-sizing: border-box; border-width: 0px; border-style: solid; color: rgb(32, 32, 32); font-family: ProximaNova-Regular;\">', 'ava.jpg', 'ava1.jpg', 'a3.jpg', 0, 'In Stock', '2022-02-13 15:14:42', NULL),
(32, 3, 5, 'Grape fruit -1 pc (Approx. 200 g - 300 g)', 'Fresho', 65, 86, '<div class=\"Accordion___StyledDiv-qxi0o9-0 btYfE MoreDetails___StyledAccordionItem-sc-1h9rbjh-1 kLMchh\" style=\"box-sizing: border-box; border-width: 0px 0px 1px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; display: flex; flex-direction: column; --border-opacity:1; border-color: rgba(221,221,221,var(--border-opacity)); padding-bottom: 1rem; color: rgb(32, 32, 32); font-family: ProximaNova, Helvetica, Arial, sans-serif; font-size: 16px;\"><div class=\"Accordion___StyledDiv3-qxi0o9-2 krvVHK\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; transition-property: all; position: relative; transition-duration: 300ms; overflow: hidden; visibility: visible; opacity: 1; max-height: 50px;\"><div class=\"jsx-126741615 mask\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; -webkit-mask-image: linear-gradient(to top, transparent 5%, rgb(0, 0, 0) 100%);\"><div class=\"pt-4 text-md\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; font-size: 0.875rem; padding-top: 1rem;\"><div style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; font-family: ProximaNova-Regular; font-size: 13px; line-height: 18px;\">Grapefruits are oblate fruits with yellow or pink-yellow thick skin with tart and tangy flavour but sweet.</div></div></div></div></div><div class=\"Accordion___StyledDiv-qxi0o9-0 btYfE MoreDetails___StyledAccordionItem-sc-1h9rbjh-1 kLMchh\" style=\"box-sizing: border-box; border-width: 0px 0px 1px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; display: flex; flex-direction: column; --border-opacity:1; border-color: rgba(221,221,221,var(--border-opacity)); padding-bottom: 1rem; color: rgb(32, 32, 32); font-family: ProximaNova, Helvetica, Arial, sans-serif; font-size: 16px;\"><div class=\"Accordion___StyledDiv2-qxi0o9-1 bWcoqA MoreDetails___StyledAccordionHeader-sc-1h9rbjh-2 hEdQvw\" style=\"box-sizing: border-box; border-width: 0px; border-style: solid; background-position: 50% center; background-repeat: no-repeat; cursor: pointer; display: flex; -webkit-box-pack: justify; justify-content: space-between; -webkit-box-align: center; align-items: center; padding-top: 0.5rem;\"></div></div>', 'graph.jpg', 'graph.jpg', 'a3.jpg', 0, 'In Stock', '2022-02-13 15:16:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Apple and Pomegranate', '2017-01-26 16:24:52', '13-02-2022 11:58:46 AM'),
(3, 4, 'Banana, Sapota & Papaya', '2022-01-26 16:29:09', '13-02-2022 11:59:18 AM'),
(4, 4, 'Fruites Basket', '2017-01-30 16:55:48', '13-02-2022 11:59:55 AM'),
(5, 3, 'Beans, Brinjals & Okra', '2017-02-04 04:12:40', '13-02-2022 12:01:10 PM'),
(6, 3, 'Leafy Vegetables and Exotic Fruits', '2017-02-04 04:13:00', '13-02-2022 08:34:26 PM'),
(7, 3, 'Root Vegetables', '2017-02-04 04:13:27', '13-02-2022 12:01:51 PM'),
(13, 5, 'Organic Fruits', '2022-02-13 06:32:11', NULL),
(14, 5, 'Organic Vegetables', '2022-02-13 06:32:24', NULL),
(15, 6, 'Indian & Exotic Herbs', '2022-02-13 06:32:45', NULL),
(16, 6, 'Lemon,Ginger & Garlic', '2022-02-13 06:33:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
