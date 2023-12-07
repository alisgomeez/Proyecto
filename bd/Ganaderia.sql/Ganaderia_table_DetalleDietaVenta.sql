
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetalleDietaVenta`
--

CREATE TABLE `DetalleDietaVenta` (
  `Id_detalle_venta` int NOT NULL,
  `Id_venta` int DEFAULT NULL,
  `Id_dieta` int DEFAULT NULL,
  `Id_alimento` int DEFAULT NULL,
  `CantidadConsumida` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
