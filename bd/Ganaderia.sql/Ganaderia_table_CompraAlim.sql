
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CompraAlim`
--

CREATE TABLE `CompraAlim` (
  `id_compralim` int NOT NULL,
  `id_alimento` int NOT NULL,
  `cantidadcompra` int NOT NULL,
  `preciouni` decimal(10,2) NOT NULL,
  `preciototal` decimal(10,2) GENERATED ALWAYS AS ((`cantidadcompra` * `preciouni`)) STORED,
  `fecha_compra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `CompraAlim`
--

INSERT INTO `CompraAlim` (`id_compralim`, `id_alimento`, `cantidadcompra`, `preciouni`, `fecha_compra`) VALUES
(1, 1, 20, 100.00, '2023-12-06'),
(2, 1, 20, 100.00, '2023-12-06');

--
-- Disparadores `CompraAlim`
--
DELIMITER $$
CREATE TRIGGER `after_insert_CompraAlim` AFTER INSERT ON `CompraAlim` FOR EACH ROW BEGIN
  UPDATE Alimentos
  SET cantidad = cantidad + NEW.cantidadcompra
  WHERE id_alimento = NEW.id_alimento;
END
$$
DELIMITER ;
