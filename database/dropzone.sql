-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-02-2023 a las 21:31:31
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dropzone`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_imagen`
--

CREATE TABLE `td_imagen` (
  `imgd_id` int NOT NULL,
  `prod_id` int NOT NULL,
  `imgd_nom` varchar(200) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `td_imagen`
--

INSERT INTO `td_imagen` (`imgd_id`, `prod_id`, `imgd_nom`) VALUES
(1, 1, 'react.jpg'),
(2, 2, 'WallpaperDog-20567148.jpg'),
(3, 3, 'WallpaperDog-20567148.jpg'),
(4, 4, '63fbcf5a94099_WallpaperDog-20567151.png'),
(5, 5, '63fbcf6ef3a08_WallpaperDog-20567151.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `prod_id` int NOT NULL,
  `prod_nom` varchar(150) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_nom`) VALUES
(1, 'React'),
(2, 'Dev'),
(3, 'Developer'),
(4, 'Fondo'),
(5, 'Fondo Pantalla');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `td_imagen`
--
ALTER TABLE `td_imagen`
  ADD PRIMARY KEY (`imgd_id`);

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `td_imagen`
--
ALTER TABLE `td_imagen`
  MODIFY `imgd_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `prod_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
