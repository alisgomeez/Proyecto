
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD PRIMARY KEY (`id_alimento`);

--
-- Indices de la tabla `Ciudades`
--
ALTER TABLE `Ciudades`
  ADD PRIMARY KEY (`Id_ciudad`),
  ADD KEY `Id_municipio` (`Id_municipio`);

--
-- Indices de la tabla `CompraAlim`
--
ALTER TABLE `CompraAlim`
  ADD PRIMARY KEY (`id_compralim`),
  ADD KEY `id_alimento` (`id_alimento`);

--
-- Indices de la tabla `CompraMedi`
--
ALTER TABLE `CompraMedi`
  ADD PRIMARY KEY (`id_compramedi`),
  ADD KEY `id_medicamento` (`id_medicamento`);

--
-- Indices de la tabla `CP`
--
ALTER TABLE `CP`
  ADD PRIMARY KEY (`CodigoPostal`),
  ADD KEY `Id_ciudad` (`Id_ciudad`);

--
-- Indices de la tabla `DetalleDieta`
--
ALTER TABLE `DetalleDieta`
  ADD PRIMARY KEY (`Id_detalle`),
  ADD KEY `Id_dieta` (`Id_dieta`),
  ADD KEY `Id_alimento` (`Id_alimento`);

--
-- Indices de la tabla `DetalleDietaVenta`
--
ALTER TABLE `DetalleDietaVenta`
  ADD PRIMARY KEY (`Id_detalle_venta`),
  ADD KEY `Id_venta` (`Id_venta`),
  ADD KEY `Id_dieta` (`Id_dieta`),
  ADD KEY `Id_alimento` (`Id_alimento`);

--
-- Indices de la tabla `Dietas`
--
ALTER TABLE `Dietas`
  ADD PRIMARY KEY (`Id_dieta`);

--
-- Indices de la tabla `Empleados`
--
ALTER TABLE `Empleados`
  ADD PRIMARY KEY (`Id_empleado`),
  ADD KEY `Id_puesto` (`Id_puesto`);

--
-- Indices de la tabla `Estados`
--
ALTER TABLE `Estados`
  ADD PRIMARY KEY (`Id_estado`);

--
-- Indices de la tabla `Etapas`
--
ALTER TABLE `Etapas`
  ADD PRIMARY KEY (`Id_etapa`);

--
-- Indices de la tabla `Ganaderos`
--
ALTER TABLE `Ganaderos`
  ADD PRIMARY KEY (`id_ganadero`),
  ADD KEY `codigo_postal` (`codigo_postal`),
  ADD KEY `idx_razonsocial` (`razonsocial`);

--
-- Indices de la tabla `Lotes`
--
ALTER TABLE `Lotes`
  ADD PRIMARY KEY (`Id_lote`),
  ADD KEY `Razonsocial` (`Razonsocial`),
  ADD KEY `Id_etapa` (`Id_etapa`);

--
-- Indices de la tabla `Medicamentos`
--
ALTER TABLE `Medicamentos`
  ADD PRIMARY KEY (`id_medicamento`);

--
-- Indices de la tabla `Municipios`
--
ALTER TABLE `Municipios`
  ADD PRIMARY KEY (`Id_municipio`),
  ADD KEY `Id_estado` (`Id_estado`);

--
-- Indices de la tabla `Puestos`
--
ALTER TABLE `Puestos`
  ADD PRIMARY KEY (`Id_puesto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `Ventas`
--
ALTER TABLE `Ventas`
  ADD PRIMARY KEY (`Id_venta`),
  ADD KEY `Id_lote` (`Id_lote`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Alimentos`
--
ALTER TABLE `Alimentos`
  MODIFY `id_alimento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Ciudades`
--
ALTER TABLE `Ciudades`
  MODIFY `Id_ciudad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `CompraAlim`
--
ALTER TABLE `CompraAlim`
  MODIFY `id_compralim` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `CompraMedi`
--
ALTER TABLE `CompraMedi`
  MODIFY `id_compramedi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `CP`
--
ALTER TABLE `CP`
  MODIFY `CodigoPostal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38986;

--
-- AUTO_INCREMENT de la tabla `DetalleDieta`
--
ALTER TABLE `DetalleDieta`
  MODIFY `Id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `DetalleDietaVenta`
--
ALTER TABLE `DetalleDietaVenta`
  MODIFY `Id_detalle_venta` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Dietas`
--
ALTER TABLE `Dietas`
  MODIFY `Id_dieta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Empleados`
--
ALTER TABLE `Empleados`
  MODIFY `Id_empleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Estados`
--
ALTER TABLE `Estados`
  MODIFY `Id_estado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `Etapas`
--
ALTER TABLE `Etapas`
  MODIFY `Id_etapa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Ganaderos`
--
ALTER TABLE `Ganaderos`
  MODIFY `id_ganadero` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Lotes`
--
ALTER TABLE `Lotes`
  MODIFY `Id_lote` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Medicamentos`
--
ALTER TABLE `Medicamentos`
  MODIFY `id_medicamento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Municipios`
--
ALTER TABLE `Municipios`
  MODIFY `Id_municipio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32059;

--
-- AUTO_INCREMENT de la tabla `Puestos`
--
ALTER TABLE `Puestos`
  MODIFY `Id_puesto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Ventas`
--
ALTER TABLE `Ventas`
  MODIFY `Id_venta` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Ciudades`
--
ALTER TABLE `Ciudades`
  ADD CONSTRAINT `Ciudades_ibfk_1` FOREIGN KEY (`Id_municipio`) REFERENCES `Municipios` (`Id_municipio`);

--
-- Filtros para la tabla `CompraAlim`
--
ALTER TABLE `CompraAlim`
  ADD CONSTRAINT `CompraAlim_ibfk_1` FOREIGN KEY (`id_alimento`) REFERENCES `Alimentos` (`id_alimento`);

--
-- Filtros para la tabla `CompraMedi`
--
ALTER TABLE `CompraMedi`
  ADD CONSTRAINT `CompraMedi_ibfk_1` FOREIGN KEY (`id_medicamento`) REFERENCES `Medicamentos` (`id_medicamento`);

--
-- Filtros para la tabla `CP`
--
ALTER TABLE `CP`
  ADD CONSTRAINT `CP_ibfk_1` FOREIGN KEY (`Id_ciudad`) REFERENCES `Ciudades` (`Id_ciudad`);

--
-- Filtros para la tabla `DetalleDieta`
--
ALTER TABLE `DetalleDieta`
  ADD CONSTRAINT `DetalleDieta_ibfk_1` FOREIGN KEY (`Id_dieta`) REFERENCES `Dietas` (`Id_dieta`),
  ADD CONSTRAINT `DetalleDieta_ibfk_2` FOREIGN KEY (`Id_alimento`) REFERENCES `Alimentos` (`id_alimento`);

--
-- Filtros para la tabla `DetalleDietaVenta`
--
ALTER TABLE `DetalleDietaVenta`
  ADD CONSTRAINT `DetalleDietaVenta_ibfk_1` FOREIGN KEY (`Id_venta`) REFERENCES `Ventas` (`Id_venta`),
  ADD CONSTRAINT `DetalleDietaVenta_ibfk_2` FOREIGN KEY (`Id_dieta`) REFERENCES `Dietas` (`Id_dieta`),
  ADD CONSTRAINT `DetalleDietaVenta_ibfk_3` FOREIGN KEY (`Id_alimento`) REFERENCES `Alimentos` (`id_alimento`);

--
-- Filtros para la tabla `Empleados`
--
ALTER TABLE `Empleados`
  ADD CONSTRAINT `Empleados_ibfk_1` FOREIGN KEY (`Id_puesto`) REFERENCES `Puestos` (`Id_puesto`);

--
-- Filtros para la tabla `Ganaderos`
--
ALTER TABLE `Ganaderos`
  ADD CONSTRAINT `Ganaderos_ibfk_1` FOREIGN KEY (`codigo_postal`) REFERENCES `CP` (`CodigoPostal`);

--
-- Filtros para la tabla `Lotes`
--
ALTER TABLE `Lotes`
  ADD CONSTRAINT `Lotes_ibfk_1` FOREIGN KEY (`Razonsocial`) REFERENCES `Ganaderos` (`razonsocial`),
  ADD CONSTRAINT `Lotes_ibfk_2` FOREIGN KEY (`Id_etapa`) REFERENCES `Etapas` (`Id_etapa`);

--
-- Filtros para la tabla `Municipios`
--
ALTER TABLE `Municipios`
  ADD CONSTRAINT `Municipios_ibfk_1` FOREIGN KEY (`Id_estado`) REFERENCES `Estados` (`Id_estado`);

--
-- Filtros para la tabla `Ventas`
--
ALTER TABLE `Ventas`
  ADD CONSTRAINT `Ventas_ibfk_1` FOREIGN KEY (`Id_lote`) REFERENCES `Lotes` (`Id_lote`);
