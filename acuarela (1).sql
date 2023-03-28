-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2023 a las 06:16:37
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acuarela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Dirección` varchar(30) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IdCliente`, `Nombre`, `Apellido`, `Dirección`, `Telefono`) VALUES
(1, 'Rosa', 'Gomez', 'calle 12 26', 25674521),
(2, 'Jose', 'Perez', 'carrera 26 56', 6512015),
(3, 'Sara', 'Martinez', 'calle 51 74', 8451232),
(4, 'Cristian', 'Flores', 'carrera 11 72', 8122764),
(5, 'Viviana', 'Sanchez', 'carrera 26 85', 85652142);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `CodProducto` int(11) NOT NULL,
  `FechaCompra` date NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Código` int(11) NOT NULL,
  `Precio` double NOT NULL,
  `Categoría` varchar(20) NOT NULL,
  `Stock` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `Nombre`, `Código`, `Precio`, `Categoría`, `Stock`) VALUES
(1, 'Boligrafos', 223, 3, 'Articulos de oficina', 30),
(2, 'Calendarios personal', 323, 10, 'Articulos de oficina', 30),
(3, 'Cuadernos personaliz', 423, 10, 'Libretas', 60),
(4, 'Carpeta de archivado', 523, 8, 'Articulos de oficina', 20),
(5, 'Sobres personalizado', 623, 15, 'Papeleria', 120),
(6, 'Papel carta', 723, 14, 'Papeleria', 70),
(7, 'Sellos personalizado', 823, 25, 'Articulos de oficina', 20),
(8, 'Pegatinas personaliz', 923, 5, 'Papeleria', 190);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProv` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Dirección` varchar(20) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProv`, `Nombre`, `Dirección`, `Telefono`) VALUES
(1, 'surti lapices', 'calle 100', 1546968),
(2, 'proveetodo', 'calle 45', 8122707),
(3, 'distribuidora sa', 'calle 26', 7852755),
(4, 'surtidora de papel', 'carrera 7', 4512233),
(5, 'surtidora sa', 'calle 15', 985623);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveeproducto`
--

CREATE TABLE `proveeproducto` (
  `idProveeProducto` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `cod_produc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `CodProducto` (`CodProducto`),
  ADD KEY `idCompra` (`idCompra`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProv`),
  ADD KEY `idProv` (`idProv`);

--
-- Indices de la tabla `proveeproducto`
--
ALTER TABLE `proveeproducto`
  ADD PRIMARY KEY (`idProveeProducto`),
  ADD KEY `cod_produc` (`cod_produc`),
  ADD KEY `idProveeProducto` (`idProveeProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `FK_CodProducto` FOREIGN KEY (`CodProducto`) REFERENCES `productos` (`idProductos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_idCliente` FOREIGN KEY (`idCompra`) REFERENCES `clientes` (`IdCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveeproducto`
--
ALTER TABLE `proveeproducto`
  ADD CONSTRAINT `FK_idproduc` FOREIGN KEY (`cod_produc`) REFERENCES `productos` (`idProductos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_idprovee` FOREIGN KEY (`idProveeProducto`) REFERENCES `proveedor` (`idProv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
