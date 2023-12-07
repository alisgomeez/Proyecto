
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Medicamentos`
--

CREATE TABLE `Medicamentos` (
  `id_medicamento` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cantidad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Medicamentos`
--

INSERT INTO `Medicamentos` (`id_medicamento`, `nombre`, `cantidad`) VALUES
(1, 'Ala', 21);
