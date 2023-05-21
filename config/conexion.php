<?php
    $con = mysqli_init();
    mysqli_ssl_set($con,NULL,NULL, "{path to CA cert}", NULL, NULL);
    mysqli_real_connect($conn, "shop.mysql.database.azure.com", "Zerik209", "Basquetball209", "card", 3306, MYSQLI_CLIENT_SSL);
