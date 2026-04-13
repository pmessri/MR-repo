-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2020 at 03:26 PM
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
  `retrieved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mm_details`
--

INSERT INTO `mm_details` (`id`, `gene_trait`, `gene_trait_url`, `normal`, `super`, `possible_het`, `het`, `visual`, `possible_other`, `normal_other`, `type`, `retrieved_at`, `created_at`) VALUES
(1, 'Albino (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(argentine)', 0, 0, 5, 0, 2, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:52'),
(2, 'Albino (Caramel-hypo)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(caramel-hypo)', 0, 0, 4, 59, 16, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:52'),
(3, 'Albino (Central)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(central)', 0, 0, 23, 24, 38, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:52'),
(4, 'Albino (Costa Rican)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(costa%20rican)', 0, 0, 1, 7, 3, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:52'),
(5, 'Albino (Desert)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(desert)', 0, 0, 0, 0, 1, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:53'),
(6, 'Albino (Kahl)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(kahl)', 0, 0, 131, 108, 159, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:53'),
(7, 'Albino (Prodigy)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(prodigy)', 0, 0, 1, 20, 8, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:53'),
(8, 'Albino (Sharp)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sharp)', 0, 0, 21, 120, 81, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:53'),
(9, 'Albino (VPI)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(vpi)', 0, 0, 37, 99, 132, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:53'),
(10, 'Amber', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/amber', 1, 1, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:53'),
(11, 'Anerythristic (Carbon)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(carbon)', 0, 0, 21, 6, 15, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:54'),
(12, 'Anerythristic (RDR Black Eye)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(rdr%20black%20eye)', 0, 0, 28, 7, 12, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:54'),
(13, 'Anerythristic (Silver Bullet)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(silver%20bullet)', 0, 0, 2, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:54'),
(14, 'Anerythristic (Type 1)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%201)', 0, 0, 64, 86, 93, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:54'),
(15, 'Anerythristic (Type 2)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%202)', 0, 0, 23, 8, 21, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:54'),
(16, 'Arabesque', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/arabesque', 25, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:54'),
(17, 'Aztec', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/aztec', 76, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:55'),
(18, 'Black', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/black', 0, 0, 1, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:55'),
(19, 'Blood', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/blood', 0, 0, 63, 94, 87, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:55'),
(20, 'Coral Albino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/coral%20albino', 0, 0, 0, 0, 0, 0, 10, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:55'),
(21, 'Cyclone', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/cyclone', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:55'),
(22, 'Ferrari Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/ferrari%20pastel', 0, 0, 0, 0, 0, 0, 1, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:55'),
(23, 'Fire', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/fire', 39, 5, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:56'),
(24, 'Flamingo Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/flamingo%20pastel', 0, 0, 0, 0, 0, 0, 17, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:56'),
(25, 'Harlequin', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/harlequin', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:56'),
(26, 'Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/hypo', 545, 67, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:56'),
(27, 'IMG', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/img', 93, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:56'),
(28, 'Import', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/import', 0, 0, 0, 0, 0, 0, 1, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:56'),
(29, 'Inca', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/inca', 9, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:56'),
(30, 'Jaguar (Honduran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jaguar%20(honduran)', 0, 0, 0, 0, 1, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:57'),
(31, 'Jungle', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jungle', 336, 1, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:57'),
(32, 'Keltic', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/keltic', 5, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:57'),
(33, 'Key West', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/key%20west', 46, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:57'),
(34, 'Kraken', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kraken', 3, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:57'),
(35, 'Labyrinth', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/labyrinth', 3, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:57'),
(36, 'Leopard', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/leopard', 0, 0, 37, 37, 44, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:58'),
(37, 'Marron', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/marron', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:58'),
(38, 'Monster Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/monster%20tail', 0, 0, 0, 0, 0, 0, 25, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:58'),
(39, 'Motley (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(argentine)', 3, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:58'),
(40, 'Motley (Central American)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(central%20american)', 27, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:58'),
(41, 'Motley (Colombian)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(colombian)', 178, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:58'),
(42, 'Normal', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/normal', 0, 0, 0, 0, 0, 0, 9, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:58'),
(43, 'Onyx', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/onyx', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:59'),
(44, 'Paradox', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/paradox', 0, 0, 0, 0, 0, 0, 1, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:59'),
(45, 'Pastel Dream', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pastel%20dream', 0, 0, 0, 0, 0, 1, 30, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:59'),
(46, 'Pink Panther', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pink%20panther', 0, 0, 0, 0, 0, 6, 21, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:59'),
(47, 'RC Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/rc%20pastel', 0, 0, 0, 0, 0, 0, 14, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:59'),
(48, 'Redrum Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/redrum%20pastel', 0, 0, 0, 0, 0, 0, 5, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:35:59'),
(49, 'Roswell Laddertail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/roswell%20laddertail', 19, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:00'),
(50, 'Salmon Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/salmon%20hypo', 0, 0, 0, 0, 0, 0, 18, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:00'),
(51, 'Scoria', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/scoria', 1, 0, 0, 0, 0, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:00'),
(52, 'Square Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/square%20tail', 0, 0, 0, 2, 2, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:00'),
(53, 'Sterling', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sterling', 0, 0, 4, 4, 5, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:00'),
(54, 'Striped Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/striped%20tail', 0, 0, 2, 1, 2, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:01'),
(55, 'Summit Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/summit%20pastel', 0, 0, 0, 0, 0, 1, 19, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:01'),
(56, 'Sunset', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sunset', 0, 0, 0, 0, 0, 0, 24, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:01'),
(57, 'Super Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/super%20stripe', 0, 0, 0, 0, 3, 0, 0, 'FOR_SALE', '2020-05-07 09:35:42', '2020-05-07 09:36:01'),
(58, 'Albino (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(argentine)?region=us&epoch=1&secret-refresh=1', 0, 0, 13, 4, 6, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:08'),
(59, 'Albino (Blonde)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(blonde)?region=us&epoch=1&secret-refresh=1', 0, 0, 3, 1, 3, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:09'),
(60, 'Albino (Caramel-hypo)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(caramel-hypo)?region=us&epoch=1&secret-refresh=1', 0, 0, 29, 107, 57, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:09'),
(61, 'Albino (Central)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(central)?region=us&epoch=1&secret-refresh=1', 0, 0, 35, 58, 95, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:09'),
(62, 'Albino (Costa Rican)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(costa%20rican)?region=us&epoch=1&secret-refresh=1', 0, 0, 8, 2, 3, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:09'),
(63, 'Albino (Desert)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(desert)?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 1, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:09'),
(64, 'Albino (Kahl)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(kahl)?region=us&epoch=1&secret-refresh=1', 0, 0, 689, 1117, 1649, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:10'),
(65, 'Albino (Prodigy)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(prodigy)?region=us&epoch=1&secret-refresh=1', 0, 0, 9, 63, 11, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:10'),
(66, 'Albino (Sharp)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sharp)?region=us&epoch=1&secret-refresh=1', 0, 0, 161, 491, 441, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:10'),
(67, 'Albino (Sonoran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sonoran)?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 1, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:10'),
(68, 'Albino (VPI)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(vpi)?region=us&epoch=1&secret-refresh=1', 0, 0, 264, 428, 539, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:10'),
(69, 'Amber', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/amber?region=us&epoch=1&secret-refresh=1', 1, 1, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:11'),
(70, 'Anerythristic (Carbon)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(carbon)?region=us&epoch=1&secret-refresh=1', 0, 0, 4, 6, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:11'),
(71, 'Anerythristic (RDR Black Eye)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(rdr%20black%20eye)?region=us&epoch=1&secret-refresh=1', 0, 0, 74, 39, 88, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:11'),
(72, 'Anerythristic (Silver Bullet)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(silver%20bullet)?region=us&epoch=1&secret-refresh=1', 0, 0, 2, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:11'),
(73, 'Anerythristic (Type 1)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%201)?region=us&epoch=1&secret-refresh=1', 0, 0, 594, 582, 994, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:11'),
(74, 'Anerythristic (Type 2)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%202)?region=us&epoch=1&secret-refresh=1', 0, 0, 106, 32, 47, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:11'),
(75, 'Arabesque', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/arabesque?region=us&epoch=1&secret-refresh=1', 222, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:12'),
(76, 'Aztec', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/aztec?region=us&epoch=1&secret-refresh=1', 308, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:12'),
(77, 'Black', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/black?region=us&epoch=1&secret-refresh=1', 0, 0, 1, 3, 12, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:12'),
(78, 'Blood', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/blood?region=us&epoch=1&secret-refresh=1', 0, 0, 233, 272, 267, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:12'),
(79, 'Coral Albino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/coral%20albino?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 8, 75, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:12'),
(80, 'Cyclone', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/cyclone?region=us&epoch=1&secret-refresh=1', 3, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:12'),
(81, 'Domino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/domino?region=us&epoch=1&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:13'),
(82, 'Ferrari Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/ferrari%20pastel?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 8, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:13'),
(83, 'Fire', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/fire?region=us&epoch=1&secret-refresh=1', 112, 21, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:13'),
(84, 'Flamingo Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/flamingo%20pastel?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 35, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:13'),
(85, 'Harlequin', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/harlequin?region=us&epoch=1&secret-refresh=1', 5, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:13'),
(86, 'Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/hypo?region=us&epoch=1&secret-refresh=1', 3548, 235, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:13'),
(87, 'IMG', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/img?region=us&epoch=1&secret-refresh=1', 359, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:14'),
(88, 'Inca', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/inca?region=us&epoch=1&secret-refresh=1', 25, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:14'),
(89, 'Jaguar (Honduran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jaguar%20(honduran)?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 4, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:14'),
(90, 'Jungle', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jungle?region=us&epoch=1&secret-refresh=1', 2006, 19, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:14'),
(91, 'Keltic', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/keltic?region=us&epoch=1&secret-refresh=1', 32, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:14'),
(92, 'Key West', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/key%20west?region=us&epoch=1&secret-refresh=1', 136, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:14'),
(93, 'Kraken', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kraken?region=us&epoch=1&secret-refresh=1', 11, 2, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:15'),
(94, 'Kubsch Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kubsch%20pastel?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 2, 11, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:15'),
(95, 'Labyrinth', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/labyrinth?region=us&epoch=1&secret-refresh=1', 24, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:15'),
(96, 'Lavendar Sharp', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/lavendar%20sharp?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 6, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:15'),
(97, 'Leopard', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/leopard?region=us&epoch=1&secret-refresh=1', 0, 0, 205, 226, 290, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:15'),
(98, 'Mandarin Belly', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/mandarin%20belly?region=us&epoch=1&secret-refresh=1', 5, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:15'),
(99, 'Marron', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/marron?region=us&epoch=1&secret-refresh=1', 27, 2, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:16'),
(100, 'Monster Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/monster%20tail?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 72, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:16'),
(101, 'Motley (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(argentine)?region=us&epoch=1&secret-refresh=1', 3, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:16'),
(102, 'Motley (Central American)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(central%20american)?region=us&epoch=1&secret-refresh=1', 116, 1, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:16'),
(103, 'Motley (Colombian)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(colombian)?region=us&epoch=1&secret-refresh=1', 1240, 1, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:16'),
(104, 'Nexus', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/nexus?region=us&epoch=1&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:16'),
(105, 'Normal', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/normal?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 147, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:17'),
(106, 'Nova', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/nova?region=us&epoch=1&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:17'),
(107, 'Other Trait', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/other%20trait?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 1, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:17'),
(108, 'Paradox', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/paradox?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 1, 22, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:17'),
(109, 'Pastel Dream', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pastel%20dream?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 12, 110, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:17'),
(110, 'Pink Panther', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pink%20panther?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 2, 102, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:17'),
(111, 'Raptor', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/raptor?region=us&epoch=1&secret-refresh=1', 6, 9, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:18'),
(112, 'RC Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/rc%20pastel?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 95, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:18'),
(113, 'Redrum Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/redrum%20pastel?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 53, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:18'),
(114, 'Reverse Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/reverse%20stripe?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 6, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:18'),
(115, 'Roswell Laddertail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/roswell%20laddertail?region=us&epoch=1&secret-refresh=1', 110, 2, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:18'),
(116, 'Salmon Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/salmon%20hypo?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 60, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:18'),
(117, 'Scoria', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/scoria?region=us&epoch=1&secret-refresh=1', 8, 0, 0, 0, 0, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:18'),
(118, 'Square Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/square%20tail?region=us&epoch=1&secret-refresh=1', 0, 0, 7, 17, 24, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:19'),
(119, 'Sterling', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sterling?region=us&epoch=1&secret-refresh=1', 0, 0, 32, 32, 15, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:19'),
(120, 'Striped Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/striped%20tail?region=us&epoch=1&secret-refresh=1', 0, 0, 14, 19, 30, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:19'),
(121, 'Summit Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/summit%20pastel?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 3, 94, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:19'),
(122, 'Sunset', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sunset?region=us&epoch=1&secret-refresh=1', 0, 0, 0, 0, 0, 0, 43, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:19'),
(123, 'Super Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/super%20stripe?region=us&epoch=1&secret-refresh=1', 0, 0, 7, 12, 6, 0, 0, 'SOLD', '2020-05-07 09:35:42', '2020-05-07 09:36:20'),
(124, 'Albino (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(argentine)?region=us&epoch=2&secret-refresh=1', 0, 0, 18, 4, 8, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:25'),
(125, 'Albino (Blonde)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(blonde)?region=us&epoch=2&secret-refresh=1', 0, 0, 3, 1, 3, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:25'),
(126, 'Albino (Caramel-hypo)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(caramel-hypo)?region=us&epoch=2&secret-refresh=1', 0, 0, 33, 166, 73, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:25'),
(127, 'Albino (Central)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(central)?region=us&epoch=2&secret-refresh=1', 0, 0, 58, 82, 133, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:25'),
(128, 'Albino (Costa Rican)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(costa%20rican)?region=us&epoch=2&secret-refresh=1', 0, 0, 9, 9, 6, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:25'),
(129, 'Albino (Desert)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(desert)?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 1, 1, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:26'),
(130, 'Albino (Kahl)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(kahl)?region=us&epoch=2&secret-refresh=1', 0, 0, 820, 1225, 1808, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:26'),
(131, 'Albino (Prodigy)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(prodigy)?region=us&epoch=2&secret-refresh=1', 0, 0, 10, 83, 19, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:26'),
(132, 'Albino (Sharp)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sharp)?region=us&epoch=2&secret-refresh=1', 0, 0, 182, 611, 522, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:26'),
(133, 'Albino (Sonoran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(sonoran)?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 1, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:26'),
(134, 'Albino (VPI)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/albino%20(vpi)?region=us&epoch=2&secret-refresh=1', 0, 0, 301, 527, 671, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:27'),
(135, 'Amber', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/amber?region=us&epoch=2&secret-refresh=1', 2, 2, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:27'),
(136, 'Anerythristic (Carbon)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(carbon)?region=us&epoch=2&secret-refresh=1', 0, 0, 25, 12, 15, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:27'),
(137, 'Anerythristic (RDR Black Eye)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(rdr%20black%20eye)?region=us&epoch=2&secret-refresh=1', 0, 0, 102, 46, 100, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:27'),
(138, 'Anerythristic (Silver Bullet)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(silver%20bullet)?region=us&epoch=2&secret-refresh=1', 0, 0, 4, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:28'),
(139, 'Anerythristic (Type 1)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%201)?region=us&epoch=2&secret-refresh=1', 0, 0, 658, 668, 1087, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:28'),
(140, 'Anerythristic (Type 2)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/anerythristic%20(type%202)?region=us&epoch=2&secret-refresh=1', 0, 0, 129, 40, 68, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:28'),
(141, 'Arabesque', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/arabesque?region=us&epoch=2&secret-refresh=1', 247, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:28'),
(142, 'Aztec', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/aztec?region=us&epoch=2&secret-refresh=1', 384, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:28'),
(143, 'Black', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/black?region=us&epoch=2&secret-refresh=1', 0, 0, 2, 3, 12, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:28'),
(144, 'Blood', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/blood?region=us&epoch=2&secret-refresh=1', 0, 0, 296, 366, 354, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:29'),
(145, 'Coral Albino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/coral%20albino?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 8, 85, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:29'),
(146, 'Cyclone', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/cyclone?region=us&epoch=2&secret-refresh=1', 4, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:29'),
(147, 'Domino', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/domino?region=us&epoch=2&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:29'),
(148, 'Ferrari Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/ferrari%20pastel?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 9, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:29'),
(149, 'Fire', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/fire?region=us&epoch=2&secret-refresh=1', 151, 26, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:29'),
(150, 'Flamingo Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/flamingo%20pastel?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 52, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:30'),
(151, 'Harlequin', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/harlequin?region=us&epoch=2&secret-refresh=1', 6, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:30'),
(152, 'Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/hypo?region=us&epoch=2&secret-refresh=1', 4093, 302, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:30'),
(153, 'IMG', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/img?region=us&epoch=2&secret-refresh=1', 452, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:30'),
(154, 'Import', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/import?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 1, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:30'),
(155, 'Inca', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/inca?region=us&epoch=2&secret-refresh=1', 34, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:30'),
(156, 'Jaguar (Honduran)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jaguar%20(honduran)?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 5, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:31'),
(157, 'Jungle', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/jungle?region=us&epoch=2&secret-refresh=1', 2342, 20, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:31'),
(158, 'Keltic', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/keltic?region=us&epoch=2&secret-refresh=1', 37, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:31'),
(159, 'Key West', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/key%20west?region=us&epoch=2&secret-refresh=1', 182, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:31'),
(160, 'Kraken', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kraken?region=us&epoch=2&secret-refresh=1', 14, 2, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:31'),
(161, 'Kubsch Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/kubsch%20pastel?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 2, 11, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:31'),
(162, 'Labyrinth', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/labyrinth?region=us&epoch=2&secret-refresh=1', 27, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:32'),
(163, 'Lavendar Sharp', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/lavendar%20sharp?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 6, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:32'),
(164, 'Leopard', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/leopard?region=us&epoch=2&secret-refresh=1', 0, 0, 242, 263, 334, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:32'),
(165, 'Mandarin Belly', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/mandarin%20belly?region=us&epoch=2&secret-refresh=1', 5, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:32'),
(166, 'Marron', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/marron?region=us&epoch=2&secret-refresh=1', 28, 2, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:32'),
(167, 'Monster Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/monster%20tail?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 97, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:32'),
(168, 'Motley (Argentine)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(argentine)?region=us&epoch=2&secret-refresh=1', 6, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:33'),
(169, 'Motley (Central American)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(central%20american)?region=us&epoch=2&secret-refresh=1', 143, 1, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:33'),
(170, 'Motley (Colombian)', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/motley%20(colombian)?region=us&epoch=2&secret-refresh=1', 1418, 1, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:33'),
(171, 'Nexus', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/nexus?region=us&epoch=2&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:33'),
(172, 'Normal', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/normal?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 156, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:33'),
(173, 'Nova', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/nova?region=us&epoch=2&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:33'),
(174, 'Onyx', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/onyx?region=us&epoch=2&secret-refresh=1', 1, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:34'),
(175, 'Other Trait', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/other%20trait?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 1, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:34'),
(176, 'Paradox', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/paradox?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 1, 23, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:34'),
(177, 'Pastel Dream', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pastel%20dream?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 13, 140, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:34'),
(178, 'Pink Panther', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/pink%20panther?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 8, 123, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:34'),
(179, 'Raptor', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/raptor?region=us&epoch=2&secret-refresh=1', 6, 9, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:34'),
(180, 'RC Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/rc%20pastel?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 109, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:35'),
(181, 'Redrum Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/redrum%20pastel?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 58, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:35'),
(182, 'Reverse Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/reverse%20stripe?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 6, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:35'),
(183, 'Roswell Laddertail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/roswell%20laddertail?region=us&epoch=2&secret-refresh=1', 129, 2, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:35'),
(184, 'Salmon Hypo', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/salmon%20hypo?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 78, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:35'),
(185, 'Scoria', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/scoria?region=us&epoch=2&secret-refresh=1', 9, 0, 0, 0, 0, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:35'),
(186, 'Square Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/square%20tail?region=us&epoch=2&secret-refresh=1', 0, 0, 7, 19, 26, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:36'),
(187, 'Sterling', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sterling?region=us&epoch=2&secret-refresh=1', 0, 0, 36, 36, 20, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:36'),
(188, 'Striped Tail', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/striped%20tail?region=us&epoch=2&secret-refresh=1', 0, 0, 16, 20, 32, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:36'),
(189, 'Summit Pastel', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/summit%20pastel?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 4, 113, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:36'),
(190, 'Sunset', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/sunset?region=us&epoch=2&secret-refresh=1', 0, 0, 0, 0, 0, 0, 67, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:36'),
(191, 'Super Stripe', 'https://www.morphmarket.com/us/c/reptiles/boas/boa-constrictors/gene/super%20stripe?region=us&epoch=2&secret-refresh=1', 0, 0, 7, 12, 9, 0, 0, 'ALL', '2020-05-07 09:35:42', '2020-05-07 09:36:37');

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
