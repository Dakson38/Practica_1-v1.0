<%-- 
    Document   : RegistroLibros
    Created on : 18 sept. 2022, 18:15:34
    Author     : CJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Libros</title>
</head>
<body>
    <h1>Registro de Libros</h1><br>
    <form action="ProcesaRegistroLibros" method="post">
        <Label for="titulo">Título: </Label>
        <input type="text" name="titulo" id="titulo"><br><br>

        <Label for="autor">Autor: </Label>
        <input type="autor" name="autor" id="autor"><br><br>

        <Label for="resumen">Resumen: </Label><br>
        <textarea name="resumen" id="resumen" cols="30" rows="10"></textarea><br><br>

        Medio: <br><br>
        <input type="radio" name="medio" id="medio" value="fisico">Físico <br>
        <input type="radio" name="medio" id="medio" value="magnetico">Magnético <br><br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>