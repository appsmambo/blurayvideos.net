-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2018 a las 16:29:43
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blurayvideos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `titulo`, `estado`) VALUES
(13, '2018-08-19 16:52:11', '0000-00-00 00:00:00', 'Bluray 4K', 1),
(14, '2018-08-19 16:52:11', '0000-00-00 00:00:00', 'Bluray 2D', 1),
(15, '2018-08-19 16:52:27', '0000-00-00 00:00:00', 'Bluray 3D', 1),
(16, '2018-08-19 16:52:27', '0000-00-00 00:00:00', 'Trilogía', 1),
(17, '2018-08-19 16:52:39', '0000-00-00 00:00:00', 'Pack', 1),
(18, '2018-08-19 16:52:39', '0000-00-00 00:00:00', 'Series', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `descripcion` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `created_at`, `updated_at`, `descripcion`, `estado`) VALUES
(1, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Acción', 0),
(2, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Dibujos', 0),
(3, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Clásicos', 0),
(4, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Comedias', 0),
(5, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Dramas', 0),
(6, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Documentales', 0),
(7, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Familiares', 0),
(8, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Musicales', 0),
(9, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Terror', 0),
(10, '2018-08-19 16:56:12', '0000-00-00 00:00:00', 'Suspenso', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `sinopsis` text NOT NULL,
  `ficha_tecnica` text NOT NULL,
  `directores` text NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `precio_oferta` decimal(8,2) NOT NULL DEFAULT '0.00',
  `stock` tinyint(4) NOT NULL,
  `categoria` int(11) NOT NULL,
  `genero` int(11) NOT NULL,
  `imagen_1` varchar(100) NOT NULL,
  `imagen_2` varchar(100) DEFAULT NULL,
  `imagen_3` varchar(100) DEFAULT NULL,
  `imagen_4` varchar(100) DEFAULT NULL,
  `imagen_5` varchar(100) DEFAULT NULL,
  `trailer` varchar(100) NOT NULL,
  `estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `created_at`, `updated_at`, `titulo`, `sinopsis`, `ficha_tecnica`, `directores`, `precio`, `precio_oferta`, `stock`, `categoria`, `genero`, `imagen_1`, `imagen_2`, `imagen_3`, `imagen_4`, `imagen_5`, `trailer`, `estado`) VALUES
(2, '2018-08-20 20:34:01', '2018-08-21 14:16:21', 'Video 1', '<p>a dasdasd asd ad</p>', '<p>asd asd</p>', '<p>fg fhfgh</p>', '100.00', '100.00', 10, 13, 3, 'EgKwzQxwkEzgAscEyeGkODRcqiLjNsTezsyWyZxG.jpeg', NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6ZfuNTqbHE8', -1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juan Quintanilla', 'quintanilla.peru@gmail.com', '$2y$10$Yth4Wjr9R7IGPzdaU3fV6ePeaq7RVBn2WLCke59m8xvs2Uxx2iCmC', 'aSj6lSEawGwpyZiUxBIHvEJUIILGSQ8Di8JMtXlrN86wZsUZTZlFX2oAWq1K', '2018-05-02 08:21:13', '2018-05-02 08:21:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`),
  ADD KEY `genero` (`genero`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`genero`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
