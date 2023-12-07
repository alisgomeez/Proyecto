<?php
include("db.php");
include("includes/header.php");

// Variables para almacenar mensajes de éxito o error
$mensaje = "";
$error = "";

// Verificar si se ha enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validar y obtener el valor del campo Puesto
    $puesto = isset($_POST["puesto"]) ? trim($_POST["puesto"]) : "";

    // Validar que el campo Puesto no esté vacío
    if (empty($puesto)) {
        $error = "Por favor, ingresa el nombre del puesto.";
    } else {
        // Insertar el nuevo puesto en la tabla Puestos
        $query = "INSERT INTO Puestos (Puesto) VALUES ('$puesto')";
        $result = mysqli_query($conn, $query);

        if ($result) {
            $mensaje = "El puesto ha sido agregado exitosamente.";
        } else {
            $error = "Error al agregar el puesto: " . mysqli_error($conn);
        }
    }
}
?>

<body>
    <div class="container mt-5">
        <h1>Añadir Puesto</h1>
        <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <div class="form-group">
                <label for="puesto">Nombre del Puesto:</label>
                <input type="text" class="form-control" id="puesto" name="puesto" required>
            </div>
            <?php if (!empty($error)) : ?>
                <div class="alert alert-danger"><?php echo $error; ?></div>
            <?php endif; ?>
            <?php if (!empty($mensaje)) : ?>
                <div class="alert alert-success"><?php echo $mensaje; ?></div>
            <?php endif; ?>
            <button type="submit" class="btn btn-primary">Añadir</button>
        </form>
    </div>
    <div class="text-center mt-3">
        <button class="btn btn-primary" onclick="history.back()">Regresar</button>
    </div>

</body>
</html>

<?php include("includes/footer.php") ?>
