-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2012 at 10:08 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cacti`
--

-- --------------------------------------------------------

--
-- Table structure for table `graph_tree_items`
--

CREATE TABLE IF NOT EXISTS `graph_tree_items` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `graph_tree_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `local_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rra_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(100) NOT NULL DEFAULT '0',
  `host_grouping_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_children_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `graph_tree_id` (`graph_tree_id`),
  KEY `host_id` (`host_id`),
  KEY `local_graph_id` (`local_graph_id`),
  KEY `order_key` (`order_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `graph_tree_items`
--

INSERT INTO `graph_tree_items` (`id`, `graph_tree_id`, `local_graph_id`, `rra_id`, `title`, `host_id`, `order_key`, `host_grouping_type`, `sort_children_type`) VALUES
(7, 1, 0, 0, '', 1, '001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(8, 1, 0, 1, '', 3, '002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(9, 1, 53, 1, '', 0, '003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 0, 0),
(10, 1, 42, 1, '', 0, '004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 0, 0),
(11, 2, 0, 0, 'test3', 0, '001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(12, 2, 0, 0, 'Driver C', 0, '001001000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(17, 2, 0, 0, 'Driver F', 0, '001005000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(16, 2, 0, 0, 'Driver E', 0, '001004000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(15, 2, 0, 0, 'Driver D', 0, '001003000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(18, 2, 0, 0, 'test4', 0, '002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(19, 2, 0, 0, 'Driver C', 0, '002001000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(20, 2, 0, 0, 'Driver D', 0, '002002000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(21, 2, 0, 0, 'Driver E', 0, '002003000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(22, 2, 0, 0, 'Driver F', 0, '002004000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(23, 2, 0, 0, 'test5', 0, '010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1),
(24, 2, 0, 0, 'Drive C', 0, '010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
