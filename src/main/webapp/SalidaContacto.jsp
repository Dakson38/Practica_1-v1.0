<%-- 
    Document   : SalidaContacto
    Created on : 24 sept. 2022, 21:16:44
    Author     : CJ
--%>
<%@page import="com.emergentes.Contacto" %>
<%
    Contacto contacto = (Contacto)request.getAttribute("contacto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactos</title>
</head>
<body>
    <h1>Datos recibidos para el contacto</h1><br>
    <h2>El nombre es: <%=contacto.getNombre() %> </h2><br>
    <h2>El Correo es: <%=contacto.getCorreo() %> </h2><br>
    <h2>El Mensaje es:  <%=contacto.getMensaje() %> </h2><br>
    <%
        if(contacto.isCopia()){
    %>
    <h2>Se enviará una copia al correo </h2><br>
    <%
        }else{
    %>
    <h2>No Se enviará una copia al correo </h2><br>
    <%
        }
    %>
    <a href="index.jsp">Volver a la página de inicio</a>
</body>
</html>