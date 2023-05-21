<?php
$servername = "shop.mysql.database.azure.com";
$username = "Zerik209";
$password = "Basquetball209";
$database = "card";

// Crear una conexión mysqli
$conn = new mysqli($servername, $username, $password, $database);

// Verificar si hay errores de conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

?>