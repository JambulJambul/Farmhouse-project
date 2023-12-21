-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2022 at 07:03 AM
-- Server version: 10.6.4-MariaDB-log
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `buycart`
--

CREATE TABLE `buycart` (
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` longtext NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `itemname` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `prod_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fertilizers`
--

CREATE TABLE `fertilizers` (
  `fertilizer_id` int(11) NOT NULL,
  `fertilizer_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `weight` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `expiry` varchar(255) NOT NULL,
  `img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fertilizers`
--

INSERT INTO `fertilizers` (`fertilizer_id`, `fertilizer_name`, `price`, `weight`, `brand`, `expiry`, `img`) VALUES
(1, 'Down to Earth Organic Vegetable Garden Fertilizer 4-4-4, 5lb', 15.75, '5.5 lbs', 'Golf Le Fleur', '2 weeks', 'https://s3-alpha-sig.figma.com/img/6f65/b694/79f67ea2ceff5681bf46e8bda9e82f77?Expires=1644192000&Signature=C~UjYs1bOmLFlCZFH~PdrKNv4O48t3arDRSL~mSSl8HGVlggzjTYgYwqsuHHPyVysGEEZa-VvwXQXvHsqXNUTx873kW3drXJBe-0JWbSIqGlvYgjgc~zCsnaue1rDX17IzhfY8QdQ9FFTyNZxkP6UIDL-FDzCTyyp4hnlZl2ICvwmUAEPLmjLotM~pkQcfiSg43TR6J3tqBCc7kNMnpFCbBEbxcl6FW0z8F25JzL4wAZSOBTs4XwZXZ8JyMuZwuVYGSgZQLxSuFsqSoeLBJi7VzFXOPBEVyhoYJOJBZM53YhWZGRv5reb5cHCWktfjPSXObyi66zODp0sZWig8MlAg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(2, 'J R Peters Inc (52064) Jacks Classic All Purpose Fertilizer', 24.04, '5lbs', 'J R Peters Inc', '3 weeks', 'https://s3-alpha-sig.figma.com/img/c8d0/aea5/b3b12efa48600e03f7cfe2646711d1ce?Expires=1644192000&Signature=URbikcLit7aYG07RtzNzldyLHTt7GgUbj8dfqaomhux846RYxICOdkHS3F42JVzuG3pBJ0DOzGDf4D18xQ2GNZfGFYGto7jvPj-KZq~tcYnEN8azkGqimkH116BLy7zeG7DGnPjZeweObkFPvwoiNyzvgDAamR82WYjlEMLSAKFjuVmmIZvtRm-MBhvqNMw70L00amWrvDo101Cvp86tE5drhoowXb6wHvp1pzTVpbm9IBAizfp6J-oHVEzQZPNZHii-seUr2ZJ0uJh5E3KdHo-pQiyFYRIDrqbrXbYRttoX~IKD8PRFduLUo5rkYgyUFqDcKoxer5OiVBwpPfQNsQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(3, 'Miracle-Gro Shake \'N Feed Tomato, Fruit & Vegetable Plant Food, Plant Fertilizer, 4.5 lbs.', 32.08, '4.5 lbs', 'Miracle-Gro', '1 month', 'https://s3-alpha-sig.figma.com/img/9274/0a38/e1df5bf0865966c062c6d3a91979fa32?Expires=1644192000&Signature=NKpw~yheASGYiRr9HT5~-c4O~xX~A2u6mIaIVN90fYHki3agnBy~88TI8tBKXsdeejvzjM3GFjfQHjwP3qfoKMOhq0BRrfO6Uz-oQHGUaSlTShhSaDNo63E9qgMQ6feU-e5yNKNBrPI1eCWAUQcQddDZfA0nE41J72MBDDPPUl8zmUSCIT38IxiBpFr62e-wBlCegPkn9l3ANInbBu-BFcbN-ShaxSYbmpRniWqStNojaUXAUsURSCODzYbIqkgkwzLkj4XDSidOEWR2wdbNks9nEzqvjc0myBEPpq8CzabE6nI2XWcyrBQyCSJtbs1BB3BQfhUqd59Ccraf0tFfcQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(4, 'Premium Sprout All Purpose Garden Fertilizer for Indoor & Outdoor Plants', 35.68, '8 lbs', 'Premium Sprout', '1 week', 'https://s3-alpha-sig.figma.com/img/708e/c356/68a650d75b8c0ca8eac70be0a4774ce3?Expires=1644192000&Signature=KMNA6QXYFN0ur0vz7H4~DHwCOUbRkavvFAf1ieHkQ4EsB8iIHbOj7MLVpiqXcayQWpARWnkJfXwC~ns5H3ixThODZDngJTqkWljFXOJ-I0W9Dj~kcM4FYXXOB4trOXhd8MoDXGFnZ4y3lrTJRjo0~HhudWVmeiPP~lxo7Tnv4LAZ6mPcq9mfSrfV128vzxOR0vmguAiSBaPHUk5ooDwEhTypACXG89Os9o8t3QgBzbAAtDSNKLF9MeFAdZ1i9CqJA4xxgNTmT1bN05TOrfAkeWTTadY-U96dZhCKwiJLkdTGdZvwitU0tauBYmQmItsmfYcOY9LyHmFd1o4GJhdqSQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(5, 'Osmocote Smart-Release Plant Food Flower & Vegetable, 8 lb.', 12.99, '8 lbs', 'Osmocote', '3 weeks', 'https://s3-alpha-sig.figma.com/img/c503/f501/286278abaea1aa0469b91f3e2ee55111?Expires=1644192000&Signature=RpjqHefdss0IQz3N7Tqu~f1AiA2iNt8Ozbn-hP7iyB8CibuKYONXrU0bleSg2HCdHfjxlurfDaPIsYLWbDMzdEZ5UV-kvD2~MP3oCGEFn~4~YFfUJRTe9AtLgZA4DoymD6-Z-558tVHYvuPzjhGood464j~nFzlQ-G9FlCoKYJ1ymMClXKCRCqeRzx4t~0QXKdMrw-WCWDDOBAoU582scWVx1NDc17jL-69jrXnWPiQQ9ygDU5wyw28VdbYmrBDa1CKNAoE7lzx7WjOpX3A8VkThsuw7oDh2F6hhJbvMY0igWTYgejEKJCgdtXxbG6pVKxRQvTJneCcpWzQmQBvHoQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(6, 'Dr. Earth Organic 5 Tomato, Vegetable & Herb Fertilizer Poly Bag ', 7.58, ' 10 lbs', 'Dr. Earth', '3 months', 'https://s3-alpha-sig.figma.com/img/91ca/0dc5/f3b245b5bff71f855a7210f4c68d8e73?Expires=1644192000&Signature=RtOn2BXP8PipOyrcVq8sMi0DPqtL76iTuknySM9haXokABhifUb4erV0ubjAR8YYmItdhhEpYBvj6kO4F1udzWjAiUGfzOHB0iJ7-8rK0dwKSBo96CM4x8jwKbh4jeeVGLSyd80GWpUxEzOv4UvwdGeWYH0Qw-xDjtwXKHTEG8l53-M6o5VG5zMj-OIU6Hw7BRfvjhGdo3aoYgGZosmPqosIDndhvR6Vc0dwizTGNMOcoZOGbs5ngus7wsbDclVHjYhbCSznoNXyUaW-IXEATdZIiQ8C1SSyKzYlrN~g1DOyN3kHzWNVfGCUx0qx4wLE~Gj56Rw9eNrdXjzsw-lwBQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `machine_id` int(11) NOT NULL,
  `machine_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `model` varchar(255) NOT NULL,
  `machines_desc` longtext NOT NULL DEFAULT '\'no desc\'',
  `year` varchar(255) NOT NULL,
  `img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`machine_id`, `machine_name`, `price`, `model`, `machines_desc`, `year`, `img`) VALUES
(1, 'Massey Ferguson Tractor', 500, 'Massey Ferguson 5S.105', 'Massey Ferguson 5S.105 Utility tractor is equipped with an AGCO Power turbocharged intercooled diesel 4-cylinder 16-valve liquid-cooled engine, which delivers 105 hp (78.3 kW) power at rated rpm 2000.', '2021', 'https://s3-alpha-sig.figma.com/img/c2b0/25c9/7a4186789a099e88ecfc242e4637f1e4?Expires=1644192000&Signature=V7OoGuKarZFRWFYOSJ8qyM6GRSmAOgcj0uxvHOIxQRjqzZoqWCcaQfs9j62ALedqPbgp8mV7yLpTlT7bikwXYdpktTA9FNIHCBUwGZXkFk3TJrNHzW26gKnA3xtRDykr~ev9VsMQ5RCYEWIhoCpoNbSB7Gw4HKKyCNBgV5Xg7Axj-r8~6dPqv-sk2ZGmWtVwQG75il15094nQFBUtx9nGDh53uhQFIFwcYXG8sFbxDa0QWe3pG1ZiV0xjt9giYxH9LVEK-FFzgCvZjbsg84u9smGIWxiNtECgrYYKW5CrFXNrjb4Ziguyst9iZH6eb38mm-BQu13F8Olau03MfYe6A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(2, 'Whiteman Concrete Buggy', 400, 'MQ Whiteman WBH-16 Power Buggy', 'A large 0.45 cu m capacity tub with integral splatter guard.  No spills, no mess, no waste. 80-degree dump angle for fast, efficient concrete placement. Ergonomic and foldable driver safety platform providing easy-access to all controls.', '2018', 'https://s3-alpha-sig.figma.com/img/a0a7/e855/19cc947c11ba13583c9e8d4d4fbddd24?Expires=1644192000&Signature=RIKkNKauXYqPlbJoKNvlEfpD1YYWolEaqN0n-DJIKETlJtQguMXmpS0d6YZPu7MeGKcZTjRfmLqe~2n7dVb0fnCtlPdsFMd0LIQZ3ywaFb6Yh6buvR2brI~NHVAXRVT7cDXIvHNiPtwhtYS7JqEm9cFDe-GV8w5CIAhHnHJ2k~IZe52X-hQViFT8e9uUFUZmGvmlde~nfOlgdoaYmWGlZQCKG1SDrofbhjaC7kKPADIXCy86uOsc9JAVBwuHoabbWQOvXTpK26VtWhUWirxx9nvaYxZ2QCkAOv8B5chLut2KnogGBxc6rpnnEoB7Bknjtfog5qjmfj-imW-XXeNB~g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(3, 'Shelton Trencher', 1500, 'Shelton CT150', 'The trencher requires a 150hp - 200hp tractor with vario transmission or a creep speed gearbox for  speeds down to 0.3Km per hour and the machine has a maximum digging depth of 1.5 metres (5 foot). It can use laser grading to evenly install land drainage pipes on agricultural land to give longevity and efficiency to a drainage system.', '2015', 'https://s3-alpha-sig.figma.com/img/0825/1c49/d79f199ee1e9dbe30b6d3a074d779442?Expires=1644192000&Signature=XWROkK0HVvVkKO3IrUohMeqA7SRn0cD0hsxIQUPDAANNC99b-4ZTr04UdSRCNIFWZy3nGWnHdBpwZobQF485OVTbMnCWEKKB4-43BfYspQLY3uSGMCGvwegyPgVjH46B8SN95aPmkFjkDQObdAAA6aWMp3Tb~upQjeui6XJAnKbbML5Qbgi6PNdJUdWTgbxVnYRVRKh2twqaftc4MCpc5ru8Lenp4eGslLIWNKJE5SS-uauYJ2NZwywGb8wukf4D84m-2QyW0-7UTS05xAgVKq9rHE1SQy7Ase5kc0aAI9wTum4YXmhL5ObEq~i-eOWdsRxzyOQztZQLjx5ohJ6pnQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(4, 'Billy Goat Overseeder', 250, 'Billy Goat OS901SPH Overseeder', 'Powered by a Honda GX270 engine, the Billy Goat OS901SPH overseeder features self-propulsion which reduces the fatigue associated with pushing and features intuitive forwward and reverse operator controls.\r\n\r\nThe unique blade design of the OS901SPH reduces thatch pick-up and improves blade life thanks to its sharpened leading edge and attack angle combined with a new foot-actuated height adjustment that raises and lowers the reel effortlessly, providing more blade depth.', '2017', 'https://s3-alpha-sig.figma.com/img/c26c/b7e9/0913c4f894b6c8c8b79ef5a85db3d63e?Expires=1644192000&Signature=OD0RDofhESprzf7a5ilbidzyKapdeayRaDu0Hkxg9CTBCscb2J~kCtc0Githv1znZCG-AWpM8meGQqJMyfI1XIcaqJWHbQ~zQKc5okC8heFG3puEwCwH2l36LbS99kACaz0rkOGsyCJgCsi~nE6svSYFUOX9AwMSnY04F-dN7Rebqgc795EpYnK3uyhz8ZrBehEhd0b8CD7cd9aS-zrB81vGAiyQJVcVB9sdlpw5QdJchKWUrmkA8SX0JoZ~7K3F8E0DgVvHlXZAAr3TxS~GE7T4MF8hZsSMyYHx5RiQi810hYHz0nG7eCu4QWPGyt2QpvgJJEBARN0qaid9WSFOGw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
(5, 'Dosko Stump Grinder', 90, 'Dosko 337 SERIES STUMP GRINDER\r\n', 'Engine 389cc Honda GX Engine w/ Cyclone Air Cleaner. Fuel Type: Gasoline. Teeth: Greenteeth® 700 Series Teeth (8). Cutter Wheel: 14\" Dia. x 3/8\" Thick', '2017', 'https://s3-alpha-sig.figma.com/img/ae20/939c/7d9fef544d4bfcf095de6ed917d5217f?Expires=1644192000&Signature=fee-ohnGCQstpvHDpilgRHqaudsauSAPTIaRPkmuX0kKXQIFs3ykddIfdIDwq3Pk4l~wAt2cBa5mGJkvmwnmxCDgBRbASdbU1UzhPf-lfuwoultdth-nghuif2dgX9c87su9O05lBO66xXqxz4T9f~52hpnzUZr7WDADxh2-mNKDaORUp-uoEtb2jiFqeA0riAirP1u1F0f38rs2rvfr7Sl~6iyk8AMIW1ye9twlAl9gq0Slxic365T-BOY3iQ8dgXUMVhgeMOgT1klCMtNLLAWWI71NQ9pVCD8nAYotfGkoWsk3PxCR7ZlOwLTlN3JMJcf3PB5q1oyiOcYydUDjtA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA');

-- --------------------------------------------------------

--
-- Table structure for table `purchasedbuycart`
--

CREATE TABLE `purchasedbuycart` (
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `prod_id` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasedbuycart`
--

INSERT INTO `purchasedbuycart` (`item_id`, `user_id`, `img`, `quantity`, `itemname`, `prod_id`, `price`) VALUES
(1, 1, 'https://s3-alpha-sig.figma.com/img/91ca/0dc5/f3b245b5bff71f855a7210f4c68d8e73?Expires=1644192000&Signature=RtOn2BXP8PipOyrcVq8sMi0DPqtL76iTuknySM9haXokABhifUb4erV0ubjAR8YYmItdhhEpYBvj6kO4F1udzWjAiUGfzOHB0iJ7-8rK0dwKSBo96CM4x8jwKbh4jeeVGLSyd80GWpUxEzOv4UvwdGeWYH0Qw-xDjtwXKHTEG8l53-M6o5VG5zMj-OIU6Hw7BRfvjhGdo3aoYgGZosmPqosIDndhvR6Vc0dwizTGNMOcoZOGbs5ngus7wsbDclVHjYhbCSznoNXyUaW-IXEATdZIiQ8C1SSyKzYlrN~g1DOyN3kHzWNVfGCUx0qx4wLE~Gj56Rw9eNrdXjzsw-lwBQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA', 2, 'Dr. Earth Organic 5 Tomato, Vegetable & Herb Fertilizer Poly Bag ', 'fert-6', 7.58),
(3, 1, 'https://s3-alpha-sig.figma.com/img/c8d0/aea5/b3b12efa48600e03f7cfe2646711d1ce?Expires=1644192000&Signature=URbikcLit7aYG07RtzNzldyLHTt7GgUbj8dfqaomhux846RYxICOdkHS3F42JVzuG3pBJ0DOzGDf4D18xQ2GNZfGFYGto7jvPj-KZq~tcYnEN8azkGqimkH116BLy7zeG7DGnPjZeweObkFPvwoiNyzvgDAamR82WYjlEMLSAKFjuVmmIZvtRm-MBhvqNMw70L00amWrvDo101Cvp86tE5drhoowXb6wHvp1pzTVpbm9IBAizfp6J-oHVEzQZPNZHii-seUr2ZJ0uJh5E3KdHo-pQiyFYRIDrqbrXbYRttoX~IKD8PRFduLUo5rkYgyUFqDcKoxer5OiVBwpPfQNsQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA', 2, 'J R Peters Inc (52064) Jacks Classic All Purpose Fertilizer', 'fert-2', 24.04),
(4, 1, 'https://www.progreen.co.uk/media/catalog/product/cache/e9612a52d09b578d30f3cea2a1c55d53/t/i/tiger_amvbag_25kg.jpg', 2, ' Paddock Fertiliser 25kg', 'fert-9', 20);

-- --------------------------------------------------------

--
-- Table structure for table `purchasedrentcart`
--

CREATE TABLE `purchasedrentcart` (
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `prod_id` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasedrentcart`
--

INSERT INTO `purchasedrentcart` (`item_id`, `user_id`, `img`, `quantity`, `itemname`, `prod_id`, `duration`, `price`) VALUES
(1, 1, 'https://s3-alpha-sig.figma.com/img/c26c/b7e9/0913c4f894b6c8c8b79ef5a85db3d63e?Expires=1644192000&Signature=OD0RDofhESprzf7a5ilbidzyKapdeayRaDu0Hkxg9CTBCscb2J~kCtc0Githv1znZCG-AWpM8meGQqJMyfI1XIcaqJWHbQ~zQKc5okC8heFG3puEwCwH2l36LbS99kACaz0rkOGsyCJgCsi~nE6svSYFUOX9AwMSnY04F-dN7Rebqgc795EpYnK3uyhz8ZrBehEhd0b8CD7cd9aS-zrB81vGAiyQJVcVB9sdlpw5QdJchKWUrmkA8SX0JoZ~7K3F8E0DgVvHlXZAAr3TxS~GE7T4MF8hZsSMyYHx5RiQi810hYHz0nG7eCu4QWPGyt2QpvgJJEBARN0qaid9WSFOGw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA', 2, 'Billy Goat Overseeder', 'mach-4', 1, 250),
(4, 1, 'https://s3-alpha-sig.figma.com/img/a0a7/e855/19cc947c11ba13583c9e8d4d4fbddd24?Expires=1644192000&Signature=RIKkNKauXYqPlbJoKNvlEfpD1YYWolEaqN0n-DJIKETlJtQguMXmpS0d6YZPu7MeGKcZTjRfmLqe~2n7dVb0fnCtlPdsFMd0LIQZ3ywaFb6Yh6buvR2brI~NHVAXRVT7cDXIvHNiPtwhtYS7JqEm9cFDe-GV8w5CIAhHnHJ2k~IZe52X-hQViFT8e9uUFUZmGvmlde~nfOlgdoaYmWGlZQCKG1SDrofbhjaC7kKPADIXCy86uOsc9JAVBwuHoabbWQOvXTpK26VtWhUWirxx9nvaYxZ2QCkAOv8B5chLut2KnogGBxc6rpnnEoB7Bknjtfog5qjmfj-imW-XXeNB~g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA', 2, 'Whiteman Concrete Buggy', 'mach-2', 1, 400),
(5, 1, 'https://s3-alpha-sig.figma.com/img/8407/635d/a64f3ba660e2a4693dc00927a6d231af?Expires=1644192000&Signature=OyQ9rN~x6GV~GhICCNIpaQXuhaGZUspnJ7taPwfcd54JcOp~3ttpdIU4JvWTUtyjDRqg2G7~L7Jiu09BWP6vOVzcx3WNb4rMZo78FGlVrT7iFvicqDR~uhJXZcFJO~hydp5J7PBxOyDjmn~UEbd~W2H8Cpn44ET9T2jngkrL9TrN6JGrGCizbw00zDwqTbF8S6a2BlsmMB931JioOtFhqO0U02W1tcVgQ-I7FJSJfwBHYfpxtTE-GFMTmOh7Br0MeX~H7IM~YrflesWG~0a~efMp1eoV2esGtFSCxtLznxawaWecvkXWWp~rZUHVLYTAsopnhbJVbbjDiMQ2k9hBkQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA', 1, 'Roughneck Landscaping Rake', 'tool-1', 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `rentalcart`
--

CREATE TABLE `rentalcart` (
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` longtext NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  `itemname` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `prod_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `tools_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `rent_price` float NOT NULL,
  `buy_price` float NOT NULL,
  `img` longtext NOT NULL,
  `tools_desc` longtext NOT NULL DEFAULT 'no desc'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`tools_id`, `name`, `brand`, `rent_price`, `buy_price`, `img`, `tools_desc`) VALUES
(1, 'Roughneck Landscaping Rake', 'Roughneck', 9, 70, 'https://s3-alpha-sig.figma.com/img/8407/635d/a64f3ba660e2a4693dc00927a6d231af?Expires=1644192000&Signature=OyQ9rN~x6GV~GhICCNIpaQXuhaGZUspnJ7taPwfcd54JcOp~3ttpdIU4JvWTUtyjDRqg2G7~L7Jiu09BWP6vOVzcx3WNb4rMZo78FGlVrT7iFvicqDR~uhJXZcFJO~hydp5J7PBxOyDjmn~UEbd~W2H8Cpn44ET9T2jngkrL9TrN6JGrGCizbw00zDwqTbF8S6a2BlsmMB931JioOtFhqO0U02W1tcVgQ-I7FJSJfwBHYfpxtTE-GFMTmOh7Br0MeX~H7IM~YrflesWG~0a~efMp1eoV2esGtFSCxtLznxawaWecvkXWWp~rZUHVLYTAsopnhbJVbbjDiMQ2k9hBkQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA', 'Lightweight and rustproof aluminium rake. Ideal for raking bark, wood chippings, leaf mulch, pea gravels and other landscaping tasks. Fibreglass handle. 8mm teeth with 15mm gaps.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `phone`, `address`, `name`) VALUES
(1, 'hilman_fahmi21@yahoo.com', '123456', '121-12-112', 'palem indah blok n nomor 8', 'Hilman Nurfahmi '),
(5, 'asfaf@asfafsf', 'abcdef', '123-13-123', 'asfaff', 'raj'),
(6, 'bambang@gmail', 'abcdef', '123-12-121', 'palem indah blok n nomor 8', 'raj'),
(7, 'rija@gmail', '123456', '123-13-132', 'galaxy no 10', 'rija'),
(8, 'fikriansyah@gmail.com', '123456', '123-12-123', 'di surabaya', 'fikriansyah'),
(9, 'anda@gmail.com', '123456', '123-23-231', 'KDOJ', 'ananda riza'),
(10, 'hilman@asda', '123456', '201-20-120', 'kuala lumpur', 'hilman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buycart`
--
ALTER TABLE `buycart`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `fertilizers`
--
ALTER TABLE `fertilizers`
  ADD PRIMARY KEY (`fertilizer_id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`machine_id`);

--
-- Indexes for table `purchasedbuycart`
--
ALTER TABLE `purchasedbuycart`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `purchasedrentcart`
--
ALTER TABLE `purchasedrentcart`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `rentalcart`
--
ALTER TABLE `rentalcart`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`tools_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buycart`
--
ALTER TABLE `buycart`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fertilizers`
--
ALTER TABLE `fertilizers`
  MODIFY `fertilizer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `machine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchasedbuycart`
--
ALTER TABLE `purchasedbuycart`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchasedrentcart`
--
ALTER TABLE `purchasedrentcart`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rentalcart`
--
ALTER TABLE `rentalcart`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `tools_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
