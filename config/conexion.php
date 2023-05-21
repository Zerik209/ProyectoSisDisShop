<?php
$host = "shop.mysql.database.azure.com";
$port = 3306;
$username = "Zerik209";
$password = "Basquetball209";
$database = "card";

$conexion = mysqli_init();
$conexion->ssl_set(NULL, NULL, NULL, "ssl/DigiCertGlobalRootCA.crt.pem", NULL);
$conexion->real_connect($host, $username, $password, $database, $port, NULL, MYSQLI_CLIENT_SSL);

// Verificar si hay errores de conexión
if ($conexion->connect_errno) {
    die("Error de conexión confirmado12: " . $conexion->connect_error);
}

$query = mysqli_query($conexion, "SELECT * FROM categorias");

// Verificar si hay errores en la ejecución de la consulta
if (!$query) {
    echo "Error en la consulta8: " . mysqli_error($conexion);
    // Otra lógica de manejo de errores si es necesario
} else {
    // Continuar con el procesamiento de los resultados
    while ($row = mysqli_fetch_assoc($query)) {
        // Procesar los datos obtenidos
        // Ejemplo: echo $row['columna'];
    }
}
?>


