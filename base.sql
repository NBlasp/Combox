-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-08-2014 a las 10:20:44
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `combobox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hijo`
--

CREATE TABLE IF NOT EXISTS `hijo` (
  `idhijo` int(255) NOT NULL AUTO_INCREMENT,
  `idpadre` int(255) NOT NULL DEFAULT '0',
  `hijo` text COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idhijo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `hijo`
--

INSERT INTO `hijo` (`idhijo`, `idpadre`, `hijo`) VALUES
(1, 1, 'AA1'),
(2, 1, 'AA2'),
(3, 2, 'BB1'),
(4, 2, 'BB2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nieto`
--

CREATE TABLE IF NOT EXISTS `nieto` (
  `idnieto` int(255) NOT NULL AUTO_INCREMENT,
  `idhijo` int(255) NOT NULL DEFAULT '0',
  `nieto` text COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idnieto`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `nieto`
--

INSERT INTO `nieto` (`idnieto`, `idhijo`, `nieto`) VALUES
(2, 1, 'AAA1'),
(3, 2, 'AAA2'),
(4, 3, 'BBB1'),
(5, 4, 'BBB2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padre`
--

CREATE TABLE IF NOT EXISTS `padre` (
  `idpadre` int(255) NOT NULL AUTO_INCREMENT,
  `padre` text COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idpadre`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `padre`
--

INSERT INTO `padre` (`idpadre`, `padre`) VALUES
(1, 'A'),
(2, 'B');
