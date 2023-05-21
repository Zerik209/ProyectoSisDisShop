<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $mensaje = $_POST['mensaje'];

    // Dirección de correo electrónico a la que se enviará el formulario
    $destinatario = 'erikaban14@gmail.com';

    // Asunto del correo electrónico
    $asunto = 'Nuevo mensaje de contacto';

    // Cuerpo del correo electrónico
    $cuerpo = "Nombre: $nombre\n";
    $cuerpo .= "Email: $email\n";
    $cuerpo .= "Mensaje: $mensaje\n";

    // Cabeceras del correo electrónico
    $cabeceras = "From: $nombre <$email>";

    // Envío del correo electrónico
    if (mail($destinatario, $asunto, $cuerpo, $cabeceras)) {
        echo '¡Gracias por contactarnos! Su mensaje ha sido enviado correctamente.';
    } else {
        echo 'Error al enviar el mensaje. Por favor, inténtelo de nuevo más tarde.';
    }
} else {
    echo 'Acceso denegado.';
}
?>
