-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2024 at 08:00 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_packages_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`) VALUES
(6, 2, '2024-05-31 11:26:42'),
(7, 4, '2024-06-11 20:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`) VALUES
(15, '6', 1),
(16, '7', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`) VALUES
(3, ' Implementarea AI în \r\nPropriul Business Financiar\r\n', 'Descriere: Un curs intensiv care ajută participanții să implementeze soluții de AI în propriile afaceri financiare.\r\n\r\nDurata: 10 ore\r\nNivel: Avansat\r\n', 240.00),
(5, 'Webinar: Tendințe și Inovații în IA pentru Finanțe', 'Descriere: Discuții despre cele mai recente tendințe și inovații în domeniul IA și impactul acestora asupra piețelor financiare.\r\nDurata: 2 ore\r\nData:   24 iunie 2024', 150.00),
(6, 'Webinar: Detectarea Fraudelor cu Tehnici de Învățare Automată\r\n', 'Descriere: Învață cum să aplici tehnici de machine learning pentru a detecta și preveni frauda în tranzacțiile financiare.\r\nDurata: 3.5 ore\r\nData: 18 septembrie 2024', 100.00),
(8, 'Introducere în Inteligența Artificială pentru Analiza Financiară', 'Descriere: Acest curs oferă o introducere completă în conceptele de bază ale inteligenței artificiale și aplicațiile acesteia în analiza financiară.\r\nDurata: 11 ore\r\nNivel: Începător', 199.00),
(7, 'Analiza Riscului Financiar cu Ajutorul Inteligenței Artificiale', 'Descriere: Acest curs explorează tehnici avansate de IA pentru identificarea și gestionarea riscurilor financiare. Temele includ detectarea fraudelor și gestionarea riscului de credit.\r\nDurata: 3.5 ore\r\nNivel: Intermediar', 289.00),
(9, 'Impactul Inteligenței Artificiale în Piețele Financiare', 'Descriere: O discuție detaliată despre cum IA influențează piețele financiare, cu studii de caz și exemple din industrie.\r\nDurata: 1.5 ore\r\nData: 22 iulie 2024\r\n', 60.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'valentin', 'razvan.bistrian@yahoo.com', '$2y$10$GhX7Oq.DI534zYfFxQntjuGMC9x9J.o31YUTj/jzmDoGyuCa8Ho1q'),
(2, 'valentin1', 'razvan.bistrian1@yahoo.com', '$2y$10$s/1XhCqjAhbi9u62..WP8e7lhi0..zQgkUhcVjNlDlwiSJokaGrTO'),
(3, 'Miruna', 'elenamirunad@gmail.com', '$2y$10$c.2tsNgDQ0m0Qtd.mooWbOHZ2xwa3RiALrDaqnleyiMruuB/29n8C'),
(4, 'Miruna', 'mirunadinu.25@yahoo.com', '$2y$10$eGPzF7pjdbjvoTfkZQskIuwiO7fnYtWlWyhaboQ0.5wZ9gsE33SVW');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
