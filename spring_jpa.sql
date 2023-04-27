-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2023 a las 09:19:47
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spring_jpa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fin` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `inicio` varchar(255) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id`, `descripcion`, `fin`, `img`, `inicio`, `nombre`) VALUES
(16, '', '', 'https://firebasestorage.googleapis.com/v0/b/bkdprueba.appspot.com/o/imagen%2Feducacion_d?alt=media&token=507af708-f6f5-456c-a1e7-070ecab460f1nombrenombre', '', 'da');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fin` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `inicio` varchar(255) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcion`, `fin`, `img`, `inicio`, `nombre`, `tipo`) VALUES
(72, '', '', 'https://firebasestorage.googleapis.com/v0/b/bkdprueba.appspot.com/o/imagen%2Fexperiencia_d?alt=media&token=0b390267-447b-4774-b971-c1fc6dc2e696nombrenombre', '', 'da', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hys`
--

CREATE TABLE `hys` (
  `id` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `porcentaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hys`
--

INSERT INTO `hys` (`id`, `color`, `nombre`, `porcentaje`) VALUES
(1, '#ff0000', '12312222222', 80),
(14, '#3d685f', 'a', 23),
(15, '#3d685f', '123sad', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `apellido`, `descripcion`, `img`, `nombre`) VALUES
(1, 'Martinez', 'dev full stack', 'https://firebasestorage.googleapis.com/v0/b/bkdprueba.appspot.com/o/imagen%2Fperfil_1?alt=media&token=5188fb2e-4ec0-464f-92c1-ff3dd12bee2b', 'Matias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `color`, `nombre`, `url`) VALUES
(7, '#3d685f', 'a', '23'),
(8, '#00ff11', 'b', 'jdbc:mysql://localhost:3306/prueba_jpa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `rol_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`) VALUES
(1, 'user@user.com', 'user', 'user', '$2a$10$t8EH7gigDm7mrspya28w6efZ8/yA6ckrIzsu.vmiqRm.4X6T94Yei'),
(2, 'admin@admin.com', 'admin', 'admin', '$2a$10$t7eMWnEWXQrdjSEBMpzPsOO8SUq4kTiwxnW1pJoSUVjugpn25o49i');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id`, `rol_id`) VALUES
(1, 2),
(2, 1),
(2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hys`
--
ALTER TABLE `hys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_id`,`rol_id`),
  ADD KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `hys`
--
ALTER TABLE `hys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
