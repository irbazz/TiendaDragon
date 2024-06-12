-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-06-2024 a las 04:51:59
-- Versión del servidor: 8.0.35
-- Versión de PHP: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaunisimondb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id` int NOT NULL,
  `caracteristica` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `activo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id`, `caracteristica`, `activo`) VALUES
(1, 'color', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `dni` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estatus` tinyint NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_modifica` datetime DEFAULT NULL,
  `fecha_baja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `email`, `telefono`, `dni`, `estatus`, `fecha_alta`, `fecha_modifica`, `fecha_baja`) VALUES
(1, 'Marco', 'Robles', 'marco@gmail.com', '123456', '1122334455', 1, '2024-06-11 23:30:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int NOT NULL,
  `id_transaccion` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_cliente` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `id_transaccion`, `fecha`, `status`, `email`, `id_cliente`, `total`) VALUES
(1, '6GP165599F055184D', '2024-06-09 10:12:33', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3884.00),
(2, '258339090Y7778221', '2024-06-10 01:18:50', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3848.00),
(3, '5VD99995MJ893192S', '2024-06-10 01:19:44', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3848.00),
(4, '5UH53376CL820783C', '2024-06-10 01:35:41', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 7678.00),
(5, '96N4967464715494N', '2024-06-10 01:38:44', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 7678.00),
(6, '4CB707205A654930C', '2024-06-10 01:39:42', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 7678.00),
(7, '2A455336A30966426', '2024-06-10 01:45:19', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3848.00),
(8, '03Y28284AL133203Y', '2024-06-10 01:47:26', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3830.00),
(9, '54P025358H281710K', '2024-06-10 01:48:44', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3830.00),
(10, '66F70185GN633243C', '2024-06-10 01:54:35', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3830.00),
(11, '69A54785KS586405B', '2024-06-10 02:28:11', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3830.00),
(12, '04T001774A766480L', '2024-06-10 02:30:51', 'COMPLETED', 'sb-u06lm30795707@business.example.com', 'QHYBTSPWUSLYJ', 3518.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int NOT NULL,
  `id_compra` int NOT NULL,
  `id_producto` int NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id`, `id_compra`, `id_producto`, `nombre`, `precio`, `cantidad`) VALUES
(1, 1, 1, 'Mouse Logitech M90', 18.00, 3),
(2, 1, 2, 'Portatil Lenovo Loq', 3500.00, 1),
(3, 1, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 1),
(4, 2, 1, 'Mouse Logitech M90', 18.00, 1),
(5, 2, 2, 'Portatil Lenovo Loq', 3500.00, 1),
(6, 2, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 1),
(7, 3, 1, 'Mouse Logitech M90', 18.00, 1),
(8, 3, 2, 'Portatil Lenovo Loq', 3500.00, 1),
(9, 3, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 1),
(10, 4, 1, 'Mouse Logitech M90', 18.00, 1),
(11, 4, 2, 'Portatil Lenovo Loq', 3500.00, 2),
(12, 4, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 2),
(13, 5, 1, 'Mouse Logitech M90', 18.00, 1),
(14, 5, 2, 'Portatil Lenovo Loq', 3500.00, 2),
(15, 5, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 2),
(16, 6, 1, 'Mouse Logitech M90', 18.00, 1),
(17, 6, 2, 'Portatil Lenovo Loq', 3500.00, 2),
(18, 6, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 2),
(19, 7, 2, 'Portatil Lenovo Loq', 3500.00, 1),
(20, 7, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 1),
(21, 7, 1, 'Mouse Logitech M90', 18.00, 1),
(22, 8, 2, 'Portatil Lenovo Loq', 3500.00, 1),
(23, 8, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 1),
(24, 9, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 1),
(25, 9, 2, 'Portatil Lenovo Loq', 3500.00, 1),
(26, 10, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 1),
(27, 10, 2, 'Portatil Lenovo Loq', 3500.00, 1),
(28, 11, 3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 330.00, 1),
(29, 11, 2, 'Portatil Lenovo Loq', 3500.00, 1),
(30, 12, 1, 'Mouse Logitech M90', 18.00, 1),
(31, 12, 2, 'Portatil Lenovo Loq', 3500.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_prod_caracter`
--

CREATE TABLE `det_prod_caracter` (
  `id` int NOT NULL,
  `id_producto` int NOT NULL,
  `id_caracteristica` int NOT NULL,
  `valor` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `det_prod_caracter`
--

INSERT INTO `det_prod_caracter` (`id`, `id_producto`, `id_caracteristica`, `valor`, `stock`) VALUES
(1, 1, 1, 'negro', 10),
(2, 1, 1, 'blanco', 5),
(5, 1, 1, 'fuchsia', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `descuento` tinyint NOT NULL DEFAULT '0',
  `id_categoria` int NOT NULL,
  `activo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `descuento`, `id_categoria`, `activo`) VALUES
(1, 'Mouse Logitech M90', '<li>Utiliza cable</li>\n<li>Posee rueda de desplazamiento</li>\n<li>Con sensor óptico</li>\n<li>Resolución de 1000dpi</li>', 20, 10, 1, 1),
(2, 'Portatil Lenovo Loq', '</li>Portátil Gamer Lenovo LOQ</li>\n</li>Geforce RTX 3050</li>\n<li>Intel Core i5 Serie H</li>\n<li>8GB de RAM</li>\n<li>512GB SSD de Almacenamiento</li>\n<li>Windows 11</li>\n<li>Pantalla de 15.6 pulgadas</li>', 3500, 0, 1, 1),
(3, 'Teclado Mecánico HyperX Alloy MKW100 Rojo', 'Con capacidad de respuesta, confiable, radiante.', 330, 0, 1, 1),
(4, 'TECLADO GAMER REDRAGON K550 YAMA RGB MECÁNICO', '<p>Marco sólido de aluminio para proveer durabilidad y estabilidad, rueda para controlar el volumen de aluminio y multimedia dedicadas, puerto adicional USB 2.1 ubicado en la parte posterior del teclado, reposamuñecas desmontable.</p>', 300, 0, 1, 1),
(5, 'DIADEMA GAMER RAZER KAIRA X XBOX SERIES X/S', '<p>Conquista en la consola y más allá con Razer Kaira X, un auricular con cable Xbox Series X|S diseñado para un máximo rendimiento de audio y compatibilidad multiplataforma. Armado con controladores de última generación y un micrófono nítido</p>', 269, 0, 1, 1),
(6, 'MONITOR LED LG 27″ 4K 27UL500-W', '<p>Este monitor es compatible con HDR10 para representar detalles en partes luminosas y oscuras de contenidos de alto rango dinámico.</p>', 400, 30, 1, 1),
(7, 'PROCESADOR AMD RYZEN R7-5800X 3,8Gz 32M 8CORE AM4 NO FAN', '<p>Obtén rendimiento de alta velocidad en los juegos, con el ​mejor procesador para computadoras de escritorio del mundo</p>', 530, 10, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `usuario` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_spanish_ci NOT NULL,
  `activacion` int NOT NULL DEFAULT '0',
  `token` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `token_password` varchar(40) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `password_request` int NOT NULL DEFAULT '0',
  `id_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `activacion`, `token`, `token_password`, `password_request`, `id_cliente`) VALUES
(1, 'marco', '$2y$10$kbJY2zqJ7GzP43oXjV/Oe.jzgoAicAp3GfawwZw5omAJhGWLJ8lAu', 0, 'bbd099d915092a06aaaf1c3839decbfa', NULL, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_prod_caracter`
--
ALTER TABLE `det_prod_caracter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_det_prod` (`id_producto`),
  ADD KEY `fk_det_caracter` (`id_caracteristica`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `det_prod_caracter`
--
ALTER TABLE `det_prod_caracter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `det_prod_caracter`
--
ALTER TABLE `det_prod_caracter`
  ADD CONSTRAINT `fk_det_caracter` FOREIGN KEY (`id_caracteristica`) REFERENCES `caracteristicas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_det_prod` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
