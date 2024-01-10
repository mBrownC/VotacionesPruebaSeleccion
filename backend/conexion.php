<?php

$host = "127.0.0.1";
$usuario = "mbrown";
$contrasenia = "Migmac080520";
$base_de_datos = "votacion_prueba";

$mysqli = new mysqli($host, $usuario, $contrasenia, $base_de_datos);
$mysqli -> set_charset("utf8");


if ($mysqli->connect_error) {
    die("Error de conexión: " . $mysqli->connect_error);
}

return $mysqli;

?>