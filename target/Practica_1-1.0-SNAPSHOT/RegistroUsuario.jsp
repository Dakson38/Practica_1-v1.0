<%-- 
    Document   : RegistroUsuario
    Created on : 18 sept. 2022, 18:04:32
    Author     : CJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
</head>
<body>
    <h1>Registro de Usuarios</h1><br>
    <form action="ProcesaRegistroUsuario" method="post">
        <Label for="nombre">Nombre: </Label>
        <input type="text" name="nombre" id="nombre"><br><br>

        <Label for="apellidos">Apellidos: </Label>
        <input type="text" name="apellidos" id="apellidos"><br><br>

        <Label for="correo">Correo Electrónico: </Label>
        <input type="email" name="correo" id="correo"><br><br>

        <Label for="password">Constraseña: </Label>
        <input type="password" name="password" id="password"><br><br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>