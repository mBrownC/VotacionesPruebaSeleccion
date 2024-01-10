    <?php
    $mysqli = include_once('C:\xampp\htdocs\VotacionPrueba\backend\conexion.php');
    if ($mysqli instanceof mysqli) {
        $comunas = $mysqli->query('SELECT * FROM region');
        $candidatos = $mysqli->query('SELECT * FROM candidato');
    } else {
        echo "Error en la conexión";
    }
    ?>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Votación</title>
        <link rel="stylesheet" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body>
        <div class="container">
            <h1>FORMULARIO DE VOTACION</h1>
            <form action class="formulario" id="formulario">
                <div class="ingreso">
                    <div class="labelInputs" id="labelInputsNombre">
                        <label for="nombre">Nombre y Apellido</label>
                        <input type="text" id="nombre" name="nombre">
                    </div>
                    <div class="labelInputs" id="labelInputsAlias">
                        <label for="alias">Alias</label>
                        <input type="text" id="alias" name="alias">
                    </div>
                    <div class="labelInputs" id="labelInputsRut">
                        <label for="rut">RUT</label>
                        <input type="text" id="rut" name="rut">
                    </div>
                    <div class="labelInputs" id="labelInputsMail">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email">
                    </div>
                    <div class="labelInputs">
                        <label for="region">Región</label>
                        <select id="region" name="region">
                            <option value>Seleccione una región</option>
                            <!-- regiones -->
                            <?php
                            while ($row = $comunas->fetch_assoc()) {
                            ?>
                                <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="labelInputs">
                        <label for="comuna">Comuna</label>
                        <select id="comuna" name="comuna">
                            <option value="">Seleccione una comuna</option>
                            <!-- comunas -->
                        </select>
                    </div>
                    <div class="labelInputs">
                        <label for="candidato">Candidato</label>
                        <select id="candidato" name="candidato">
                            <option value>Seleccione un candidato</option>
                            <!-- candidatos -->
                            <?php
                            while ($row = $candidatos->fetch_assoc()) {
                            ?>
                                <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="labelInputs">
                        <label>Como se enteró de Nosotros</label>
                        <div class="opciones">
                            <div class="opcionesUnitarias">
                                <input type="checkbox" id="web" name="web" value="web">
                                <label for="web">Web</label>
                            </div>
                            <div class="opcionesUnitarias">
                                <input type="checkbox" id="tv" name="tv" value="tv">
                                <label for="tv">TV</label>
                            </div>
                            <div class="opcionesUnitarias">
                                <input type="checkbox" id="redes_sociales" name="redes_sociales" value="redes_sociales">
                                <label for="redes_sociales">Redes
                                    Sociales</label>
                            </div>
                            <div class="opcionesUnitarias">
                                <input type="checkbox" id="amigo" name="amigo" value="amigo">
                                <label for="amigo">Amigo</label>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit">Votar</button>
            </form>
        </div>
        <script src="js/form.js"></script>
        <script src="js/peticiones.js"></script>
    </body>

    </html>