-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2024 a las 23:04:49
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cantantes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_cantante` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre_artistico` varchar(255) NOT NULL,
  `nacionalidad` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero_musical` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id_cantante`, `nombre`, `apellido`, `nombre_artistico`, `nacionalidad`, `fecha_nacimiento`, `genero_musical`) VALUES
(1, 'Peter Gene', 'Hernandez', 'Bruno Mars', 'Estados Unidos', '1985-10-08', 'Reggae'),
(3, 'Rosalia', 'Vila', 'Rosalia', 'España', '1992-09-25', 'Pop y Regueton'),
(4, 'Santiago Moreno', 'Charpentier', 'Chano', 'Argentina', '1981-09-23', 'Pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_cancion` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `compositor` varchar(255) DEFAULT NULL,
  `estilo` varchar(255) DEFAULT NULL,
  `duracion` time DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id_cancion`, `titulo`, `compositor`, `estilo`, `duracion`, `link`) VALUES
(2, 'Thats What I Like', 'Bruno Mars', 'R&B clásico', '03:30:00', 'https://www.youtube.com/watch?v=PMivT7MJ41M'),
(3, 'Con Altura', 'Rosalia y J Balvin', 'Regueton', '02:44:00', 'https://www.youtube.com/watch?v=p7bfOZek9t4'),
(4, 'Ciudad Magica', 'Tan Bionica', 'Rock Electronico', '03:30:00', 'https://www.youtube.com/watch?v=V419yO6FeIU');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_cantante`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_cancion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id_cantante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
