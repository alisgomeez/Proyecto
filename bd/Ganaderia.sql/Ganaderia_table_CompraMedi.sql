
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CompraMedi`
--

CREATE TABLE `CompraMedi` (
  `id_compramedi` int NOT NULL,
  `id_medicamento` int NOT NULL,
  `cantidadcompra` int NOT NULL,
  `preciouni` decimal(10,2) NOT NULL,
  `preciototal` decimal(10,2) GENERATED ALWAYS AS ((`cantidadcompra` * `preciouni`)) STORED,
  `fecha_compra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `CompraMedi`
--

INSERT INTO `CompraMedi` (`id_compramedi`, `id_medicamento`, `cantidadcompra`, `preciouni`, `fecha_compra`) VALUES
(1, 1, 20, 100.00, '2023-12-06');

--
-- Disparadores `CompraMedi`
--
DELIMITER $$
CREATE TRIGGER `after_insert_CompraMedi` AFTER INSERT ON `CompraMedi` FOR EACH ROW BEGIN
  UPDATE Medicamentos
  SET cantidad = cantidad + NEW.cantidadcompra
  WHERE id_medicamento = NEW.id_medicamento;
END
$$
DELIMITER ;
