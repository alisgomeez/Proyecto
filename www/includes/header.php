<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--bootstrap5-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Ganadería Gomez</title>
</head>
<body>
<!--Navegacion-->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
        <a class="navbar-brand" href="#">
        <img src="https://placeholder.pics/svg/150x50/888888/EEE/Logo" alt="..." height="36">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
         data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
          aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto">
            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="inicio.php">Inicio</a>
            </li>

            <li class="nav-item">
            <a class="nav-link" href="#">Registro</a>
            </li>

            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Almacen
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="medicamento.php">Medicamento</a></li>
                <li><a class="dropdown-item" href="#">Granos</a></li>
                <li><a class="dropdown-item" href="#">Ventas</a></li>
                <li>
                <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Forrajes</a></li>
                <li><a class="dropdown-item" href="#">Nomina</a></li>
            </ul>
            </li>            
        </ul>
        </div>
    </div>
    </nav>