<?php
$host = "url servidor";
$usuario = "usuarioBBDD";
$contrasenia = "Pass BBDD";
$base_de_datos = "Nombre BBDD";
$mysqli = new mysqli($host, $usuario, $contrasenia, $base_de_datos);
$mysqli -> set_charset("utf8");
if ($mysqli->connect_error) {
    die("Error de conexión: " . $mysqli->connect_error);
}
return $mysqli;
?>