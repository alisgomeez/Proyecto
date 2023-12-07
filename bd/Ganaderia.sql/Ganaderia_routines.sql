
DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`%` PROCEDURE `DeleteEmpleado` (IN `p_IdEmpleado` INT)   BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
  END;

  START TRANSACTION;

  DELETE FROM Empleados WHERE Id_empleado = p_IdEmpleado;

  COMMIT;
END$$

CREATE DEFINER=`root`@`%` PROCEDURE `DeleteEmpleadoConDireccion` (IN `p_IdEmpleado` INT)   BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
  END;

  START TRANSACTION;

  -- Eliminar la dirección del empleado
  DELETE FROM Direcciones WHERE Id_empleado = p_IdEmpleado;

  -- Eliminar el empleado
  DELETE FROM Empleados WHERE Id_empleado = p_IdEmpleado;

  COMMIT;
END$$

CREATE DEFINER=`root`@`%` PROCEDURE `InsertarEmpleadoConDireccion` (IN `p_Id_empleado` INT, IN `p_Nombre` VARCHAR(50), IN `p_Paterno` VARCHAR(50), IN `p_Materno` VARCHAR(50), IN `p_Id_puesto` INT, IN `p_Salario` DECIMAL(10,2), IN `p_CodigoPostal` VARCHAR(10), IN `p_Colonia` VARCHAR(50), IN `p_Ciudad` INT)   BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
  END;

  START TRANSACTION;
  
  INSERT INTO Empleados (Id_empleado, Nombre, Paterno, Materno, Id_puesto, Salario)
  VALUES (p_Id_empleado, p_Nombre, p_Paterno, p_Materno, p_Id_puesto, p_Salario);

  INSERT INTO CP (CodigoPostal, Colonia, Ciudad)
  VALUES (p_CodigoPostal, p_Colonia, p_Ciudad);

  COMMIT;
END$$

CREATE DEFINER=`root`@`%` PROCEDURE `ObtenerEmpleado` (IN `p_Id_empleado` INT, OUT `p_Nombre` VARCHAR(50), OUT `p_Paterno` VARCHAR(50), OUT `p_Materno` VARCHAR(50), OUT `p_Id_puesto` INT, OUT `p_Salario` DECIMAL(10,2))   BEGIN
  SELECT e.Nombre, e.Paterno, e.Materno, e.Id_puesto, e.Salario
  INTO p_Nombre, p_Paterno, p_Materno, p_Id_puesto, p_Salario
  FROM Empleados e
  WHERE e.Id_empleado = p_Id_empleado;
END$$

CREATE DEFINER=`root`@`%` PROCEDURE `ObtenerEmpleadoConDireccion` (IN `p_Id_empleado` INT, OUT `p_Nombre` VARCHAR(50), OUT `p_Paterno` VARCHAR(50), OUT `p_Materno` VARCHAR(50), OUT `p_Id_puesto` INT, OUT `p_Salario` DECIMAL(10,2), OUT `p_CodigoPostal` VARCHAR(10), OUT `p_Colonia` VARCHAR(50), OUT `p_Ciudad` INT)   BEGIN
  SELECT e.Nombre, e.Paterno, e.Materno, e.Id_puesto, e.Salario, c.CodigoPostal, c.Colonia, c.Ciudad
  INTO p_Nombre, p_Paterno, p_Materno, p_Id_puesto, p_Salario, p_CodigoPostal, p_Colonia, p_Ciudad
  FROM Empleados e
  INNER JOIN CP c ON e.CP = c.CodigoPostal
  WHERE e.Id_empleado = p_Id_empleado;
END$$

CREATE DEFINER=`root`@`%` PROCEDURE `ObtenerEmpleadosPorPuesto` (IN `p_Id_puesto` INT)   BEGIN
    SELECT *
    FROM Empleados
    WHERE Id_puesto = p_Id_puesto;
END$$

DELIMITER ;
