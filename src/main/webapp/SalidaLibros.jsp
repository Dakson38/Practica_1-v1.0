<%-- 
    Document   : SalidaLibros
    Created on : 24 sept. 2022, 21:08:39
    Author     : CJ
--%>
<%@page import="com.emergentes.RegistroLibros" %>
<%
    RegistroLibros registroLibros = (RegistroLibros)request.getAttribute("registroLibros");
%>
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
    <h1>Datos recibidos del Registro de Libros</h1><br>
    <h2>El título es: <%=registroLibros.getTitulo() %> </h2><br>
    <h2>El autor es: <%=registroLibros.getAutor() %> </h2><br>
    <h2>El medio por el cual fue adquirido es <%=registroLibros.getMedio() %> </h2><br>
    <h2>Este es el resúmen <%=registroLibros.getResumen() %> </h2><br>
    <a href="index.jsp">Volver a la página de inicio</a>
</body>
</html>