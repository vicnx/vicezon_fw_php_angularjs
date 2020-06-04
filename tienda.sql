-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2020 a las 17:40:16
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `idbrand` int(30) NOT NULL,
  `namebrand` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`idbrand`, `namebrand`, `views`) VALUES
(1, 'samsung', 16),
(2, 'xiaomi', 36),
(3, 'iphone', 73),
(4, 'sony', 123),
(5, 'motorola', 34),
(6, 'Oppo', 0),
(7, 'redmi', 0),
(8, 'hola', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id_user` varchar(255) NOT NULL,
  `idproduct` int(255) NOT NULL,
  `qty` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id_user`, `idproduct`, `qty`) VALUES
('test', 13, 12),
('test', 2, 5),
('test', 30, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `idfactura` int(255) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `total_factura` int(255) NOT NULL,
  `fecha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`idfactura`, `id_user`, `total_factura`, `fecha`) VALUES
(31, 'test', 20360, '2020-05-12 23:39:16'),
(32, 'test', 4072, '2020-05-12 23:39:27'),
(33, 'test', 4072, '2020-05-12 23:39:38'),
(34, 'test', 4072, '2020-05-12 23:40:04'),
(35, 'test', 4072, '2020-05-12 23:40:37'),
(36, 'test', 4072, '2020-05-12 23:41:11'),
(37, 'test', 4072, '2020-05-12 23:41:35'),
(38, 'test', 4072, '2020-05-12 23:41:47'),
(39, 'test', 4072, '2020-05-12 23:41:54'),
(40, 'test', 4072, '2020-05-12 23:42:00'),
(41, 'test', 4072, '2020-05-12 23:42:40'),
(42, 'test', 4072, '2020-05-12 23:42:49'),
(43, 'test', 4072, '2020-05-12 23:45:05'),
(44, 'test', 4072, '2020-05-12 23:46:05'),
(45, 'test', 4072, '2020-05-12 23:46:11'),
(46, 'test', 4072, '2020-05-12 23:46:12'),
(47, 'test', 4072, '2020-05-12 23:46:12'),
(48, 'test', 4072, '2020-05-12 23:46:12'),
(49, 'test', 4072, '2020-05-12 23:46:12'),
(50, 'test', 4072, '2020-05-12 23:46:12'),
(51, 'test', 4072, '2020-05-12 23:46:13'),
(52, 'test', 4072, '2020-05-12 23:46:13'),
(53, 'test', 4072, '2020-05-12 23:46:13'),
(54, 'test', 4072, '2020-05-12 23:46:13'),
(55, 'test', 4072, '2020-05-12 23:46:13'),
(56, 'test', 4072, '2020-05-12 23:46:13'),
(57, 'test', 4072, '2020-05-12 23:46:14'),
(58, 'test', 4072, '2020-05-12 23:46:14'),
(59, 'test', 4072, '2020-05-12 23:46:14'),
(60, 'test', 4072, '2020-05-12 23:46:14'),
(61, 'test', 4072, '2020-05-12 23:46:14'),
(62, 'test', 211744, '2020-05-12 23:46:27'),
(63, 'test', 211744, '2020-05-12 23:46:28'),
(64, 'test', 211744, '2020-05-12 23:46:28'),
(65, 'test', 211744, '2020-05-12 23:46:28'),
(66, 'test', 211744, '2020-05-12 23:46:28'),
(67, 'test', 211744, '2020-05-12 23:46:28'),
(68, 'test', 211744, '2020-05-12 23:46:28'),
(69, 'test', 211744, '2020-05-12 23:46:29'),
(70, 'test', 211744, '2020-05-12 23:46:29'),
(71, 'test', 211744, '2020-05-12 23:46:29'),
(72, 'test', 211744, '2020-05-12 23:46:29'),
(73, 'test', 211744, '2020-05-12 23:46:30'),
(74, 'test', 211744, '2020-05-12 23:46:30'),
(75, 'test', 211744, '2020-05-12 23:46:30'),
(76, 'test', 211744, '2020-05-12 23:46:30'),
(77, 'test', 211744, '2020-05-12 23:46:30'),
(78, 'test', 211744, '2020-05-12 23:46:31'),
(79, 'test', 211744, '2020-05-12 23:46:31'),
(80, 'test', 87734, '2020-05-12 23:51:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_linea`
--

CREATE TABLE `factura_linea` (
  `idlinea` int(255) NOT NULL,
  `idfactura` int(255) NOT NULL,
  `idproduct` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `cost` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura_linea`
--

INSERT INTO `factura_linea` (`idlinea`, `idfactura`, `idproduct`, `qty`, `cost`) VALUES
(26, 51, '4', 1, 4072),
(27, 57, '4', 1, 4072),
(28, 57, '4', 1, 4072),
(29, 57, '4', 1, 4072),
(30, 57, '4', 1, 4072),
(31, 57, '4', 1, 4072),
(32, 62, '4', 52, 211744),
(33, 63, '4', 52, 211744),
(34, 63, '4', 52, 211744),
(35, 63, '4', 52, 211744),
(36, 63, '4', 52, 211744),
(37, 63, '4', 52, 211744),
(38, 63, '4', 52, 211744),
(39, 69, '4', 52, 211744),
(40, 69, '4', 52, 211744),
(41, 69, '4', 52, 211744),
(42, 69, '4', 52, 211744),
(43, 73, '4', 52, 211744),
(44, 73, '4', 52, 211744),
(45, 73, '4', 52, 211744),
(46, 73, '4', 52, 211744),
(47, 73, '4', 52, 211744),
(48, 78, '4', 52, 211744),
(49, 78, '4', 52, 211744),
(50, 80, '6', 2, 18610),
(51, 80, '20', 1, 8482),
(52, 80, '3', 1, 5780),
(53, 80, '17', 4, 27812),
(54, 80, '19', 10, 27050);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `idproduct` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `id_user`, `idproduct`) VALUES
(1, '107389958768449504522', 13),
(2, '107389958768449504522', 2),
(4, '107389958768449504522', 14),
(5, '57725324', 26),
(6, '57725324', 14),
(7, '57725324', 13),
(8, 'test', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginusers`
--

CREATE TABLE `loginusers` (
  `iduser` int(11) NOT NULL,
  `rankuser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `loginusers`
--

INSERT INTO `loginusers` (`iduser`, `rankuser`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `money_codes`
--

CREATE TABLE `money_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `value` int(255) NOT NULL,
  `state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `money_codes`
--

INSERT INTO `money_codes` (`id`, `code`, `value`, `state`) VALUES
(1, 'QSXQZ-C44DA-O646N', 9095, 0),
(2, '2OHJ5-BF964-P2V9P', 3693, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablets`
--

CREATE TABLE `tablets` (
  `idproduct` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `marca` int(30) NOT NULL,
  `fpublic` varchar(255) DEFAULT NULL,
  `colores` varchar(255) NOT NULL,
  `sim` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `imagen` varchar(255) NOT NULL DEFAULT 'module/admin/module/tablets/view/img/default.png',
  `views` int(11) NOT NULL DEFAULT 0,
  `stock` int(255) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tablets`
--

INSERT INTO `tablets` (`idproduct`, `nombre`, `price`, `marca`, `fpublic`, `colores`, `sim`, `rating`, `imagen`, `views`, `stock`) VALUES
(1, 'Windows P', 3823, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.88, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(2, 'CubotZ', 5142, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.26, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(3, 'AlcatelZ', 7960, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.37, 'backend/modules/home/view/img/19.jpg', 0, 1000),
(4, 'IPad B', 7989, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.68, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(5, 'Windows C', 1608, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.48, 'backend/modules/home/view/img/7.jpg', 0, 1000),
(6, 'Alcatel H', 8222, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.78, 'backend/modules/home/view/img/4.jpg', 0, 1000),
(7, 'Windows note', 8525, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.1, 'backend/modules/home/view/img/9.jpg', 0, 1000),
(8, 'Windows air', 3394, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.99, 'backend/modules/home/view/img/13.jpg', 0, 1000),
(9, 'Umidgi pad', 724, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.88, 'backend/modules/home/view/img/2.jpg', 0, 1000),
(10, 'Alcatel F', 9509, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.07, 'backend/modules/home/view/img/6.jpg', 0, 1000),
(11, 'Xtrem plus', 2320, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.25, 'backend/modules/home/view/img/15.jpg', 0, 1000),
(12, 'Alcatel Version', 4604, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.13, 'backend/modules/home/view/img/9.jpg', 0, 1000),
(13, 'Realme I', 4960, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 2.85, 'backend/modules/home/view/img/13.jpg', 0, 1000),
(14, 'IPad pad', 334, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.36, 'backend/modules/home/view/img/10.jpg', 0, 1000),
(15, 'Alcatel I', 1140, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 2.6, 'backend/modules/home/view/img/6.jpg', 0, 1000),
(16, 'Honor C', 9132, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.17, 'backend/modules/home/view/img/5.jpg', 0, 1000),
(17, 'Realme B', 2117, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.83, 'backend/modules/home/view/img/14.jpg', 0, 1000),
(18, 'Nokia D', 9789, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.29, 'backend/modules/home/view/img/19.jpg', 0, 1000),
(19, 'Realme H', 9664, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.53, 'backend/modules/home/view/img/9.jpg', 0, 1000),
(20, 'Windows D', 113, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.57, 'backend/modules/home/view/img/10.jpg', 0, 1000),
(21, 'Cubot R', 247, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.38, 'backend/modules/home/view/img/4.jpg', 0, 1000),
(22, 'Samsung air', 679, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.05, 'backend/modules/home/view/img/19.jpg', 0, 1000),
(23, 'Nokia C', 5245, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.97, 'backend/modules/home/view/img/16.jpg', 0, 1000),
(24, 'IPad M', 9690, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 8.4, 'backend/modules/home/view/img/15.jpg', 0, 1000),
(25, 'Realme M', 5725, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.74, 'backend/modules/home/view/img/7.jpg', 0, 1000),
(26, 'Windows mi', 4875, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.53, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(27, 'Windows I', 4903, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 4.86, 'backend/modules/home/view/img/6.jpg', 0, 1000),
(28, 'Cubot J', 7978, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 4.01, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(29, 'Xtrem J', 1143, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.73, 'backend/modules/home/view/img/13.jpg', 0, 1000),
(30, 'huawei J', 1860, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0, 'backend/modules/home/view/img/7.jpg', 0, 1000),
(31, 'Alcatel J', 7707, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.92, 'backend/modules/home/view/img/4.jpg', 0, 1000),
(32, 'Oppo tab', 2579, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.78, 'backend/modules/home/view/img/8.jpg', 0, 1000),
(33, 'Xtrem P', 1159, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.56, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(34, 'Oppo H', 8456, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 4.79, 'backend/modules/home/view/img/15.jpg', 0, 1000),
(35, 'Xiaomi M', 2239, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.05, 'backend/modules/home/view/img/2.jpg', 0, 1000),
(36, 'huawei R', 4086, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.37, 'backend/modules/home/view/img/7.jpg', 0, 1000),
(37, 'Samsung D', 2356, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.57, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(38, 'Windows J', 140, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 2.35, 'backend/modules/home/view/img/17.jpg', 0, 1000),
(39, 'Realme note', 8722, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.13, 'backend/modules/home/view/img/14.jpg', 0, 1000),
(40, 'Meizu M', 710, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5, 'backend/modules/home/view/img/5.jpg', 0, 1000),
(41, 'Cubot mi', 6921, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.17, 'backend/modules/home/view/img/9.jpg', 0, 1000),
(42, 'Honor J', 8331, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.88, 'backend/modules/home/view/img/16.jpg', 0, 1000),
(43, 'Windows pad', 448, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 2.19, 'backend/modules/home/view/img/7.jpg', 0, 1000),
(44, 'Xiaomi B', 5658, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.46, 'backend/modules/home/view/img/20.jpg', 0, 1000),
(45, 'IPad tab', 1744, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.36, 'backend/modules/home/view/img/16.jpg', 0, 1000),
(46, 'huawei tab', 3622, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.3, 'backend/modules/home/view/img/5.jpg', 0, 1000),
(47, 'Xtrem B', 8811, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.19, 'backend/modules/home/view/img/17.jpg', 0, 1000),
(48, 'Samsung note', 8834, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.72, 'backend/modules/home/view/img/9.jpg', 0, 1000),
(49, 'XtremZ', 6129, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 2.69, 'backend/modules/home/view/img/10.jpg', 0, 1000),
(50, 'Honor note', 8133, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.92, 'backend/modules/home/view/img/19.jpg', 0, 1000),
(51, 'Oppo note', 9387, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.4, 'backend/modules/home/view/img/5.jpg', 0, 1000),
(52, 'Nokia F', 3047, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 8.06, 'backend/modules/home/view/img/20.jpg', 0, 1000),
(53, 'huawei B', 9446, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.78, 'backend/modules/home/view/img/15.jpg', 0, 1000),
(54, 'Nokia note', 394, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.4, 'backend/modules/home/view/img/13.jpg', 0, 1000),
(55, 'Xiaomi air', 3718, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.04, 'backend/modules/home/view/img/14.jpg', 0, 1000),
(56, 'Oppo pad', 7597, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.86, 'backend/modules/home/view/img/20.jpg', 0, 1000),
(57, 'Oppo D', 772, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.5, 'backend/modules/home/view/img/4.jpg', 0, 1000),
(58, 'Umidgi D', 3819, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.37, 'backend/modules/home/view/img/6.jpg', 0, 1000),
(59, 'Umidgi note', 6947, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.25, 'backend/modules/home/view/img/4.jpg', 0, 1000),
(60, 'Alcatel B', 4756, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.91, 'backend/modules/home/view/img/15.jpg', 0, 1000),
(61, 'Nokia pad', 8264, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.5, 'backend/modules/home/view/img/8.jpg', 0, 1000),
(62, 'Umidgi B', 4479, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.04, 'backend/modules/home/view/img/3.jpg', 0, 1000),
(63, 'Windows G', 596, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 4.05, 'backend/modules/home/view/img/9.jpg', 0, 1000),
(64, 'Xiaomi tab', 7969, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.45, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(65, 'huawei note', 9973, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.5, 'backend/modules/home/view/img/13.jpg', 0, 1000),
(66, 'Oppo Version', 4252, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.33, 'backend/modules/home/view/img/15.jpg', 0, 1000),
(67, 'Nokia M', 4073, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.75, 'backend/modules/home/view/img/1.jpg', 0, 1000),
(68, 'Samsung I', 7114, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.78, 'backend/modules/home/view/img/16.jpg', 0, 1000),
(69, 'Windows B', 772, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.98, 'backend/modules/home/view/img/1.jpg', 0, 1000),
(70, 'Xiaomi R', 6323, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.23, 'backend/modules/home/view/img/12.jpg', 0, 1000),
(71, 'Meizu mi', 728, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.62, 'backend/modules/home/view/img/7.jpg', 0, 1000),
(72, 'Windows A', 1515, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.33, 'backend/modules/home/view/img/18.jpg', 0, 1000),
(73, 'Umidgi mi', 3869, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.41, 'backend/modules/home/view/img/10.jpg', 0, 1000),
(74, 'Xiaomi D', 5545, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.35, 'backend/modules/home/view/img/20.jpg', 0, 1000),
(75, 'Meizu A', 7671, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 4.07, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(76, 'Cubot Version', 9399, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.26, 'backend/modules/home/view/img/18.jpg', 0, 1000),
(77, 'IPad plus', 170, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 4.18, 'backend/modules/home/view/img/9.jpg', 0, 1000),
(78, 'huaweiZ', 5831, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 8.04, 'backend/modules/home/view/img/1.jpg', 0, 1000),
(79, 'Alcatel M', 7118, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.27, 'backend/modules/home/view/img/12.jpg', 0, 1000),
(80, 'Oppo plus', 4894, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.37, 'backend/modules/home/view/img/2.jpg', 0, 1000),
(81, 'Xtrem D', 7813, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 8.23, 'backend/modules/home/view/img/7.jpg', 0, 1000),
(82, 'Meizu R', 3226, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 4.89, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(83, 'Xiaomi pad', 9801, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.89, 'backend/modules/home/view/img/18.jpg', 0, 1000),
(84, 'Samsung P', 7445, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 8.57, 'backend/modules/home/view/img/12.jpg', 0, 1000),
(85, 'Honor mi', 6657, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.6, 'backend/modules/home/view/img/14.jpg', 0, 1000),
(86, 'Cubot tab', 8462, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.07, 'backend/modules/home/view/img/18.jpg', 0, 1000),
(87, 'Meizu F', 6742, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.23, 'backend/modules/home/view/img/2.jpg', 0, 1000),
(88, 'Umidgi F', 2543, 5, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.05, 'backend/modules/home/view/img/10.jpg', 0, 1000),
(89, 'Windows tab', 8341, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.15, 'backend/modules/home/view/img/16.jpg', 0, 1000),
(90, 'Samsung C', 1847, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 2.76, 'backend/modules/home/view/img/16.jpg', 0, 1000),
(91, 'Umidgi P', 9915, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.37, 'backend/modules/home/view/img/2.jpg', 0, 1000),
(92, 'Realme J', 1510, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.62, 'backend/modules/home/view/img/2.jpg', 0, 1000),
(93, 'Cubot A', 4254, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.73, 'backend/modules/home/view/img/18.jpg', 0, 1000),
(94, 'Oppo M', 6115, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.17, 'backend/modules/home/view/img/9.jpg', 0, 1000),
(95, 'Meizu G', 8889, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 7.13, 'backend/modules/home/view/img/14.jpg', 0, 1000),
(96, 'Realme R', 8690, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 3.54, 'backend/modules/home/view/img/6.jpg', 0, 1000),
(97, 'Windows Version', 3539, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.37, 'backend/modules/home/view/img/14.jpg', 0, 1000),
(98, 'Cubot air', 752, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 2.58, 'backend/modules/home/view/img/19.jpg', 0, 1000),
(99, 'Cubot note', 3098, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.47, 'backend/modules/home/view/img/16.jpg', 0, 1000),
(100, 'huawei P', 6160, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 8.21, 'backend/modules/home/view/img/19.jpg', 0, 1000),
(101, 'Cubot I', 6235, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 4.78, 'backend/modules/home/view/img/18.jpg', 0, 1000),
(102, 'huawei A', 1546, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.77, 'backend/modules/home/view/img/20.jpg', 0, 1000),
(103, 'Xiaomi mi', 1303, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 0.17, 'backend/modules/home/view/img/11.jpg', 0, 1000),
(104, 'Windows plus', 6124, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 1.79, 'backend/modules/home/view/img/19.jpg', 0, 1000),
(105, 'Oppo P', 6720, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.7, 'backend/modules/home/view/img/16.jpg', 0, 1000),
(106, 'Nokia I', 7573, 4, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 6.62, 'backend/modules/home/view/img/18.jpg', 0, 1000),
(107, 'IPad air', 1450, 1, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 9.32, 'backend/modules/home/view/img/20.jpg', 0, 1000),
(108, 'Alcatel mi', 5557, 2, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 8.03, 'backend/modules/home/view/img/3.jpg', 0, 1000),
(109, 'Xtrem air', 8296, 3, '12/02/2019', 'Azul:Negro:Blanco:Rojo:', 'Yes', 5.19, 'backend/modules/home/view/img/20.jpg', 0, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'0',
  `token_check` varchar(255) NOT NULL,
  `token_recover` varchar(255) NOT NULL,
  `saldo` int(255) NOT NULL DEFAULT 100000,
  `register_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `type`, `avatar`, `active`, `token_check`, `token_recover`, `saldo`, `register_type`) VALUES
('107389958768449504522', 'andanivicente', 'Vicente', 'Andani', 'andanivicente@gmail.com', '', 'admin', 'https://lh3.googleusercontent.com/a-/AOh14GgGcGouCGpr-Eoa_EeLrGddmsRh9eWOdH956hKd', b'1', '', 'b769a03223f8e8265c63', 148918, 'google.com'),
('57725324', 'andanivicente', '', '', 'andanivicente@gmail.com', '', 'client', 'https://avatars2.githubusercontent.com/u/57725324?v=4', b'1', '', '3d67fb239756a8d98c32', 100000, 'github.com'),
('test', 'test', 'test', 'test', 'andanivicente@gmail.com', '$2y$10$imZ84uDDAu89OPct3juuReqeZTnDnomHZkiml3Z0c6W9r0D/JD./C', 'client', 'https://api.adorable.io/avatars/285/e995f7903051893f9a0f992d8542f3eb', b'1', '5ced673a747be4273d77', '1ac4bf6d7d4d2f27ba6d', 2126814438, 'local'),
('test2', 'test2', 'test', 'test', 'test@test.com', '$2y$10$UHGvQPgaw2wqLaXY1N94GuAgdfmYm1VU864E2FfIwnfQRn/gq99c2', 'client', 'https://www.gravatar.com/avatar/b642b4217b34b1e8d3bd915fc65c4452?s=40&d=identicon', b'0', '54bc570913869b4733bc', 'c0448c84d87d3dc25eec', 100000, 'local');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`idbrand`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`idfactura`);

--
-- Indices de la tabla `factura_linea`
--
ALTER TABLE `factura_linea`
  ADD PRIMARY KEY (`idlinea`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `money_codes`
--
ALTER TABLE `money_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tablets`
--
ALTER TABLE `tablets`
  ADD PRIMARY KEY (`idproduct`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `idbrand` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `idfactura` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `factura_linea`
--
ALTER TABLE `factura_linea`
  MODIFY `idlinea` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `money_codes`
--
ALTER TABLE `money_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tablets`
--
ALTER TABLE `tablets`
  MODIFY `idproduct` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
