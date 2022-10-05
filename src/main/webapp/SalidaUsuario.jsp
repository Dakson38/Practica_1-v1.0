<%-- 
    Document   : sRegistroUsuario
    Created on : 23 sept. 2022, 22:56:18
    Author     : CJ
--%>
<%@page import="com.emergentes.RegistroUsuario" %>
<% 
    RegistroUsuario registroUsuario = (RegistroUsuario)request.getAttribute("registroUsuario");
    
%>
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
    <h1>Datos recibidos del Registro de Usuarios</h1><br>
    <h2>Su nombre es: <%=registroUsuario.getNombre() %> </h2>
    <h2>Sus apellidos son: <%=registroUsuario.getApellidos()%> </h2>
    <h2>Su correo es: <%=registroUsuario.getCorreo()%> </h2>
    <h2>Su contraseña es: <%=registroUsuario.getPassword()%> </h2>
    <a href="index.jsp">Volver a la página de inicio</a>
</body>
</html>