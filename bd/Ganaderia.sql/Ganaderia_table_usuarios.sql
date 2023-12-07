
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `email`, `password`) VALUES
(1, 'Alicia', 'alis@g', '$2y$10$ezGF/we37WBUARVtcqnje.jvYkWP2uCbXGcdsU7U0v6zWJ8Pu8TEC'),
(2, 'al', 'a@g', '$2y$10$jQMbr2elRItl3U7nV/iTc.OugH4Ul9DZZfv7N2K78M2ugVz6vOjQy'),
(3, 'a', 'g@a', '$2y$10$1prIDOMYdobzv7haCbc1CuGg1CHY7ZVYtONPj0iLdIXOA9/p8Xpl6'),
(10, 'alis', 'a@ggg', '$2y$10$FirYDqasyRbApwXwhq3iYOJbRS6Wtj.O.zedRsW6xClpywlmci5si');
