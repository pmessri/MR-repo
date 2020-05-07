-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2020 at 07:49 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mm_scrap`
--

-- --------------------------------------------------------

--
-- Table structure for table `mm_details`
--

CREATE TABLE `mm_details` (
  `id` int(6) NOT NULL,
  `gene_trait` varchar(128) NOT NULL,
  `gene_trait_url` varchar(256) NOT NULL,
  `normal` int(6) NOT NULL,
  `super` int(6) NOT NULL,
  `possible_het` int(6) NOT NULL,
  `het` int(6) NOT NULL,
  `visual` int(6) NOT NULL,
  `possible_other` int(6) NOT NULL,
  `normal_other` int(6) NOT NULL,
  `type` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mm_details`
--

INSERT INTO `mm_details` (`id`, `gene_trait`, `gene_trait_url`, `normal`, `super`, `possible_het`, `het`, `visual`, `possible_other`, `normal_other`, `type`, `created_at`) VALUES
(1, 'Albino (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(argentine)', 0, 0, 5, 0, 2, 0, 0, 'FOR_SALE', '2020-05-06 14:17:35'),
(2, 'Albino (Caramel-hypo)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(caramel-hypo)', 0, 0, 4, 59, 16, 0, 0, 'FOR_SALE', '2020-05-06 14:17:35'),
(3, 'Albino (Central)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(central)', 0, 0, 23, 26, 38, 0, 0, 'FOR_SALE', '2020-05-06 14:17:36'),
(4, 'Albino (Costa Rican)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(costa%20rican)', 0, 0, 1, 7, 3, 0, 0, 'FOR_SALE', '2020-05-06 14:17:36'),
(5, 'Albino (Desert)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(desert)', 0, 0, 0, 0, 1, 0, 0, 'FOR_SALE', '2020-05-06 14:17:36'),
(6, 'Albino (Kahl)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(kahl)', 0, 0, 142, 109, 163, 0, 0, 'FOR_SALE', '2020-05-06 14:17:36'),
(7, 'Albino (Prodigy)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(prodigy)', 0, 0, 1, 20, 8, 0, 0, 'FOR_SALE', '2020-05-06 14:17:36'),
(8, 'Albino (Sharp)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sharp)', 0, 0, 21, 122, 82, 0, 0, 'FOR_SALE', '2020-05-06 14:17:36'),
(9, 'Albino (VPI)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(vpi)', 0, 0, 37, 100, 132, 0, 0, 'FOR_SALE', '2020-05-06 14:17:37'),
(10, 'Amber', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/amber', 1, 1, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:37'),
(11, 'Anerythristic (Carbon)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(carbon)', 0, 0, 21, 6, 15, 0, 0, 'FOR_SALE', '2020-05-06 14:17:37'),
(12, 'Anerythristic (RDR Black Eye)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(rdr%20black%20eye)', 0, 0, 28, 7, 12, 0, 0, 'FOR_SALE', '2020-05-06 14:17:37'),
(13, 'Anerythristic (Silver Bullet)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(silver%20bullet)', 0, 0, 2, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:37'),
(14, 'Anerythristic (Type 1)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%201)', 0, 0, 64, 86, 96, 0, 0, 'FOR_SALE', '2020-05-06 14:17:38'),
(15, 'Anerythristic (Type 2)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%202)', 0, 0, 23, 8, 21, 0, 0, 'FOR_SALE', '2020-05-06 14:17:38'),
(16, 'Arabesque', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/arabesque', 27, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:38'),
(17, 'Aztec', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/aztec', 83, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:38'),
(18, 'Black', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/black', 0, 0, 1, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:38'),
(19, 'Blood', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/blood', 0, 0, 65, 103, 87, 0, 0, 'FOR_SALE', '2020-05-06 14:17:38'),
(20, 'Coral Albino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/coral%20albino', 0, 0, 0, 0, 0, 0, 10, 'FOR_SALE', '2020-05-06 14:17:39'),
(21, 'Cyclone', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/cyclone', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:39'),
(22, 'Ferrari Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/ferrari%20pastel', 0, 0, 0, 0, 0, 0, 1, 'FOR_SALE', '2020-05-06 14:17:39'),
(23, 'Fire', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/fire', 40, 5, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:39'),
(24, 'Flamingo Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/flamingo%20pastel', 0, 0, 0, 0, 0, 0, 16, 'FOR_SALE', '2020-05-06 14:17:39'),
(25, 'Harlequin', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/harlequin', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:39'),
(26, 'Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/hypo', 556, 66, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:39'),
(27, 'IMG', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/img', 94, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:40'),
(28, 'Import', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/import', 0, 0, 0, 0, 0, 0, 1, 'FOR_SALE', '2020-05-06 14:17:40'),
(29, 'Inca', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/inca', 9, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:40'),
(30, 'Jaguar (Honduran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jaguar%20(honduran)', 0, 0, 0, 0, 1, 0, 0, 'FOR_SALE', '2020-05-06 14:17:40'),
(31, 'Jungle', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jungle', 339, 1, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:40'),
(32, 'Keltic', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/keltic', 5, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:40'),
(33, 'Key West', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/key%20west', 46, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:41'),
(34, 'Kraken', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kraken', 3, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:41'),
(35, 'Labyrinth', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/labyrinth', 3, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:41'),
(36, 'Leopard', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/leopard', 0, 0, 37, 36, 46, 0, 0, 'FOR_SALE', '2020-05-06 14:17:41'),
(37, 'Marron', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/marron', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:41'),
(38, 'Monster Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/monster%20tail', 0, 0, 0, 0, 0, 0, 25, 'FOR_SALE', '2020-05-06 14:17:41'),
(39, 'Motley (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(argentine)', 3, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:41'),
(40, 'Motley (Central American)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(central%20american)', 28, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:42'),
(41, 'Motley (Colombian)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(colombian)', 185, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:42'),
(42, 'Normal', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/normal', 0, 0, 0, 0, 0, 0, 9, 'FOR_SALE', '2020-05-06 14:17:42'),
(43, 'Onyx', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/onyx', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:42'),
(44, 'Paradox', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/paradox', 0, 0, 0, 0, 0, 0, 1, 'FOR_SALE', '2020-05-06 14:17:42'),
(45, 'Pastel Dream', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pastel%20dream', 0, 0, 0, 0, 0, 1, 30, 'FOR_SALE', '2020-05-06 14:17:42'),
(46, 'Pink Panther', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pink%20panther', 0, 0, 0, 0, 0, 6, 21, 'FOR_SALE', '2020-05-06 14:17:43'),
(47, 'RC Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/rc%20pastel', 0, 0, 0, 0, 0, 0, 15, 'FOR_SALE', '2020-05-06 14:17:43'),
(48, 'Redrum Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/redrum%20pastel', 0, 0, 0, 0, 0, 0, 5, 'FOR_SALE', '2020-05-06 14:17:43'),
(49, 'Roswell Laddertail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/roswell%20laddertail', 20, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:43'),
(50, 'Salmon Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/salmon%20hypo', 0, 0, 0, 0, 0, 0, 19, 'FOR_SALE', '2020-05-06 14:17:43'),
(51, 'Scoria', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/scoria', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-06 14:17:43'),
(52, 'Square Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/square%20tail', 0, 0, 0, 2, 2, 0, 0, 'FOR_SALE', '2020-05-06 14:17:44'),
(53, 'Sterling', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sterling', 0, 0, 4, 4, 5, 0, 0, 'FOR_SALE', '2020-05-06 14:17:44'),
(54, 'Striped Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/striped%20tail', 0, 0, 2, 1, 1, 0, 0, 'FOR_SALE', '2020-05-06 14:17:44'),
(55, 'Summit Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/summit%20pastel', 0, 0, 0, 0, 0, 1, 19, 'FOR_SALE', '2020-05-06 14:17:44'),
(56, 'Sunset', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sunset', 0, 0, 0, 0, 0, 0, 24, 'FOR_SALE', '2020-05-06 14:17:44'),
(57, 'Super Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/super%20stripe', 0, 0, 0, 0, 3, 0, 0, 'FOR_SALE', '2020-05-06 14:17:44'),
(58, 'Albino (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(argentine)?region=us&secret-refresh=1&epoch=1', 0, 0, 13, 4, 6, 0, 0, 'SOLD', '2020-05-06 14:17:54'),
(59, 'Albino (Blonde)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(blonde)?region=us&secret-refresh=1&epoch=1', 0, 0, 3, 1, 3, 0, 0, 'SOLD', '2020-05-06 14:17:54'),
(60, 'Albino (Caramel-hypo)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(caramel-hypo)?region=us&secret-refresh=1&epoch=1', 0, 0, 29, 107, 57, 0, 0, 'SOLD', '2020-05-06 14:17:54'),
(61, 'Albino (Central)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(central)?region=us&secret-refresh=1&epoch=1', 0, 0, 35, 58, 95, 0, 0, 'SOLD', '2020-05-06 14:17:54'),
(62, 'Albino (Costa Rican)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(costa%20rican)?region=us&secret-refresh=1&epoch=1', 0, 0, 8, 2, 3, 0, 0, 'SOLD', '2020-05-06 14:17:55'),
(63, 'Albino (Desert)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(desert)?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 1, 0, 0, 0, 'SOLD', '2020-05-06 14:17:55'),
(64, 'Albino (Kahl)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(kahl)?region=us&secret-refresh=1&epoch=1', 0, 0, 685, 1116, 1646, 0, 0, 'SOLD', '2020-05-06 14:17:55'),
(65, 'Albino (Prodigy)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(prodigy)?region=us&secret-refresh=1&epoch=1', 0, 0, 9, 63, 11, 0, 0, 'SOLD', '2020-05-06 14:17:55'),
(66, 'Albino (Sharp)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sharp)?region=us&secret-refresh=1&epoch=1', 0, 0, 161, 489, 439, 0, 0, 'SOLD', '2020-05-06 14:17:55'),
(67, 'Albino (Sonoran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sonoran)?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 1, 0, 0, 'SOLD', '2020-05-06 14:17:55'),
(68, 'Albino (VPI)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(vpi)?region=us&secret-refresh=1&epoch=1', 0, 0, 262, 426, 538, 0, 0, 'SOLD', '2020-05-06 14:17:56'),
(69, 'Amber', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/amber?region=us&secret-refresh=1&epoch=1', 1, 1, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:56'),
(70, 'Anerythristic (Carbon)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(carbon)?region=us&secret-refresh=1&epoch=1', 0, 0, 4, 6, 0, 0, 0, 'SOLD', '2020-05-06 14:17:56'),
(71, 'Anerythristic (RDR Black Eye)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(rdr%20black%20eye)?region=us&secret-refresh=1&epoch=1', 0, 0, 74, 39, 88, 0, 0, 'SOLD', '2020-05-06 14:17:56'),
(72, 'Anerythristic (Silver Bullet)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(silver%20bullet)?region=us&secret-refresh=1&epoch=1', 0, 0, 2, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:56'),
(73, 'Anerythristic (Type 1)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%201)?region=us&secret-refresh=1&epoch=1', 0, 0, 593, 579, 991, 0, 0, 'SOLD', '2020-05-06 14:17:56'),
(74, 'Anerythristic (Type 2)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%202)?region=us&secret-refresh=1&epoch=1', 0, 0, 106, 32, 47, 0, 0, 'SOLD', '2020-05-06 14:17:57'),
(75, 'Arabesque', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/arabesque?region=us&secret-refresh=1&epoch=1', 220, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:57'),
(76, 'Aztec', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/aztec?region=us&secret-refresh=1&epoch=1', 305, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:57'),
(77, 'Black', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/black?region=us&secret-refresh=1&epoch=1', 0, 0, 1, 3, 12, 0, 0, 'SOLD', '2020-05-06 14:17:57'),
(78, 'Blood', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/blood?region=us&secret-refresh=1&epoch=1', 0, 0, 231, 272, 267, 0, 0, 'SOLD', '2020-05-06 14:17:57'),
(79, 'Coral Albino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/coral%20albino?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 8, 75, 'SOLD', '2020-05-06 14:17:57'),
(80, 'Cyclone', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/cyclone?region=us&secret-refresh=1&epoch=1', 3, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:58'),
(81, 'Domino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/domino?region=us&secret-refresh=1&epoch=1', 1, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:58'),
(82, 'Ferrari Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/ferrari%20pastel?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 8, 'SOLD', '2020-05-06 14:17:58'),
(83, 'Fire', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/fire?region=us&secret-refresh=1&epoch=1', 111, 21, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:58'),
(84, 'Flamingo Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/flamingo%20pastel?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 35, 'SOLD', '2020-05-06 14:17:58'),
(85, 'Harlequin', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/harlequin?region=us&secret-refresh=1&epoch=1', 5, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:58'),
(86, 'Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/hypo?region=us&secret-refresh=1&epoch=1', 3535, 234, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:59'),
(87, 'IMG', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/img?region=us&secret-refresh=1&epoch=1', 358, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:59'),
(88, 'Inca', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/inca?region=us&secret-refresh=1&epoch=1', 25, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:59'),
(89, 'Jaguar (Honduran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jaguar%20(honduran)?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 4, 0, 0, 'SOLD', '2020-05-06 14:17:59'),
(90, 'Jungle', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jungle?region=us&secret-refresh=1&epoch=1', 2003, 19, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:59'),
(91, 'Keltic', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/keltic?region=us&secret-refresh=1&epoch=1', 32, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:59'),
(92, 'Key West', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/key%20west?region=us&secret-refresh=1&epoch=1', 136, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:17:59'),
(93, 'Kraken', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kraken?region=us&secret-refresh=1&epoch=1', 11, 2, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:00'),
(94, 'Kubsch Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kubsch%20pastel?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 2, 11, 'SOLD', '2020-05-06 14:18:00'),
(95, 'Labyrinth', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/labyrinth?region=us&secret-refresh=1&epoch=1', 24, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:00'),
(96, 'Lavendar Sharp', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/lavendar%20sharp?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 6, 'SOLD', '2020-05-06 14:18:00'),
(97, 'Leopard', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/leopard?region=us&secret-refresh=1&epoch=1', 0, 0, 205, 225, 288, 0, 0, 'SOLD', '2020-05-06 14:18:00'),
(98, 'Mandarin Belly', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/mandarin%20belly?region=us&secret-refresh=1&epoch=1', 5, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:01'),
(99, 'Marron', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/marron?region=us&secret-refresh=1&epoch=1', 27, 2, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:01'),
(100, 'Monster Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/monster%20tail?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 72, 'SOLD', '2020-05-06 14:18:01'),
(101, 'Motley (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(argentine)?region=us&secret-refresh=1&epoch=1', 3, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:01'),
(102, 'Motley (Central American)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(central%20american)?region=us&secret-refresh=1&epoch=1', 116, 1, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:01'),
(103, 'Motley (Colombian)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(colombian)?region=us&secret-refresh=1&epoch=1', 1237, 1, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:01'),
(104, 'Nexus', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/nexus?region=us&secret-refresh=1&epoch=1', 1, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:02'),
(105, 'Normal', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/normal?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 147, 'SOLD', '2020-05-06 14:18:02'),
(106, 'Nova', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/nova?region=us&secret-refresh=1&epoch=1', 1, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:02'),
(107, 'Other Trait', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/other%20trait?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 1, 0, 'SOLD', '2020-05-06 14:18:02'),
(108, 'Paradox', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/paradox?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 1, 22, 'SOLD', '2020-05-06 14:18:02'),
(109, 'Pastel Dream', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pastel%20dream?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 12, 110, 'SOLD', '2020-05-06 14:18:02'),
(110, 'Pink Panther', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pink%20panther?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 2, 101, 'SOLD', '2020-05-06 14:18:02'),
(111, 'Raptor', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/raptor?region=us&secret-refresh=1&epoch=1', 6, 9, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:03'),
(112, 'RC Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/rc%20pastel?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 95, 'SOLD', '2020-05-06 14:18:03'),
(113, 'Redrum Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/redrum%20pastel?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 53, 'SOLD', '2020-05-06 14:18:03'),
(114, 'Reverse Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/reverse%20stripe?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 6, 0, 0, 'SOLD', '2020-05-06 14:18:03'),
(115, 'Roswell Laddertail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/roswell%20laddertail?region=us&secret-refresh=1&epoch=1', 109, 2, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:03'),
(116, 'Salmon Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/salmon%20hypo?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 59, 'SOLD', '2020-05-06 14:18:03'),
(117, 'Scoria', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/scoria?region=us&secret-refresh=1&epoch=1', 8, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-06 14:18:04'),
(118, 'Square Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/square%20tail?region=us&secret-refresh=1&epoch=1', 0, 0, 7, 17, 24, 0, 0, 'SOLD', '2020-05-06 14:18:04'),
(119, 'Sterling', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sterling?region=us&secret-refresh=1&epoch=1', 0, 0, 32, 32, 15, 0, 0, 'SOLD', '2020-05-06 14:18:04'),
(120, 'Striped Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/striped%20tail?region=us&secret-refresh=1&epoch=1', 0, 0, 14, 19, 30, 0, 0, 'SOLD', '2020-05-06 14:18:04'),
(121, 'Summit Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/summit%20pastel?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 3, 94, 'SOLD', '2020-05-06 14:18:04'),
(122, 'Sunset', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sunset?region=us&secret-refresh=1&epoch=1', 0, 0, 0, 0, 0, 0, 43, 'SOLD', '2020-05-06 14:18:04'),
(123, 'Super Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/super%20stripe?region=us&secret-refresh=1&epoch=1', 0, 0, 7, 12, 6, 0, 0, 'SOLD', '2020-05-06 14:18:05'),
(124, 'Albino (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(argentine)?epoch=2&region=us&secret-refresh=1', 0, 0, 18, 4, 8, 0, 0, 'ALL', '2020-05-06 14:18:10'),
(125, 'Albino (Blonde)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(blonde)?epoch=2&region=us&secret-refresh=1', 0, 0, 3, 1, 3, 0, 0, 'ALL', '2020-05-06 14:18:10'),
(126, 'Albino (Caramel-hypo)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(caramel-hypo)?epoch=2&region=us&secret-refresh=1', 0, 0, 33, 166, 73, 0, 0, 'ALL', '2020-05-06 14:18:11'),
(127, 'Albino (Central)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(central)?epoch=2&region=us&secret-refresh=1', 0, 0, 58, 84, 133, 0, 0, 'ALL', '2020-05-06 14:18:11'),
(128, 'Albino (Costa Rican)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(costa%20rican)?epoch=2&region=us&secret-refresh=1', 0, 0, 9, 9, 6, 0, 0, 'ALL', '2020-05-06 14:18:11'),
(129, 'Albino (Desert)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(desert)?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 1, 1, 0, 0, 'ALL', '2020-05-06 14:18:11'),
(130, 'Albino (Kahl)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(kahl)?epoch=2&region=us&secret-refresh=1', 0, 0, 827, 1225, 1809, 0, 0, 'ALL', '2020-05-06 14:18:11'),
(131, 'Albino (Prodigy)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(prodigy)?epoch=2&region=us&secret-refresh=1', 0, 0, 10, 83, 19, 0, 0, 'ALL', '2020-05-06 14:18:12'),
(132, 'Albino (Sharp)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sharp)?epoch=2&region=us&secret-refresh=1', 0, 0, 182, 611, 521, 0, 0, 'ALL', '2020-05-06 14:18:12'),
(133, 'Albino (Sonoran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sonoran)?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 1, 0, 0, 'ALL', '2020-05-06 14:18:12'),
(134, 'Albino (VPI)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(vpi)?epoch=2&region=us&secret-refresh=1', 0, 0, 299, 526, 670, 0, 0, 'ALL', '2020-05-06 14:18:12'),
(135, 'Amber', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/amber?epoch=2&region=us&secret-refresh=1', 2, 2, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:12'),
(136, 'Anerythristic (Carbon)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(carbon)?epoch=2&region=us&secret-refresh=1', 0, 0, 25, 12, 15, 0, 0, 'ALL', '2020-05-06 14:18:12'),
(137, 'Anerythristic (RDR Black Eye)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(rdr%20black%20eye)?epoch=2&region=us&secret-refresh=1', 0, 0, 102, 46, 100, 0, 0, 'ALL', '2020-05-06 14:18:13'),
(138, 'Anerythristic (Silver Bullet)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(silver%20bullet)?epoch=2&region=us&secret-refresh=1', 0, 0, 4, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:13'),
(139, 'Anerythristic (Type 1)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%201)?epoch=2&region=us&secret-refresh=1', 0, 0, 657, 665, 1087, 0, 0, 'ALL', '2020-05-06 14:18:13'),
(140, 'Anerythristic (Type 2)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%202)?epoch=2&region=us&secret-refresh=1', 0, 0, 129, 40, 68, 0, 0, 'ALL', '2020-05-06 14:18:13'),
(141, 'Arabesque', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/arabesque?epoch=2&region=us&secret-refresh=1', 247, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:13'),
(142, 'Aztec', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/aztec?epoch=2&region=us&secret-refresh=1', 388, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:13'),
(143, 'Black', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/black?epoch=2&region=us&secret-refresh=1', 0, 0, 2, 3, 12, 0, 0, 'ALL', '2020-05-06 14:18:14'),
(144, 'Blood', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/blood?epoch=2&region=us&secret-refresh=1', 0, 0, 296, 375, 354, 0, 0, 'ALL', '2020-05-06 14:18:14'),
(145, 'Coral Albino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/coral%20albino?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 8, 85, 'ALL', '2020-05-06 14:18:14'),
(146, 'Cyclone', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/cyclone?epoch=2&region=us&secret-refresh=1', 4, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:14'),
(147, 'Domino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/domino?epoch=2&region=us&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:14'),
(148, 'Ferrari Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/ferrari%20pastel?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 9, 'ALL', '2020-05-06 14:18:14'),
(149, 'Fire', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/fire?epoch=2&region=us&secret-refresh=1', 151, 26, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:15'),
(150, 'Flamingo Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/flamingo%20pastel?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 51, 'ALL', '2020-05-06 14:18:15'),
(151, 'Harlequin', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/harlequin?epoch=2&region=us&secret-refresh=1', 6, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:15'),
(152, 'Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/hypo?epoch=2&region=us&secret-refresh=1', 4091, 300, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:15'),
(153, 'IMG', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/img?epoch=2&region=us&secret-refresh=1', 452, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:15'),
(154, 'Import', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/import?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 1, 'ALL', '2020-05-06 14:18:15'),
(155, 'Inca', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/inca?epoch=2&region=us&secret-refresh=1', 34, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:16'),
(156, 'Jaguar (Honduran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jaguar%20(honduran)?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 5, 0, 0, 'ALL', '2020-05-06 14:18:16'),
(157, 'Jungle', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jungle?epoch=2&region=us&secret-refresh=1', 2342, 20, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:16'),
(158, 'Keltic', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/keltic?epoch=2&region=us&secret-refresh=1', 37, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:16'),
(159, 'Key West', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/key%20west?epoch=2&region=us&secret-refresh=1', 182, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:16'),
(160, 'Kraken', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kraken?epoch=2&region=us&secret-refresh=1', 14, 2, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:16'),
(161, 'Kubsch Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kubsch%20pastel?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 2, 11, 'ALL', '2020-05-06 14:18:17'),
(162, 'Labyrinth', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/labyrinth?epoch=2&region=us&secret-refresh=1', 27, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:17'),
(163, 'Lavendar Sharp', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/lavendar%20sharp?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 6, 'ALL', '2020-05-06 14:18:17'),
(164, 'Leopard', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/leopard?epoch=2&region=us&secret-refresh=1', 0, 0, 242, 261, 334, 0, 0, 'ALL', '2020-05-06 14:18:17'),
(165, 'Mandarin Belly', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/mandarin%20belly?epoch=2&region=us&secret-refresh=1', 5, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:17'),
(166, 'Marron', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/marron?epoch=2&region=us&secret-refresh=1', 28, 2, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:17'),
(167, 'Monster Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/monster%20tail?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 97, 'ALL', '2020-05-06 14:18:17'),
(168, 'Motley (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(argentine)?epoch=2&region=us&secret-refresh=1', 6, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:18'),
(169, 'Motley (Central American)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(central%20american)?epoch=2&region=us&secret-refresh=1', 144, 1, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:18'),
(170, 'Motley (Colombian)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(colombian)?epoch=2&region=us&secret-refresh=1', 1422, 1, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:18'),
(171, 'Nexus', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/nexus?epoch=2&region=us&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:18'),
(172, 'Normal', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/normal?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 156, 'ALL', '2020-05-06 14:18:18'),
(173, 'Nova', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/nova?epoch=2&region=us&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:18'),
(174, 'Onyx', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/onyx?epoch=2&region=us&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:19'),
(175, 'Other Trait', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/other%20trait?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 1, 0, 'ALL', '2020-05-06 14:18:19'),
(176, 'Paradox', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/paradox?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 1, 23, 'ALL', '2020-05-06 14:18:19'),
(177, 'Pastel Dream', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pastel%20dream?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 13, 140, 'ALL', '2020-05-06 14:18:19'),
(178, 'Pink Panther', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pink%20panther?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 8, 122, 'ALL', '2020-05-06 14:18:19'),
(179, 'Raptor', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/raptor?epoch=2&region=us&secret-refresh=1', 6, 9, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:19'),
(180, 'RC Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/rc%20pastel?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 110, 'ALL', '2020-05-06 14:18:20'),
(181, 'Redrum Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/redrum%20pastel?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 58, 'ALL', '2020-05-06 14:18:20'),
(182, 'Reverse Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/reverse%20stripe?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 6, 0, 0, 'ALL', '2020-05-06 14:18:20'),
(183, 'Roswell Laddertail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/roswell%20laddertail?epoch=2&region=us&secret-refresh=1', 129, 2, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:20'),
(184, 'Salmon Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/salmon%20hypo?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 78, 'ALL', '2020-05-06 14:18:20'),
(185, 'Scoria', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/scoria?epoch=2&region=us&secret-refresh=1', 9, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-06 14:18:20'),
(186, 'Square Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/square%20tail?epoch=2&region=us&secret-refresh=1', 0, 0, 7, 19, 26, 0, 0, 'ALL', '2020-05-06 14:18:20'),
(187, 'Sterling', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sterling?epoch=2&region=us&secret-refresh=1', 0, 0, 36, 36, 20, 0, 0, 'ALL', '2020-05-06 14:18:21'),
(188, 'Striped Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/striped%20tail?epoch=2&region=us&secret-refresh=1', 0, 0, 16, 20, 31, 0, 0, 'ALL', '2020-05-06 14:18:21'),
(189, 'Summit Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/summit%20pastel?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 4, 113, 'ALL', '2020-05-06 14:18:21'),
(190, 'Sunset', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sunset?epoch=2&region=us&secret-refresh=1', 0, 0, 0, 0, 0, 0, 67, 'ALL', '2020-05-06 14:18:21'),
(191, 'Super Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/super%20stripe?epoch=2&region=us&secret-refresh=1', 0, 0, 7, 12, 9, 0, 0, 'ALL', '2020-05-06 14:18:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mm_details`
--
ALTER TABLE `mm_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mm_details`
--
ALTER TABLE `mm_details`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
