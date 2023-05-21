-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2023 a las 03:34:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `card`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(10, 'Lentes de contacto'),
(11, 'Lentes de sol'),
(12, 'Lentes de lectura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(10, 'Lentes de contacto básicos ', 'Te ofrecemos es una opción para aquellos que desean una visión clara y cómoda sin necesidad de utilizar gafas.', 3000.00, 2500.00, 100, '20230517161101.jpg', 10),
(12, 'Lentes de contacto Ámbar ', 'Lentes de contacto con un tono que favorece a todos.', 3500.00, 3200.00, 100, '20230521022642.jpg', 10),
(13, 'Lentes de sol Aviador', 'Los mejores lentes de sol con el mejor estilo, proteja sus ojos y maneje un buen flow.', 500.00, 450.00, 200, '20230521023943.jpg', 11),
(14, 'Lentes de lectura modelo 1264 graduables', 'Vuelva a devorar libros con la visión de águila que necesita.', 570.00, 400.00, 300, '20230521024113.jpg', 12),
(15, 'Lentes de sol 2 en 1', 'Lentes de lectura con micas de magnéticas de sol incluidas.', 700.00, 650.00, 500, '20230521024334.jpg', 11),
(17, 'Lentes de sol juveniles tono rosa', 'La moda en tus ojos y una vista protegida, ve el mundo en color rosa con estos lentes.', 350.00, 300.00, 500, '20230521024831.jpg', 11),
(18, 'Estuche y pinzas', 'Proteja sus lentes de contacto cuando no los este usando o compre un repuesto de su viejo estuche.', 150.00, 120.00, 600, '20230521024920.jpg', 10),
(19, 'Lentes graduables modelo 4658', 'Un clásico de la visión, cuide de su vista y luzca una apariencia inigualable.', 450.00, 430.00, 400, '20230521025111.jpg', 12),
(20, 'Lentes graduables modelo 4699', 'Un modelo mas juvenil para cuidar la visión, la lectura nunca se disfruto mas que con estos lentes.', 600.00, 450.00, 600, '20230521025405.jpg', 12),
(22, 'Lentes de contacto neutro', 'Sin tonalidades, apéguese a una apariencia natural y proteja su vista.', 3000.00, 2500.00, 600, '20230521030406.jpg', 10),
(23, 'Lentes de contacto blue', 'Lentes de contacto con tonalidad azul.', 4000.00, 3800.00, 600, '20230521030516.jpg', 10),
(24, 'Lentes de sol Hellsing', 'Lentes de sol para los conocedores, luce cool y amenazador.', 600.00, 480.00, 600, '20230521030631.jpg', 11),
(25, 'Lentes de sol infantiles', 'Lentes de sol para proteger a los mas pequeños del hogar.', 300.00, 270.00, 500, '20230521030722.jpg', 11),
(26, 'Lentes de lectura modelo 564', 'Estilo especifico para los de gustos exquisitos, pero aptos para graduar.', 450.00, 420.00, 3000, '20230521030902.jpg', 12),
(27, 'Lentes de lectura modelo 751', 'Lentes con un aire mas intelectual, lusca a su gusto con este par.', 500.00, 450.00, 300, '20230521030953.jpg', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Erik Aban', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
