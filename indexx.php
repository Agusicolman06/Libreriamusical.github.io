
<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cantantes";

$conn = mysqli_connect($servername, $username, $password, $dbname);


$titulo = $_POST['titulo'];
$compositor = $_POST['compositor'];
$estilo = $_POST['estilo'];
$duracion = $_POST['duracion'];


$sql = "INSERT INTO canciones (titulo, compositor, estilo, duracion) VALUES ('$titulo', '$compositor', '$estilo', '$duracion');";

if (mysqli_query($conn, $sql)) {
    echo "Canción ingresada correctamente";
} else {
    echo "Error al ingresar la canción: " . $conn->error;
}

header('location: ./index.php');
$conn->close();
?>

