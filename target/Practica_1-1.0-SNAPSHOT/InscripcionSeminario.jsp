<%-- 
    Document   : InscripcionSeminario
    Created on : 18 sept. 2022, 18:37:33
    Author     : CJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscripcion</title>
</head>
<body>
    <h1>Inscripción de Seminarios</h1><br>
    <form action="ProcesaInscripcionSeminarios" method="post">
        Fecha: <input type="date" name="fecha" id="fecha"><br><br>

        <Label for="nombre">Nombre:</Label>
        <input type="text" name="nombre" id="nombre"><br><br>

        <Label for="apellidos">Apellidos: </Label>
        <input type="text" name="apellidos" id="apellidos"><br><br>

        Turnos: <br>
        <select name="turno" id="turno">
            <option value="" hidden>Combo Box</option>
            <option value="maniana">Mañana</option>
            <option value="Tarde">Tarde</option>
            <option value="Noche">Noche</option>
        </select> <br><br>

        Seminarios: <br>
        <input type="checkbox" name="seminario" id="seminario" value="5G"> 5G <br>
        <input type="checkbox" name="seminario" id="seminario" value="IA"> Inteligencia Artificial <br>
        <input type="checkbox" name="seminario" id="seminario" value="ML"> Machine Learning <br>
        <input type="checkbox" name="seminario" id="seminario" value="robotica"> Robótica <br><br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>