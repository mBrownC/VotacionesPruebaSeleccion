<?php
echo "Script ejecutándose correctamente.";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    include_once('C:\xampp\htdocs\VotacionPrueba\backend\conexion.php');
    if ($mysqli instanceof mysqli) {
        $rut = $_POST['rut'];
        $sqlCheck = "SELECT id FROM votantes WHERE rut = ?";
        $stmtCheck = $mysqli->prepare($sqlCheck);
        $stmtCheck->bind_param("s", $rut);
        $stmtCheck->execute();
        $resultCheck = $stmtCheck->get_result();
        if ($resultCheck->num_rows > 0) {
            echo "<script>alert('Ya has votado con este RUT. No se permite votar más de una vez.'); window.location.href = 'index.php';</script>";
        } else {
            $nombre = $_POST['nombre'];
            $alias = $_POST['alias'];
            $email = $_POST['email'];
            $region = $_POST['region'];
            $comuna = $_POST['comuna'];
            $candidato = $_POST['candidato'];
            $web = isset($_POST['web']) ? 1 : 0;
            $tv = isset($_POST['tv']) ? 1 : 0;
            $redes = isset($_POST['redes_sociales']) ? 1 : 0;
            $amigo = isset($_POST['amigo']) ? 1 : 0;
            $sqlInsert = "INSERT INTO votantes (name_lastname, rut, id_comuna, alias, id_candidato, web, tv, redes, amigo)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $stmtInsert = $mysqli->prepare($sqlInsert);
            $stmtInsert->bind_param("ssisiiiii", $nombre, $rut, $comuna, $alias, $candidato, $web, $tv, $redes, $amigo);
            if ($stmtInsert->execute()) {
                echo "<script>alert('Votación exitosa.'); window.location.href = 'index.php';</script>";
            } else {
                echo "<script>alert('Error al insertar el registro: " . $stmtInsert->error . "'); window.location.href = 'index.php';</script>";
            }
            $stmtInsert->close();
        }

        $mysqli->close();
    } else {
        echo "<script>alert('Error en la conexión.'); window.location.href = 'index.php';</script>";
    }
} else {
    echo "<script>alert('Acceso no autorizado.'); window.location.href = 'index.php';</script>";
}