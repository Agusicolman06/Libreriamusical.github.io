<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilo.css">
    <title>Libreria Musical</title>
</head>

<header>
    <h1>Libreria Musical</h1>
</header>

<body>

    
    <div class="container">
        <form id="songForm" action="indexx.php" method="POST">
            <label for="title">Titulo:</label>
            <input type="text" id="title" name="titulo" required>

            <br>
            <br>    

            <label for="composer">Compositor:</label>
            <input type="text" id="composer" name="compositor" required>

            <br>
            <br>

            <label for="style">Estilo:</label>
            <input type="text" id="style" name="estilo" required>

            <br>
            <br>

            <label for="duration">Duracion(HS,MM,SS):</label>
            <input type="text" id="duration" name="duracion" placeholder="00:00:00" required>

            <br>
            <input class="inputs" type="submit" onclick="addSong()">
            
        </form>
    </div>

    <h2>Lista de Canciones</h2>
    <?php
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "cantantes";
                $conexion = mysqli_connect($servername, $username, $password, $dbname);
                
                $sql = "SELECT COUNT(*) as total FROM autores WHERE 1";
                $resultado = $conexion->query($sql);
                $fila = $resultado->fetch_assoc();

            
                $queryNombre = "SELECT nombre_artistico FROM autores";
                $resultNombres = mysqli_query($conexion, $queryNombre);

               
                $querycancion = "SELECT titulo FROM canciones";
                $resultcancion = mysqli_query($conexion, $querycancion);

                
                $queryestilo = "SELECT estilo FROM canciones";
                $resultestilo  = mysqli_query($conexion, $queryestilo);
                

                for($i = 1 ; $i<=$fila["total"] ; $i++){
                    echo "<div class='container2'>";
                    $nombres = mysqli_fetch_array($resultNombres); 
                    $cancion = mysqli_fetch_array($resultcancion);
                    $estilo = mysqli_fetch_array($resultestilo);
                    echo '<div>';
                    echo "<h3>".$nombres["nombre_artistico"]."</h3>";
                    echo "<h3>".$cancion["titulo"]."</h3>";
                    echo "<h3>".$estilo["estilo"]."</h3>";
                    echo "</div><br>";
                    echo "<br>";
                    echo "</div>";
                }
            ?>
    
</body>
</html>