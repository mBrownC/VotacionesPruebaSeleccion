<?php

include_once('conexion.php');
$idRegion = $mysqli->real_escape_string($_POST['id_region']);
$sql = "SELECT id, name FROM comuna WHERE id_region = $idRegion ORDER BY name ASC";
$resultado = $mysqli->query($sql);

$respuesta = "<option value=''>Seleccione una comuna</option>";

while($row = $resultado -> fetch_assoc()){
    $respuesta .= "<option value='".$row['id']."'>".$row['name']."</option>";
}

echo json_encode($respuesta, JSON_UNESCAPED_UNICODE);

?>