
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Lotes`
--

CREATE TABLE `Lotes` (
  `Id_lote` int NOT NULL,
  `CantidadAnimales` int NOT NULL,
  `PesoLote` decimal(10,2) NOT NULL,
  `PrecioKilo` decimal(10,2) NOT NULL,
  `FechaEntrada` date NOT NULL,
  `Razonsocial` varchar(100) NOT NULL,
  `PrecioTotal` decimal(10,2) GENERATED ALWAYS AS ((`PesoLote` * `PrecioKilo`)) STORED,
  `Id_etapa` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Lotes`
--

INSERT INTO `Lotes` (`Id_lote`, `CantidadAnimales`, `PesoLote`, `PrecioKilo`, `FechaEntrada`, `Razonsocial`, `Id_etapa`) VALUES
(1, 20, 5.00, 20.00, '2023-12-05', 'Gomez', NULL);
