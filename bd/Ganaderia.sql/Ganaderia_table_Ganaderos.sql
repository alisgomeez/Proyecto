
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ganaderos`
--

CREATE TABLE `Ganaderos` (
  `id_ganadero` int NOT NULL,
  `razonsocial` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `psg` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `domicilio` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `codigo_postal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Ganaderos`
--

INSERT INTO `Ganaderos` (`id_ganadero`, `razonsocial`, `nombre`, `psg`, `domicilio`, `codigo_postal`) VALUES
(1, 'Gomez', 'alicia gomez', '45512sfdasf', 'estrella de la mañana', 38944);
