-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2019 a las 02:45:44
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ppp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audit`
--

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `usuario` varchar(11) NOT NULL,
  `metodo` varchar(11) NOT NULL,
  `ruta` varchar(11) NOT NULL,
  `hora` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `audit`
--

INSERT INTO `audit` (`id`, `usuario`, `metodo`, `ruta`, `hora`) VALUES
(2, '0', 'GET', '/compra', '2002-02-25 00:00:00'),
(3, 'usuario', 'GET', '/compra', '0000-00-00 00:00:00'),
(4, 'guest', 'POST', '/login', '0000-00-00 00:00:00'),
(5, 'carlos', 'GET', '/compra', '2002-03-02 00:00:00'),
(6, 'carlos', 'GET', '/compra', '020403'),
(7, 'guest', 'GET', '/compra', '020418'),
(8, 'carlos', 'GET', '/compra', '020425'),
(9, 'guest', 'GET', '/compra', '020538'),
(10, 'guest', 'GET', '/compra', '020629'),
(11, 'guest', 'POST', '/login', '020631'),
(12, 'carlos', 'GET', '/compra', '020637'),
(13, 'guest', 'POST', '/login', '020649'),
(14, 'usuario', 'GET', '/compra', '020653'),
(15, 'usuario', 'GET', '/compra', '021002'),
(16, 'usuario', 'GET', '/compra', '021032'),
(17, 'usuario', 'GET', '/compra', '021035'),
(18, 'usuario', 'GET', '/compra', '021052'),
(19, 'usuario', 'GET', '/compra', '021114'),
(20, 'usuario', 'POST', '/compra', '021417'),
(21, 'usuario', 'POST', '/compra', '021437'),
(22, 'usuario', 'POST', '/compra', '021558'),
(23, 'usuario', 'POST', '/compra', '021610'),
(24, 'usuario', 'POST', '/compra', '021618'),
(25, 'usuario', 'POST', '/compra', '021625'),
(26, 'usuario', 'POST', '/compra', '021629'),
(27, 'usuario', 'POST', '/compra', '021642'),
(28, 'usuario', 'POST', '/compra', '021648'),
(29, 'usuario', 'POST', '/compra', '021702'),
(30, 'usuario', 'POST', '/compra', '021711'),
(31, 'usuario', 'POST', '/compra', '021752'),
(32, 'usuario', 'POST', '/compra', '021808'),
(33, 'usuario', 'POST', '/compra', '021853'),
(34, 'usuario', 'POST', '/compra', '021857'),
(35, 'usuario', 'POST', '/compra', '021904'),
(36, 'usuario', 'POST', '/compra', '021912'),
(37, 'usuario', 'POST', '/compra', '021921'),
(38, 'usuario', 'POST', '/compra', '021922'),
(39, 'usuario', 'POST', '/compra', '021936'),
(40, 'usuario', 'POST', '/compra', '022007'),
(41, 'usuario', 'POST', '/compra', '022023'),
(42, 'usuario', 'POST', '/compra', '022030'),
(43, 'usuario', 'POST', '/compra', '022045'),
(44, 'usuario', 'POST', '/compra', '022208'),
(45, 'guest', 'POST', '/compra', '022230'),
(46, 'usuario', 'POST', '/compra', '022233'),
(47, 'guest', 'POST', '/login', '022243'),
(48, 'carlos', 'POST', '/compra', '022247'),
(49, 'carlos', 'POST', '/compra', '022301'),
(50, 'carlos', 'POST', '/compra', '022312'),
(51, 'carlos', 'POST', '/compra', '022322'),
(52, 'carlos', 'POST', '/compra', '022339'),
(53, 'carlos', 'POST', '/compra', '022344'),
(54, 'carlos', 'POST', '/compra', '022348'),
(55, 'carlos', 'POST', '/compra', '022402'),
(56, 'carlos', 'POST', '/compra', '022408'),
(57, 'carlos', 'POST', '/compra', '022431'),
(58, 'carlos', 'POST', '/compra', '022440'),
(59, 'carlos', 'POST', '/compra', '022445'),
(60, 'carlos', 'POST', '/compra', '022503'),
(61, 'carlos', 'POST', '/compra', '022535'),
(62, 'carlos', 'POST', '/compra', '022546'),
(63, 'carlos', 'POST', '/compra', '022553'),
(64, 'carlos', 'POST', '/compra', '022607'),
(65, 'carlos', 'POST', '/compra', '022616'),
(66, 'carlos', 'POST', '/compra', '022622'),
(67, 'carlos', 'POST', '/compra', '022633'),
(68, 'carlos', 'POST', '/compra', '022730'),
(69, 'carlos', 'POST', '/compra', '022739'),
(70, 'carlos', 'POST', '/compra', '022843'),
(71, 'carlos', 'POST', '/compra', '022923'),
(72, 'carlos', 'POST', '/compra', '023057'),
(73, 'carlos', 'POST', '/compra', '023131'),
(74, 'carlos', 'POST', '/compra', '023220'),
(75, 'guest', 'POST', '/usuario', '023537'),
(76, 'guest', 'POST', '/usuario', '023609'),
(77, 'guest', 'POST', '/usuario', '023619'),
(78, 'guest', 'POST', '/login', '023630'),
(79, 'guest', 'POST', '/login', '023634'),
(80, 'guest', 'POST', '/login', '023835'),
(81, 'guest', 'POST', '/login', '023850'),
(82, 'guest', 'POST', '/login', '023919'),
(83, 'guest', 'POST', '/login', '023930'),
(84, 'guest', 'POST', '/login', '023949'),
(85, 'guest', 'POST', '/login', '024010'),
(86, 'guest', 'POST', '/login', '024026'),
(87, 'guest', 'POST', '/login', '024034'),
(88, 'guest', 'POST', '/login', '024039'),
(89, 'guest', 'POST', '/login', '024101'),
(90, 'guest', 'POST', '/login', '024111'),
(91, 'guest', 'POST', '/login', '024123'),
(92, 'guest', 'POST', '/login', '024139'),
(93, 'guest', 'POST', '/login', '024152'),
(94, 'guest', 'POST', '/login', '024202'),
(95, 'guest', 'POST', '/usuario', '024237'),
(96, 'guest', 'POST', '/login', '024240'),
(97, 'guest', 'POST', '/login', '024246'),
(98, 'guest', 'POST', '/login', '024308'),
(99, 'fran', 'GET', '/compra', '024318'),
(100, 'guest', 'POST', '/usuario', '024328'),
(101, 'guest', 'POST', '/login', '024335'),
(102, 'oct', 'GET', '/compra', '024344'),
(103, 'oct', 'POST', '/compra', '024401'),
(104, 'oct', 'GET', '/compra', '024406'),
(105, 'carlos', 'POST', '/compra', '024455');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `articulo` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `usuario`, `articulo`, `fecha`, `precio`) VALUES
(1, 'carlos', 3, '2020-06-19 03:00:00', 800),
(2, 'carlos', 3, '2020-06-19 03:00:00', 800),
(3, 'carlos', 3, '2020-06-19 03:00:00', 800),
(4, 'carlos', 3, '2020-06-19 03:00:00', 800),
(5, 'carlos', 3, '2020-06-19 03:00:00', 800),
(6, 'usuario', 3, '2020-06-19 03:00:00', 800),
(7, 'usuario', 3, '2020-06-19 03:00:00', 800),
(8, 'carlos', 6, '2005-06-19 03:00:00', 600),
(9, 'carlos', 6, '2005-06-19 03:00:00', 600),
(10, 'carlos', 6, '2005-06-19 03:00:00', 600),
(11, 'carlos', 6, '2005-06-19 03:00:00', 600),
(12, 'carlos', 6, '2005-06-19 03:00:00', 600),
(13, 'oct', 6, '2005-06-19 03:00:00', 600),
(14, 'carlos', 3, '2020-06-19 03:00:00', 800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `clave` varchar(256) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `sexo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `clave`, `rol`, `sexo`) VALUES
(1, 'fran', '$2y$10$QVqneP1kVl3YkcVKdVrnlONvekOBvv8w54onKSfTiPTfABzrvVUUW', 'admin', 'femenino'),
(2, 'oct', '$2y$10$457STUkVsXpxIOA6y1x0.etC8WlXrqQuQkh8hoDjAxLv6kYYaFDjm', 'usuario', 'femenino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `audit`
--
ALTER TABLE `audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
