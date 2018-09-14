-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 14 Eyl 2018, 19:18:50
-- Sunucu sürümü: 10.1.34-MariaDB
-- PHP Sürümü: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `trackingsystem`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `asurname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `amail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `apassword` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `asurname`, `amail`, `apassword`) VALUES
(1, 'ali', 'bilmem', 'ali@ali.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'kim', 'bilir', 'kim@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'atalay', 'akıllı', 'atalay@a.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `pid` int(1) NOT NULL,
  `pname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pnumber` int(11) NOT NULL,
  `pcategory` int(11) NOT NULL,
  `pdescription` text COLLATE utf8_turkish_ci NOT NULL,
  `pcompany` int(11) NOT NULL,
  `pprice` float NOT NULL,
  `pdatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`pid`, `pname`, `pnumber`, `pcategory`, `pdescription`, `pcompany`, `pprice`, `pdatetime`) VALUES
(37, 'cihangir', 5, 1, 'Süpürge makinası ayar düğmeli', 1, 585.85, '2018-09-13 17:49:20'),
(39, 'kjbjhk', 545, 1, 'kjgbkjhbhj', 1, 54, '2018-09-13 17:33:35'),
(40, 'lknaskjg', 96, 1, 'lkas', 1, 52, '2018-09-13 17:56:22'),
(41, 'asgas', 12312, 1, 'asgasgas', 1, 123125, '2018-09-13 17:45:12'),
(42, 'Atalay', 12, 1, 'atalay', 1, 12, '2018-09-13 17:48:32'),
(43, 'asgasga', 23423, 1, 'jkhbkj', 1, 212, '2018-09-13 17:49:45'),
(44, 'k11111111111111', 23423, 1, 'jkhbkj', 1, 212, '2018-09-13 17:50:02'),
(45, 'k11111111111111', 23423, 1, 'jkhbkj', 1, 212, '2018-09-13 17:50:02'),
(46, 'gfh', 100, 1, 'hfghf', 1, 46, '2018-09-13 17:57:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sales`
--

CREATE TABLE `sales` (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sproductid` int(11) NOT NULL,
  `snumberofsale` int(11) NOT NULL,
  `sdescription` text COLLATE utf8_turkish_ci NOT NULL,
  `sdatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sales`
--

INSERT INTO `sales` (`sid`, `sname`, `sproductid`, `snumberofsale`, `sdescription`, `sdatetime`) VALUES
(23, '0001', 37, 45, 'jfhg', '2018-09-14 20:12:39'),
(25, 'deneemee', 37, 41341, 'okasdjad', '2018-09-14 19:51:18'),
(26, '', 37, 4324, 'dassdf', '2018-09-14 19:57:13'),
(27, 'ghj', 37, 5678, 'ghjk', '2018-09-14 20:12:30');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `amail` (`amail`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Tablo için AUTO_INCREMENT değeri `sales`
--
ALTER TABLE `sales`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
