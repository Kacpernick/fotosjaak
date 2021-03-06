- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 28 jan 2014 om 07:49
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
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_english` text NOT NULL,
  `question_dutch` text NOT NULL,
  `answer_english` text NOT NULL,
  `answer_dutch` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `faq`
--

INSERT INTO `faq` (`id`, `question_english`, `question_dutch`, `answer_english`, `answer_dutch`) VALUES
(1, 'Is this game hard to play?', 'Is dit een moeilijk spel om te spelen?', 'Yes, this game is very hard to crack.', 'Ja, dit spel is mega moeilijk.'),
(2, 'When is this game completed?', 'Wanneer heb je dit spel uitgespeeld?', 'The game is a never ending experience. Full of joy and pleasure.', 'De game komt nooit ten einde. Het maakt je tot een beter en gelukkiger mens.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `userrole` enum('customer','root','administrator','photographer','developer') NOT NULL DEFAULT 'customer',
  `activated` enum('yes','no') NOT NULL DEFAULT 'no',
  `activationdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Gegevens worden uitgevoerd voor tabel `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `userrole`, `activated`, `activationdate`) VALUES


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `order_short` text NOT NULL,
  `order_long` text NOT NULL,
  `deliverydate` date NOT NULL,
  `eventdate` date NOT NULL,
  `color` enum('color','black-white') NOT NULL DEFAULT 'color',
  `number_of_pictures` int(11) NOT NULL,
  `confirmed` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Gegevens worden uitgevoerd voor tabel `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `order_short`, `order_long`, `deliverydate`, `eventdate`, `color`, `number_of_pictures`, `confirmed`) VALUES
(1, 0, 'De lemmingen Noorwegen', 'Graag een aantal fotos van de lemmingen in Noorwegen', '2014-01-15', '2014-01-24', 'black-white', 2147483647, 'no'),
(2, 0, 'dfklj', 'sdlkjf', '2014-11-29', '2014-11-30', 'black-white', 17, 'no'),
(3, 0, 'De goudgerande mestkever', 'Fotografeer de goudgerande mestkever terwijl hij slaapt', '2014-01-29', '2014-01-31', 'black-white', 2147483647, 'no'),
(4, 1, 'gggggggggg', 'aaaaaaaaaaaaaaa', '2014-01-21', '2014-01-23', 'black-white', 10090909, 'no'),
(5, 1, 'mmmmmm', 'mmmmmmmmm', '2014-01-28', '2014-01-31', 'black-white', 10878787, 'no'),
(6, 1, 'mmmmmm', 'mmmmmmmmm', '2014-01-28', '2014-01-31', 'black-white', 10878787, 'no'),
(7, 1, 'mmmmmm', 'mmmmmmmmm', '2014-01-28', '2014-01-31', 'black-white', 10878787, 'no'),
(8, 1, 'mmmmmm', 'mmmmmmmmm', '2014-01-28', '2014-01-31', 'black-white', 10878787, 'no'),
(9, 1, 'mmmmmm', 'mmmmmmmmm', '2014-01-28', '2014-01-31', 'black-white', 10878787, 'no'),
(10, 1, 'mmmmmm', 'mmmmmmmmm', '2014-01-28', '2014-01-31', 'black-white', 10878787, 'no'),
(11, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(12, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(13, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(14, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(15, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(16, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(17, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(18, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(19, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(20, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(21, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(22, 1, 'Zeeleeuwen in Californie', 'Zeeleeuw onder water', '2014-01-23', '2014-01-31', 'black-white', 2147483647, 'no'),
(23, 1, 'De witte haai', 'Maak een foto van een witte mensenhaai die uit het water springt terwijl hij/zij een zeeleeuw in de bek heeft. Als het kan met salto en weinig bloed. Dit alles bij mooi weer.', '2014-01-29', '2014-01-29', 'black-white', 2147483647, 'no'),
(24, 1, 'Vind de verschrikkelijke sneeuwman', 'Ga naar Tibet en vind de verschrikkelijke sneeuwman. Meet zijn voetafdruk op.', '2014-01-29', '2014-01-31', 'black-white', 104484848, 'no'),
(25, 1, 'Het noorderlicht', 'Ga naar het noordelijkste puntje van Zweden en maak fotos van het noorderlicht. Veel blauw en rood fotograferen.', '2014-01-23', '2014-01-31', 'color', 2147483647, 'no'),
(26, 1, 'De commodovaraan in indonesie', 'Fotografeer een commodovaraan die een geit vastgebonden aan een paal opeet.  ', '2014-01-23', '2014-01-31', 'black-white', 10, 'yes'),
(27, 25, 'sdfj', 'd;slfk', '2014-01-30', '2014-01-30', 'black-white', 1009, 'yes');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `infix` varchar(50) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `addressnumber` varchar(10) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `country` varchar(300) NOT NULL,
  `telephonenumber` varchar(10) NOT NULL,
  `mobilephonenumber` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `user`
--

INSERT INTO `user` (`id`, `firstname`, `infix`, `surname`, `address`, `addressnumber`, `city`, `zipcode`, `country`, `telephonenumber`, `mobilephonenumber`) VALUES

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
  `favo_genre` enum('not_selected','rpg','adventure','horror','shooter','mmorpg','casual','educational','sport','simulation') NOT NULL DEFAULT 'not_selected',
  `favo_game` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `userrole` enum('customer','admin','root') NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Gegevens worden uitgevoerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `infix`, `surname`, `street`, `house_number`, `city`, `zip_code`, `birthday`, `sex`, `marital_status`, `favo_genre`, `favo_game`, `email`, `password`, `userrole`) VALUES
(39, 'Admin', 'de', 'Admin', 'Adminstraat', 17, 'Adminstraat', '1910CB', '1990-01-01', 'male', 'married', 'adventure', 'IloMilo', 'admin@gmail.com', 'geheim', 'customer'),
(40, 'customer', 'de', 'customer', 'customerstraat', 17, 'Customerstad', '1910CB', '1990-01-01', 'male', 'married', 'horror', 'IloMilo', 'customer@gmail.com', 'geheim', 'customer'),
(41, 'root', 'de', 'root', 'rootsstraat', 12, 'rootstad', '1901CB', '1990-01-01', 'male', 'married', 'shooter', 'IloMilo', 'root@gmail.com', 'geheim', 'customer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
