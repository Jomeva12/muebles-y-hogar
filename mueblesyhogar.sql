-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-09-2020 a las 18:04:43
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id14853556_mueblesyhogar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `idarticulos` int(11) NOT NULL,
  `nombre_del_articulo` varchar(45) DEFAULT NULL,
  `precio_antiguo` varchar(45) DEFAULT NULL,
  `precio_nuevo` varchar(45) DEFAULT NULL,
  `estrellas` varchar(45) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`idarticulos`, `nombre_del_articulo`, `precio_antiguo`, `precio_nuevo`, `estrellas`, `descripcion`, `foto`, `categoria`) VALUES
(4, 'Closet  color wengue', '3.80.000', '3.50.000', '4', 'm² ', '../fotos/ceac2795e22c15a3a6df34bef83176b3.jpg', 2),
(5, 'closet color nogal', '390000', '370000', '4', 'm²', '../fotos/b91bf90ef1f4c179aef8150ad846e24a.jpg', 2),
(8, 'Closet', '490000', '450000', '4', 'Closet empotrado color rovere', '../fotos/e5d14fc25ee3dde98a0c48e467e191a6.jpg', 2),
(9, 'Closet', '490000', '450000', '4', 'closet  melamina Rh color artico', '../fotos/8602014a5ff1d1d9e76ab19a7c5e0ef1.jpg', 2),
(10, 'Closet', '520000', '480000', '4', 'Closet en material resistente a la humedad y con herrajes en acero inoxidable', '../fotos/8eb91b1441c663df94c7c49fbd0d9978.jpg', 2),
(12, 'Cocina 2', '400000', '380000', '5', 'Nnn', '../fotos/61f4f9b3e304fba365859758d2be53c2.jpg', 1),
(13, 'Cocina integral ', '460000', '430000', '4', 'Cocina ', '../fotos/13e33b623e05ee8f3cd4dd757bd24c52.jpg', 1),
(14, 'Cocina ', '400000', '380000', '4', 'Nkkk', '../fotos/711f0cab37df27667e857bd69f55b16e.jpg', 1),
(15, 'Cocina ', '400000', '370000', '5', 'Dd', '../fotos/55d05b2cae8383251f39181bf05baaca.jpg', 1),
(16, 'Escritorio RH', '350000', '340000', '5', 'Color blanco', '../fotos/048b17ee89fd233b0fc104513cc08f2c.jpg', 6),
(17, 'Escritorio', '280000', '250000', '5', 'Color blanco para sala', '../fotos/5c55a0c073ea629904d192233c41f039.jpg', 6),
(18, 'Escritorio ', '320000', '300000', '4', 'Wengue ', '../fotos/a45c9c4e68a3c69a4b1e45eac06a3955.jpg', 6),
(19, 'Escritorio', '400000', '360000', '5', 'Wengue y blanco ', '../fotos/4512e40fbb4284fa90cb0689d2e2dcb4.jpg', 6),
(20, 'Escritorio ', '450000', '420000', '4', 'Blanco', '../fotos/2a515c93f4cfa784552b6b9056a1e71d.jpg', 6),
(21, 'Escritorio ', '1200000', '1120000', '5', 'Escritorio gamer', '../fotos/5ae7f335c3afc10ed5a5157fbafd48da.jpg', 6),
(22, 'Escritorio ', '300000', '260000', '5', 'Escritorio mediano ', '../fotos/567b7b02a78aeda26be072b904a5ca0f.jpg', 6),
(23, 'Escritorio', '600000', '550000', '4', '', '../fotos/5dc8f5de7cc3e9b0cd66529478bd312d.jpg', 6),
(24, 'Repisa combinada ', '500000', '460000', '4', 'Repisa ', '../fotos/dbc53022e18d70fa49a3a0f39b53b69f.jpg', 5),
(25, 'Repisa', '400000', '350000', '5', 'Repisa', '../fotos/15edcb26233940bae6e6149a0288910c.jpg', 5),
(26, 'Repisa ', '280000', '250000', '5', 'Repisa', '../fotos/a251e99027c98ebd30879d855307d14e.jpg', 5),
(27, 'Cocina integral', '2000000', '1800000', '', 'Cocina integral pequeña', '../fotos/813da6d0acbd28bccec56a454642ef36.jpg', 1),
(28, 'Cocina integral', '4500000', '4200000', '', 'Moderna', '../fotos/23609ce61e39f22930d31ee5d1989070.jpg', 1),
(29, 'Cocina', '4000000', '3500000', '', 'Hermosa cocina', '../fotos/a43f7a49794a9c94d121959d23b8e796.jpg', 1),
(30, 'Cocina', '4500000', '4200000', '', 'Integral', '../fotos/8a3887db67c4500ddf453bb77fb18096.jpg', 1),
(31, 'Cocina integral', '4800000', '4500000', '', 'Integral', '../fotos/fa53d6f50d305381bd17de6f0a166053.jpg', 1),
(32, 'Cocina integral', '4200000', '4000000', '', 'Cocina ', '../fotos/5f6f01e4384565ec741df05ec33b2033.jpg', 1),
(33, 'Closet', '1000000', '800000', '', 'Cómoda ', '../fotos/254323451832c615fb4b5798384b6a15.jpg', 2),
(34, 'Closet ', '1500000', '1000000', '', '', '../fotos/05d065b51503801c5ee674f260ab17ba.jpg', 2),
(35, 'Closet', '1500000', '1000000', '', 'Resistente  a la humedad', '../fotos/f86a79c20e12f0e6b7ee82530b935c62.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategorias` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategorias`, `categoria`) VALUES
(1, 'Cocina'),
(2, 'Closet'),
(3, 'Centro de entretenimiento'),
(4, 'Mesa de centro'),
(5, 'Repisas'),
(6, 'Muebles de oficina'),
(7, 'Puertas'),
(8, 'Isla centro comercial'),
(9, 'Muebles para bano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idcontacto` int(11) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `mensaje` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`idcontacto`, `fecha`, `nombre`, `correo`, `telefono`, `mensaje`) VALUES
(1, '2020/9/13 - 13:17', 'juan', 'juan@gmail.com', '3152457898', 'Mensaje de prueba en la BD'),
(2, '2020/9/13 - 16:17', 'Leider Vargas', 'leideryuyo@gmail.com', '3013970625', 'Necesito saber como se hace'),
(3, '2020/9/16 - 19:50', 'Jorge Meléndez ', 'jomeva.12@gmail.com', '3003856911', 'Necesito vista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `id_visitas` int(11) NOT NULL,
  `num` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`id_visitas`, `num`) VALUES
(1, 263);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`idarticulos`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategorias`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idcontacto`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`id_visitas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `idarticulos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idcontacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `id_visitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
