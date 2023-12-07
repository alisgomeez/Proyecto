
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetalleDieta`
--

CREATE TABLE `DetalleDieta` (
  `Id_detalle` int NOT NULL,
  `Id_dieta` int DEFAULT NULL,
  `Id_alimento` int DEFAULT NULL,
  `CantidadRequerida` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `DetalleDieta`
--

INSERT INTO `DetalleDieta` (`Id_detalle`, `Id_dieta`, `Id_alimento`, `CantidadRequerida`) VALUES
(8, 2, 1, 500.00),
(9, 2, 2, 100.00),
(10, 2, 3, 100.00),
(11, 2, 4, 30.00),
(12, 2, 5, 20.00),
(13, 2, 6, 10.00),
(14, 2, 7, 190.00),
(15, 1, 1, 250.00),
(16, 1, 2, 50.00),
(17, 1, 3, 50.00),
(18, 1, 4, 15.00),
(19, 1, 5, 10.00),
(20, 1, 6, 5.00),
(21, 1, 7, 95.00);
