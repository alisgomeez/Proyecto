
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleados`
--

CREATE TABLE `Empleados` (
  `Id_empleado` int NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Paterno` varchar(50) NOT NULL,
  `Materno` varchar(50) NOT NULL,
  `Edad` int NOT NULL,
  `Id_puesto` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Empleados`
--

INSERT INTO `Empleados` (`Id_empleado`, `Nombre`, `Paterno`, `Materno`, `Edad`, `Id_puesto`) VALUES
(1, 'Manuel ', 'Gomez', 'Lopez', 28, 3),
(2, 'Martin', 'Gomez', 'Aguilera', 28, 4);
