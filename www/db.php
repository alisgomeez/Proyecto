<?php
session_start();

$conn = mysqli_connect('db', 'root', 'clave', 'Ganaderia');

if ($conn) {
     //echo 'Base de datos conectada';
} else {
    die('Error al conectar con la base de datos: ' . mysqli_connect_error());
}
?>

