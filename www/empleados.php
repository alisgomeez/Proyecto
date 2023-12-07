<?php
include("db.php");


include("includes/header.php");
include("includes/footer.php");

?>

<div class="container">
  <div class="row">
    <div class="col">
      <h1 class="my-4">Lista de empleados</h1>
      <div class="text-right mb-4">
        <a href="agregar_e.php" class="btn btn-success">Agregar empleado</a>
        <a href="eliminar_e.php" class="btn btn-danger">Eliminar empleado</a>
      </div>

      <?php
      // Obtener los datos de la tabla empleados
      $query = "SELECT Id_empleado, Nombre, Paterno, Materno, Id_puesto, Salario, Telefono, RFC FROM Empleados";
      $result = mysqli_query($conn, $query);

      // Verificar si se encontraron registros
      if ($result && mysqli_num_rows($result) > 0) {
        echo '<table class="table table-striped">';
        echo '<thead class="thead-dark"><tr><th>ID</th><th>Nombre</th><th>Paterno</th><th>Materno</th><th>Puesto</th><th>Salario</th><th>Teléfono</th><th>RFC</th></thead>';
        echo '<tbody>';
        
        while ($row = mysqli_fetch_assoc($result)) {
          echo "<tr>";
          echo "<td>" . $row['Id_empleado'] . "</td>";
          echo "<td>" . $row['Nombre'] . "</td>";
          echo "<td>" . $row['Paterno'] . "</td>";
          echo "<td>" . $row['Materno'] . "</td>";
          echo "<td>" . $row['Id_puesto'] . "</td>";
          echo "<td>" . $row['Salario'] . "</td>";
          echo "<td>" . $row['Telefono'] . "</td>";
          echo "<td>" . $row['RFC'] . "</td>";
          echo "</tr>";
        }
        
        echo '</tbody>';
        echo "</table>";
      } else {
        echo '<div class="alert alert-info">No se encontraron empleados.</div>';
      }
      ?>
      
    </div>
  </div>
</div>

<?php
include("includes/footer.php");
?>
