-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2026 a las 09:00:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `punto de venta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombre`, `Apellido`, `Telefono`) VALUES
(1, 'Andres', 'Caicedo', '5556649876'),
(2, 'Luis', 'Hernández', '5551234567'),
(3, 'Sofía', 'Ramírez', '5552345678'),
(4, 'Diego', 'Flores', '5553456789'),
(5, 'Valentina', 'Cruz', '5554567890'),
(6, 'Javier', 'Gómez', '5555678901'),
(7, 'Camila', 'Morales', '5556789012'),
(8, 'Alejandro', 'Vázquez', '5557890123'),
(9, 'Isabella', 'Jiménez', '5558901234'),
(10, 'Mateo', 'Reyes', '5559012345'),
(11, 'Ximena', 'Ruiz', '5550123456'),
(12, 'Santiago', 'Ortega', '5551122334'),
(13, 'Natalia', 'Mendoza', '5552233445'),
(14, 'Sebastián', 'Castro', '5553344556'),
(15, 'Fernanda', 'Silva', '5554455667'),
(16, 'Nicolás', 'Rojas', '5555566778'),
(17, 'Daniela', 'Pineda', '5556677889'),
(18, 'Joaquín', 'Luna', '5557788990'),
(19, 'Regina', 'Cano', '5558899001'),
(20, 'Samuel', 'Vargas', '5559900112'),
(21, 'Victoria', 'Mejía', '5551010101'),
(22, 'Gabriel', 'León', '5552020202'),
(23, 'Andrea', 'Soto', '5553030303'),
(24, 'Julián', 'Escobar', '5554040404'),
(25, 'Paola', 'Navarro', '5555050505'),
(26, 'Hugo', 'Guzmán', '5556060606'),
(27, 'Adriana', 'Cervantes', '5557070707'),
(28, 'Leonardo', 'Ibarra', '5558080808'),
(29, 'Gloria', 'Peralta', '5559090909'),
(30, 'Bruno', 'Salinas', '5550001112');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `idDetalleVenta` int(10) UNSIGNED NOT NULL,
  `idVenta` int(10) UNSIGNED NOT NULL,
  `idProducto` int(10) UNSIGNED NOT NULL,
  `Cantidad` int(10) UNSIGNED NOT NULL,
  `SubTotal` decimal(10,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`idDetalleVenta`, `idVenta`, `idProducto`, `Cantidad`, `SubTotal`) VALUES
(1, 1, 1, 1, 18.50),
(2, 1, 2, 1, 17.00),
(3, 2, 10, 1, 98.00),
(4, 2, 2, 1, 17.00),
(5, 3, 1, 1, 18.50),
(6, 4, 5, 2, 90.00),
(7, 4, 4, 5, 130.00),
(8, 1, 1, 1, 18.50),
(9, 1, 2, 1, 17.00),
(10, 2, 10, 1, 98.00),
(11, 2, 2, 1, 17.00),
(12, 3, 1, 1, 18.50),
(13, 4, 5, 2, 90.00),
(14, 4, 4, 5, 130.00),
(15, 5, 8, 2, 50.00),
(16, 6, 7, 2, 44.00),
(17, 7, 10, 1, 98.00),
(18, 7, 9, 1, 35.00),
(19, 8, 6, 1, 12.00),
(20, 8, 2, 1, 17.00),
(21, 8, 3, 1, 15.50),
(22, 9, 4, 1, 26.00),
(23, 9, 5, 1, 45.00),
(24, 10, 8, 2, 50.00),
(25, 10, 1, 2, 37.00),
(26, 11, 10, 3, 294.00),
(27, 11, 9, 2, 70.00),
(28, 11, 2, 4, 68.00),
(29, 12, 7, 1, 22.00),
(30, 12, 5, 1, 45.00),
(31, 13, 6, 1, 12.00),
(32, 14, 1, 1, 18.50),
(33, 14, 3, 1, 15.50),
(34, 15, 4, 2, 52.00),
(35, 16, 8, 1, 25.00),
(36, 16, 6, 1, 12.00),
(37, 17, 2, 2, 34.00),
(38, 17, 1, 2, 37.00),
(39, 18, 9, 1, 35.00),
(40, 19, 7, 1, 22.00),
(41, 19, 3, 1, 15.50),
(42, 20, 10, 1, 98.00),
(43, 20, 2, 1, 17.00),
(44, 21, 5, 2, 90.00),
(45, 21, 4, 2, 52.00),
(46, 22, 6, 1, 12.00),
(47, 23, 1, 1, 18.50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

CREATE TABLE `metodopago` (
  `idMetodoPago` int(10) UNSIGNED NOT NULL,
  `NombreMetodo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metodopago`
--

INSERT INTO `metodopago` (`idMetodoPago`, `NombreMetodo`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta de Débito'),
(3, 'Tarjeta de Crédito'),
(4, 'Puntos Recompensa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Descripcion` text DEFAULT NULL,
  `Precio` decimal(10,2) UNSIGNED NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `Nombre`, `Descripcion`, `Precio`, `Stock`) VALUES
(1, 'Coca-Cola 600ml', 'Refresco de cola original', 18.50, 50),
(2, 'Sabritas Sal 45g', 'Papas fritas con sal', 17.00, 40),
(3, 'Gansito Marínela', 'Pastelito relleno', 15.50, 30),
(4, 'Leche Entera 1L', 'Lácteo pasteurizado', 26.00, 20),
(5, 'Pan Blanco Grande', 'Pan de caja', 45.00, 15),
(6, 'Agua Ciel 1L', 'Agua purificada', 12.00, 100),
(7, 'Café Americano 12oz', 'Café caliente de máquina', 22.00, 200),
(8, 'Vikingo Clásico', 'Hot dog de la casa', 25.00, 24),
(9, 'Hielo Bolsa 5kg', 'Cúbitos de hielo', 35.00, 10),
(10, 'Cerveza Six Pack', 'Lata 355ml', 98.00, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(10) UNSIGNED NOT NULL,
  `NombreTipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idTipoUsuario`, `NombreTipo`) VALUES
(1, 'Administrador'),
(2, 'Cajero'),
(3, 'Encargado de Turno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `idTipoUsuario` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `idTipoUsuario`, `Nombre`, `Usuario`, `Contraseña`) VALUES
(1, 1, 'Admin General', 'admin', 'admin123'),
(2, 2, 'Juan Pérez', 'juanp', 'cajero1'),
(3, 2, 'María García', 'mariag', 'cajero2'),
(4, 2, 'Pedro López', 'pedrol', 'cajero3'),
(5, 2, 'Ana Martínez', 'anam', 'cajero4'),
(6, 3, 'Carlos Rodríguez', 'carlosr', 'turno1'),
(7, 2, 'Lucía Sánchez', 'lucias', 'cajero5'),
(8, 2, 'Roberto Díaz', 'robertod', 'cajero6'),
(9, 2, 'Elena Torres', 'elenat', 'cajero7'),
(10, 3, 'Miguel Ángel', 'miguela', 'turno2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(10) UNSIGNED NOT NULL,
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `idCliente` int(10) UNSIGNED NOT NULL,
  `idMetodoPago` int(10) UNSIGNED NOT NULL,
  `Total` decimal(10,2) UNSIGNED NOT NULL,
  `FechaHora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `idUsuario`, `idCliente`, `idMetodoPago`, `Total`, `FechaHora`) VALUES
(1, 2, 1, 1, 35.50, '2026-04-12 23:51:02'),
(2, 2, 2, 2, 115.00, '2026-04-12 23:51:02'),
(3, 3, 5, 1, 18.50, '2026-04-12 23:51:02'),
(4, 4, 10, 3, 220.00, '2026-04-12 23:51:02'),
(5, 2, 1, 1, 50.00, '2026-04-12 23:51:02'),
(6, 2, 1, 1, 35.50, '2026-04-12 23:51:20'),
(7, 2, 2, 2, 115.00, '2026-04-12 23:51:20'),
(8, 3, 5, 1, 18.50, '2026-04-12 23:51:20'),
(9, 4, 10, 3, 220.00, '2026-04-12 23:51:20'),
(10, 2, 1, 1, 50.00, '2026-04-12 23:51:20'),
(11, 5, 15, 1, 44.00, '2026-04-12 23:51:20'),
(12, 7, 22, 2, 133.00, '2026-04-12 23:51:20'),
(13, 8, 30, 1, 44.50, '2026-04-12 23:51:20'),
(14, 9, 3, 4, 71.00, '2026-04-12 23:51:20'),
(15, 2, 18, 1, 87.00, '2026-04-12 23:51:20'),
(16, 3, 12, 3, 432.00, '2026-04-12 23:51:20'),
(17, 4, 8, 2, 67.00, '2026-04-12 23:51:20'),
(18, 5, 1, 1, 12.00, '2026-04-12 23:51:20'),
(19, 7, 25, 1, 34.00, '2026-04-12 23:51:20'),
(20, 8, 19, 2, 52.00, '2026-04-12 23:51:20'),
(21, 9, 21, 1, 37.00, '2026-04-12 23:51:20'),
(22, 2, 7, 1, 71.00, '2026-04-12 23:51:20'),
(23, 3, 29, 2, 35.00, '2026-04-12 23:51:20'),
(24, 4, 14, 1, 37.50, '2026-04-12 23:51:20'),
(25, 5, 6, 3, 115.00, '2026-04-12 23:51:20'),
(26, 7, 11, 2, 142.00, '2026-04-12 23:51:20'),
(27, 8, 16, 1, 12.00, '2026-04-12 23:51:20'),
(28, 9, 2, 1, 18.50, '2026-04-12 23:51:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`idDetalleVenta`),
  ADD KEY `idVenta` (`idVenta`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`idMetodoPago`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `Usuario` (`Usuario`),
  ADD KEY `idTipoUsuario` (`idTipoUsuario`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idMetodoPago` (`idMetodoPago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `idDetalleVenta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  MODIFY `idMetodoPago` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `idTipoUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idVenta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`idVenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`idMetodoPago`) REFERENCES `metodopago` (`idMetodoPago`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
