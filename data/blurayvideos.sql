-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2018 a las 02:48:48
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

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
-- Estructura de tabla para la tabla `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `audio`
--

INSERT INTO `audio` (`id`, `created_at`, `updated_at`, `titulo`, `estado`) VALUES
(1, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: Dolby Digital 2.0', 1),
(2, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: Dolby Digital 5.1', 1),
(3, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: Dolby Digital 5.1 EX', 1),
(4, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: Dolby Digital Mono', 1),
(5, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: Dolby TrueHD 5.1', 1),
(6, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: DTS-HD 7.1', 1),
(7, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: DTS-HD MA 2.0', 1),
(8, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: DTS-HD MA 5.1', 1),
(9, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: DTS 2.0', 1),
(10, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: DTS 5.1', 1),
(11, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: DTS Mono', 1),
(12, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español: LPCM 2.0', 1),
(13, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Español Castellano: Dolby Digital 2.0', 1),
(14, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby Atmos', 1),
(15, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby Digital 2.0', 1),
(16, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby Digital 4.0', 1),
(17, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby Digital 5.1', 1),
(18, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby Digital 5.1 EX', 1),
(19, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby Digital Mono', 1),
(20, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby TrueHD 2.0', 1),
(21, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby TrueHD 5.1', 1),
(22, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: Dolby TrueHD 7.1', 1),
(23, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS-HD HR 5.1', 1),
(24, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS-HD HR 7.1', 1),
(25, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS-HD MA 2.0', 1),
(26, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS-HD MA 5.1', 1),
(27, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS-HD MA 6.1', 1),
(28, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS-HD MA 7.1', 1),
(29, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS-HD MA Mono', 1),
(30, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS-HEADPHONE X', 1),
(31, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS 2.0', 1),
(32, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS 5.1', 1),
(33, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS 6.1', 1),
(34, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: DTS:X', 1),
(35, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: LPCM 2.0', 1),
(36, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Inglés: LPCM 5.1', 1),
(37, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Japonés: Dolby Digital 2.0', 1),
(38, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Japonés: Dolby Digital 5.1', 1),
(39, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Japonés: DTS-HD MA 5.1', 1),
(40, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Mandarín: Dolby Digital 2.0', 1),
(41, '2018-02-20 02:30:33', '0000-00-00 00:00:00', 'Mandarín: DTS-HD MA 5.1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `created_at`, `updated_at`, `titulo`, `estado`) VALUES
(1, '2018-02-20 02:05:55', '0000-00-00 00:00:00', 'Concierto', 1),
(2, '2018-02-20 02:05:55', '0000-00-00 00:00:00', 'Documental', 1),
(3, '2018-02-20 02:06:17', '0000-00-00 00:00:00', 'Película', 1),
(4, '2018-02-20 02:06:17', '0000-00-00 00:00:00', 'Serie de TV', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato`
--

CREATE TABLE `formato` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `formato`
--

INSERT INTO `formato` (`id`, `created_at`, `updated_at`, `titulo`, `estado`) VALUES
(1, '2018-02-20 02:36:54', '0000-00-00 00:00:00', '4K UHD', 1),
(2, '2018-02-20 02:36:54', '0000-00-00 00:00:00', 'BLU-RAY', 1),
(3, '2018-02-20 02:38:00', '0000-00-00 00:00:00', 'BLU-RAY 3D', 1),
(4, '2018-02-20 02:38:00', '0000-00-00 00:00:00', 'DVD', 1),
(5, '2018-02-20 02:38:04', '0000-00-00 00:00:00', 'CD', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `created_at`, `updated_at`, `titulo`, `estado`) VALUES
(1, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Accion', 1),
(2, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Animación', 1),
(3, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Anime', 1),
(4, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Artes Marciales', 1),
(5, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Aventura', 1),
(6, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Biografia', 1),
(7, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Ciencia Ficcion', 1),
(8, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Cine Negro', 1),
(9, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Comedia', 1),
(10, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Comic', 1),
(11, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Crimen', 1),
(12, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Deporte', 1),
(13, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Documental', 1),
(14, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Drama', 1),
(15, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Épica', 1),
(16, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Erótica', 1),
(17, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Familia', 1),
(18, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Fantasia', 1),
(19, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Guerra', 1),
(20, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Historia', 1),
(21, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Horror', 1),
(22, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Humor Negro', 1),
(23, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Infantil', 1),
(24, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Misterio', 1),
(25, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Musical', 1),
(26, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Música', 1),
(27, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Romance', 1),
(28, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Sobrenatural', 1),
(29, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Suspenso', 1),
(30, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Teen', 1),
(31, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Terror', 1),
(32, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Thriller', 1),
(33, '2018-02-20 01:54:04', '0000-00-00 00:00:00', 'Western', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `sinopsis` text NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `stock` tinyint(4) NOT NULL,
  `pais` varchar(5) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `duracion` smallint(6) NOT NULL,
  `categoria` int(11) NOT NULL,
  `audio` int(11) NOT NULL,
  `formato` int(11) NOT NULL,
  `video` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_genero`
--

CREATE TABLE `pelicula_genero` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pelicula` int(11) NOT NULL,
  `genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_idioma`
--

CREATE TABLE `pelicula_idioma` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pelicula` int(11) NOT NULL,
  `idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_subtitulo`
--

CREATE TABLE `pelicula_subtitulo` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pelicula` int(11) NOT NULL,
  `subtitulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subtitulo`
--

CREATE TABLE `subtitulo` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subtitulo`
--

INSERT INTO `subtitulo` (`id`, `created_at`, `updated_at`, `titulo`, `estado`) VALUES
(1, '2018-02-20 02:35:06', '0000-00-00 00:00:00', 'Español', 1),
(2, '2018-02-20 02:35:06', '0000-00-00 00:00:00', 'Francés', 1),
(3, '2018-02-20 02:35:30', '0000-00-00 00:00:00', 'Inglés', 1),
(4, '2018-02-20 02:35:30', '0000-00-00 00:00:00', 'Portugués', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(200) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formato`
--
ALTER TABLE `formato`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`),
  ADD KEY `audio` (`audio`),
  ADD KEY `formato` (`formato`),
  ADD KEY `video` (`video`);

--
-- Indices de la tabla `pelicula_genero`
--
ALTER TABLE `pelicula_genero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelicula` (`pelicula`),
  ADD KEY `genero` (`genero`);

--
-- Indices de la tabla `pelicula_idioma`
--
ALTER TABLE `pelicula_idioma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelicula` (`pelicula`),
  ADD KEY `idioma` (`idioma`);

--
-- Indices de la tabla `pelicula_subtitulo`
--
ALTER TABLE `pelicula_subtitulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subtitulo`
--
ALTER TABLE `subtitulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pelicula_genero`
--
ALTER TABLE `pelicula_genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pelicula_idioma`
--
ALTER TABLE `pelicula_idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pelicula_subtitulo`
--
ALTER TABLE `pelicula_subtitulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subtitulo`
--
ALTER TABLE `subtitulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
