<?php
$conexion = mysqli_init();
mysqli_ssl_set($conexion, NULL, NULL, "ssl/BaltimoreCyberTrustRoot.crt.pem", NULL, NULL);

mysqli_real_connect($conexion, "shop.mysql.database.azure.com", "Zerik209", "Basquetball209", "card", 3306, MYSQLI_CLIENT_SSL);

if (mysqli_connect_errno()) {
    die("Error de conexión a la base de datos6: " . mysqli_connect_error());
} else {
    echo "Conexión exitosa a la base de datos.";
}

?>

