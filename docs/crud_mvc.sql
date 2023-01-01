-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-01-2023 a las 21:23:13
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_mvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `prod_des` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_nom`, `prod_des`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Auriculares', 'Ninguna', '2022-11-24 15:32:39', NULL, NULL, 1),
(3, 'Mouse', 'Ninguna', '2022-11-24 09:38:48', NULL, NULL, 1),
(4, 'Teclado', 'Ninguna', '2022-11-24 09:39:53', NULL, '2022-11-29 21:55:08', 0),
(5, 'Microfono', 'Ninguna', '2022-11-25 16:49:42', NULL, NULL, 1),
(21, 'Lapiz', 'Lápiz de marca STAEDTLER.  Ideal para niños y jóvenes estudiantes de dibujo técnico y artístico.', '2022-12-02 15:32:04', '2023-01-01 11:24:34', '2023-01-01 11:24:47', 1),
(22, 'Licipaper', 'Ninguna', '2022-12-02 15:37:20', '2022-12-02 15:37:41', NULL, 1),
(23, 'Borrador', 'Ninguna', '2022-12-02 15:37:50', NULL, NULL, 1),
(24, 'Pluma', 'Ninguna', '2022-12-02 15:38:01', NULL, NULL, 1),
(25, 'Text ', 'ASASASAS', '2022-12-31 19:03:12', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
