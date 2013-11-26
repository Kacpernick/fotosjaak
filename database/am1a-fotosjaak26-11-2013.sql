-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 26 nov 2013 om 10:00
-- Serverversie: 5.6.12-log
-- PHP-versie: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `am1a-fotosjaak`
--
CREATE DATABASE IF NOT EXISTS `am1a-fotosjaak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `am1a-fotosjaak`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL,
  `question_english` text NOT NULL,
  `question_dutch` text NOT NULL,
  `answer_english` text NOT NULL,
  `answer_dutch` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `faq`
--

INSERT INTO `faq` (`id`, `question_english`, `question_dutch`, `answer_english`, `answer_dutch`) VALUES
(0, 'is this game to hard?', 'is deze  spel te moeilijk?', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(12) NOT NULL,
  `userrole` enum('customer','root','administrator','photographer') NOT NULL DEFAULT 'customer',
  `activated` enum('yes','no') NOT NULL DEFAULT 'no',
  `activationdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `addressnumber` varchar(10) NOT NULL,
  `city` varchar(300) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `country` varchar(200) NOT NULL,
  `telephonenumber` varchar(10) NOT NULL,
  `mobilephonenumber` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `street` varchar(163) NOT NULL,
  `house_number` int(4) NOT NULL,
  `city` varchar(163) NOT NULL,
  `zip_code` varchar(6) NOT NULL,
  `birthday` date NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `marital_status` enum('married','single') NOT NULL,
  `favo_genre` enum('not_selected','Action','Race','RPG','Strategy') NOT NULL DEFAULT 'not_selected',
  `favo_game` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `userrole` enum('customer','admin','root') NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Gegevens worden uitgevoerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `infix`, `surname`, `street`, `house_number`, `city`, `zip_code`, `birthday`, `sex`, `marital_status`, `favo_genre`, `favo_game`, `email`, `password`, `userrole`) VALUES
(7, 'lol', '', 'lol', 'lol', 1, 'lol', 'lol', '2013-11-05', 'male', 'single', 'Race', 'lol', 'lol@hotmail.com', 'lol', 'customer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
