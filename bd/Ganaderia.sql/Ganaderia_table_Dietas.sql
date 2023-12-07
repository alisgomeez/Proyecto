
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Dietas`
--

CREATE TABLE `Dietas` (
  `Id_dieta` int NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Dietas`
--

INSERT INTO `Dietas` (`Id_dieta`, `Nombre`) VALUES
(1, 'Dieta 1\r\n'),
(2, 'Dieta 2');
