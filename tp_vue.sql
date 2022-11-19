-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2022 at 10:09 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp_vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `description` text,
  `prix` double DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nom`, `description`, `prix`, `photo`, `categorie`, `createdAt`, `updatedAt`) VALUES
(2, 'Xavier', 'Un canard mais c\'est Xavier', 20, 'xavier.jpg', 'Tall canard', '2022-11-18 21:05:15', '2022-11-18 21:05:15'),
(8, 'Canards en caoutchouc, paq. 20', 'Lot de 18 magnifiques canards pour vous supporter dans vos moments les plus difficiles. Nos canards sauront vous accompagner lors d\'une refonte de site web rempli de !important.', 11.99, '20-canards.jpg', 'Canards classiques', '2022-11-18 22:53:50', '2022-11-18 22:53:50'),
(9, 'Canard de bain en plastique Frida Kahlo', 'Pourquoi ne pas passer une soirée à discuter de l\'art et du postcolonialisme avec Frida?', 23.99, 'frida-canard.jpg', 'Canards costumés', '2022-11-18 22:55:05', '2022-11-18 22:55:05'),
(10, 'Canards en plastique cowboy', 'Ces canards Cowboy rendent l\'heure du bain pleine d\'amusement d\'éclaboussures et de charlatanisme !', 5.99, 'canards-cowboy.jpg', 'Canards costumés', '2022-11-18 22:56:10', '2022-11-18 22:56:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
