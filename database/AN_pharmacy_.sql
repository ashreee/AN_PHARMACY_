

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(25) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT 0,
  `brand_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(11, 'Dabur India LTD', 1, 1),
(22, 'Himalaya Wellness', 1, 1),
(33, 'Patanjali Ayurveda', 1, 1),
(44, 'Zandu Ayurveda', 1, 1);



CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(25) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT 0,
  `categories_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(111, 'Tablets', 1, 1),
(222, 'Syrup', 1, 1),
(333, 'SkinLiquid', 1, 1),
(444, 'PainKiller', 1, 1);



CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `uno` varchar(50) NOT NULL,
  `orderDate` date NOT NULL,
  `clientName` text NOT NULL,
  `projectName` varchar(30) NOT NULL,
  `clientContact` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  `subTotal` int(100) NOT NULL,
  `totalAmount` int(100) NOT NULL,
  `discount` int(100) NOT NULL,
  `grandTotalValue` int(100) NOT NULL,
  `gstn` int(100) NOT NULL,
  `paid` int(100) NOT NULL,
  `dueValue` int(10) NOT NULL,
  `paymentType` varchar(15) NOT NULL,
  `paymentStatus` int(15) NOT NULL,
  `paymentPlace` varchar(15) NOT NULL,
  `delete_status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `orders` (`id`, `uno`, `orderDate`, `clientName`, `projectName`, `clientContact`, `address`, `subTotal`, `totalAmount`, `discount`, `grandTotalValue`, `gstn`, `paid`, `dueValue`, `paymentType`, `paymentStatus`, `paymentPlace`, `delete_status`) VALUES
(101, 'INV-0001', '2023-01-7', 'ashriya', 'B', 9449102580, 'SULLIA',250,250,10,225,12,225,0,'ONLINE',1,'SULLIA','Y'),
(102, 'INV-0002', '2023-01-14', 'nilufer', 'A', 8606430973,'PUTTUR',500,500,15,425,12,425,25,'COD',0,'PUTTUR','N' ),
(103, 'INV-0003', '2023-01-21', 'naafi', 'C', 8277773466, 'MANGALORE',725,725,20,560,12,560,60,'ONLINE',1,'MANGALORE','Y'),
(104, 'INV-0004', '2023-01-28', 'jesi', 'D', 8431178012,'SULLIA',1000,1000,15,850,12,850,50,'COD',0,'SULLIA','N' );


CREATE TABLE `order_item` (
  `id` int(15) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `quantity` varchar(25) NOT NULL,
  `rate` int(25) NOT NULL,
  `total` varchar(25) NOT NULL,
  `lastid` int(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `order_item` (`id`, `productName`, `quantity`, `rate`, `total`, `lastid`, `added_date`) VALUES
(101, 'Guduchi', '1', '100', '100.00', 2, '0000-00-00'),
(102, 'Kanchnar Ghanvati', '2', '150', '300.00', 2, '2022-04-15'),
(103, 'Ashwagandha', '2', '30', '60.00', 4, '2022-04-15'),
(104, 'Nityam','1', '150', '100.00', 2, '2022-04-15'),
(105, 'Septilin', '4', '100', '600.00', 6, '2022-04-15'),
(106, 'Divya Swasari Pravahi', '1', '100', '200.00', 8, '2022-04-15'),
(107, 'Broncoid', '2', '150', '60.00', 2, '2022-04-15'),
(108, 'Pancharishta','2', '30', '300.00', 2, '2022-04-15'),
(109, 'Stress relief oil','2', '150', '60.00', 4, '2022-04-15'),
(110, 'Soundarya','4', '100', '600.00', 6, '2022-4-15'),
(121, 'Dashmularista','1', '150', '100.00', 2, '2022-4-15'),
(122, 'Lalima','2', '30', '300.00', 2, '2022-4-15'),
(123, 'Tryodashang Gugguli', '2', '150', '60.00', 4, '2022-04-15'),
(124, 'Yograj Gugguli', '2', '100', '60.00', 4, '2022-04-15'),
(125, 'Rheumatil','4', '30', '600.00', 6, '2022-04-15'),
(126, 'Zandu Balm','4', '150', '700.00', 6, '2022-04-15');


CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(25) NOT NULL,
  `rate` varchar(25) NOT NULL,
  `mrp` int(100) NOT NULL,
  `bno` varchar(50) NOT NULL,
  `expdate` date NOT NULL,
  `added_date` date NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `mrp`, `bno`, `expdate`, `added_date`, `active`, `status`) VALUES
(1, 'Guduchi','t111.jpg', 22, 111, '50', '100', 100.00, '307002', '0000-00-00', '0000-00-00', 1, 1),
(2, 'Kanchnar Ghanvati','t2.jpg', 33, 111, '30', '150', 150.00, '307003', '2022-02-16', '2022-02-14', 1, 1),
(3, 'Ashwagandha','t3.jpg', 11, 111, '70', '30', 30.00, '307004', '2022-04-9', '2022-02-15', 1, 1),
(4, 'Nityam','t4.jpg', 44, 111, '500', '150', 150.00, '307005', '2022-04-17', '2022-04-19', 1, 1),
(5, 'Septilin','t5.jpg', 22, 222, '50', '100', 100.00, '307006', '2022-05-28', '2022-05-26', 1, 1),
(6, 'Divya Swasari Pravahi','t6.jpg', 33, 222, '30', '100', 100.00, '307007', '2022-06-18', '2022-06-16', 1, 1),
(7, 'Broncoid','t7.jpg', 11, 222, '70', '150', 150.00, '307008', '2022-07-28', '2022-07-26', 1, 1),
(8, 'Pancharishta','t8.jpg', 44, 222, '500', '30', 30.00, '307009', '2022-08-21', '2022-08-19', 1, 1),
(9, 'Stress relief oil','t16.jpg', 22, 333, '50', '150', 150.00, '307010', '2022-09-15', '2022-09-13', 1, 1),
(10, 'Soundarya','t333.jpg', 33, 333, '30', '100', 100.00, '307011', '2022-12-17', '2022-12-15', 1, 1),
(11, 'Dashmularista','t10.jpg', 11, 333, '70', '150', 150.00, '307012', '2022-11-28', '2022-11-26', 1, 1),
(12, 'Lalima','t11.jpg', 44, 333, '500', '30', 30.00, '307013', '2022-12-9', '2022-12-7', 1, 1),
(13, 'Tryodashang Gugguli','t12.jpg', 33, 444, '50', '150', 150.00, '307014', '2022-02-28', '2022-02-26', 1, 1),
(14, 'Yograj Gugguli','t13.jpg', 33, 444, '30', '100', 100.00, '307015', '2022-04-10', '2022-04-15', 1, 1),
(15, 'Rheumatil','t14.jpg', 11, 444, '70', '30', 30.00, '307016', '2022-04-15', '2022-04-15', 1, 1),
(16, 'Zandu Balm','t15.jpg', 44, 444, '500', '150', 150.00, '307017', '2022-04-24', '2022-04-15', 1, 1);

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255 ) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'nilufar', '88a49c3695747772777310af4038d420','ayishaashri9@gmail.com');



ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);


ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);


ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

