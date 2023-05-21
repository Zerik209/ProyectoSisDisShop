<?php
$con = mysqli_init();
mysqli_ssl_set($con, NULL, NULL, "{path to CA cert}", NULL, NULL);
mysqli_real_connect($con, "shop.mysql.database.azure.com", "Zerik209@shop", "Basquetball209", "card", 3306, NULL, MYSQLI_CLIENT_SSL);

// Verificar si hay errores de conexión
if (mysqli_connect_errno()) {
    die("Error de conexión5: " . mysqli_connect_error());
}

?>
