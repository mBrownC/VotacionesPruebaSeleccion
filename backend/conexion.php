<?php
// datos de coexión a la bbdd
$host = "url servidor";
$usuario = "usuarioBBDD";
$contrasenia = "Pass BBDD";
$base_de_datos = "Nombre BBDD";
// conexxion 
$mysqli = new mysqli($host, $usuario, $contrasenia, $base_de_datos);
$mysqli -> set_charset("utf8");
// captura de errores en conexion
if ($mysqli->connect_error) {
    die("Error de conexión: " . $mysqli->connect_error);
}
return $mysqli;
?>