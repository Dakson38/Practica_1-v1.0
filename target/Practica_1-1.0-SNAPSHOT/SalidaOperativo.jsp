<%-- 
    Document   : SalidaOperativo
    Created on : 24 sept. 2022, 21:27:07
    Author     : CJ
--%>
<%@page import="com.emergentes.EncuestaOperativo" %>
<%
    EncuestaOperativo encuestaOperativo = (EncuestaOperativo)request.getAttribute("encuestaOperativo");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Encuesta de Sitemas Operativos</title>
</head>
<body>
    <h1>Resultado de la encuesta de Sistemas Operativos</h1><br>
    <h2>El nombre es: <%=encuestaOperativo.getNombre() %> </h2><br>
    <ul>
    <%
        for (String operativos : encuestaOperativo.getSistemasOperativos()) {
    %>
    <li> <%=operativos%> </li>
    <%
        }
    %>
    </ul>
    <a href="index.jsp">Volver a la página de inicio</a>
</body>
</html>