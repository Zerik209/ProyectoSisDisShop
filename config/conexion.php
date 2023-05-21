<?php
$host = "shop.mysql.database.azure.com";
$username = "Zerik209@shop";
$password = "Basquetball209";
$database = "card";

$conexion = mysqli_init();
$conexion->ssl_set(NULL, NULL, NULL, "BaltimoreCyberTrustRoot.crt.pem", NULL);
$conexion->real_connect($host, $username, $password, $database, 3306, NULL, MYSQLI_CLIENT_SSL);

// Verificar si hay errores de conexión
if ($conexion->connect_errno) {
    die("Error de conexión confirmado4: " . $conexion->connect_error);
}

?>
