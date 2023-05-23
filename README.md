# ProyectoSisDisShop
![Logo Uady](https://th.bing.com/th/id/OIP.QfzPL29a925kQMvteCfrVQHaEA?pid=ImgDet&rs=1)

# 👓Catálogo de Lentes 👓


![Imagen del Proyecto](https://dc722jrlp2zu8.cloudfront.net/media/uploads/2018/07/31/sistema-distribuido.png)
## ➡️Descripción

Proyecto para la materia "Sistemas Distribuidos" que consiste en la creacion de una web de venta de lentes en linea y que usa la capacidad de los servicios web de azure.

## 🦾Tecnologias usadas

1. HTML
2. CSS
3. JavaScript
4. PHP
5. Boostrap
6. MySQL
7. Azure APP service
8. Azure MySQl Server

## 👀A continuación, se muestran los pasos para instalar el proyecto.👀

### Local💻
1. Instala XAMP con una versión de PHP 8.0.
2. Clona o descarga el codigo dentro dentro de la carpeta htdocs.
3. Desde phpMyadmin crea una base de datos llamada card e importa el archivo sql "card(1).sql" dentro de la carpeta BD.
4. Modidica los archivos "conexion.php" con tus licencias utiliza el archivo del primer comit.
5. Lanza xamp y busca el proyecto.

### Azure🌐
#### Creación y vinculacion de la app service con github
1. Desde tu cuenta de azure procede a crear una app service, utiliza el plan gratuito, solo procura que use php 8.0 y que sea para lanzar codigo, no importa el sistema operativo de la maquina. (previamente tienes que tener un grupo de recursos creado).
2. Puedes configurar tu appservice para usar un repositorio de git para obtener el codigo.
3. Configura el firewall para permitir la dirección IP del dispositivo que estas usando y de cualquier otro servicio de azure.
4. Exporta tu base de datos de XAMP en formato sql o usa el archivo "card(1).sql".

#### Creación, conexión y edición del la base de datos MySQL en azure

5. Crea una nueva base de datos en el servidor MySQL, usa el plan básico y baja las caracteristicas a lo optimo.
6. Configura el firewall de la misma manera que con el app service.
7. copia las credenciales, especificamente el URL del servidor,puerto, tu usuario y contraseña.
8. Desde un administrador de bases de datos compatible como por ejemplo MySQL WorckBench usa las credenciales anteriores para conectarte a tu servidor, el HOST es la URL del servidor.
9. Crea una nueva base de datos en el servidor, llamalo "card" para mayor comodidad.
10. Importa el archivo sql que deseas usar y utilizalo para tener las mismas tablas.

#### Conexión de la App Service con la base de datos Azure

11. Obten la IP de la App service de azure y modifica el firewall del servidor MySQL de azure para permirla.
12. Modifica el codigo del programa en los archivos "conexion.php".
13. Previamenre consigue el archivo del perimso ssl del servidor MySQL.
14. Puedes usar la ultima versión del archivo programa en el repositorio, el codigo de conexion sigue este formato.
```php
$host = "ejemplo.mysql.database.azure.com";
$port = 3306;
$username = "USUARIO";
$password = "CONTRASEÑA";
$database = "NOMBREBD";

$conexion = mysqli_init();
mysqli_ssl_set($conexion,NULL,NULL, "ssl/DigiCertGlobalRootCA.crt.pem", NULL, NULL);
mysqli_real_connect($conexion, $host, $username, $password, $database, $port, NULL, MYSQLI_CLIENT_SSL);

// Verificar si hay errores de conexión
if ($conexion->connect_errno) {
    die("Error de conexión confirmado: " . $conexion->connect_error);
}
```
15. DigiCertGlobalRootCA.crt.pem, este es el nombre del archivo del certificado SSL.
16. Actualiza tu repositorio y listo.


## Créditos💯

- Erik Aban
- Marisol Canul
- Daniel Panti
- Eduardo Corea

## Licencia🆓

Usalo libremente :)
