<%-- 
    Document   : Contacto
    Created on : 18 sept. 2022, 18:04:55
    Author     : CJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactenos</title>
</head>
<body>
    <h1>Contactenos</h1><br>
    <form action="ProcesaContacto" method="post">
        <Label for="nombre">Nombre: </Label>
        <input type="text" name="nombre" id="nombre"><br><br>

        <Label for="correo">Correo Electrónico: </Label>
        <input type="email" name="correo" id="correo"><br><br>

        <Label for="mensaje">Mensaje: </Label><br>
        <textarea name="mensaje" id="mensaje" cols="30" rows="10"></textarea><br><br>

        <input type="checkbox" name="copia" id="copia" value="true"> Enviar una copia a mi correo <br><br>
        <input type="submit" value="Enviar">
    </form>
</body>
</html>