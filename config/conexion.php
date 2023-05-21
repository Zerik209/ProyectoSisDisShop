<?php
$host = "shop.mysql.database.azure.com";
$username = "Zerik209";
$password = "Basquetball209";
$database = "card";

$mysqli = mysqli_init();
$mysqli->ssl_set(
    NULL, NULL, NULL, "BaltimoreCyberTrustRoot.crt.pem", NULL
);
$mysqli->real_connect(
    $host, $username, $password, $database, 3306, NULL, NULL
);

if ($mysqli->connect_errno) {
    die("Error de conexión: " . $mysqli->connect_error);
}

?>