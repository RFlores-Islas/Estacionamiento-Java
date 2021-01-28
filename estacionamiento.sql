-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2021 a las 05:16:04
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estacionamiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `ID` int(11) NOT NULL,
  `Placa` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `Propietario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `TipoVehiculo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `HoraEntrada` datetime NOT NULL,
  `HoraSalida` datetime DEFAULT NULL,
  `ValorPagado` float DEFAULT NULL,
  `Estado` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`ID`, `Placa`, `Propietario`, `TipoVehiculo`, `HoraEntrada`, `HoraSalida`, `ValorPagado`, `Estado`) VALUES
(1, 'SSDDSD', 'Rafael', 'Motocicleta', '2020-05-28 21:36:59', '2020-05-29 13:05:29', 15466, 'No Disponible'),
(9, 'HTLL55', 'Christian', 'Motocicleta', '2020-05-29 16:43:43', NULL, NULL, 'Disponible'),
(11, 'RAKSD', 'Liliana', 'Automovil', '2020-05-29 21:41:57', NULL, NULL, 'Disponible'),
(12, 'ASKJSA', 'Karla', 'Automovil', '2020-05-29 21:44:25', NULL, NULL, 'Disponible'),
(20, 'HSD51E', 'Jose', 'Automovil', '2020-06-01 18:17:47', NULL, NULL, 'Disponible');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
