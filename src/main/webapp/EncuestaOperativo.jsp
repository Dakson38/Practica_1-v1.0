<%-- 
    Document   : EncuestaOperativo
    Created on : 18 sept. 2022, 17:58:25
    Author     : CJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Encuesta de Sistemas Operativos</title>
</head>
<body>
    <h1>Encuesta de Sistemas Operativos</h1><br>
    <form action="ProcesaEncuestaOperativo" method="post">
        <Label for="nombre">Nombre: </Label>
        <input type="text" name="nombre" id="nombre"><br><br>
        
        <input type="checkbox" name="soperativos" id="" value="windows">Windows <br><br>
        <input type="checkbox" name="soperativos" id="" value="linux">Linux <br><br>
        <input type="checkbox" name="soperativos" id="" value="ios">Ios <br><br>
        <input type="checkbox" name="soperativos" id="" value="android">Android <br><br>
        
        <input type="submit" value="Enviar">
    </form>
</body>
</html>